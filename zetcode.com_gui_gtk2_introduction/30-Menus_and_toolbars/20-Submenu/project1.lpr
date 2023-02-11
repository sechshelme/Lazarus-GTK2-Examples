program project1;

uses
  glib2,
  gdk2,
  gtk2;

  procedure gtk_widget_set_tooltip_text(window: PGtkWidget; title: Pgchar); cdecl; external gtklib;

  function main(argc: integer; argv: PChar): integer;
  var
    window, vbox, menubar, fileMi, quitMi, fileMenu, imprMenu, imprMi, feedMi, bookMi, mailMi, sep: PGtkWidget;
  begin
    gtk_init(@argc, @argv);
    window := gtk_window_new(GTK_WINDOW_TOPLEVEL);
    gtk_window_set_position(GTK_WINDOW(window), GTK_WIN_POS_CENTER);
    gtk_window_set_title(GTK_WINDOW(window), 'Submenu');
    gtk_window_set_default_size(GTK_WINDOW(window), 300, 200);

    vbox := gtk_vbox_new(gFALSE, 0);
    gtk_container_add(GTK_CONTAINER(window), vbox);

    menubar := gtk_menu_bar_new;

    fileMenu := gtk_menu_new;
    fileMi := gtk_menu_item_new_with_mnemonic('_File');
    gtk_widget_set_tooltip_text(fileMi, 'Datei');

    imprMenu := gtk_menu_new;
    imprMi := gtk_menu_item_new_with_label('Import');
    feedMi := gtk_menu_item_new_with_label('Import news feed...');
    bookMi := gtk_menu_item_new_with_label('Import bookmarks...');
    mailMi := gtk_menu_item_new_with_label('Import mail...');

    gtk_menu_item_set_submenu(GTK_MENU_ITEM(imprMi), imprMenu);
    gtk_menu_shell_append(GTK_MENU_SHELL(imprMenu), feedMi);
    gtk_menu_shell_append(GTK_MENU_SHELL(imprMenu), bookMi);
    gtk_menu_shell_append(GTK_MENU_SHELL(imprMenu), mailMi);
    sep := gtk_separator_menu_item_new;
    quitMi := gtk_menu_item_new_with_mnemonic('_Quit');

    gtk_menu_item_set_submenu(GTK_MENU_ITEM(fileMi), fileMenu);
    gtk_menu_shell_append(GTK_MENU_SHELL(fileMenu), imprMi);
    gtk_menu_shell_append(GTK_MENU_SHELL(fileMenu), sep);
    gtk_menu_shell_append(GTK_MENU_SHELL(fileMenu), quitMi);
    gtk_menu_shell_append(GTK_MENU_SHELL(menubar), fileMi);
    gtk_box_pack_start(GTK_BOX(vbox), menubar, gFALSE, False, 0);

    g_signal_connect(G_OBJECT(quitMi), 'activate', G_CALLBACK(@gtk_main_quit), nil);
    g_signal_connect(G_OBJECT(window), 'destroy', G_CALLBACK(@gtk_main_quit), nil);

    gtk_widget_show_all(window);
    gtk_main;
    Result := 0;
  end;

begin
  Halt(main(argc, @argv));
end.
