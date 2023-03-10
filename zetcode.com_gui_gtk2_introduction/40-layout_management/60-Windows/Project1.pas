program Project1;

uses
  Math,
  GLib2,
  Gdk2,
  Gtk2;

  procedure press(widget: PGtkWidget; event: PGdkEventButton; user_data: gpointer); cdecl;
  begin
    WriteLn('Press Button ', PtrUInt(user_data));
  end;

  procedure main;
  var
    window, table, titel, halign, wins, actBtn, valign, clsBtn, halign2, hlpBtn, okBtn: PGtkWidget;
  begin
    GTK_Init(@argc, @argv);

    Window := gtk_window_new(GTK_WINDOW_TOPLEVEL);
    gtk_window_set_title(GTK_WINDOW(Window), 'windows');
    gtk_window_set_default_size(GTK_WINDOW(Window), 500, 500);
    gtk_window_set_position(GTK_WINDOW(window), GTK_WIN_POS_CENTER);
    gtk_container_set_border_width(GTK_CONTAINER(Window), 15);

    table := gtk_table_new(6, 4, False);
    gtk_table_set_col_spacings(GTK_TABLE(table), 3);
    gtk_table_set_row_spacing(GTK_TABLE(table), 0, 3);

    titel := gtk_label_new('Windows');
    halign := gtk_alignment_new(0, 0, 0, 0);
    gtk_container_add(GTK_CONTAINER(halign), titel);
    gtk_table_attach(GTK_TABLE(table), halign, 0, 1, 0, 1, GTK_FILL, GTK_FILL, 0, 0);

    wins := gtk_text_view_new;
    gtk_text_view_set_editable(GTK_TEXT_VIEW(wins), False);
    gtk_text_view_set_cursor_visible(GTK_TEXT_VIEW(wins), False);
    gtk_table_attach(GTK_TABLE(table), wins, 0, 2, 1, 3, GTK_FILL or GTK_EXPAND, GTK_FILL or GTK_EXPAND, 1, 1);

    actBtn := gtk_button_new_with_label('Activate');
    gtk_widget_set_size_request(actBtn, 50, 30);
    gtk_table_attach(GTK_TABLE(table), actBtn, 3, 4, 1, 2, GTK_FILL, GTK_SHRINK, 1, 1);

    valign := gtk_alignment_new(0, 0, 0, 0);
    clsBtn := gtk_button_new_with_label('Close');
    gtk_widget_set_size_request(clsBtn, 70, 30);
    gtk_container_add(GTK_CONTAINER(valign), clsBtn);
    gtk_table_set_row_spacing(GTK_TABLE(table), 1, 3);
    gtk_table_attach(GTK_TABLE(table), valign, 3, 4, 2, 3, GTK_FILL, GTK_FILL or GTK_EXPAND, 1, 1);

    halign2 := gtk_alignment_new(0, 1, 0, 0);
    hlpBtn := gtk_button_new_with_label('Help');
    gtk_container_add(GTK_CONTAINER(halign2), hlpBtn);
    gtk_widget_set_size_request(hlpBtn, 70, 30);
    gtk_table_set_row_spacing(GTK_TABLE(table), 3, 5);
    gtk_table_attach(GTK_TABLE(table), halign2, 0, 1, 4, 5, GTK_FILL, GTK_FILL, 0, 0);

    okBtn := gtk_button_new_with_label('OK');
    gtk_widget_set_size_request(okBtn, 70, 30);
    gtk_table_attach(GTK_TABLE(table), okBtn, 3, 4, 4, 5, GTK_FILL, GTK_FILL, 0, 0);

    gtk_container_add(GTK_CONTAINER(window), table);

    // Global
    gtk_widget_show_all(window);
    g_signal_connect(G_OBJECT(window), 'destroy', G_CALLBACK(@gtk_main_quit), nil);

    GTK_Main;
  end;

begin
  SetExceptionMask([exDenormalized, exInvalidOp, exOverflow, exPrecision, exUnderflow, exZeroDivide]);
  main;
end.
