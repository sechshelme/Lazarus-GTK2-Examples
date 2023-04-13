program Project1;

uses
  GLib2,
  Gdk2,
  Gtk2;

  procedure press(widget: PGtkWidget; Caption: PChar); cdecl;
  begin
    WriteLn('Cklicked: ', Caption);
  end;

  procedure press_Table(widget: PGtkWidget; Caption: Pointer); cdecl;
  begin
    WriteLn('Cklicked in Table: ', PtrUInt(Caption));
  end;

  procedure main;
  const
    maxX = 10;
    maxY = 10;
  var
    Window, vbox, button1, button2, button3, button4, button5, table, table2: PGtkWidget;
    i, j: integer;
    index: integer = 0;
    s: string;
  begin
    GTK_Init(@argc, @argv);

    Window := gtk_window_new(GTK_WINDOW_TOPLEVEL);
    gtk_window_set_title(GTK_WINDOW(Window), 'GtkTable');
    gtk_window_set_default_size(GTK_WINDOW(Window), 500, 500);
    gtk_window_set_position(GTK_WINDOW(window), GTK_WIN_POS_CENTER);

    gtk_container_set_border_width(GTK_CONTAINER(Window), 5);

    vbox := gtk_vbox_new(False, 0);
    gtk_container_add(GTK_CONTAINER(Window), vbox);


    table := gtk_table_new(12, 12, True);

    gtk_table_set_row_spacings(GTK_TABLE(table), 2);
    gtk_table_set_col_spacings(GTK_TABLE(table), 2);

    for i := 0 to maxY - 1 do begin
      for j := 0 to maxX - 1 do begin
        str(index, s);
        button1 := gtk_button_new_with_label(PChar(s));
        gtk_table_attach_defaults(GTK_TABLE(table), button1, j, j + 1, i, i + 1);
        //        gtk_container_set_border_width(GTK_CONTAINER(button1), 50);
        g_signal_connect(G_OBJECT(button1), 'clicked', G_CALLBACK(@press_Table), Pointer(index));
        Inc(index);
      end;
    end;
    gtk_box_pack_start(GTK_BOX(vbox), table, False, False, 0);

    table2 := gtk_table_new(5, 5, True);
       gtk_table_set_row_spacings(GTK_TABLE(table2), 12);
       gtk_table_set_col_spacings(GTK_TABLE(table2), 12);


    button1 := gtk_button_new_with_label('xxx');
    gtk_table_attach_defaults(GTK_TABLE(table2), button1, 0, 1, 0, 1);
    button1 := gtk_button_new_with_label('xxx');
    gtk_table_attach_defaults(GTK_TABLE(table2), button1, 1, 2, 0, 1);
    button1 := gtk_button_new_with_label('xxx');
    gtk_table_attach_defaults(GTK_TABLE(table2), button1, 2, 3, 0, 1);
    button1 := gtk_button_new_with_label('xxx');
    gtk_table_attach_defaults(GTK_TABLE(table2), button1, 0, 2, 1, 2);
    button1 := gtk_button_new_with_label('xxx');
    gtk_table_attach_defaults(GTK_TABLE(table2), button1, 2, 3, 1, 2);

    g_signal_connect(G_OBJECT(button1), 'clicked', G_CALLBACK(@press_Table), Pointer(index));

    gtk_box_pack_start(GTK_BOX(vbox), table2, False, False, 0);


    //    gtk_container_add(GTK_CONTAINER(Window), table);


    button1 := gtk_button_new_with_label('Settings');
    gtk_box_pack_start(GTK_BOX(vbox), button1, False, False, 0);
    g_signal_connect(G_OBJECT(button1), 'clicked', G_CALLBACK(@press), PChar('Button1'));

    button2 := gtk_button_new_with_label('Accounts');
    gtk_box_pack_start(GTK_BOX(vbox), button2, False, False, 0);
    g_signal_connect(G_OBJECT(button2), 'clicked', G_CALLBACK(@press), PChar('Button2'));

    button3 := gtk_button_new_with_label('Loans');
    gtk_box_pack_start(GTK_BOX(vbox), button3, False, False, 0);
    g_signal_connect(G_OBJECT(button3), 'clicked', G_CALLBACK(@press), PChar('Button3'));

    button4 := gtk_button_new_with_label('cash');
    gtk_box_pack_start(GTK_BOX(vbox), button4, False, False, 0);
    g_signal_connect(G_OBJECT(button4), 'clicked', G_CALLBACK(@press), PChar('Button4'));

    button5 := gtk_button_new_with_label('depts');
    gtk_box_pack_start(GTK_BOX(vbox), button5, False, False, 0);
    g_signal_connect(G_OBJECT(button5), 'clicked', G_CALLBACK(@press), PChar('Button5'));

    gtk_widget_show_all(window);

    g_signal_connect(G_OBJECT(window), 'destroy', G_CALLBACK(@gtk_main_quit), nil);

    GTK_Main;
  end;

begin
  main;
end.
