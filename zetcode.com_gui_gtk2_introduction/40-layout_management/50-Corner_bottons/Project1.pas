program Project1;

uses
  GLib2,
  Gdk2,
  Gtk2;

  procedure press(widget: PGtkWidget; event: PGdkEventButton; user_data: gpointer); cdecl;
  begin
    WriteLn('Press Button ', PtrUInt(user_data));
  end;

  procedure main;
  var
    Window, halign, label1, BthHBox, btnYes, btnNo, btnCancel, btnHelp, vbox, Label_Align: PGtkWidget;
  begin
    GTK_Init(@argc, @argv);

    Window := gtk_window_new(GTK_WINDOW_TOPLEVEL);
    gtk_window_set_title(GTK_WINDOW(Window), 'Hallo');
    gtk_window_set_default_size(GTK_WINDOW(Window), 500, 500);
    gtk_window_set_position(GTK_WINDOW(window), GTK_WIN_POS_CENTER);
    gtk_container_set_border_width(GTK_CONTAINER(Window), 5);

    vbox := gtk_vbox_new(False, 5);
    gtk_container_add(GTK_CONTAINER(Window), vbox);

    // Label
    Label_Align := gtk_alignment_new(0.5, 0.5, 0, 0);
    label1 := gtk_label_new('Ich bin ein YES/NO Dialog,' + LineEnding + 'Mit einem sehr langen Text !' + LineEnding + 'Bitte drücke Yes, No, Abbrechen oder Hilfe');
    gtk_container_add(GTK_CONTAINER(Label_Align), label1);
    gtk_container_add(GTK_CONTAINER(vbox), Label_Align);

    // Schalter Box
    BthHBox := gtk_hbox_new(False, 3);

    btnYes := gtk_button_new_with_label('Ja');
    gtk_widget_set_size_request(btnYes, 75,25);
    gtk_box_pack_start(GTK_BOX(BthHBox), btnYes, False, False, 0);

    btnNo := gtk_button_new_with_label('Nein');
    gtk_widget_set_size_request(btnNo, 75,25);
    gtk_box_pack_start(GTK_BOX(BthHBox), btnNo, False, False, 0);

    btnCancel := gtk_button_new_with_label('Abbrechen');
    gtk_widget_set_size_request(btnCancel, 75,25);
    gtk_box_pack_start(GTK_BOX(BthHBox), btnCancel, False, False, 0);

    btnHelp := gtk_button_new_with_label('Hilfe');
    gtk_widget_set_size_request(btnHelp, 75,25);
    gtk_box_pack_start(GTK_BOX(BthHBox), btnHelp, False, False, 0);

    halign := gtk_alignment_new(1, 1, 0, 0);
    gtk_container_add(GTK_CONTAINER(halign), BthHBox);
    gtk_box_pack_end(GTK_BOX(vbox), halign, False, False, 0);

    // Global
    gtk_widget_show_all(window);
    g_signal_connect(G_OBJECT(window), 'destroy', G_CALLBACK(@gtk_main_quit), nil);

    GTK_Main;
  end;

begin
  main;
end.
