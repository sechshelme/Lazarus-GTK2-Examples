program project1;

uses
  //  Crt,
  glib2,
  ctypes,
  gst;

  // https://forums.developer.nvidia.com/t/pipeline-ends-after-4-seconds-with-gst-message-eos/253486

const
  GST_CLOCK_TIME_NONE = TGstClockTime(-1);


  function tutorial_main(argc: cint; argv: PPChar): cint;
  var
    Source, sink, pipeline: PGstElement;
    ret: TGstStateChangeReturn;
    bus: PGstBus;
    msg: PGstMessage;
    err: PGError;
    debug_info: Pgchar;
  begin
    gst_init(@argc, @argv);

    //       pipeline := gst_parse_launch('playbin uri=file:/n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/gstreamer/test.mp3', nil);
    //    pipeline := gst_parse_launch('playbin uri=file:/n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/gstreamer/Tutorial/Boing_1.wav', nil);

    Source := gst_element_factory_make('videotestsrc', 'source');
    sink := gst_element_factory_make('autovideosink', 'sink');

    pipeline := gst_pipeline_new('test-pipeline');
    if (pipeline = nil) or (Source = nil) or (sink = nil) then  begin
      g_printerr('Not all elements could be created.'#10);
      Exit(-1);
    end;

    gst_bin_add_many(GST_BIN(pipeline), Source, [sink, nil]);
    if not gst_element_link(Source, sink) then begin
      g_printerr('Elements could not be linked.'#10);
      gst_object_unref(pipeline);
      Exit(-1);
    end;

    g_object_set(Source, 'pattern', 0, nil);

    ret := gst_element_set_state(pipeline, GST_STATE_PLAYING);
    if ret = GST_STATE_CHANGE_FAILURE then  begin
      g_printerr('Unable to set the pipeline to the playing state.'#10);
      gst_object_unref(pipeline);
      Exit(-1);
    end;

    bus := gst_element_get_bus(pipeline);
    msg := gst_bus_timed_pop_filtered(
      bus, GST_CLOCK_TIME_NONE, TGstMessageType(TGstMessageType(uint64(GST_MESSAGE_ERROR) or uint64(GST_MESSAGE_EOS))));
    if msg <> nil then  begin
      case GST_MESSAGE_TYPE(msg) of
        GST_MESSAGE_ERROR: begin
          gst_message_parse_error(msg, @err, @debug_info);
          //        g_printerr ('Error received from element %s: %s'#10,              GST_OBJECT_NAME (msg^.src), err^.message);
          //      g_printerr ('Debugging information: %s'#10,              debug_info ? debug_info : "none");
          g_printerr('Error received from element  %s'#10, msg^.src^.name);
          g_printerr('Debugging information'#10);
          g_clear_error(@err);
          g_free(debug_info);
        end;
        GST_MESSAGE_EOS: begin
          g_print('"End-Of-Stream reached.'#10);
        end;
        else begin
          g_print('"Unexpected message received.'#10);
        end;
      end;
      gst_message_unref(msg);
    end;

    gst_object_unref(bus);
    gst_element_set_state(pipeline, GST_STATE_NULL);
    gst_object_unref(pipeline);
    Exit(0);
  end;

begin
  tutorial_main(argc, argv);
end.
