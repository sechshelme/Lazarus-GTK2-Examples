program project1;

uses
  glib2,
  ctypes,
  gst;

  // https://gstreamer.freedesktop.org/documentation/tutorials/basic/dynamic-pipelines.html?gi-language=c

  procedure gst_caps_unref(object_: Tgpointer); cdecl; external gstreamerlib;


const
  GST_CLOCK_TIME_NONE = TGstClockTime(-1);

type
  TCustomData = record
    pipeline,
    Source,
    convert,
    resample,
    sink: PGstElement;
  end;
  PCustomData = ^TCustomData;

  function GST_PAD_LINK_FAILED(ret: TGstPadLinkReturn): boolean;
  begin
    Result := longint(ret) < longint(GST_PAD_LINK_OK);
  end;


  procedure pad_added_handler(src: PGstElement; new_pad: PGstPad; Data: PCustomData);
  var
    sink_pad: PGstPad;
    new_pad_caps: PGstCaps;
    new_pad_struct: PGstStructure;
    new_pad_type: Pgchar;
    ret: TGstPadLinkReturn;
  begin
    sink_pad := gst_element_get_static_pad(Data^.convert, 'sink');
    g_print('Received new pad "%s" from "%s" '#10, PGstObject(new_pad)^.Name, PGstObject(src)^.Name);

    if gst_pad_is_linked(sink_pad) then begin
      g_print('Ist schon gelinkt'#10);
    end else begin
      new_pad_caps := gst_pad_get_current_caps(new_pad);
      new_pad_struct := gst_caps_get_structure(new_pad_caps, 0);
      new_pad_type := gst_structure_get_name(new_pad_struct);
      if not g_str_has_prefix(new_pad_type, 'audio/x-raw') then begin
        g_print('kein raw Audio %s. Ingnoriere'#10, new_pad_type);
      end else begin
        ret := gst_pad_link(new_pad, sink_pad);
        if gst_pad_link_failed(ret) then begin
          g_print('link failed: %s'#10, new_pad_type);
        end else begin
          g_print('link suceeded: %s'#10, new_pad_type);
        end;
      end;
    end;
    if new_pad_caps <> nil then begin
      gst_caps_unref(new_pad_caps);
    end;
    gst_object_unref(sink_pad);
  end;


  function tutorial_main(argc: cint; argv: PPChar): cint;
  var
    Data: TCustomData;
    ret: TGstStateChangeReturn;
    bus: PGstBus;
    terminate: boolean = False;
    msg: PGstMessage;
    err: PGError;
    debug_info: Pgchar;
  begin
    gst_init(@argc, @argv);

    Data.Source := gst_element_factory_make('uridecodebin', 'source');
    Data.convert := gst_element_factory_make('audioconvert', 'convert');
    Data.resample := gst_element_factory_make('audioresample', 'resample');
    Data.sink := gst_element_factory_make('autoaudiosink', 'sink');

    Data.pipeline := gst_pipeline_new('test-pipeline');

    if (Data.pipeline = nil) or (Data.Source = nil) or (Data.convert = nil) or (Data.resample = nil) or (Data.sink = nil) then begin
      g_printerr('Create Fehler'#10);
      Exit(-1);
    end;

    gst_bin_add_many(GST_BIN(Data.pipeline), Data.Source, [Data.convert, Data.resample, Data.sink, nil]);
    if not gst_element_link_many(Data.convert, Data.resample, [Data.sink, nil]) then begin
      g_printerr('Kann nicht linken'#10);
      g_object_unref(Data.pipeline);
      Exit(-1);
    end;

    g_object_set(Data.Source, 'uri', 'https://gstreamer.freedesktop.org/data/media/sintel_trailer-480p.webm', nil);

    g_signal_connect(Data.Source, 'pad-added', G_CALLBACK(@pad_added_handler), @Data);

    ret := gst_element_set_state(Data.pipeline, GST_STATE_PLAYING);
    if ret = GST_STATE_CHANGE_FAILURE then begin
      g_printerr('Kann pipeline nicht abspielen'#10);
      g_object_unref(Data.pipeline);
      Exit(-1);
    end;

    bus := gst_element_get_bus(Data.pipeline);
    repeat
      msg := gst_bus_timed_pop_filtered(bus, GST_CLOCK_TIME_NONE, TGstMessageType(TGstMessageType(uint64(GST_MESSAGE_STATE_CHANGED) or uint64(GST_MESSAGE_ERROR) or uint64(GST_MESSAGE_EOS))));
      if msg <> nil then begin
        case GST_MESSAGE_TYPE(msg) of
          GST_MESSAGE_ERROR: begin
            gst_message_parse_error(msg, @err, @debug_info);
            g_printerr('Error received from elemment %s: %s'#10, msg^.src^.Name, err^.message);
            if debug_info = nil then begin
              g_printerr('Debug Info: none'#10);
            end else begin
              g_printerr('Debug Info: %s'#10, debug_info);
            end;
            g_clear_error(@err);
            g_free(debug_info);
            terminate := True;
          end;
          GST_MESSAGE_EOS: begin
            g_print('Stream Ende'#10);
            terminate := True;
          end;
          GST_MESSAGE_STATE_CHANGED: begin
            //            if GST_MESSAGE_SRC
//            g_print('Pipeline Changed: '#10);
          end;
          else begin
            g_print('Pipeline state unbekannt'#10);
          end;
        end;

      end;

      gst_message_unref(msg)
    until terminate;

    gst_object_unref(bus);
    gst_element_set_state( Data.pipeline,GST_STATE_NULL);
    gst_object_unref(Data.pipeline);


    WriteLn('ende');
    Result := 0;
  end;

begin
  tutorial_main(argc, argv);
end.
