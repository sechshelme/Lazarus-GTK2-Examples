program project1;

uses
  GLib2,
  Gdk2,
  Gtk2;


  procedure GObjectShowProperty(obj: Pointer);
  var
    prolist: PPGParamSpec;
    Count: guint;
    i: integer;
    valueType, Value: string;
    Name: Pgchar;
    p: gpointer;
  begin
    if (obj <> nil) and G_IS_OBJECT(obj) then begin
      prolist := g_object_class_list_properties(G_OBJECT_GET_CLASS(obj), @Count);

      WriteLn('count:', Count);
      for i := 0 to Count - 1 do begin
        Value := '<unknow>';
        Name := prolist[i]^.Name;
        g_object_get(G_OBJECT(obj), Name, @p, nil);
        case prolist[i]^.value_type of
          G_TYPE_INVALID: begin
            valueType := 'G_TYPE_INVALID';
          end;
          G_TYPE_NONE: begin
            valueType := 'G_TYPE_NONE';
          end;
          G_TYPE_INTERFACE: begin
            valueType := 'G_TYPE_INTERFACE';
          end;
          G_TYPE_CHAR: begin
            valueType := 'G_TYPE_CHAR';
            WriteStr(Value, gint8(p));
          end;
          G_TYPE_UCHAR: begin
            valueType := 'G_TYPE_UCHAR';
            WriteStr(Value, guint8(p));
          end;
          G_TYPE_BOOLEAN: begin
            valueType := 'G_TYPE_BOOLEAN';
            WriteStr(Value, gboolean(p));
          end;
          G_TYPE_INT: begin
            valueType := 'G_TYPE_INT';
            WriteStr(Value, gint(p));
          end;
          G_TYPE_UINT: begin
            valueType := 'G_TYPE_UINT';
            WriteStr(Value, guint(p));
          end;
          G_TYPE_ULONG: begin
            valueType := 'G_TYPE_ULONG';
            WriteStr(Value, gulong(p));
          end;
          G_TYPE_INT64: begin
            valueType := 'G_TYPE_INT64';
            WriteStr(Value, gint64(p));
          end;
          G_TYPE_UINT64: begin
            valueType := 'G_TYPE_UINT64';
            WriteStr(Value, guint64(p));
          end;
          G_TYPE_ENUM: begin
            valueType := 'G_TYPE_ENUM';
            WriteStr(Value, guint(p));
          end;
          G_TYPE_FLAGS: begin
            valueType := 'G_TYPE_FLAGS';
            WriteStr(Value, guint(p));
          end;
          G_TYPE_FLOAT: begin
            valueType := 'G_TYPE_FLOAT';
            WriteStr(Value, gdouble(p));
          end;
          G_TYPE_DOUBLE: begin
            valueType := 'G_TYPE_DOUBLE';
            WriteStr(Value, gdouble(p));
          end;
          G_TYPE_STRING: begin
            valueType := 'G_TYPE_STRING';
            Value := Pgchar(p);
          end;
          G_TYPE_POINTER: begin
            valueType := 'G_TYPE_POINTER';
            WriteStr(Value, PtrUInt(p));
          end;
          G_TYPE_BOXED: begin
            valueType := 'G_TYPE_BOXED';
            Value := 'BOXED';
          end;
          G_TYPE_OBJECT: begin
            valueType := 'G_TYPE_OBJECT';
            Value := 'OBJECT';
          end;
          G_TYPE_RESERVED_GLIB_FIRST: begin
            valueType := 'G_TYPE_RESERVED_GLIB_FIRST';
          end;
          G_TYPE_RESERVED_GLIB_LAST: begin
            valueType := 'G_TYPE_RESERVED_GLIB_LAST';
          end;
          G_TYPE_RESERVED_BSE_FIRST: begin
            valueType := 'G_TYPE_RESERVED_BSE_FIRST';
          end;
          //          G_TYPE_RESERVED_BSE_LAST: begin
          //            valueType := 'G_TYPE_RESERVED_BSE_LAST';
          //          end;
          G_TYPE_RESERVED_USER_FIRST: begin
            valueType := 'G_TYPE_RESERVED_USER_FIRST';
          end;
          else begin
            WriteStr(valueType, '<unknow> (', prolist[i]^.value_type, ')');
          end;
        end;

        WriteLn(i: 3, '. Name: ', Name: 20, '  Valuetype: ', valueType: 15, '  Value: ', Value);
      end;
      g_free(prolist);
    end;
  end;


  function CreateBitBtn: PGtkWidget;
  var
    lab, image, hbox: PGtkWidget;
  begin
    Result := gtk_button_new;
    hbox := gtk_hbox_new(False, 0);

    lab := gtk_label_new('Label 1');
    gtk_label_set_angle(GTK_LABEL(lab), 10);
    gtk_box_pack_end(GTK_BOX(hbox), lab, False, False, 10);

    image := gtk_image_new_from_file('test.ico');
    gtk_box_pack_end(GTK_BOX(hbox), image, False, False, 10);

    lab := gtk_label_new('Label 2');
    gtk_box_pack_end(GTK_BOX(hbox), lab, False, False, 10);

    g_object_set(Result, 'child', hbox, nil);
  end;

var
  Window, button1, button2, button3, fixed, image: PGtkWidget;



begin
  GTK_Init(@argc, @argv);

  Window := gtk_window_new(GTK_WINDOW_TOPLEVEL);
  gtk_window_set_title(GTK_WINDOW(Window), 'Hallo');
  gtk_window_set_default_size(GTK_WINDOW(Window), 320, 200);
  gtk_window_set_position(GTK_WINDOW(window), GTK_WIN_POS_CENTER);


//  GObjectShowProperty(Window);


  fixed := gtk_fixed_new();
  gtk_container_add(GTK_CONTAINER(window), fixed);

  image := gtk_image_new_from_file('test.ico');
  button1 := gtk_button_new();
  gtk_button_set_image(GTK_BUTTON(button1), image);
  gtk_button_set_label(GTK_BUTTON(button1), 'Button1');
  gtk_widget_set_size_request(button1, 175, 50);
  gtk_fixed_put(GTK_FIXED(fixed), button1, 10, 10);

  button2 := CreateBitBtn;
  gtk_fixed_put(GTK_FIXED(fixed), button2, 10, 60);

  button3 := g_object_new(GTK_TYPE_BUTTON,nil);
  g_object_set(button3,
  //  'image', image,
    'label', 'Button3',
    'width-request', 75,
    'height-request', 25,
    nil);
  gtk_fixed_put(GTK_FIXED(fixed), button3, 10, 230);

  gtk_widget_show_all(window);

  g_signal_connect(G_OBJECT(window), 'destroy', G_CALLBACK(@gtk_main_quit), nil);

  GTK_Main;
end.
