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

  procedure show_popup(widget: PGtkWidget; event: PGdkEvent); cdecl;
  var
    bevent: PGdkEventButton;
  begin
    WriteLn('click');
    if event^._type = GDK_BUTTON_PRESS then begin
      bevent := PGdkEventButton(event);
      if bevent^.button = 3 then begin
        WriteLn(PtrUInt(widget));
        gtk_menu_popup(GTK_MENU(widget), nil, nil, nil, nil, bevent^.button, bevent^.time);
      end;
    end;
  end;


  function main(argc: integer; argv: PChar): integer;
  var
    window, menubar, fileMi, quitMi, pMenu, openMi, newMi, testMi0, testMi1, toolbar, ebox, hideMi, vbox, popMenu, maximizeMItem, minimizeMItem, restoreMItem: PGtkWidget;
    accel_group: PGtkAccelGroup = nil;
    toolquit, toolNet, toolSave: PGtkToolItem;
  begin
    gtk_init(@argc, @argv);

    window := gtk_window_new(GTK_WINDOW_TOPLEVEL);
    gtk_window_set_position(GTK_WINDOW(window), GTK_WIN_POS_CENTER);
    gtk_window_set_default_size(GTK_WINDOW(window), 300, 200);
    gtk_window_set_title(GTK_WINDOW(window), 'Popup menu');

    vbox := gtk_vbox_new(False, 0);
    gtk_container_add(GTK_CONTAINER(window), vbox);

    // --- Menu

    menubar := gtk_menu_bar_new;

    pMenu := gtk_menu_new;

    accel_group := gtk_accel_group_new;
    gtk_window_add_accel_group(GTK_WINDOW(window), accel_group);


    fileMi := gtk_menu_item_new_with_mnemonic('_File');
    gtk_widget_set_tooltip_text(fileMi, 'Datei Menü');
    gtk_menu_item_set_submenu(GTK_MENU_ITEM(fileMi), pMenu);

    newMi := gtk_image_menu_item_new_from_stock(GTK_STOCK_NEW, nil);
    gtk_menu_shell_append(GTK_MENU_SHELL(pMenu), newMi);

    openMi := gtk_image_menu_item_new_from_stock(GTK_STOCK_OPEN, nil);
    gtk_menu_shell_append(GTK_MENU_SHELL(pMenu), openMi);

    testMi0 := gtk_menu_item_new_with_mnemonic('_Test');
    gtk_menu_shell_append(GTK_MENU_SHELL(pMenu), testMi0);
    g_signal_connect(G_OBJECT(testMi0), 'activate', G_CALLBACK(@menu_click_msg), Pointer(cmTest0));

    gtk_menu_shell_append(GTK_MENU_SHELL(pMenu), gtk_separator_menu_item_new);

    testMi1 := gtk_menu_item_new_with_mnemonic('_Test');
    gtk_menu_shell_append(GTK_MENU_SHELL(pMenu), testMi1);
    g_signal_connect(G_OBJECT(testMi1), 'activate', G_CALLBACK(@menu_click_msg), Pointer(cmTest1));

    quitMi := gtk_image_menu_item_new_from_stock(GTK_STOCK_QUIT, accel_group);
    gtk_widget_add_accelerator(quitMi, 'activate', accel_group, gdk_q, GDK_CONTROL_MASK, GTK_ACCEL_VISIBLE);
    g_signal_connect(G_OBJECT(quitMi), 'activate', G_CALLBACK(@gtk_main_quit), nil);
    gtk_menu_shell_append(GTK_MENU_SHELL(pMenu), quitMi);

    hideMi := gtk_menu_item_new_with_label('Minimize');
    g_signal_connect_swapped(G_OBJECT(hideMi), 'activate', G_CALLBACK(@gtk_window_iconify), GTK_WINDOW(window));
    gtk_menu_shell_append(GTK_MENU_SHELL(pMenu), hideMi);

    gtk_menu_shell_append(GTK_MENU_SHELL(menubar), fileMi);
    gtk_box_pack_start(GTK_BOX(vbox), menubar, gFALSE, False, 0);

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

    ebox := gtk_event_box_new;
    gtk_container_add(GTK_CONTAINER(vbox), ebox);

    popMenu := gtk_menu_new;

    maximizeMItem := gtk_menu_item_new_with_label('Maximize');
    gtk_menu_shell_append(GTK_MENU_SHELL(popMenu), maximizeMItem);
    g_signal_connect_swapped(G_OBJECT(maximizeMItem), 'activate', G_CALLBACK(@gtk_window_maximize), GTK_WINDOW(window));

    minimizeMItem := gtk_menu_item_new_with_label('Minimize');
    gtk_menu_shell_append(GTK_MENU_SHELL(popMenu), minimizeMItem);
    g_signal_connect_swapped(G_OBJECT(minimizeMItem), 'activate', G_CALLBACK(@gtk_window_iconify), GTK_WINDOW(window));

    restoreMItem := gtk_menu_item_new_with_label('Wiederherstellen');
    gtk_menu_shell_append(GTK_MENU_SHELL(popMenu), restoreMItem);
    g_signal_connect_swapped(G_OBJECT(restoreMItem), 'activate', G_CALLBACK(@gtk_window_unmaximize), GTK_WINDOW(window));

    gtk_widget_show_all(popMenu);
    g_signal_connect_swapped(G_OBJECT(ebox), 'button-press-event', G_CALLBACK(@show_popup), popMenu);


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
