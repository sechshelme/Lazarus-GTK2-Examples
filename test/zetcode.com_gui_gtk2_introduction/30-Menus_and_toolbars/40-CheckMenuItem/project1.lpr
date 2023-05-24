program project1;

uses
  glib2,
  gdk2,
  gtk2;

  procedure gtk_widget_set_tooltip_text(window: PGtkWidget; title: Pgchar); cdecl; external gtklib;

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

  procedure draw_event(widget: PGtkWidget; event: PGdkEventExpose; Data: gpointer);
  var
    win: PGdkWindow;
    gc: PGdkGC;
    red: TGdkColor = (pixel: 0; red: $FFFF; green: 0; blue: 0);
  begin
    WriteLn(PtrUInt(widget));
    win := widget^.window;
    gc := gdk_gc_new(widget^.window);
    gdk_gc_set_rgb_bg_color(gc, @red);
    gdk_gc_set_foreground(gc, @red);
    gdk_gc_set_background(gc, @red);
    gdk_draw_line(win, gc, 0, 0, 200, 200);
  end;

  function main(argc: integer; argv: PChar): integer;
  var
    window, vbox, menubar, viewMi, quitMi, viewMenu, tog_statMi, statusbar, button1: PGtkWidget;
    color: TGdkColor = (pixel: 0; red: $FFFF; green: 0; blue: 0);

  begin
    gtk_init(@argc, @argv);
    window := gtk_window_new(GTK_WINDOW_TOPLEVEL);
    gtk_window_set_title(GTK_WINDOW(window), 'Simple menu');
    gtk_window_set_default_size(GTK_WINDOW(window), 300, 200);

    vbox := gtk_vbox_new(gFALSE, 0);
    gtk_container_add(GTK_CONTAINER(window), vbox);

    menubar := gtk_menu_bar_new;
    viewMenu := gtk_menu_new;

    button1 := gtk_button_new_with_label('Hello World !');
    gdk_color_parse ('red', @color);
    gtk_widget_modify_bg(vbox, GTK_STATE_NORMAL, @color);
    gtk_container_add(GTK_CONTAINER(vbox), button1);

    g_signal_connect(G_OBJECT(button1), 'expose-event', G_CALLBACK(@draw_event), NULL);
    WriteLn('button1: ', PtrUInt(button1));

    viewMi := gtk_menu_item_new_with_mnemonic('_View');
    tog_statMi := gtk_check_menu_item_new_with_label('View statusbar');
    gtk_check_menu_item_set_active(GTK_CHECK_MENU_ITEM(tog_statMi), True);

    quitMi := gtk_menu_item_new_with_mnemonic('_Quit');

    gtk_menu_item_set_submenu(GTK_MENU_ITEM(viewMi), viewMenu);
    gtk_menu_shell_append(GTK_MENU_SHELL(viewMenu), tog_statMi);
    gtk_menu_shell_append(GTK_MENU_SHELL(viewMenu), quitMi);
    gtk_menu_shell_append(GTK_MENU_SHELL(menubar), viewMi);
    gtk_box_pack_start(GTK_BOX(vbox), menubar, False, False, 0);

    statusbar := gtk_statusbar_new;
    g_signal_connect(G_OBJECT(statusbar), 'expose-event', G_CALLBACK(@draw_event), NULL);
    WriteLn('statusbar: ', PtrUInt(statusbar));


    gtk_widget_modify_bg(statusbar, GTK_STATE_NORMAL, @color);
    gtk_widget_modify_bg(statusbar, GTK_STATE_PRELIGHT, @color);
    gtk_widget_modify_bg(statusbar, GTK_STATE_ACTIVE, @color);
    gtk_box_pack_end(GTK_BOX(vbox), statusbar, False, True, 0);

    g_signal_connect(G_OBJECT(tog_statMi), 'activate', G_CALLBACK(@toggle_statusbar), statusbar);
    g_signal_connect(G_OBJECT(quitMi), 'activate', G_CALLBACK(@gtk_main_quit), nil);
    g_signal_connect(G_OBJECT(window), 'destroy', G_CALLBACK(@gtk_main_quit), nil);

    gtk_widget_show_all(window);
    gtk_main;
    Result := 0;
  end;

begin
  Halt(main(argc, @argv));
end.
