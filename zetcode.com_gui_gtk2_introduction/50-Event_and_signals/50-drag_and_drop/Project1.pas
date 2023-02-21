program Project1;

uses
  GLib2,
  Gdk2,
  Gtk2;

  procedure configute_callback(widget: PGtkWidget; event: PGdkEventButton; edge: TGdkWindowEdge); cdecl;
  begin
    if event^._type = GDK_BUTTON_PRESS then begin
      if event^.button = 1 then begin
        gtk_window_begin_move_drag(GTK_WINDOW(gtk_widget_get_toplevel(widget)),
          event^.button,
        round(  event^.x_root),
     round(     event^.y_root),
          event^.time);
      end;
    end;

    WriteLn(event^.time);

  end;

  procedure main;
  var
    window: PGtkWidget;
  begin
    GTK_Init(@argc, @argv);

    Window := gtk_window_new(GTK_WINDOW_TOPLEVEL);
    gtk_window_set_title(GTK_WINDOW(Window), 'Drag and Drop');
    gtk_window_set_default_size(GTK_WINDOW(Window), 500, 500);
    gtk_container_set_border_width(GTK_CONTAINER(Window), 15);
    gtk_window_set_position(GTK_WINDOW(window), GTK_WIN_POS_CENTER);

//    gtk_window_set_decorated(GTK_WINDOW(window), False);
    gtk_widget_add_events(window, GDK_BUTTON_PRESS_MASK);

    g_signal_connect(G_OBJECT(window), 'button-press-event', G_CALLBACK(@configute_callback), nil);

    g_signal_connect(G_OBJECT(window), 'destroy', G_CALLBACK(@gtk_main_quit), nil);

    gtk_widget_show_all(window);

    GTK_Main;
  end;

begin
  main;
end.
