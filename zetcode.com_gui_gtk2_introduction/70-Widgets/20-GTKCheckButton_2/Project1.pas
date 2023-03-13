program Project1;

uses
  GLib2,
  Gdk2,
  Gtk2;

  procedure button_clicked(widget: PGtkWidget; window: gpointer); cdecl;
  begin
    if gtk_toggle_button_get_active(GTK_TOGGLE_BUTTON(widget)) then begin
      gtk_window_set_title(window, 'GtkCheckButton');
    end else begin
      (gtk_window_set_title(window, ''));
    end;
    WriteLn('Press Button: ', gtk_button_get_label(GTK_BUTTON(widget)));
  end;


  procedure main;
  var
    Window, halign: PGtkWidget;
    cb: array of PGtkWidget;
    i: integer;
  var
    s: string;
  begin
    GTK_Init(@argc, @argv);

    Window := gtk_window_new(GTK_WINDOW_TOPLEVEL);
    gtk_window_set_title(GTK_WINDOW(Window), 'GtkButton');
    gtk_window_set_default_size(GTK_WINDOW(Window), 500, 500);
    gtk_window_set_position(GTK_WINDOW(window), GTK_WIN_POS_CENTER);
    gtk_container_set_border_width(GTK_CONTAINER(Window), 5);

    halign := gtk_vbox_new(False, 0);
    gtk_container_add(GTK_CONTAINER(Window), halign);

    SetLength(cb, 10);

    for i := 0 to Length(cb) - 1 do begin
      str(i, s);
      cb[i] := gtk_check_button_new_with_label(PChar('CheckBox ' + s));
      gtk_toggle_button_set_active(GTK_TOGGLE_BUTTON(cb[i]), True);
      gtk_box_pack_start(GTK_BOX(halign), cb[i], False, False, 0);

      g_signal_connect(G_OBJECT(cb[i]), 'clicked', G_CALLBACK(@button_clicked), G_OBJECT(Window));
    end;

    GTK_WIDGET_UNSET_FLAGS(cb[2], GTK_CAN_FOCUS);

    g_signal_connect(G_OBJECT(window), 'destroy', G_CALLBACK(@gtk_main_quit), nil);
    gtk_widget_show_all(window);

    GTK_Main;
  end;

begin
  main;
end.
