program Project1;

// https://github.com/steshaw/gtk-examples/blob/master/ch04.button.edit.combo/listbox.c

uses
  Math,
  SysUtils,
  GLib2,
  Gdk2,
  Gtk2,
  misc;

//var
  //  tooltips: PGtkTooltips;
//  win_main: PGtkWidget;

const
  xpm_new: array of Pgchar = (
    '16 16 3 1',
    '  c None',
    'B c #000000000000',
    'W c #FFFFFFFFFFFF',
    '                ',
    '  BBBBBBBBB     ',
    '  BWWWWWWWBB    ',
    '  BWWWWWWWBWB   ',
    '  BWWWWWWWBBBB  ',
    '  BWWWWWWWWWWB  ',
    '  BWWWWWWWWWWB  ',
    '  BWWWWWWWWWWB  ',
    '  BWWWWWWWWWWB  ',
    '  BWWWWWWWWWWB  ',
    '  BWWWWWWWWWWB  ',
    '  BWWWWWWWWWWB  ',
    '  BWWWWWWWWWWB  ',
    '  BWWWWWWWWWWB  ',
    '  BBBBBBBBBBBB  ',
    '                ');

 xpm_open: array of Pgchar = (
  '16 16 4 1',
  '  c None',
  'B c #000000000000',
  'Y c #FFFFFFFF0000',
  'y c #999999990000',
  '                ',
  '          BBB   ',
  '  BBBBB  B   BB ',
  '  BYYYB      BB ',
  ' BYYYYYBBBBB    ',
  ' BYYYYYYYYYB    ',
  ' BYYYYYYYYYB    ',
  ' BYYYYYYYYYB    ',
  ' BYYBBBBBBBBBBB ',
  ' BYYByyyyyyyyyB ',
  ' BYByyyyyyyyyB  ',
  ' BYByyyyyyyyyB  ',
  ' BByyyyyyyyyB   ',
  ' BByyyyyyyyyB   ',
  ' BBBBBBBBBBB    ',
  '                ');

  function EndProgram(w: PGtkWidget; Data: pgpointer): gint; cdecl;
  begin
    gtk_main_quit;
    Result := 0;
  end;

  procedure PrintFunc(w: PGtkWidget; Data: pgpointer); cdecl;
  begin
    g_print('%s'#10, Data);
  end;

  procedure ButtonClicked(w: PGtkWidget; Data: pgpointer); cdecl;
  begin

  end;

  procedure CreateToolBar(vbox_main: PGtkWidget);
  var
    toolbar: PGtkWidget;
  begin
    //  toolbar:=gtk_toolbar_new(GTK_ORIENTATION_HORIZONTAL,GTK_TOOLBAR_ICONS);

    toolbar := gtk_toolbar_new;
    gtk_box_pack_start(GTK_BOX(vbox_main), toolbar, False, True, 0);
    gtk_widget_show(toolbar);

    gtk_toolbar_append_item(GTK_TOOLBAR(toolbar), nil, 'Neues Fenster', nil, CreateWidgetFromXpm(vbox_main, @xpm_new[0]), TGtkSignalFunc(@ButtonClicked), nil);
    gtk_toolbar_append_item(GTK_TOOLBAR(toolbar), 'Open Dialog', 'Datei öffnen','', CreateWidgetFromXpm(vbox_main, @xpm_open[0]), TGtkSignalFunc(@ButtonClicked), nil);

  end;

  procedure CreateMainWindow;
  var
    vbox_main, menubar, menu, menuitem, menufont, menubold,
    menuColor, menuRed, menuBlue, menuGreen: PGtkWidget;
    group: PGSList = nil;
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

    menufont := CreateBarSubMenu(menu, '_Schrift');
    menubold := CreateMenuCheck(menufont, 'Fett', 'Schreibt den Text fett', GTK_SIGNAL_FUNC(@PrintFunc), PChar('bold'));
    menubold := CreateMenuCheck(menufont, 'Kursiv', 'Schreibt den Text kursiv', GTK_SIGNAL_FUNC(@PrintFunc), PChar('italics'));
    menubold := CreateMenuCheck(menufont, 'Unterstrich', 'Schreibt den Text unterstrichen', GTK_SIGNAL_FUNC(@PrintFunc), PChar('underline'));

    menuColor := CreateBarSubMenu(menu, '_Farbe');
    menuRed := CreateMenuRadio(menuColor, 'Rot', 'Schreibt den Text rot', @group, GTK_SIGNAL_FUNC(@PrintFunc), PChar('red'));
    menuBlue := CreateMenuRadio(menuColor, 'Blau', 'Schreibt den Text blau', @group, GTK_SIGNAL_FUNC(@PrintFunc), PChar('blue'));
    menuGreen := CreateMenuRadio(menuColor, 'Grün', 'Schreibt den Text grün', @group, GTK_SIGNAL_FUNC(@PrintFunc), PChar('green'));

    CreateToolBar(vbox_main);
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
