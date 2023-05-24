program project1;

uses
  glib2,
  gdk2,
  gtk2;

  procedure button_press(widget: PGtkWidget; statusbar: gpointer);
  var
    s: Pgchar;
    id: guint;
  begin
    s := g_strdup_printf('%s button clicked', gtk_button_get_label(GTK_BUTTON(widget)));
    id := gtk_statusbar_get_context_id(GTK_STATUSBAR(statusbar), s);
    gtk_statusbar_push(GTK_STATUSBAR(statusbar), id, s);
    g_free(s);
  end;

  function main(argc: integer; argv: PChar): integer;
  var
    window, vbox, statusbar, hbox, halign, button1, button2, balign,
      button3: PGtkWidget;
  begin
    gtk_init(@argc, @argv);
    window := gtk_window_new(GTK_WINDOW_TOPLEVEL);
    gtk_window_set_title(GTK_WINDOW(window), 'statusBar');
    gtk_window_set_default_size(GTK_WINDOW(window), 300, 200);

    vbox := gtk_vbox_new(False, 0);
    gtk_container_add(GTK_CONTAINER(window), vbox);

    hbox := gtk_hbox_new(False, 0);

    halign := gtk_alignment_new(0, 0, 0, 0);
    gtk_container_add(GTK_CONTAINER(halign), hbox);
    gtk_box_pack_start(GTK_BOX(vbox), halign, True, True, 5);

    button1 := gtk_button_new_with_label('Ok');
    gtk_widget_set_size_request(button1, 70, 30);
    gtk_box_pack_start(GTK_BOX(hbox), button1, True, True, 5);

    button2 := gtk_button_new_with_label('Apply');
    gtk_widget_set_size_request(button2, 70, 30);
    gtk_box_pack_start(GTK_BOX(hbox), button2, True, True, 5);

    button3 := gtk_button_new_with_label('Help');
    gtk_widget_set_size_request(button3, 70, 30);
    gtk_box_pack_start(GTK_BOX(hbox), button3, True, True, 5);

    balign := gtk_alignment_new(0, 1, 1, 0);

    statusbar := gtk_statusbar_new;
    gtk_container_add(GTK_CONTAINER(balign), statusbar);
    gtk_box_pack_start(GTK_BOX(vbox), balign, False, False, 0);

    g_signal_connect(G_OBJECT(button1), 'clicked', G_CALLBACK(@button_press), G_OBJECT(statusbar));
    g_signal_connect(G_OBJECT(button2), 'clicked', G_CALLBACK(@button_press), G_OBJECT(statusbar));
    g_signal_connect(G_OBJECT(button3), 'clicked', G_CALLBACK(@button_press), G_OBJECT(statusbar));


    g_signal_connect(G_OBJECT(window), 'destroy', G_CALLBACK(@gtk_main_quit), nil);

    gtk_widget_show_all(window);
    gtk_main;
    Result := 0;
  end;

begin
  Halt(main(argc, @argv));
end.
