program Project1;

uses
  Math,
  GLib2,
  Gdk2,
  Gtk2;

  procedure main;
  var
    Window, image: PGtkWidget;
  begin
    GTK_Init(@argc, @argv);

    Window := gtk_window_new(GTK_WINDOW_TOPLEVEL);
    gtk_window_set_title(GTK_WINDOW(Window), 'Red Rock');
    gtk_window_set_position(GTK_WINDOW(window), GTK_WIN_POS_CENTER);

    image := gtk_image_new_from_file('GTK_logo.svg');

    gtk_container_add(GTK_CONTAINER(Window), image);

    gtk_widget_show_all(window);

    g_signal_connect(G_OBJECT(window), 'destroy', G_CALLBACK(@gtk_main_quit), nil);

    GTK_Main;
  end;

begin
  SetExceptionMask([exDenormalized, exInvalidOp, exOverflow, exPrecision, exUnderflow, exZeroDivide]);
  main;
end.
