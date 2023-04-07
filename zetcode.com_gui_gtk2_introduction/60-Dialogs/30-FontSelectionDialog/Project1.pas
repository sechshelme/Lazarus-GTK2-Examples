program Project1;

uses
  pango,
  GLib2,
  Gdk2,
  Gtk2,
  gdk2pixbuf;

  procedure select_Font(widget: PGtkWidget; lab: gpointer); cdecl;
  var
    dialog: PGtkWidget;
    res: TGtkResponseType;
    fontname: Pgchar;
    font_desc: PPangoFontDescription;
    col: TGtkStateType;
  begin
    dialog := gtk_font_selection_dialog_new('Select Font');
    res := gtk_dialog_run(GTK_DIALOG(dialog));

    if (res = GTK_RESPONSE_OK)or(res = GTK_RESPONSE_APPLY) then begin
      fontname := gtk_font_selection_dialog_get_font_name(GTK_FONT_SELECTION_DIALOG(dialog));
      font_desc := pango_font_description_from_string(fontname);
      gtk_widget_modify_font(GTK_WIDGET(lab), font_desc);
      g_free(fontname);
    end;

    gtk_widget_destroy(dialog);
  end;

  procedure main;
  var
    Window, vbox, button1, lab: PGtkWidget;
  begin
    GTK_Init(@argc, @argv);

    Window := gtk_window_new(GTK_WINDOW_TOPLEVEL);
    gtk_window_set_title(GTK_WINDOW(Window), 'Font Selection Dialog');
    gtk_window_set_default_size(GTK_WINDOW(Window), 500, 500);
    gtk_window_set_position(GTK_WINDOW(window), GTK_WIN_POS_CENTER);

    gtk_container_set_border_width(GTK_CONTAINER(Window), 2);

    vbox := gtk_vbox_new(False, 0);
    gtk_container_add(GTK_CONTAINER(Window), vbox);

    lab:=gtk_label_new('ZetCode');
    gtk_box_pack_start(GTK_BOX(vbox), lab, False, False, 0);

    button1 := gtk_button_new_with_label('About...');
    gtk_box_pack_start(GTK_BOX(vbox), button1, False, False, 0);
    g_signal_connect(G_OBJECT(button1), 'clicked', G_CALLBACK(@select_Font), lab);

    g_signal_connect(G_OBJECT(window), 'destroy', G_CALLBACK(@gtk_main_quit), nil);
    gtk_widget_show_all(window);

    GTK_Main;
  end;

begin
  main;
end.
