program project1;

uses
  glib2,
  gdk2,
  gtk2;

  procedure gtk_widget_set_tooltip_text(window: PGtkWidget; title: Pgchar); cdecl; external gtklib;

  procedure print_msg(widget: PGtkWidget; Data: gpointer);
  begin
    WriteLn('click');
  end;

  procedure menu_click_msg(widget: PGtkWidget; Data: gpointer);
  begin
    WriteLn('menu click');
    if Data <> nil then begin
      WriteLn(PChar(Data));
    end;
    WriteLn(widget^.Name);
  end;

  procedure statusBar_click_msg(widget: PGtkWidget; Data: gpointer);
  begin
    WriteLn('Status Bar click');
  end;

  procedure StatusBar_draw_event(widget: PGtkWidget; event: PGdkEventExpose; Data: gpointer);
  var
    win: PGdkWindow;
    gc: PGdkGC;
    red: TGdkColor = (pixel: 0; red: $FFFF; green: 0; blue: 0);
    Width, Height, x, y: gint;
  begin
    x := event^.area.x;
    y := event^.area.y;
    Width := event^.area.Width;
    Height := event^.area.Height;
    WriteLn('x: ', x: 4, ' y: ', y: 4, ' w: ', Width: 4, ' h:', Height: 4);
    WriteLn('toggle Satatus');

    win := widget^.window;
    WriteLn(PtrUInt(win));

    win:=event^.window;
    WriteLn(PtrUInt(win));

    gc := gdk_gc_new(win);
    gdk_gc_set_rgb_bg_color(gc, @red);
    gdk_gc_set_foreground(gc, @red);
    gdk_gc_set_background(gc, @red);
    gdk_draw_line(win, gc, 0, 0, Width, Height);
    gdk_draw_line(win, gc, 0, 0, 1000, 1000);
    gdk_draw_line(win, gc, 0, 182, 300, 18);
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

  function main(argc: integer; argv: PChar): integer;
  var
    window, vbox, menubar, fileMi, quitMi, fileMenu, PrintMi, aboutMi, SubMi, SubMi0, SubMi1, SubMi2, fileSubMenu, OpenMi, optionMi, optionMenu, tog_statusMi, statusbar, helpMenu, helpMi: PGtkWidget;
  begin
    gtk_init(@argc, @argv);
    window := gtk_window_new(GTK_WINDOW_TOPLEVEL);
    gtk_window_set_title(GTK_WINDOW(window), 'Images menu');
    gtk_window_set_default_size(GTK_WINDOW(window), 300, 200);

    vbox := gtk_vbox_new(gFALSE, 0);
    gtk_container_add(GTK_CONTAINER(window), vbox);

    // --- Status Bar
    statusbar := gtk_statusbar_new;
    g_signal_connect(G_OBJECT(statusbar), 'expose-event', G_CALLBACK(@StatusBar_draw_event), NULL);
    g_signal_connect(G_OBJECT(statusbar), 'button-press-event', G_CALLBACK(@statusBar_click_msg), nil);
    gtk_box_pack_end(GTK_BOX(vbox), statusbar, True, True, 0);

    WriteLn('statusbar: ', PtrUInt(statusbar));

    // --- Menu Bar
    menubar := gtk_menu_bar_new;

    // Datei Menü
    fileMenu := gtk_menu_new;
    fileMi := gtk_menu_item_new_with_mnemonic('_Datei');
    gtk_widget_set_tooltip_text(fileMi, 'Datei Menü');
    gtk_menu_shell_append(GTK_MENU_SHELL(menubar), fileMi);
    gtk_menu_item_set_submenu(GTK_MENU_ITEM(fileMi), fileMenu);

    // > Datei Öffnen
    OpenMi := gtk_menu_item_new_with_mnemonic('Datei _öffnen...');
    //    OpenMi := gtk_image_menu_item_new_from_stock(GTK_STOCK_OPEN, nil);
    g_signal_connect(G_OBJECT(OpenMi), 'activate', G_CALLBACK(@menu_click_msg), PChar('Datei öffnen...'));
    gtk_menu_shell_append(GTK_MENU_SHELL(fileMenu), OpenMi);

    // > Drucken
    PrintMi := gtk_menu_item_new_with_mnemonic('_Drucken');
    g_signal_connect(G_OBJECT(PrintMi), 'activate', G_CALLBACK(@print_msg), nil);
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
    quitMi := gtk_menu_item_new_with_mnemonic('_Beenden');
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

    g_signal_connect(G_OBJECT(window), 'destroy', G_CALLBACK(@gtk_main_quit), nil);

    gtk_widget_show_all(window);
    gtk_main;
    Result := 0;
  end;

begin
  Halt(main(argc, @argv));
end.
