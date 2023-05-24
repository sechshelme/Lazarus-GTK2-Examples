program Project1;

uses
  GLib2,
  Gdk2,
  Gtk2,
  gdk2pixbuf;

  procedure press(widget: PGtkWidget; Caption: PChar); cdecl;
  var
    dialog: PGtkWidget;
    pixpuf: PGdkPixbuf;
  begin
    //    pixpuf := gdk_pixbuf_new_from_file('gtk-logo.svg', nil);
    pixpuf := gdk_pixbuf_new_from_file('project1.bmp', nil);
    dialog := gtk_about_dialog_new;
    gtk_about_dialog_set_name(GTK_ABOUT_DIALOG(dialog), 'Lazarus GTK');
    gtk_about_dialog_set_version(GTK_ABOUT_DIALOG(dialog), '2.0');
    gtk_about_dialog_set_copyright(GTK_ABOUT_DIALOG(dialog), '(c) GTK');
    gtk_about_dialog_set_comments(GTK_ABOUT_DIALOG(dialog), 'Dies ist ein About-Dialog Examples');
    gtk_about_dialog_set_website(GTK_ABOUT_DIALOG(dialog), 'https://docs.gtk.org/');
    gtk_about_dialog_set_logo(GTK_ABOUT_DIALOG(dialog), pixpuf);

    g_object_unref(pixpuf);
    pixpuf := nil;

    gtk_dialog_run(GTK_DIALOG(dialog));
    gtk_widget_destroy(dialog)
  end;

  procedure main;
  var
    Window, vbox, button1: PGtkWidget;
  begin
    GTK_Init(@argc, @argv);

    Window := gtk_window_new(GTK_WINDOW_TOPLEVEL);
    gtk_window_set_title(GTK_WINDOW(Window), 'Hallo');
    gtk_window_set_default_size(GTK_WINDOW(Window), 500, 500);
    gtk_window_set_position(GTK_WINDOW(window), GTK_WIN_POS_CENTER);

    gtk_container_set_border_width(GTK_CONTAINER(Window), 5);

    vbox := gtk_vbox_new(False, 0);
    gtk_container_add(GTK_CONTAINER(Window), vbox);

    button1 := gtk_button_new_with_label('About...');
    gtk_box_pack_start(GTK_BOX(vbox), button1, False, False, 0);
    g_signal_connect(G_OBJECT(button1), 'clicked', G_CALLBACK(@press), PChar('Button1'));

    gtk_widget_show_all(window);

    g_signal_connect(G_OBJECT(window), 'destroy', G_CALLBACK(@gtk_main_quit), nil);

    GTK_Main;
  end;

begin
  main;
end.
