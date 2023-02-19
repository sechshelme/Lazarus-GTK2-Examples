program project1;

// http://tux.iar.unlp.edu.ar/~fede/manuales/tutorial/x1716.html

uses
  glib2,
  gdk2,
  gtk2;


const
  cmNew=1000;

  procedure gtk_widget_set_tooltip_text(window: PGtkWidget; title: Pgchar); cdecl; external gtklib;

    procedure menu_click_msg(widget: PGtkWidget; Data: gpointer);
    begin
      WriteLn('menu click');
      if Data <> nil then begin
        WriteLn('data');
        WriteLn(PChar(Data));
      end;
    end;

    procedure test_proc; cdecl;
    begin
      WriteLn('menu click xxx');
    end;

var
  mein_menu: array of TGtkItemFactoryEntry = (
  (path: '/Datei'; accelerator: nil; callback: nil; callback_action: 0; item_type: '<Branch>'; extra_data: nil),

  (path: '/Datei/Neu'; accelerator: '<control>n'; callback: nil; callback_action: 0; item_type: '<Item>'; extra_data: nil),
  (path: '/Datei/Speichern'; accelerator: 'F2'; callback: nil; callback_action: 0; item_type: nil; extra_data: nil),
  (path: '/Datei/Speichern unter...'; accelerator: '<control>b'; callback: nil; callback_action: 0; item_type: nil; extra_data: nil),
  (path: '/Datei/Öffnen'; accelerator: '<control>b'; callback: nil; callback_action: 0; item_type: nil; extra_data: nil),
  (path: '/Datei/sep'; accelerator: nil; callback: nil; callback_action: 0; item_type: '<Separator>'; extra_data: nil),
  (path: '/Datei/Beenden'; accelerator: '<control>q'; callback: @gtk_main_quit; callback_action: 0; item_type: nil; extra_data: nil),

  (path: '/Bearbeiten'; accelerator: nil; callback: nil; callback_action: 0; item_type: '<Branch>'; extra_data: nil),
  (path: '/Bearbeiten/Ausschneiden'; accelerator: '<shift>Delete'; callback: nil; callback_action: 0; item_type: nil; extra_data: nil),
  (path: '/Bearbeiten/Kopieren'; accelerator: '<control>Insert'; callback: nil; callback_action: 0; item_type: nil; extra_data: nil),
  (path: '/Bearbeiten/Einfügen'; accelerator: '<shift>Insert'; callback: nil; callback_action: 0; item_type: nil; extra_data: nil),

  (path: '/Hilfe'; accelerator: nil; callback: nil; callback_action: 0; item_type: '<Branch>'; extra_data: nil),
  (path: '/Hilfe/About...'; accelerator: 'F1'; callback: @test_proc; callback_action: 0; item_type: nil; extra_data:  nil)
//  (path: '/Hilfe/About...'; accelerator: 'F1'; callback: TGtkItemFactoryCallback(@menu_click_msg); callback_action: 0; item_type: nil; extra_data:  Pointer(cmNew))
//  (path: '/Hilfe/About2...'; accelerator: 'F1'; callback: @menu_click_msg; callback_action: 0; item_type: nil; extra_data: nil)
  );


  function main(argc: integer; argv: PChar): integer;
  var
    window, vbox, menubar, fileMi, quitMi, fileMenu: PGtkWidget;

    accel_group: PGtkAccelGroup;
    item_factory: PGtkItemFactory;
  begin
    gtk_init(@argc, @argv);
    window := gtk_window_new(GTK_WINDOW_TOPLEVEL);
    gtk_window_set_title(GTK_WINDOW(window), 'Simple menu');
    gtk_window_set_default_size(GTK_WINDOW(window), 300, 200);

    vbox := gtk_vbox_new(gFALSE, 0);
    gtk_container_add(GTK_CONTAINER(window), vbox);

    //menubar := gtk_menu_bar_new;
    //fileMenu := gtk_menu_new;
    //
    //fileMi := gtk_menu_item_new_with_mnemonic('_File');
    //gtk_widget_set_tooltip_text(fileMi, 'Datei');
    //
    //quitMi := gtk_menu_item_new_with_mnemonic('_Quit');
    //g_signal_connect(G_OBJECT(quitMi), 'activate', G_CALLBACK(@gtk_main_quit), nil);
    //
    //gtk_menu_item_set_submenu(GTK_MENU_ITEM(fileMi), fileMenu);
    //gtk_menu_shell_append(GTK_MENU_SHELL(fileMenu), quitMi);
    //gtk_menu_shell_append(GTK_MENU_SHELL(menubar), fileMi);
    //gtk_box_pack_start(GTK_BOX(vbox), menubar, gFALSE, False, 0);

    accel_group := gtk_accel_group_new;
    item_factory := gtk_item_factory_new(GTK_TYPE_MENU_BAR, '<main>', accel_group);
    gtk_item_factory_create_items(item_factory, Length(mein_menu), @mein_menu[0], nil);

    menubar := gtk_item_factory_get_widget(item_factory, '<main>');
    gtk_box_pack_start(GTK_BOX(vbox), menubar, gFALSE, False, 0);

    g_signal_connect(G_OBJECT(window), 'destroy', G_CALLBACK(@gtk_main_quit), nil);
//    g_signal_connect(G_OBJECT(window), 'destroy', G_CALLBACK(@menu_click_msg), nil);



    gtk_widget_show_all(window);
    gtk_main;
    Result := 0;
  end;

begin
  Halt(main(argc, @argv));
end.
