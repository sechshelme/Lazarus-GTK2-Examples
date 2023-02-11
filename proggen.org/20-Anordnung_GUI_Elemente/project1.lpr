program project1;

uses
  glib2,
  gdk2,
  gtk2;

  function main(argc: integer; argv: PChar): integer;
  var
    window, vbox: PGtkWidget;
  begin
    gtk_init(@argc, @argv);
    window := gtk_window_new(GTK_WINDOW_TOPLEVEL);

    vbox := gtk_vbox_new(False, 0);
    gtk_container_add(GTK_CONTAINER(window), vbox);

    gtk_box_pack_start(GTK_BOX(vbox), gtk_label_new('Element 1'), False, False, 0);
    gtk_box_pack_start(GTK_BOX(vbox), gtk_label_new('Element 2'), False, False, 0);
    gtk_box_pack_start(GTK_BOX(vbox), gtk_label_new('Element 3'), False, False, 0);
    gtk_box_pack_end(GTK_BOX(vbox), gtk_label_new('Element 4'), False, False, 0);
    gtk_box_pack_end(GTK_BOX(vbox), gtk_label_new('Element 5'), False, False, 0);

    g_signal_connect(window, 'destroy', G_CALLBACK(@gtk_main_quit), nil);

    gtk_widget_show_all(window);

    gtk_main;
    Result := 0;
  //  gtk_main_quit;


    ReadLn;


    window := gtk_window_new(GTK_WINDOW_TOPLEVEL);
    vbox := gtk_vbox_new(False, 0);
    gtk_container_add(GTK_CONTAINER(window), vbox);
    gtk_box_pack_end(GTK_BOX(vbox), gtk_button_new_with_mnemonic('_Test'), False, False, 0);
    gtk_box_pack_end(GTK_BOX(vbox), gtk_button_new_with_mnemonic('_Test'), False, False, 0);

    gtk_widget_show_all(window);
    g_signal_connect(window, 'destroy', G_CALLBACK(@gtk_main_quit), nil);
    gtk_main;

  end;

begin
  main(argc, @argv);

//  Halt(main(argc, @argv));
end.
