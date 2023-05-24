program Project1;

uses
  GLib2,
  Gdk2,
  Gtk2;

  procedure main;
  var
    Window, align, label1: PGtkWidget;
  begin
    GTK_Init(@argc, @argv);

    Window := gtk_window_new(GTK_WINDOW_TOPLEVEL);
    gtk_window_set_title(GTK_WINDOW(Window), 'Hallo');
    gtk_window_set_default_size(GTK_WINDOW(Window), 500, 500);
    gtk_window_set_position(GTK_WINDOW(window), GTK_WIN_POS_CENTER);

    gtk_container_set_border_width(GTK_CONTAINER(Window), 5);

    align := gtk_alignment_new(0, 1, 0, 0);

    label1 := gtk_label_new('bootom-left');
    gtk_container_add(GTK_CONTAINER(align), label1);
    gtk_container_add(GTK_CONTAINER(Window), align);

    gtk_widget_show_all(window);

    g_signal_connect(G_OBJECT(window), 'destroy', G_CALLBACK(@gtk_main_quit), nil);

    GTK_Main;
  end;

begin
  main;
end.
