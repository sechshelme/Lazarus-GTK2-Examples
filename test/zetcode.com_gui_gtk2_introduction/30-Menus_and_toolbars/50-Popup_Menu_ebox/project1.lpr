program project1;

uses
  Math,
  glib2,
  gdk2,
  gtk2;

//  Source position: gdkkeysyms.pp line 394

const
  GDK_q = $071;

  cmTest0 = 1000;
  cmTest1 = 1001;

  procedure gtk_widget_set_tooltip_text(window: PGtkWidget; title: Pgchar); cdecl; external gtklib;

  procedure menu_click_msg(widget: PGtkWidget; Data: gpointer); cdecl;
  var
    i: integer;
  begin
    WriteLn('menu click');
    if Data <> nil then begin
      i := integer(Data);
      //      WriteLn(PChar(Data));
      case i of
        cmTest0: begin
        end;
      end;
      WriteLn(i);
    end;
  end;

    procedure toggle_statusbar(widget: PGtkWidget; statusbar: gpointer);
  begin
    if gtk_check_menu_item_get_active(GTK_CHECK_MENU_ITEM(widget)) then begin
      gtk_widget_show(statusbar);
      WriteLn('show');
    end else begin
      gtk_widget_hide(statusbar);
      WriteLn('hide');
    end;
  end;



  procedure show_popup(widget: PGtkWidget; event: PGdkEvent; popMenu:gpointer);
  var
    bevent: PGdkEventButton;
  begin
    WriteLn('show ev: ', PtrUInt(event));
    WriteLn('data   : ', PtrUInt(popMenu));
    WriteLn('click');
    if event^._type = GDK_BUTTON_PRESS then begin
      bevent := PGdkEventButton(event);
      if bevent^.button = 3 then begin
        WriteLn('widget: ', PtrUInt(widget));
        gtk_menu_popup(GTK_MENU(popMenu), nil, nil, nil, nil, bevent^.button, bevent^.time);
      end;
    end;
  end;


  function main(argc: integer; argv: PChar): integer;
  var
    window, menubar, fileMi, quitMi, openMi,  toolbar, event_box,  vbox, popMenu, popMIMmaximize, popMIMinimize, popMIRestore,
      fileMenu, PrintMi, fileSubMenu, SubMi0, SubMi1, SubMi2, SubMi,
      optionMenu, tog_statusMi, optionMi, helpMenu, helpMi, aboutMi,
      statusbar, label1, button1, popMIQuit: PGtkWidget;
    accel_group: PGtkAccelGroup = nil;
    toolquit, toolNet, toolSave: PGtkToolItem;
  begin
    gtk_init(@argc, @argv);

    window := gtk_window_new(GTK_WINDOW_TOPLEVEL);
    gtk_window_set_position(GTK_WINDOW(window), GTK_WIN_POS_CENTER);
    gtk_window_set_default_size(GTK_WINDOW(window), 300, 200);
    gtk_window_set_title(GTK_WINDOW(window), 'Popup menu');

    event_box := gtk_event_box_new;
    gtk_container_add(GTK_CONTAINER(window), event_box);

    vbox := gtk_vbox_new(False, 0);
    gtk_container_add(GTK_CONTAINER(event_box), vbox);


    // --- Status Bar
    statusbar := gtk_statusbar_new;
//    g_signal_connect(G_OBJECT(statusbar), 'expose-event', G_CALLBACK(@StatusBar_draw_event), NULL);
//    g_signal_connect(G_OBJECT(statusbar), 'button-press-event', G_CALLBACK(@statusBar_click_msg), nil);
    gtk_box_pack_end(GTK_BOX(vbox), statusbar, False, False, 0);

    label1:=gtk_label_new('Dies ist die Status-Bar');
    gtk_box_pack_start(GTK_BOX(statusbar),label1 , False, False, 0);

    button1:=gtk_button_new_with_label('Button');
    gtk_box_pack_start(GTK_BOX(statusbar),button1 , False, False, 0);
    button1:=gtk_button_new_with_label('Button');
    gtk_box_pack_start(GTK_BOX(statusbar),button1 , False, False, 0);

    // --- Menu
    menubar := gtk_menu_bar_new;

    // Datei Menü
    fileMenu := gtk_menu_new;
    fileMi := gtk_menu_item_new_with_mnemonic('_Datei');
    gtk_widget_set_tooltip_text(fileMi, 'Datei Menü');
    gtk_menu_shell_append(GTK_MENU_SHELL(menubar), fileMi);
    gtk_menu_item_set_submenu(GTK_MENU_ITEM(fileMi), fileMenu);

    // > Datei Öffnen
//    OpenMi := gtk_menu_item_new_with_mnemonic('Datei _öffnen...');
        OpenMi := gtk_image_menu_item_new_from_stock(GTK_STOCK_OPEN, nil);
    g_signal_connect(G_OBJECT(OpenMi), 'activate', G_CALLBACK(@menu_click_msg), PChar('Datei öffnen...'));
    gtk_menu_shell_append(GTK_MENU_SHELL(fileMenu), OpenMi);

    // > Drucken
    PrintMi := gtk_menu_item_new_with_mnemonic('_Drucken');
    g_signal_connect(G_OBJECT(PrintMi), 'activate', G_CALLBACK(@menu_click_msg), nil);
    gtk_menu_shell_append(GTK_MENU_SHELL(fileMenu), PrintMi);

    // > Sub Menu
    fileSubMenu := gtk_menu_new;
    SubMi := gtk_menu_item_new_with_mnemonic('_Sub');
    gtk_menu_item_set_submenu(GTK_MENU_ITEM(SubMi), fileSubMenu);
    gtk_menu_shell_append(GTK_MENU_SHELL(fileMenu), SubMi);

    // >> Sub0
    SubMi0 := gtk_menu_item_new_with_mnemonic('Sub_0');
    gtk_menu_shell_append(GTK_MENU_SHELL(fileSubMenu), SubMi0);
    g_signal_connect(G_OBJECT(SubMi0), 'activate', G_CALLBACK(@menu_click_msg), PChar('Sub 0...'));

    // >> Sub1
    SubMi1 := gtk_menu_item_new_with_mnemonic('Sub_1');
    gtk_menu_shell_append(GTK_MENU_SHELL(fileSubMenu), SubMi1);
    g_signal_connect(G_OBJECT(SubMi1), 'activate', G_CALLBACK(@menu_click_msg), PChar('Sub 1...'));

    // >> Sub2
    SubMi2 := gtk_menu_item_new_with_mnemonic('Sub_2');
    gtk_menu_shell_append(GTK_MENU_SHELL(fileSubMenu), SubMi2);
    g_signal_connect(G_OBJECT(SubMi2), 'activate', G_CALLBACK(@menu_click_msg), PChar('Sub 2...'));

    // > Trenner
    gtk_menu_shell_append(GTK_MENU_SHELL(fileMenu), gtk_separator_menu_item_new);

    // > Beenden
    quitMi :=   gtk_image_menu_item_new_from_stock(GTK_STOCK_QUIT, nil);
    gtk_menu_shell_append(GTK_MENU_SHELL(fileMenu), quitMi);
    g_signal_connect(G_OBJECT(quitMi), 'activate', G_CALLBACK(@gtk_main_quit), nil);

    // Optionen
    optionMenu := gtk_menu_new;
    optionMi := gtk_menu_item_new_with_mnemonic('_Optionen');
    gtk_menu_shell_append(GTK_MENU_SHELL(menubar), optionMi);
    gtk_menu_item_set_submenu(GTK_MENU_ITEM(optionMi), optionMenu);

    // > Status Bar
    tog_statusMi := gtk_check_menu_item_new_with_label('Status-Bar');
    g_signal_connect(G_OBJECT(tog_statusMi), 'activate', G_CALLBACK(@toggle_statusbar), statusbar);
    gtk_menu_shell_append(GTK_MENU_SHELL(optionMenu), tog_statusMi);

    // Hilfe
    helpMenu := gtk_menu_new;
    helpMi := gtk_menu_item_new_with_mnemonic('_Hilfe');
    gtk_menu_shell_append(GTK_MENU_SHELL(menubar), helpMi);
    gtk_menu_item_set_submenu(GTK_MENU_ITEM(helpMi), helpMenu);

    // > About
    aboutMi := gtk_menu_item_new_with_mnemonic('_About...');
    gtk_menu_shell_append(GTK_MENU_SHELL(helpMenu), aboutMi);
    g_signal_connect(G_OBJECT(aboutMi), 'activate', G_CALLBACK(@menu_click_msg), PChar('About...'));

    gtk_box_pack_start(GTK_BOX(vbox), menubar, False, False, 0);

    // --- Toolbar
    toolbar := gtk_toolbar_new;

    toolquit := gtk_tool_button_new_from_stock(GTK_STOCK_QUIT);
    gtk_toolbar_insert(GTK_TOOLBAR(toolbar), toolquit, -1);
    g_signal_connect(G_OBJECT(toolquit), 'clicked', G_CALLBACK(@gtk_main_quit), nil);

    toolSave := gtk_tool_button_new_from_stock(GTK_STOCK_SAVE);
    gtk_toolbar_insert(GTK_TOOLBAR(toolbar), toolSave, -1);
    //    g_signal_connect(G_OBJECT(toolquit), 'clicked', G_CALLBACK(@gtk_main_quit), nil);

    gtk_toolbar_insert(GTK_TOOLBAR(toolbar), gtk_separator_tool_item_new, -1);

    toolNet := gtk_tool_button_new_from_stock(GTK_STOCK_NETWORK);
    gtk_toolbar_insert(GTK_TOOLBAR(toolbar), toolNet, -1);
    //    g_signal_connect(G_OBJECT(toolquit), 'clicked', G_CALLBACK(@gtk_main_quit), nil);
    gtk_box_pack_start(GTK_BOX(vbox), toolbar, gFALSE, False, 0);


    // --- Popup Menu

    popMenu := gtk_menu_new;

    popMIMinimize := gtk_menu_item_new_with_label('Minimize');
    gtk_menu_shell_append(GTK_MENU_SHELL(popMenu), popMIMinimize);
    g_signal_connect_swapped(G_OBJECT(popMIMinimize), 'activate', G_CALLBACK(@gtk_window_iconify), GTK_WINDOW(window));

    popMIMmaximize := gtk_menu_item_new_with_label('Maximize');
    gtk_menu_shell_append(GTK_MENU_SHELL(popMenu), popMIMmaximize);
    g_signal_connect_swapped(G_OBJECT(popMIMmaximize), 'activate', G_CALLBACK(@gtk_window_maximize), GTK_WINDOW(window));

    popMIRestore := gtk_menu_item_new_with_label('Wiederherstellen');
    gtk_menu_shell_append(GTK_MENU_SHELL(popMenu), popMIRestore);
    g_signal_connect_swapped(G_OBJECT(popMIRestore), 'activate', G_CALLBACK(@gtk_window_unmaximize), GTK_WINDOW(window));

    popMIQuit := gtk_image_menu_item_new_from_stock(GTK_STOCK_QUIT,nil);
    gtk_menu_shell_append(GTK_MENU_SHELL(popMenu), popMIQuit);
//   g_signal_connect_swapped(G_OBJECT(popMIQuit), 'activate', G_CALLBACK(@gtk_main_quit), GTK_WINDOW(window));
 //   g_signal_connect( GTK_WINDOW(window), 'activate', G_CALLBACK(@gtk_main_quit),G_OBJECT(popMIQuit));
    g_signal_connect_swapped(G_OBJECT(popMIQuit), 'activate', G_CALLBACK(@gtk_main_quit), nil);

    gtk_widget_show_all(popMenu);
    WriteLn('init pop: ', PtrUInt(popMenu));
    WriteLn('init box: ', PtrUInt(event_box));
    g_signal_connect(G_OBJECT(event_box), 'button-press-event', G_CALLBACK(@show_popup), popMenu);

    // --- Globales

    g_signal_connect(G_OBJECT(window), 'destroy', G_CALLBACK(@gtk_main_quit), nil);

    gtk_widget_show_all(window);
    gtk_main;
    Result := 0;
  end;

begin
  SetExceptionMask([exDenormalized, exInvalidOp, exOverflow, exPrecision, exUnderflow, exZeroDivide]);
  Halt(main(argc, @argv));
end.
