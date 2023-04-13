program Project1;

uses
  GLib2,
  Gdk2,
  Gtk2;

var
  handler_id: gulong;


  procedure button_clicked(widget: PGtkWidget; Data: gpointer); cdecl;
  begin
    WriteLn('click');
  end;

  procedure toggle_signal(widget: PGtkWidget; Data: gpointer); cdecl;
  var
    state: gboolean;
  begin
    state := gtk_toggle_button_get_active(GTK_TOGGLE_BUTTON(widget));
    WriteLn('toggle: ', state);
    if state then begin
      handler_id := g_signal_connect(G_OBJECT(Data), 'clicked', G_CALLBACK(@button_clicked), nil);
    end else begin
      g_signal_handler_disconnect(Data, handler_id);
    end;
    WriteLn('handle: ', handler_id);
  end;

  procedure main;
  var
    window, hbox, btn, cb, vbox: PGtkWidget;
  begin
    GTK_Init(@argc, @argv);

    Window := gtk_window_new(GTK_WINDOW_TOPLEVEL);
    gtk_window_set_title(GTK_WINDOW(Window), 'Disconnect');
    gtk_window_set_default_size(GTK_WINDOW(Window), 500, 500);
    gtk_container_set_border_width(GTK_CONTAINER(Window), 15);
    gtk_window_set_position(GTK_WINDOW(window), GTK_WIN_POS_CENTER);

    hbox := gtk_hbox_new(False, 15);

    btn := gtk_button_new_with_label('Click');
    gtk_widget_set_size_request(btn, 70, 30);
    gtk_box_pack_start(GTK_BOX(hbox), btn, False, False, 0);
    handler_id := g_signal_connect(G_OBJECT(btn), 'clicked', G_CALLBACK(@button_clicked), nil);

    cb := gtk_check_button_new_with_label('Connect');
    gtk_toggle_button_set_active(GTK_TOGGLE_BUTTON(cb), True);
    gtk_box_pack_start(GTK_BOX(hbox), cb, False, False, 0);
    g_signal_connect(G_OBJECT(cb), 'clicked', G_CALLBACK(@toggle_signal), btn);

    vbox := gtk_vbox_new(False, 5);
    gtk_box_pack_start(GTK_BOX(vbox), hbox, False, False, 0);
    gtk_container_add(GTK_CONTAINER(window), vbox);

    g_signal_connect(G_OBJECT(window), 'destroy', G_CALLBACK(@gtk_main_quit), nil);

    gtk_widget_show_all(window);

    GTK_Main;
  end;

begin
  main;
end.
