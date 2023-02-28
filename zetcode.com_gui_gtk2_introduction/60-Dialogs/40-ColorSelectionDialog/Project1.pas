program Project1;

uses
  Math,
  GLib2,
  Gdk2,
  Gtk2,
  gdk2pixbuf;

  procedure select_Color(widget: PGtkWidget; lab: gpointer); cdecl;
  var
    dialog: PGtkWidget;
    res: TGtkResponseType;
    color: TGdkColor;
    colorsel: PGtkColorSelection;
  begin
    dialog := gtk_color_selection_dialog_new('Select Font Color');
    res := gtk_dialog_run(GTK_DIALOG(dialog));

    if res = GTK_RESPONSE_OK then begin
      colorsel := GTK_COLOR_SELECTION(GTK_COLOR_SELECTION_DIALOG(dialog)^.colorsel);
      gtk_color_selection_get_current_color(colorsel, @color);
      gtk_widget_modify_fg(GTK_WIDGET(lab), GTK_STATE_NORMAL, @color);
    end;

    gtk_widget_destroy(dialog);
  end;

  procedure main;
  var
    Window, vbox, button1, lab: PGtkWidget;
  begin
    GTK_Init(@argc, @argv);

    Window := gtk_window_new(GTK_WINDOW_TOPLEVEL);
    gtk_window_set_title(GTK_WINDOW(Window), 'Color Selection Dialog');
    gtk_window_set_default_size(GTK_WINDOW(Window), 500, 500);
    gtk_window_set_position(GTK_WINDOW(window), GTK_WIN_POS_CENTER);

    gtk_container_set_border_width(GTK_CONTAINER(Window), 2);

    vbox := gtk_vbox_new(False, 0);
    gtk_container_add(GTK_CONTAINER(Window), vbox);

    lab := gtk_label_new('ZetCode');
    gtk_box_pack_start(GTK_BOX(vbox), lab, False, False, 0);

    button1 := gtk_button_new_with_label('About...');
    gtk_box_pack_start(GTK_BOX(vbox), button1, False, False, 0);
    g_signal_connect(G_OBJECT(button1), 'clicked', G_CALLBACK(@select_Color), lab);

    g_signal_connect(G_OBJECT(window), 'destroy', G_CALLBACK(@gtk_main_quit), nil);
    gtk_widget_show_all(window);

    GTK_Main;
  end;

begin
  SetExceptionMask([exDenormalized, exInvalidOp, exOverflow, exPrecision, exUnderflow, exZeroDivide]);
  main;
end.
