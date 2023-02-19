program Project1;

uses
  GLib2,
  Gdk2,
  Gtk2;

  procedure press(widget: PGtkWidget; data: gpointer); cdecl;
  begin
    WriteLn('Label: ', gtk_button_get_label(GTK_BUTTON(widget)));
  end;

  procedure main;
  var
    Window, vbox, button1, button2, button3, button4, button5: PGtkWidget;
  begin
    GTK_Init(@argc, @argv);

    Window := gtk_window_new(GTK_WINDOW_TOPLEVEL);
    gtk_window_set_title(GTK_WINDOW(Window), 'Hallo');
    gtk_window_set_default_size(GTK_WINDOW(Window), 500, 500);
    gtk_window_set_position(GTK_WINDOW(window), GTK_WIN_POS_CENTER);

    gtk_container_set_border_width(GTK_CONTAINER(Window), 5);

    vbox := gtk_vbox_new(False, 0);
    gtk_container_add(GTK_CONTAINER(Window), vbox);

    button1 := gtk_button_new_with_label('Button1');
    gtk_box_pack_start(GTK_BOX(vbox), button1, False, False, 0);
    g_signal_connect(G_OBJECT(button1), 'clicked', G_CALLBACK(@press), nil);

    button2 := gtk_button_new_with_label('Button2');
    gtk_box_pack_start(GTK_BOX(vbox), button2, False, False, 0);
    g_signal_connect(G_OBJECT(button2), 'clicked', G_CALLBACK(@press), nil);

    button5 := gtk_button_new_with_label('Button5');
    gtk_container_add(GTK_CONTAINER(vbox), button5);
    g_signal_connect(G_OBJECT(button5), 'clicked', G_CALLBACK(@press), nil);

    button3 := gtk_button_new_with_label('Button3');
    gtk_container_add(GTK_CONTAINER(vbox), button3);
//    gtk_box_pack_end(GTK_BOX(vbox), button3, False, False, 0);
    g_signal_connect(G_OBJECT(button3), 'clicked', G_CALLBACK(@press), nil);

    button4 := gtk_button_new_with_label('Button4');
    gtk_box_pack_end(GTK_BOX(vbox), button4, False, False, 0);
    g_signal_connect(G_OBJECT(button4), 'clicked', G_CALLBACK(@press), nil);

    gtk_widget_show_all(window);

    g_signal_connect(G_OBJECT(window), 'destroy', G_CALLBACK(@gtk_main_quit), nil);

    GTK_Main;
  end;

begin
  main;
end.
