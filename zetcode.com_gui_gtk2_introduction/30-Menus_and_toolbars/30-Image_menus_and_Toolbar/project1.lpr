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

  //  procedure gtk_widget_set_tooltip_text(window: PGtkWidget; title: Pgchar); cdecl; external gtklib;

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


  function main(argc: integer; argv: PChar): integer;
  var
    window, vbox, menubar, fileMi, quitMi, fileMenu, sep, openMi, newMi, testMi0, testMi1, toolbar: PGtkWidget;
    accel_group: PGtkAccelGroup = nil;
    toolquit: PGtkToolItem;
  begin
    gtk_init(@argc, @argv);

    window := gtk_window_new(GTK_WINDOW_TOPLEVEL);
    gtk_window_set_position(GTK_WINDOW(window), GTK_WIN_POS_CENTER);
    gtk_window_set_default_size(GTK_WINDOW(window), 300, 200);
    gtk_window_set_title(GTK_WINDOW(window), 'Images');

    vbox := gtk_vbox_new(False, 0);
    gtk_container_add(GTK_CONTAINER(window), vbox);

    menubar := gtk_menu_bar_new;
    fileMenu := gtk_menu_new;

    accel_group := gtk_accel_group_new;
    gtk_window_add_accel_group(GTK_WINDOW(window), accel_group);

    fileMi := gtk_menu_item_new_with_mnemonic('_File');
    newMi := gtk_image_menu_item_new_from_stock(GTK_STOCK_NEW, nil);
    openMi := gtk_image_menu_item_new_from_stock(GTK_STOCK_OPEN, nil);
    sep := gtk_separator_menu_item_new;
    testMi0 := gtk_menu_item_new_with_mnemonic('_Test');
    testMi1 := gtk_menu_item_new_with_mnemonic('_Test');
    quitMi := gtk_image_menu_item_new_from_stock(GTK_STOCK_QUIT, accel_group);

    gtk_widget_add_accelerator(quitMi, 'activate', accel_group, gdk_q, GDK_CONTROL_MASK, GTK_ACCEL_VISIBLE);
    g_signal_connect(G_OBJECT(quitMi), 'activate', G_CALLBACK(@gtk_main_quit), nil);

    gtk_menu_item_set_submenu(GTK_MENU_ITEM(fileMi), fileMenu);
    gtk_menu_shell_append(GTK_MENU_SHELL(fileMenu), newMi);
    gtk_menu_shell_append(GTK_MENU_SHELL(fileMenu), openMi);

    gtk_menu_shell_append(GTK_MENU_SHELL(fileMenu), testMi0);
    g_signal_connect(G_OBJECT(testMi0), 'activate', G_CALLBACK(@menu_click_msg), Pointer(cmTest0));

    gtk_menu_shell_append(GTK_MENU_SHELL(fileMenu), sep);

    gtk_menu_shell_append(GTK_MENU_SHELL(fileMenu), testMi1);
    g_signal_connect(G_OBJECT(testMi1), 'activate', G_CALLBACK(@menu_click_msg), Pointer(cmTest1));

    gtk_menu_shell_append(GTK_MENU_SHELL(fileMenu), quitMi);
    gtk_menu_shell_append(GTK_MENU_SHELL(menubar), fileMi);
    gtk_box_pack_start(GTK_BOX(vbox), menubar, gFALSE, False, 0);

    // --- Toolbar
    toolbar := gtk_toolbar_new;

    toolquit := gtk_tool_button_new_from_stock(GTK_STOCK_QUIT);
    gtk_toolbar_insert(GTK_TOOLBAR(toolbar), toolquit, -1);
    gtk_box_pack_start(GTK_BOX(vbox), toolbar, gFALSE, False, 0);
    g_signal_connect(G_OBJECT(toolquit), 'clicked', G_CALLBACK(@gtk_main_quit), nil);

    toolquit := gtk_tool_button_new_from_stock(GTK_STOCK_SAVE);
    gtk_toolbar_insert(GTK_TOOLBAR(toolbar), toolquit, -1);
    gtk_box_pack_start(GTK_BOX(vbox), toolbar, gFALSE, False, 0);
    //    g_signal_connect(G_OBJECT(toolquit), 'clicked', G_CALLBACK(@gtk_main_quit), nil);

    toolquit := gtk_tool_button_new_from_stock(GTK_STOCK_NETWORK);
    gtk_toolbar_insert(GTK_TOOLBAR(toolbar), toolquit, -1);
    gtk_box_pack_start(GTK_BOX(vbox), toolbar, gFALSE, False, 0);
    //    g_signal_connect(G_OBJECT(toolquit), 'clicked', G_CALLBACK(@gtk_main_quit), nil);



    g_signal_connect(G_OBJECT(window), 'destroy', G_CALLBACK(@gtk_main_quit), nil);

    gtk_widget_show_all(window);
    gtk_main;
    Result := 0;
  end;

begin
  SetExceptionMask([exDenormalized, exInvalidOp, exOverflow, exPrecision, exUnderflow, exZeroDivide]);
  Halt(main(argc, @argv));
end.
