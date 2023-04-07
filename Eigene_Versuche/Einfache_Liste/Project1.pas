program Project1;

// https://github.com/steshaw/gtk-examples/blob/master/ch04.button.edit.combo/listbox.c

uses
  Math,
  SysUtils,
  GLib2,
  Gdk2,
  Gtk2;

procedure AutoResize(clist:PGtkWidget);
var
  list: PGtkCList;
begin
list:=  GTK_CLIST(clist);
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

procedure press_hide(widget: PGtkWidget; clist: PGtkCList); cdecl;
begin
  gtk_clist_column_titles_hide(clist);
end;


procedure press_show(widget: PGtkWidget; clist: PGtkCList); cdecl;
begin
  gtk_clist_column_titles_show(clist);
end;



  procedure main;
  var
    Window, list, sb, vbox, btn_hide, hbox, btn_show: PGtkWidget;
    ListData: array of Pgchar = ('Nr', 'Tag', 'Abkürzung');
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

    list := gtk_clist_new_with_titles(Length(ListData), ListData);

    AutoResize(list);

    AddList(list, 'Montag', 'MO');
    AddList(list, 'Dienstag', 'DI');
    AddList(list, 'Mittwoch', 'MI');
    AddList(list, 'Donnerstag', 'DO');
    AddList(list, 'Freitag', 'FR');
    AddList(list, 'Samstag', 'SA');
    AddList(list, 'Sonntag', 'SO');
    gtk_container_add(GTK_CONTAINER(sb), list);

    hbox := gtk_hbox_new(False, 0);

    btn_hide := gtk_button_new_with_label('hide');
    gtk_container_add(GTK_CONTAINER(hbox), btn_hide);
    g_signal_connect(G_OBJECT(btn_hide), 'clicked', G_CALLBACK(@press_hide), list);

    btn_show := gtk_button_new_with_label('show');
    gtk_container_add(GTK_CONTAINER(hbox), btn_show);
    g_signal_connect(G_OBJECT(btn_show), 'clicked', G_CALLBACK(@press_show), list);



    gtk_box_pack_end(GTK_BOX(vbox), hbox, False, False, 0);

    gtk_widget_show_all(window);

    GTK_Main;
  end;

begin
  SetExceptionMask([exDenormalized, exInvalidOp, exOverflow, exPrecision, exUnderflow, exZeroDivide]);
  main;
end.
