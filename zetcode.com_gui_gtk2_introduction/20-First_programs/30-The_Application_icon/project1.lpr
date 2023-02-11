program project1;

uses
  glib2,
  gdk2,
  gtk2,
  gdk2pixbuf;

  function create_pixbuf(const filename: Pgchar): PGdkPixbuf;
  var
    pixbuf: PGdkPixbuf;
    error: PGError = nil;
  begin
    pixbuf := gdk_pixbuf_new_from_file(filename, @error);
    if pixbuf = nil then begin
      WriteLn(error^.message);
      g_error_free(error);
    end;
    Result := pixbuf;
  end;

  function main(argc: integer; argv: PChar): integer;
  var
    window: PGtkWidget;
    icon: PGdkPixbuf;
  begin
    gtk_init(@argc, @argv);
    window := gtk_window_new(GTK_WINDOW_TOPLEVEL);
    gtk_window_set_title(GTK_WINDOW(window), 'Icon');
    gtk_window_set_default_size(GTK_WINDOW(window), 230, 150);
    gtk_window_set_position(GTK_WINDOW(window), GTK_WIN_POS_CENTER);
    gtk_widget_show_all(window);

    icon := create_pixbuf('project1.ico');
    gtk_window_set_icon(GTK_WINDOW(window), icon);

    g_signal_connect(window, 'destroy', G_CALLBACK(@gtk_main_quit), nil);
    gtk_main;
    Result := 0;
  end;

begin
  Halt(main(argc, @argv));
end.
