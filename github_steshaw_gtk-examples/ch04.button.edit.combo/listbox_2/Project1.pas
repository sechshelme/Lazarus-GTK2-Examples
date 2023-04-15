program Project1;

// https://github.com/steshaw/gtk-examples/blob/master/ch04.button.edit.combo/listbox.c

uses
  Math,
  SysUtils,
  GLib2,
  Gdk2,
  Gtk2;

function CreateDayPGLList: PGList;
const
  Days: array of PChar = (
    'Montag', 'Dienstag', 'Mittwoch', 'Donnerstag', 'Freitag', 'Samstag', 'Sonntag');
var
  i: integer;
begin
  Result := nil;
  for  i := 0 to Length(Days) - 1 do begin
    Result := g_list_append(Result, PChar(Days[i]));
  end;
end;

function CreateMonathPGLList: PGList;
const
  Monats: array of PChar = (
    'Januar', 'Februar', 'März', 'April', 'Mai', 'Juni', 'Juli', 'August', 'September', 'Oktober', 'November', 'Dezember');
var
  i: integer;
begin
  Result := nil;
  for  i := 0 to Length(Monats) - 1 do begin
    Result := g_list_append(Result, PChar(Monats[i]));
  end;
end;


  function CloseAppWindow(w: PGtkWidget; Data: pgpointer): gint;
  begin
    gtk_main_quit;
    Result := 0;
  end;

  procedure listitem_selected(w: PGtkWidget; Data: pgpointer);
  begin
    g_print('item selected - %s'#10, Data);
  end;

  function GetItemLabel(w: PGtkWidget): PChar;
  var
    children: PGList;
    child: PGtkWidget;
    str: PChar;
  begin
    children := gtk_container_children(GTK_CONTAINER(w));
    child := GTK_WIDGET(children^.Data);
    if GTK_IS_LABEL(child) then begin
      gtk_label_get(GTK_LABEL(child), @str);
    end;
    Result := str;
  end;

  procedure DisplaySelectedItems(w: PGtkWidget);
  var
    children: PGList;
    child: PGtkWidget;
  begin
    children := gtk_container_children(GTK_CONTAINER(w));
    while children <> nil do begin
      child := GTK_WIDGET(children^.Data);
      WriteLn('state = ', GTK_WIDGET_STATE(child), ', label = ', GetItemLabel(child));
      children := children^.Next;
    end;
  end;

  procedure listbox_changed(w: PGtkWidget; Data: pgpointer);
  begin
    g_print('%s'#10, Data);
    DisplaySelectedItems(w);
  end;

  procedure AddListItem(listbox: PGtkWidget; sText: PChar);
  var
    item: PGtkWidget;
  begin
    item := gtk_list_item_new_with_label(sText);
    g_signal_connect(G_OBJECT(item), 'select', GTK_SIGNAL_FUNC(@listitem_selected), sText);
    gtk_container_add(GTK_CONTAINER(listbox), item);
    gtk_widget_show(item);
  end;


  procedure main;
  var
    Window, listbox, vbox, combo: PGtkWidget;
  begin
    GTK_Init(@argc, @argv);

    Window := gtk_window_new(GTK_WINDOW_TOPLEVEL);
    //    gtk_window_set_title(GTK_WINDOW(Window), 'GtkComboBox');
    //    gtk_window_set_default_size(GTK_WINDOW(Window), 500, 500);
    gtk_window_set_position(GTK_WINDOW(window), GTK_WIN_POS_CENTER);
    gtk_signal_connect(GTK_OBJECT(Window), 'delete_event', GTK_SIGNAL_FUNC(@CloseAppWindow), nil);

    gtk_container_set_border_width(GTK_CONTAINER(Window), 10);

    listbox := gtk_list_new;

    vbox := gtk_vbox_new(False, 0);
    gtk_container_add(GTK_CONTAINER(Window), vbox);

    gtk_signal_connect(GTK_OBJECT(listbox), 'selection_changed', GTK_SIGNAL_FUNC(@listbox_changed), PChar('selection_changed'));


    gtk_list_set_selection_mode(GTK_LIST(listbox), GTK_SELECTION_BROWSE);

    //    gtk_widget_show_all(listbox);

    AddListItem(listbox, 'Montag');
    AddListItem(listbox, 'Dienstag');
    AddListItem(listbox, 'Mittwoch');
    AddListItem(listbox, 'Donnerstag');
    AddListItem(listbox, 'Freitag');
    AddListItem(listbox, 'Samstag');
    AddListItem(listbox, 'Sonntag');

    gtk_container_add(GTK_CONTAINER(vbox), listbox);


    combo := gtk_combo_new;
    gtk_combo_set_popdown_strings(GTK_COMBO(combo), CreateDayPGLList);
    gtk_container_add(GTK_CONTAINER(vbox), combo);

    combo := gtk_combo_new;
    gtk_combo_set_popdown_strings(GTK_COMBO(combo), CreateMonathPGLList);
    gtk_container_add(GTK_CONTAINER(vbox), combo);

    gtk_widget_show_all(window);

    GTK_Main;
  end;

begin
  SetExceptionMask([exDenormalized, exInvalidOp, exOverflow, exPrecision, exUnderflow, exZeroDivide]);
  main;
end.
