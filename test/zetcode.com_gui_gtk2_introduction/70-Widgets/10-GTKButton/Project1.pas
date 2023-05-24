program Project1;

uses
  GLib2,
  Gdk2,
  Gtk2;

  procedure main;
  var
    Window, align, btn1: PGtkWidget;
  begin
    GTK_Init(@argc, @argv);

    Window := gtk_window_new(GTK_WINDOW_TOPLEVEL);
    gtk_window_set_title(GTK_WINDOW(Window), 'GtkButton');
    gtk_window_set_default_size(GTK_WINDOW(Window), 500, 500);
    gtk_window_set_position(GTK_WINDOW(window), GTK_WIN_POS_CENTER);

    gtk_container_set_border_width(GTK_CONTAINER(Window), 5);

    align := gtk_alignment_new(0, 0, 0, 0);
    gtk_container_add(GTK_CONTAINER(Window), align);

    btn1 := gtk_button_new_with_label('Quit');
    gtk_container_add(GTK_CONTAINER(align), btn1);
    g_signal_connect(G_OBJECT(btn1), 'clicked', G_CALLBACK(@gtk_main_quit), G_OBJECT(Window));

    gtk_widget_show_all(window);

    g_signal_connect(G_OBJECT(window), 'destroy', G_CALLBACK(@gtk_main_quit), nil);

    GTK_Main;
  end;

begin
  main;
end.
