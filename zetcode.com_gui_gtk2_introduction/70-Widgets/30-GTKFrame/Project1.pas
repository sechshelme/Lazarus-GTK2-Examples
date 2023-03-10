program Project1;

uses
  GLib2,
  Gdk2,
  Gtk2;

  procedure main;
  var
    Window, table, frame1, frame2, frame3, frame4: PGtkWidget;
  begin
    GTK_Init(@argc, @argv);

    Window := gtk_window_new(GTK_WINDOW_TOPLEVEL);
    gtk_window_set_title(GTK_WINDOW(Window), 'GtkButton');
    gtk_window_set_default_size(GTK_WINDOW(Window), 500, 500);
    gtk_window_set_position(GTK_WINDOW(window), GTK_WIN_POS_CENTER);
    gtk_container_set_border_width(GTK_CONTAINER(Window), 5);

    table := gtk_table_new(2, 2, True);
    gtk_table_set_row_spacings(GTK_TABLE(table), 10);
    gtk_table_set_col_spacings(GTK_TABLE(table), 10);
    gtk_container_add(GTK_CONTAINER(Window), table);

    frame1 := gtk_frame_new('Shadow In');
    gtk_frame_set_shadow_type(GTK_FRAME(frame1), GTK_SHADOW_IN);
    gtk_table_attach_defaults(GTK_TABLE(table), frame1, 0, 1, 0, 1);

    frame2 := gtk_frame_new('Shadow Out');
    gtk_frame_set_shadow_type(GTK_FRAME(frame2), GTK_SHADOW_OUT);
    gtk_table_attach_defaults(GTK_TABLE(table), frame2, 0, 1, 1, 2);

    frame3 := gtk_frame_new('Shadow Etched In');
    gtk_frame_set_shadow_type(GTK_FRAME(frame3), GTK_SHADOW_ETCHED_IN);
    gtk_table_attach_defaults(GTK_TABLE(table), frame3, 1, 2, 0, 1);

    frame4 := gtk_frame_new('Shadow Etched Out');
    gtk_frame_set_shadow_type(GTK_FRAME(frame4), GTK_SHADOW_ETCHED_OUT);
    gtk_table_attach_defaults(GTK_TABLE(table), frame4, 1, 2, 1, 2);

    g_signal_connect(G_OBJECT(window), 'destroy', G_CALLBACK(@gtk_main_quit), nil);
    gtk_widget_show_all(window);

    GTK_Main;
  end;

begin
  main;
end.
