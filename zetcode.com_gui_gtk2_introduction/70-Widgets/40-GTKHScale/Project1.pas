program Project1;

uses
  Math,
  GLib2,
  Gdk2,
  Gtk2;

  procedure value_changed(range: PGtkRange; win: PGtkWidget); cdecl;
  var
    val: gdouble;
    str: Pgchar;
  begin
    val := gtk_range_get_value(range);
    str := g_strdup_printf('%.f', val);
    gtk_label_set_text(GTK_LABEL(win), str);
    g_free(str);
  end;


  procedure main;
  var
    Window, hbox, hscale, label1, vbox: PGtkWidget;
  begin
    GTK_Init(@argc, @argv);

    Window := gtk_window_new(GTK_WINDOW_TOPLEVEL);
    gtk_window_set_title(GTK_WINDOW(Window), 'GtkButton');
    gtk_window_set_default_size(GTK_WINDOW(Window), 500, 500);
    gtk_window_set_position(GTK_WINDOW(window), GTK_WIN_POS_CENTER);
    gtk_container_set_border_width(GTK_CONTAINER(Window), 5);

    vbox := gtk_vbox_new(False, 0);

    hbox := gtk_hbox_new(False, 0);
    gtk_box_pack_start(GTK_BOX(vbox), hbox, True, True, 0);

    gtk_container_add(GTK_CONTAINER(Window), vbox);

    hscale := gtk_hscale_new_with_range(0, 100, 1);
    gtk_scale_set_draw_value(GTK_SCALE(hscale), False);
    gtk_widget_set_size_request(hscale, 150, -1);
    gtk_container_add(GTK_CONTAINER(hbox), hscale);

    label1 := gtk_label_new('...');
    gtk_container_add(GTK_CONTAINER(hbox), label1);

    g_signal_connect(G_OBJECT(hscale), 'value-changed', G_CALLBACK(@value_changed), label1);

    g_signal_connect(G_OBJECT(window), 'destroy', G_CALLBACK(@gtk_main_quit), nil);
    gtk_widget_show_all(window);

    GTK_Main;
  end;

begin
  SetExceptionMask([exDenormalized, exInvalidOp, exOverflow, exPrecision, exUnderflow, exZeroDivide]);
  main;
end.
