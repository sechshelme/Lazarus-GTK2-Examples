program Project1;

uses
  GLib2,
  Gdk2,
  Gtk2;

  procedure button_clicked(widget: PGtkWidget; Data: gpointer); cdecl;
  begin
    WriteLn('Press Button: ', gtk_button_get_label(GTK_BUTTON(widget)));
  end;

  procedure main;
  var
    Window, halign, btn: PGtkWidget;
  begin
    GTK_Init(@argc, @argv);

    Window := gtk_window_new(GTK_WINDOW_TOPLEVEL);
    gtk_window_set_title(GTK_WINDOW(Window), 'Hallo');
    gtk_window_set_default_size(GTK_WINDOW(Window), 500, 500);
    gtk_container_set_border_width(GTK_CONTAINER(Window), 15);
    gtk_window_set_position(GTK_WINDOW(window), GTK_WIN_POS_CENTER);

    halign := gtk_alignment_new(0.5, 0.5, 0.5, 0.5);

    btn := gtk_button_new_with_label('Button 1');
    gtk_container_add(GTK_CONTAINER(halign), btn);
    g_signal_connect(G_OBJECT(btn), 'clicked', G_CALLBACK(@button_clicked), nil);

    gtk_container_add(GTK_CONTAINER(Window), halign);

    g_signal_connect(G_OBJECT(window), 'destroy', G_CALLBACK(@gtk_main_quit), nil);

    gtk_widget_show_all(window);

    GTK_Main;
  end;

begin
  main;
end.
