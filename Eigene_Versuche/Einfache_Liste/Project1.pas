program Project1;

// https://github.com/steshaw/gtk-examples/blob/master/ch04.button.edit.combo/listbox.c

// https://docs.huihoo.com/gtk/tutorial/1.2/gtk_tut-11.html

uses
  Math,
  SysUtils,
  Cairo,
  GLib2,
  Gdk2,
  Gtk2;

  procedure AutoResize(clist: PGtkWidget);
  var
    list: PGtkCList;
  begin
    list := GTK_CLIST(clist);
    gtk_clist_set_column_auto_resize(list, 0, True);
    gtk_clist_set_column_auto_resize(list, 1, True);
    gtk_clist_set_column_auto_resize(list, 2, True);
  end;

  procedure AddList(list: PGtkWidget; Day, sht: PChar);
  var
    Data: array[0..3] of PChar;
  const
    counter: integer = 0;
  begin
    Data[0] := PChar(counter.ToString);
    Data[1] := Day;
    Data[2] := sht;

    gtk_clist_append(GTK_CLIST(list), Data);
    Inc(counter);
  end;

  procedure configute_callback(widget: PGtkWidget; event: PGdkEvent; Data: gpointer); cdecl;
  var
    cr: Pcairo_t;
  begin
    cr := gdk_cairo_create(widget^.window);

    cairo_move_to(cr, 22, 12);
    cairo_show_text(cr, 'Hello World');
    cairo_destroy(cr);
  end;

  procedure press_hide(widget: PGtkWidget; Data: gpointer); cdecl;
  begin
    gtk_clist_column_titles_hide(GTK_CLIST(Data));
  end;


  procedure press_show(widget: PGtkWidget; Data: gpointer); cdecl;
  begin
    gtk_clist_column_titles_show(GTK_CLIST(Data));
  end;

  procedure press_add_day(widget: PGtkWidget; Data: gpointer); cdecl;
  begin
    AddList(Data, 'Montag', 'MO');
    AddList(Data, 'Dienstag', 'DI');
    AddList(Data, 'Mittwoch', 'MI');
    AddList(Data, 'Donnerstag', 'DO');
    AddList(Data, 'Freitag', 'FR');
    AddList(Data, 'Samstag', 'SA');
    AddList(Data, 'Sonntag', 'SO');
  end;

  procedure press_add_mon(widget: PGtkWidget; Data: gpointer); cdecl;
  begin
    AddList(Data, 'Januar', 'Jan');
    AddList(Data, 'Februar', 'Feb');
    AddList(Data, 'März', 'Mar');
    AddList(Data, 'April', 'Apr');
    AddList(Data, 'Mai', 'Mai');
    AddList(Data, 'Juni', 'Jun');
    AddList(Data, 'Juli', 'Jul');
    AddList(Data, 'August', 'Aug');
    AddList(Data, 'September', 'Sep');
    AddList(Data, 'Oktober', 'Okt');
    AddList(Data, 'November', 'Nov');
    AddList(Data, 'Dezember', 'Dez');
  end;

  procedure press_clear_all(widget: PGtkWidget; Data: gpointer); cdecl;
  begin
    gtk_clist_clear(GTK_CLIST(Data));
  end;

  procedure press_set_forground(widget: PGtkWidget; Data: gpointer); cdecl;
  var
    colfg, colbg: TGdkColor;
    Count: gint;
    i: integer;
  begin
    Count := GTK_CLIST(Data)^.rows;
    for i := 0 to Count - 1 do begin
      if i mod 2 = 1 then begin
        gdk_color_parse('#88FFFF', @colfg);
        gdk_color_parse('#880088', @colbg);
      end else begin
        gdk_color_parse('#88FFFF', @colbg);
        gdk_color_parse('#880088', @colfg);
      end;
      gtk_clist_set_foreground(GTK_CLIST(Data), i, @colfg);
      gtk_clist_set_background(GTK_CLIST(Data), i, @colbg);
    end;
  end;

  procedure press_New_Titel(widget: PGtkWidget; Data: gpointer); cdecl;
  begin
    gtk_clist_set_column_title(GTK_CLIST(Data), 0, 'Neuer Titel');
    //  title:=gtk_clist_get_text();
  end;

  procedure press_Print(widget: PGtkWidget; Data: gpointer); cdecl;
  var
    title: Pgchar;
    Count: gint;
    i: integer;
  begin
    title := gtk_clist_get_column_title(GTK_CLIST(Data), 1);
    WriteLn('Titel: ', title, #10);

    Count := GTK_CLIST(Data)^.rows;
    for i := 0 to Count - 1 do begin
      gtk_clist_get_text(GTK_CLIST(Data), i, 1, @title);
      WriteLn(title);
    end;
  end;

  procedure press_Swap(widget: PGtkWidget; Data: gpointer); cdecl;
  begin
    gtk_clist_swap_rows(GTK_CLIST(Data), 2, 4);
  end;

  procedure press_Sort0(widget: PGtkWidget; Data: gpointer); cdecl;
  const
    a_z: boolean = True;
  begin
    if a_z then  begin
      gtk_clist_set_sort_type(GTK_CLIST(Data), GTK_SORT_ASCENDING);
    end else begin
      gtk_clist_set_sort_type(GTK_CLIST(Data), GTK_SORT_DESCENDING);
    end;
    a_z := not a_z;
    gtk_clist_set_sort_column(GTK_CLIST(Data), 0);
    gtk_clist_sort(GTK_CLIST(Data));
  end;

  procedure press_Sort1(widget: PGtkWidget; Data: gpointer); cdecl;
  begin
    gtk_clist_set_sort_column(GTK_CLIST(Data), 1);
    gtk_clist_sort(GTK_CLIST(Data));
  end;

  procedure press_Sort2(widget: PGtkWidget; Data: gpointer); cdecl;
  begin
    gtk_clist_set_sort_column(GTK_CLIST(Data), 2);
    gtk_clist_sort(GTK_CLIST(Data));
  end;

  procedure main;
  var
    Window, list, sb, vbox, btn_hide, hbox, btn_show, btn_add_mon,
    btn_add_day, btn_clear_all, btn_set_Color, btn_New_Titel,
    btn_Print, btn_Swap, btn_Sort0, btn_Sort1, BtnColum: PGtkWidget;
    ListTitelData: array of Pgchar = ('Nr', 'Tag', 'Abkürzung');
  begin
    GTK_Init(@argc, @argv);

    Window := gtk_window_new(GTK_WINDOW_TOPLEVEL);
    gtk_window_set_title(GTK_WINDOW(Window), 'Einfache ListBox');
    gtk_window_set_default_size(GTK_WINDOW(Window), 500, 500);
    gtk_window_set_position(GTK_WINDOW(window), GTK_WIN_POS_CENTER);
    g_signal_connect(G_OBJECT(window), 'destroy', G_CALLBACK(@gtk_main_quit), nil);

    gtk_container_set_border_width(GTK_CONTAINER(Window), 10);

    vbox := gtk_vbox_new(False, 0);
    gtk_container_add(GTK_CONTAINER(Window), vbox);

    sb := gtk_scrolled_window_new(nil, nil);
    gtk_container_add(GTK_CONTAINER(vbox), sb);

    list := gtk_clist_new_with_titles(Length(ListTitelData), ListTitelData);

    AutoResize(list);

    press_add_day(nil, list);

    gtk_container_add(GTK_CONTAINER(sb), list);

    hbox := gtk_hbox_new(False, 0);

    btn_hide := gtk_button_new_with_label('hide');
    gtk_box_pack_end(GTK_BOX(hbox), btn_hide, False, False, 0);
    g_signal_connect(G_OBJECT(btn_hide), 'clicked', G_CALLBACK(@press_hide), list);

    btn_show := gtk_button_new_with_label('show');
    gtk_box_pack_end(GTK_BOX(hbox), btn_show, False, False, 0);
    g_signal_connect(G_OBJECT(btn_show), 'clicked', G_CALLBACK(@press_show), list);

    btn_add_mon := gtk_button_new_with_label('Add Mon');
    gtk_box_pack_end(GTK_BOX(hbox), btn_add_mon, False, False, 0);
    g_signal_connect(G_OBJECT(btn_add_mon), 'clicked', G_CALLBACK(@press_add_mon), list);

    btn_add_day := gtk_button_new_with_label('Add Day');
    gtk_box_pack_end(GTK_BOX(hbox), btn_add_day, False, False, 0);
    g_signal_connect(G_OBJECT(btn_add_day), 'clicked', G_CALLBACK(@press_add_day), list);

    btn_clear_all := gtk_button_new_with_label('Clear all');
    gtk_box_pack_end(GTK_BOX(hbox), btn_clear_all, False, False, 0);
    g_signal_connect(G_OBJECT(btn_clear_all), 'clicked', G_CALLBACK(@press_clear_all), list);

    btn_set_Color := gtk_button_new_with_label('Color');
    gtk_box_pack_end(GTK_BOX(hbox), btn_set_Color, False, False, 0);
    g_signal_connect(G_OBJECT(btn_set_Color), 'clicked', G_CALLBACK(@press_set_forground), list);

    btn_New_Titel := gtk_button_new_with_label('Title');
    gtk_box_pack_end(GTK_BOX(hbox), btn_New_Titel, False, False, 0);
    g_signal_connect(G_OBJECT(btn_New_Titel), 'clicked', G_CALLBACK(@press_New_Titel), list);

    btn_Print := gtk_button_new_with_label('Print');
    gtk_box_pack_end(GTK_BOX(hbox), btn_Print, False, False, 0);
    g_signal_connect(G_OBJECT(btn_Print), 'clicked', G_CALLBACK(@press_Print), list);

    btn_Swap := gtk_button_new_with_label('Swap');
    gtk_box_pack_end(GTK_BOX(hbox), btn_Swap, False, False, 0);
    g_signal_connect(G_OBJECT(btn_Swap), 'clicked', G_CALLBACK(@press_Swap), list);

    //btn_Sort0 := gtk_button_new_with_label('Sort0');
    //gtk_box_pack_end(GTK_BOX(hbox), btn_Sort0, False, False, 0);
    //g_signal_connect(G_OBJECT(btn_Sort0), 'clicked', G_CALLBACK(@press_Sort0), list);
    //
    //btn_Sort1 := gtk_button_new_with_label('Sort1');
    //gtk_box_pack_end(GTK_BOX(hbox), btn_Sort1, False, False, 0);
    //g_signal_connect(G_OBJECT(btn_Sort1), 'clicked', G_CALLBACK(@press_Sort1), list);

    BtnColum := GTK_WIDGET(GTK_CLIST(list)^.column[0].button);
    g_signal_connect(G_OBJECT(BtnColum), 'clicked', G_CALLBACK(@press_Sort0), list);

    BtnColum := GTK_WIDGET(GTK_CLIST(list)^.column[1].button);
    g_signal_connect(G_OBJECT(BtnColum), 'clicked', G_CALLBACK(@press_Sort1), list);

    BtnColum := GTK_WIDGET(GTK_CLIST(list)^.column[2].button);
    g_signal_connect(G_OBJECT(BtnColum), 'clicked', G_CALLBACK(@press_Sort2), list);
    g_signal_connect(G_OBJECT(BtnColum), 'expose-event', G_CALLBACK(@configute_callback), list);

    gtk_box_pack_end(GTK_BOX(vbox), hbox, False, False, 0);

    gtk_widget_show_all(window);

    GTK_Main;
  end;

begin
  SetExceptionMask([exDenormalized, exInvalidOp, exOverflow, exPrecision, exUnderflow, exZeroDivide]);
  main;
end.
