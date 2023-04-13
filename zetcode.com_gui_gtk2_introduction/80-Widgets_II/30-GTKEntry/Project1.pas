program Project1;

uses
  GLib2,
  Gdk2,
  Gtk2;

  procedure main;
  var
    Window, table, label3, label1, label2, entry1, entry2, entry3: PGtkWidget;
  begin
    GTK_Init(@argc, @argv);

    Window := gtk_window_new(GTK_WINDOW_TOPLEVEL);
    gtk_window_set_title(GTK_WINDOW(Window), 'GtkEntry');
    gtk_window_set_position(GTK_WINDOW(window), GTK_WIN_POS_CENTER);
    gtk_container_set_border_width(GTK_CONTAINER(Window), 5);

    table := gtk_table_new(3, 2, False);
    gtk_container_add(GTK_CONTAINER(Window), table);

    label1 := gtk_label_new('Name');
    gtk_table_attach(GTK_TABLE(table), label1, 0, 1, 0, 1, GTK_FILL or GTK_SHRINK, GTK_FILL or GTK_SHRINK, 5, 5);
    label2 := gtk_label_new('Age');
    gtk_table_attach(GTK_TABLE(table), label2, 0, 1, 1, 2, GTK_FILL or GTK_SHRINK, GTK_FILL or GTK_SHRINK, 5, 5);
    label3 := gtk_label_new('Occupation');
    gtk_table_attach(GTK_TABLE(table), label3, 0, 1, 2, 3, GTK_FILL or GTK_SHRINK, GTK_FILL or GTK_SHRINK, 5, 5);

    entry1 := gtk_entry_new;
    gtk_table_attach(GTK_TABLE(table), entry1, 1, 2, 0, 1, GTK_FILL or GTK_EXPAND, GTK_FILL or GTK_SHRINK, 5, 5);
    entry2 := gtk_entry_new;
    gtk_table_attach(GTK_TABLE(table), entry2, 1, 2, 1, 2, GTK_FILL or GTK_EXPAND, GTK_FILL or GTK_SHRINK, 5, 5);
    entry3 := gtk_entry_new;
    gtk_table_attach(GTK_TABLE(table), entry3, 1, 2, 2, 3, GTK_FILL or GTK_EXPAND, GTK_FILL or GTK_SHRINK, 5, 5);

    gtk_widget_show_all(window);

    g_signal_connect(G_OBJECT(window), 'destroy', G_CALLBACK(@gtk_main_quit), nil);

    GTK_Main;
  end;

begin
  main;
end.
