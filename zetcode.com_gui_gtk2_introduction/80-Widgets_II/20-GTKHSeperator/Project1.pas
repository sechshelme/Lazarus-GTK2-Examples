program Project1;

uses
  GLib2,
  Gdk2,
  Gtk2;

  procedure main;
  var
    Window, btn1, hbox, vbox, combo, label1, label2, hseperator: PGtkWidget;
  begin
    GTK_Init(@argc, @argv);

    Window := gtk_window_new(GTK_WINDOW_TOPLEVEL);
    gtk_window_set_title(GTK_WINDOW(Window), 'GtkHSeperator');
    gtk_window_set_resizable(GTK_WINDOW(Window), False);
    gtk_window_set_position(GTK_WINDOW(window), GTK_WIN_POS_CENTER);
    gtk_container_set_border_width(GTK_CONTAINER(Window), 10);

    vbox := gtk_vbox_new(False, 10);
    gtk_container_add(GTK_CONTAINER(Window), vbox);

    label1:=gtk_label_new(
      'Zinc is a moderately reactive, blue gray metal '+
      'that tarnishes in moist air and burns in air with a bright bluish-green flame,'+
      'giving off fumes of zinc oxide. It reacts with acids, alkalis and other non-metals.'+
      'If not completely pure, zinc reacts with dilute acids to release hydrogen.');

    gtk_label_set_line_wrap(GTK_LABEL(label1), True);
    gtk_box_pack_start(GTK_BOX(vbox), label1, False, True, 0);

    hseperator := gtk_hseparator_new;
    gtk_box_pack_start(GTK_BOX(vbox), hseperator, False, True, 0);

    label2 := gtk_label_new(
      'Copper is an essential trace nutrient to all high '+
      'plants and animals. In animals, including humans, it is found primarily in '+
      'the bloodstream, as a co-factor in various enzymes, and in copper-based pigments. '+
      'However, in sufficient amounts, copper can be poisonous and even fatal to organisms.');

    gtk_label_set_line_wrap(GTK_LABEL(label2), True);
    gtk_box_pack_start(GTK_BOX(vbox), label2, False, True, 0);


    gtk_widget_show_all(window);

    g_signal_connect(G_OBJECT(window), 'destroy', G_CALLBACK(@gtk_main_quit), nil);

    GTK_Main;
  end;

begin
  main;
end.
