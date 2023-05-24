program project1;

uses
  glib2,
  gdk2,
  gtk2;

  procedure change_label(button: PGtkButton; Data: gpointer);
  begin
    gtk_label_set_label(GTK_LABEL(Data), 'Jetzt ist es anders...');
    gtk_label_set_angle(GTK_LABEL(Data), random(360));
  end;


  function main(argc: integer; argv: PChar): integer;
  var
    window, vbox, label1, button1, button2: PGtkWidget;
  begin
    gtk_init(@argc, @argv);
    window := gtk_window_new(GTK_WINDOW_TOPLEVEL);

    vbox := gtk_vbox_new(False, 0);
    gtk_container_add(GTK_CONTAINER(window), vbox);

    label1 := gtk_label_new('Dies ist ein ganz einfaches GTK-Programm mit einem Label1');
    gtk_label_set_angle(GTK_LABEL(label1), 2);
    gtk_box_pack_start(GTK_BOX(vbox), label1, False, False, 0);

    button1 := gtk_button_new_with_label('Neues Label');
    gtk_box_pack_start(GTK_BOX(vbox), button1, False, False, 0);
    g_signal_connect(button1, 'clicked', G_CALLBACK(@change_label), label1);

    button2 := gtk_button_new_with_label('Programm beenden');
    gtk_box_pack_start(GTK_BOX(vbox), button2, False, False, 0);
    g_signal_connect(button2, 'clicked', G_CALLBACK(@gtk_main_quit), nil);


    gtk_box_pack_start(GTK_BOX(vbox), gtk_label_new('Element 2'), False, False, 0);
    gtk_box_pack_start(GTK_BOX(vbox), gtk_label_new('Element 3'), False, False, 0);
    gtk_box_pack_end(GTK_BOX(vbox), gtk_label_new('Element 4'), False, False, 0);
    gtk_box_pack_end(GTK_BOX(vbox), gtk_label_new('Element 5'), False, False, 0);

    g_signal_connect(window, 'destroy', G_CALLBACK(@gtk_main_quit), nil);

    gtk_widget_show_all(window);

    gtk_main;
    Result := 0;
  end;

begin
  main(argc, @argv);

  //  Halt(main(argc, @argv));
end.
