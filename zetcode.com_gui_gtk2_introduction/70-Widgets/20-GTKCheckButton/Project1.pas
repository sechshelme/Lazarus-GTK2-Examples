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
    Window, halign, cb: PGtkWidget;
  begin
    GTK_Init(@argc, @argv);

    Window := gtk_window_new(GTK_WINDOW_TOPLEVEL);
    gtk_window_set_title(GTK_WINDOW(Window), 'GtkButton');
    gtk_window_set_default_size(GTK_WINDOW(Window), 500, 500);
    gtk_window_set_position(GTK_WINDOW(window), GTK_WIN_POS_CENTER);
    gtk_container_set_border_width(GTK_CONTAINER(Window), 5);

    halign := gtk_alignment_new(0, 0, 0, 0);
    gtk_container_add(GTK_CONTAINER(Window), halign);

    cb := gtk_check_button_new_with_label('Show title');
    gtk_toggle_button_set_active(GTK_TOGGLE_BUTTON(cb), True);

    GTK_WIDGET_UNSET_FLAGS(cb, GTK_CAN_FOCUS);
    gtk_container_add(GTK_CONTAINER(halign), cb);

    g_signal_connect(G_OBJECT(cb), 'clicked', G_CALLBACK(@button_clicked), G_OBJECT(Window));

    g_signal_connect(G_OBJECT(window), 'destroy', G_CALLBACK(@gtk_main_quit), nil);
    gtk_widget_show_all(window);

    GTK_Main;
  end;

begin
  main;
end.
