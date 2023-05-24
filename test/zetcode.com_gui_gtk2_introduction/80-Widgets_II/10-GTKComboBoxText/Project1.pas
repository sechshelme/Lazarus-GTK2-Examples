program Project1;

uses
  GLib2,
  Gdk2,
  Gtk2;

  procedure combo_selected(w: PGtkWidget; window: gpointer);
  var
    Text: Pgchar;
  begin
    Text := gtk_combo_box_get_active_text(GTK_COMBO_BOX(w));
    WriteLn(Text);
    gtk_label_set_text(GTK_LABEL(window), Text);
    g_free(Text);
  end;

  procedure main;
  var
    Window, btn1, hbox, vbox, combo, label1: PGtkWidget;
  begin
    GTK_Init(@argc, @argv);

    Window := gtk_window_new(GTK_WINDOW_TOPLEVEL);
    gtk_window_set_title(GTK_WINDOW(Window), 'GtkComboBox');
    gtk_window_set_default_size(GTK_WINDOW(Window), 500, 500);
    gtk_window_set_position(GTK_WINDOW(window), GTK_WIN_POS_CENTER);
    gtk_container_set_border_width(GTK_CONTAINER(Window), 5);

    hbox := gtk_hbox_new(False, 0);
    gtk_container_add(GTK_CONTAINER(Window), hbox);

    vbox := gtk_vbox_new(False, 15);
    gtk_box_pack_start(GTK_BOX(hbox), vbox, False, False, 0);

    combo := gtk_combo_box_new_text;

    gtk_combo_box_append_text(GTK_COMBO_BOX(combo), 'Unbuntu');
    gtk_combo_box_append_text(GTK_COMBO_BOX(combo), 'Arch');
    gtk_combo_box_append_text(GTK_COMBO_BOX(combo), 'Fedora');
    gtk_combo_box_append_text(GTK_COMBO_BOX(combo), 'Mint');
    gtk_combo_box_append_text(GTK_COMBO_BOX(combo), 'Gentoo');
    gtk_combo_box_append_text(GTK_COMBO_BOX(combo), 'Debian');

    gtk_combo_box_set_active(GTK_COMBO_BOX(combo),1);

    gtk_box_pack_start(GTK_BOX(vbox), combo, False, False, 0);

    label1 := gtk_label_new('...');
    gtk_box_pack_start(GTK_BOX(vbox), label1, False, False, 0);


    g_signal_connect(G_OBJECT(combo), 'changed', G_CALLBACK(@combo_selected), label1);

    gtk_widget_show_all(window);

    g_signal_connect(G_OBJECT(window), 'destroy', G_CALLBACK(@gtk_main_quit), nil);

    GTK_Main;
  end;

begin
  main;
end.
