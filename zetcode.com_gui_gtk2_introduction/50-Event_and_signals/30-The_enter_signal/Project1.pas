program Project1;

uses
  GLib2,
  Gdk2,
  Gtk2;

var
  col: TGdkColor = (pixel: 0; red: 27000; green: 30000; blue: 35000);

  procedure enter_callback(widget: PGtkWidget; Data: gpointer); cdecl;
  begin
    WriteLn('enter');
    gtk_widget_modify_bg(widget, GTK_STATE_PRELIGHT, @col);
  end;

  procedure configute_callback(widget: PGtkWidget; event: PGdkEvent; Data: gpointer); cdecl;
  var
    buf: PGString;
    x, y, w, h: gint;
  begin
    WriteLn('Event Window: ', gtk_window_get_title(GTK_WINDOW(widget)));

    x := event^.configure.x;
    y := event^.configure.y;
    w := event^.configure.Width;
    h := event^.configure.Height;

    buf := g_string_new(nil);
    g_string_printf(buf, 'x:%d y: %d w:%d h: %d', x, y, w, h);

    gtk_window_set_title(GTK_WINDOW(widget), buf^.str);

    g_string_free(buf, True);
  end;

  procedure main;
  var
    window, halign, btn: PGtkWidget;
  begin
    GTK_Init(@argc, @argv);

    Window := gtk_window_new(GTK_WINDOW_TOPLEVEL);
    gtk_window_set_title(GTK_WINDOW(Window), 'Enter signal');
    gtk_window_set_default_size(GTK_WINDOW(Window), 500, 500);
    gtk_container_set_border_width(GTK_CONTAINER(Window), 15);
    gtk_window_set_position(GTK_WINDOW(window), GTK_WIN_POS_CENTER);

    halign := gtk_alignment_new(0, 0, 0, 0);

    btn := gtk_button_new_with_label('Button 1');
    g_signal_connect(G_OBJECT(btn), 'enter', G_CALLBACK(@enter_callback), nil);

    gtk_container_add(GTK_CONTAINER(halign), btn);
    gtk_container_add(GTK_CONTAINER(Window), halign);


    g_signal_connect(G_OBJECT(window), 'configure-event', G_CALLBACK(@configute_callback), nil);
    g_signal_connect(G_OBJECT(window), 'destroy', G_CALLBACK(@gtk_main_quit), nil);

    gtk_widget_show_all(window);

    gdk_color_parse('#0000FF', @col);

    gtk_widget_modify_bg(btn, GTK_STATE_PRELIGHT, @col);
    gtk_widget_modify_fg(btn, GTK_STATE_PRELIGHT, @col);

    gtk_widget_modify_bg(halign, GTK_STATE_PRELIGHT, @col);
    gtk_widget_modify_fg(halign, GTK_STATE_PRELIGHT, @col);

    gtk_widget_modify_bg(window, GTK_STATE_PRELIGHT, @col);
    gtk_widget_modify_fg(window, GTK_STATE_PRELIGHT, @col);


    GTK_Main;
  end;

begin
  main;
end.
