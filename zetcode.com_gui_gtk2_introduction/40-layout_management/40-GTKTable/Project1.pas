program Project1;

uses
  GLib2,
  Gdk2,
  Gtk2;

  procedure press(widget: PGtkWidget; Caption: PChar); cdecl;
  begin
    WriteLn('Cklicked: ', Caption);
  end;

  procedure main;
  var
    Window, button1, table: PGtkWidget;
    i, j: integer;
    values: array of PChar = ('7', '8', '9', '/', '4', '5', '6', '*', '1', '2', '3', '-', '0', '.', '=', '+');
    index: integer = 0;
  begin
    GTK_Init(@argc, @argv);

    Window := gtk_window_new(GTK_WINDOW_TOPLEVEL);
    gtk_window_set_title(GTK_WINDOW(Window), 'GtkTable');
    gtk_window_set_default_size(GTK_WINDOW(Window), 500, 500);
    gtk_window_set_position(GTK_WINDOW(window), GTK_WIN_POS_CENTER);

    gtk_container_set_border_width(GTK_CONTAINER(Window), 5);

    table := gtk_table_new(4, 4, True);

    gtk_table_set_row_spacings(GTK_TABLE(table), 2);
    gtk_table_set_row_spacings(GTK_TABLE(table), 2);

    for i := 0 to 3 do begin
      for j := 0 to 3 do begin
        button1 := gtk_button_new_with_label(values[index]);
        gtk_table_attach_defaults(GTK_TABLE(table), button1, j, j + 1, i, i + 1);
        g_signal_connect(G_OBJECT(button1), 'clicked', G_CALLBACK(@press), values[index]);
        Inc(index);
      end;
    end;

    gtk_container_add(GTK_CONTAINER(Window), table);

    gtk_widget_show_all(window);

    g_signal_connect(G_OBJECT(window), 'destroy', G_CALLBACK(@gtk_main_quit), nil);

    GTK_Main;
  end;

begin
  main;
end.
