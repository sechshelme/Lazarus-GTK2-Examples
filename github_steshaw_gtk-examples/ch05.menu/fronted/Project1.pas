program Project1;

// https://github.com/steshaw/gtk-examples/blob/master/ch04.button.edit.combo/listbox.c

uses
  Math,
  SysUtils,
  GLib2,
  Gdk2,
  Gtk2,
  misc;

var
  //  tooltips: PGtkTooltips;
  win_main: PGtkWidget;


  function EndProgram(w: PGtkWidget; Data: pgpointer): gint; cdecl;
  begin
    gtk_main_quit;
    Result := 0;
  end;

  procedure PrintFunc(w: PGtkWidget; Data: pgpointer); cdecl;
  begin
    g_print('%s'#10, Data);
  end;

  procedure CreateMainWindow;
  var
    vbox_main, menubar, menu, menuitem: PGtkWidget;
  begin
    win_main := gtk_window_new(GTK_WINDOW_TOPLEVEL);
    gtk_window_set_title(GTK_WINDOW(win_main), 'Menu Test');
    gtk_widget_set_usize(win_main, 360, 260);
    gtk_window_set_position(GTK_WINDOW(win_main), GTK_WIN_POS_CENTER);
    gtk_container_set_border_width(GTK_CONTAINER(win_main), 0);

    gtk_signal_connect(GTK_OBJECT(win_main), 'delete_event', GTK_SIGNAL_FUNC(@EndProgram), nil);

    vbox_main := gtk_vbox_new(False, 0);

    gtk_container_add(GTK_CONTAINER(win_main), vbox_main);
    gtk_widget_show(vbox_main);
    gtk_widget_show(win_main);

    menubar := gtk_menu_bar_new;
    gtk_box_pack_start(GTK_BOX(vbox_main), menubar, False, True, 0);
    gtk_widget_show(menubar);

    menu := CreateBarSubMenu(menubar, '_Datei');

    menuitem := CreateMenuItem(menu, 'Neu', '^N', 'Erzeuge neues Item', GTK_SIGNAL_FUNC(@PrintFunc), PChar('new'));
    menuitem := CreateMenuItem(menu, 'Öffnen', '^O', 'Öffne existierendes Item', GTK_SIGNAL_FUNC(@PrintFunc), PChar('open'));
    menuitem := CreateMenuItem(menu, 'Save', '^S', 'Speichere aktuelles Item', GTK_SIGNAL_FUNC(@PrintFunc), PChar('save'));
    menuitem := CreateMenuItem(menu, 'Speichern unter...', '', 'Speichere aktuelles Item unte neuen Namen', GTK_SIGNAL_FUNC(@PrintFunc), PChar('save as'));
    menuitem := CreateMenuItem(menu, nil, nil, nil, nil, nil);
    menuitem := CreateMenuItem(menu, 'Beenden', '', 'Beendet das Programm', GTK_SIGNAL_FUNC(@PrintFunc), PChar('quit'));

    menu := CreateBarSubMenu(menubar, '_Bearbeiten');

    menuitem := CreateMenuItem(menu, 'Ausschneiden', '^X', 'Schneidet den markierten Ausschnitt aus', GTK_SIGNAL_FUNC(@PrintFunc), PChar('cut'));
    menuitem := CreateMenuItem(menu, 'Kopieren', '^C', 'Kopiert den markierten Ausschnitt', GTK_SIGNAL_FUNC(@PrintFunc), PChar('copy'));
    menuitem := CreateMenuItem(menu, 'Einfügen', '^V', 'Fügt den Text von der Zwischenablage ein', GTK_SIGNAL_FUNC(@PrintFunc), PChar('paste'));

  end;

  procedure main;
  begin
    GTK_Init(@argc, @argv);

    tooltips := gtk_tooltips_new;

    CreateMainWindow;

    gtk_main;
  end;

begin
  SetExceptionMask([exDenormalized, exInvalidOp, exOverflow, exPrecision, exUnderflow, exZeroDivide]);
  main;
end.
