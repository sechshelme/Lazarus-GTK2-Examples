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
    Window, Btn_Align, label1, BthHBox, btnYes, btnNo, btnCancel, btnHelp, vbox, Label_Align: PGtkWidget;
  begin
    GTK_Init(@argc, @argv);

    Window := gtk_window_new(GTK_WINDOW_TOPLEVEL);
    gtk_window_set_title(GTK_WINDOW(Window), 'Hallo');
    gtk_window_set_default_size(GTK_WINDOW(Window), 500, 500);
    gtk_window_set_position(GTK_WINDOW(window), GTK_WIN_POS_CENTER);
    gtk_container_set_border_width(GTK_CONTAINER(Window), 5);

    vbox := gtk_vbox_new(False, 0);
    gtk_container_add(GTK_CONTAINER(Window), vbox);

    // Label
    Label_Align := gtk_alignment_new(0.5, 0.5, 0, 0);
    label1 := gtk_label_new(nil);

    gtk_label_set_markup(GTK_LABEL(label1), '<span font="20" color="red"><b>Red</b></span>' + LineEnding + '<span font="16" color="orange"><b>green</b></span>' + LineEnding + '<span font="12" color="green"><b>Red</b></span>' + LineEnding +
      LineEnding + '<b><i>Frage:</i></b>' + LineEnding + 'Ich bin ein YES/NO Dialog,' + LineEnding + 'Mit einem sehr langen Text !' + LineEnding + 'Bitte drücke Yes, No, Abbrechen oder Hilfe');
    gtk_container_add(GTK_CONTAINER(Label_Align), label1);
    gtk_container_add(GTK_CONTAINER(vbox), Label_Align);

    // Schalter Box
    BthHBox := gtk_hbox_new(False, 0);

    btnYes := gtk_button_new_with_label('Ja');
    gtk_box_pack_start(GTK_BOX(BthHBox), btnYes, False, False, 0);

    btnNo := gtk_button_new_with_label('Nein');
    gtk_box_pack_start(GTK_BOX(BthHBox), btnNo, False, False, 0);

    btnCancel := gtk_button_new_with_label('Abbrechen');
    gtk_box_pack_start(GTK_BOX(BthHBox), btnCancel, False, False, 0);

    btnHelp := gtk_button_new_with_label('Hilfe');
    gtk_box_pack_start(GTK_BOX(BthHBox), btnHelp, False, False, 0);

    Btn_Align := gtk_alignment_new(1, 1, 0, 0);
    gtk_container_add(GTK_CONTAINER(Btn_Align), BthHBox);
    gtk_box_pack_end(GTK_BOX(vbox), Btn_Align, False, False, 0);

    // Global
    gtk_widget_show_all(window);
    g_signal_connect(G_OBJECT(window), 'destroy', G_CALLBACK(@gtk_main_quit), nil);

    GTK_Main;
  end;

begin
  main;
end.
