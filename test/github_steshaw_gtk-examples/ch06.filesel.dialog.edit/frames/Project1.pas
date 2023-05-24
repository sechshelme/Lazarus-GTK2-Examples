program Project1;

uses
  Math,
  SysUtils,
  pango,
  GLib2,
  Gdk2,
  Gtk2;

var
  sFilename: string;

  function CloseAppWindow(w: PGtkWidget; Data: pgpointer): gint; cdecl;
  begin
    gtk_main_quit;
    Result := 0;
  end;

  function ButtonCLicked(w: PGtkWidget; Data: pgpointer): gint; cdecl;
  begin
  end;

  procedure main;
  var
    Window, table, frame, btn: PGtkWidget;
  begin
    GTK_Init(@argc, @argv);

    Window := gtk_window_new(GTK_WINDOW_TOPLEVEL);
    gtk_window_set_title(GTK_WINDOW(Window), 'Dialog');
    gtk_window_set_default_size(GTK_WINDOW(Window), 350, 250);
    gtk_window_set_position(GTK_WINDOW(window), GTK_WIN_POS_CENTER);
    gtk_signal_connect(GTK_OBJECT(Window), 'delete_event', GTK_SIGNAL_FUNC(@CloseAppWindow), nil);
    gtk_container_set_border_width(GTK_CONTAINER(Window), 10);

    table := gtk_table_new(2, 2, True);

    frame := gtk_frame_new('In - right');
    gtk_frame_set_shadow_type(GTK_FRAME(frame), GTK_SHADOW_IN);
    gtk_frame_set_label_align(GTK_FRAME(frame), 0.5, 0);
    gtk_table_attach(GTK_TABLE(table), frame, 0, 1, 0, 1, GTK_FILL or GTK_EXPAND, GTK_FILL or GTK_EXPAND, 7, 0);

    frame := gtk_frame_new('out - left');
    gtk_frame_set_shadow_type(GTK_FRAME(frame), GTK_SHADOW_OUT);
    gtk_frame_set_label_align(GTK_FRAME(frame), 0, 0);
    gtk_table_attach(GTK_TABLE(table), frame, 1, 2, 0, 1, GTK_FILL or GTK_EXPAND, GTK_FILL or GTK_EXPAND, 0, 0);

    frame := gtk_frame_new('etched out - bottom');
    gtk_frame_set_shadow_type(GTK_FRAME(frame), GTK_SHADOW_ETCHED_OUT);
    gtk_frame_set_label_align(GTK_FRAME(frame), 0, 1);
    gtk_table_attach(GTK_TABLE(table), frame, 0, 1, 1, 2, GTK_FILL or GTK_EXPAND, GTK_FILL or GTK_EXPAND, 3, 0);

    frame := gtk_frame_new('etched in - bottom');
    gtk_frame_set_shadow_type(GTK_FRAME(frame), GTK_SHADOW_ETCHED_IN);
    gtk_frame_set_label_align(GTK_FRAME(frame), 0, 0);
    gtk_table_attach(GTK_TABLE(table), frame, 1, 2, 1, 2, GTK_FILL or GTK_EXPAND, GTK_FILL or GTK_EXPAND, 3, 0);

    btn:=gtk_button_new_with_label('Button');
    //    gtk_container_add(GTK_CONTAINER(frame), btn);

    gtk_label_set_markup(GTK_LABEL(GTK_FRAME(frame)^.label_widget),'Hello <b>World !</b>');
    gtk_label_set_angle(GTK_LABEL(GTK_FRAME(frame)^.label_widget),20);
    gtk_label_set_angle(GTK_LABEL(GTK_FRAME(frame)^.label_widget),20);

    btn:=gtk_button_new_with_label('Button');
//    gtk_container_add(GTK_CONTAINER(GTK_FRAME(frame)^.label_widget^.parent^.parent), btn);
//    gtk_container_add(GTK_CONTAINER(GTK_FRAME(frame)^.label_widget^.parent), btn);


    gtk_container_add(GTK_CONTAINER(Window), table);

    gtk_widget_show_all(window);
    GTK_Main;
  end;

begin
  SetExceptionMask([exDenormalized, exInvalidOp, exOverflow, exPrecision, exUnderflow, exZeroDivide]);
  main;
end.
