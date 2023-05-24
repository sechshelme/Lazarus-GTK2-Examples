program project1;

uses
  glib2,
  gdk2,
  gtk2;

  function main(argc: integer; argv: PChar): integer;
  var
    window: PGtkWidget;
  begin
    gtk_init(@argc, @argv);
    window := gtk_window_new(GTK_WINDOW_TOPLEVEL);
    gtk_window_set_title(GTK_WINDOW(window), 'Center');
    gtk_window_set_default_size(GTK_WINDOW(window), 230, 150);
    gtk_window_set_position(GTK_WINDOW(window), GTK_WIN_POS_CENTER);
    gtk_widget_show_all(window);

    g_signal_connect(window, 'destroy', G_CALLBACK(@gtk_main_quit), nil);
    gtk_main;
    Result := 0;
  end;

begin
  Halt(main(argc, @argv));
end.
