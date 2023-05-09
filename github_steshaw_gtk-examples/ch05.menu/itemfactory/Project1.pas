program Project1;

// https://github.com/steshaw/gtk-examples/blob/master/ch04.button.edit.combo/listbox.c

uses
  Math,
  SysUtils,
  GLib2,
  Gdk2,
  Gtk2;

    procedure ShowMenu( Data: pgpointer; callback_action:guint; widget: PGtkWidget);  cdecl;
  begin
    g_print('Click Menü'#10);
//    g_message('ItemFactory: activated "%s", action %d', [gtk_item_factory_path_from_widget(widget),PtrInt( callback_action)]);
    WriteLn('ItemFactory: activated "'+gtk_item_factory_path_from_widget(widget)+'", action ',PtrInt( callback_action));
    WriteLn(PtrInt(Data));
  end;

function CloseApp(w: PGtkWidget; Data: pgpointer): gint;     cdecl;
begin
  g_print('Quitting...'#10);
  gtk_main_quit;
  Result := 0;
end;


const
  menu_items: array of TGtkItemFactoryEntry = (
  (path: '/_Datei'; accelerator: nil; callback: nil; callback_action: 0; item_type: '<Branch>'; extra_data: nil),
  (path: '/Datei/tearoff1'; accelerator: nil; callback:TGtkItemFactoryCallback( ShowMenu); callback_action: 0; item_type: '<Tearoff>'; extra_data: nil),
  (path: '/Datei/_Neu'; accelerator: '<control>N'; callback:TGtkItemFactoryCallback( ShowMenu); callback_action: 12340; item_type: nil; extra_data: nil),
  (path: '/Datei/_Öffnen...'; accelerator: '<control>O'; callback:TGtkItemFactoryCallback( ShowMenu); callback_action: 0; item_type: nil; extra_data: nil),
  (path: '/Datei/_Save'; accelerator: '<control>S'; callback:TGtkItemFactoryCallback( ShowMenu); callback_action: 0; item_type: nil; extra_data: nil),
  (path: '/Datei/_Speichern _unter...'; accelerator: nil; callback:TGtkItemFactoryCallback( ShowMenu); callback_action: 0; item_type: nil; extra_data: nil),
  (path: '/Datei/sep1'; accelerator: nil; callback:TGtkItemFactoryCallback( ShowMenu); callback_action: 0; item_type: '<Separator>'; extra_data: nil),
  (path: '/Datei/_Beenden'; accelerator: '<control>Q'; callback:TGtkItemFactoryCallback( CloseApp); callback_action: 0; item_type: nil; extra_data: nil),

  (path: '/_Bearbeiten'; accelerator: nil; callback: nil; callback_action: 0; item_type: '<Branch>'; extra_data: nil),
  (path: '/Bearbeiten/ausschneiden'; accelerator: '<control>X'; callback:TGtkItemFactoryCallback( ShowMenu); callback_action: 0; item_type: nil; extra_data: nil),
  (path: '/Bearbeiten/kopieren'; accelerator: '<control>C'; callback:TGtkItemFactoryCallback( ShowMenu); callback_action: 0; item_type: nil; extra_data: nil),
  (path: '/Bearbeiten/einfügen'; accelerator: '<control>V'; callback:TGtkItemFactoryCallback( ShowMenu); callback_action: 0; item_type: nil; extra_data: nil),

  (path: '/Bearbeiten/_Schrift'; accelerator: nil; callback: nil; callback_action: 0; item_type: '<Branch>'; extra_data: nil),
  (path: '/Bearbeiten/Schrift/_Fett'; accelerator: nil; callback:TGtkItemFactoryCallback( ShowMenu); callback_action: 0; item_type: '<CheckItem>'; extra_data: nil),
  (path: '/Bearbeiten/Schrift/_Kursiv'; accelerator: nil; callback:TGtkItemFactoryCallback( ShowMenu); callback_action: 0; item_type: '<CheckItem>'; extra_data: nil),
  (path: '/Bearbeiten/Schrift/_Unterstrich'; accelerator: nil; callback:TGtkItemFactoryCallback( ShowMenu); callback_action: 0; item_type: '<CheckItem>'; extra_data: nil),

  (path: '/Bearbeiten/_Farbe'; accelerator: nil; callback: nil; callback_action: 0; item_type: '<Branch>'; extra_data: nil),
  (path: '/Bearbeiten/Farbe/_Rot'; accelerator: nil; callback:TGtkItemFactoryCallback( ShowMenu); callback_action: 0; item_type: '<RadioItem>'; extra_data: nil),
  (path: '/Bearbeiten/Farbe/_Blau'; accelerator: nil; callback:TGtkItemFactoryCallback( ShowMenu); callback_action: 0; item_type: '/Bearbeiten/Farbe/Rot'; extra_data: nil),
  (path: '/Bearbeiten/Farbe/_Rot'; accelerator: nil; callback:TGtkItemFactoryCallback( ShowMenu); callback_action: 0; item_type: '/Bearbeiten/Farbe/Rot'; extra_data: nil),
  (path: '/Bearbeiten/Farbe/_Gelb'; accelerator: nil; callback:TGtkItemFactoryCallback( ShowMenu); callback_action: 0; item_type: '/Bearbeiten/Farbe/Rot'; extra_data: nil),

  (path: '/_Hilfe'; accelerator: nil; callback: nil; callback_action: 0; item_type: '<Branch>'; extra_data: nil),
  (path: '/Hilfe/Hilfe'; accelerator: nil; callback:TGtkItemFactoryCallback( ShowMenu); callback_action: 0; item_type: nil; extra_data: nil),
  (path: '/Hilfe/About...'; accelerator: nil; callback:TGtkItemFactoryCallback( ShowMenu); callback_action: 0; item_type: nil; extra_data: nil));

  procedure CreateItemFactory;
  var
    Window, box1: PGtkWidget;
    accel_group: PGtkAccelGroup;
    item_factory: PGtkItemFactory;
  begin
    Window := gtk_window_new(GTK_WINDOW_TOPLEVEL);
    gtk_window_set_title(GTK_WINDOW(Window), 'Item Factory');
    gtk_window_set_default_size(GTK_WINDOW(Window), 200, 200);
    gtk_container_border_width(GTK_CONTAINER(Window), 0);
    gtk_window_set_position(GTK_WINDOW(window), GTK_WIN_POS_CENTER);
    gtk_signal_connect(GTK_OBJECT(Window), 'destroy', GTK_SIGNAL_FUNC(@gtk_widget_destroy), nil);
    gtk_signal_connect(GTK_OBJECT(Window), 'delete_event', GTK_SIGNAL_FUNC(@CloseApp), nil);

    accel_group := gtk_accel_group_new;

    item_factory := gtk_item_factory_new(GTK_TYPE_MENU_BAR, '<blah>', accel_group);

    gtk_item_factory_create_items(item_factory, Length(menu_items), PGtkItemFactoryEntry(menu_items), nil);

    //    gtk_accel_group_attach(accel_group,GTK_OBJECT(Window));

    box1 := gtk_vbox_new(False, 0);
    gtk_container_add(GTK_CONTAINER(Window), box1);

    gtk_box_pack_start(GTK_BOX(box1), gtk_item_factory_get_widget(item_factory, '<blah>'), False, False, 9);

    gtk_widget_show_all(window);

  end;

  procedure main;
  var
    Window, button1, vbox, label1: PGtkWidget;
    BtnLabel: PGtkLabel;
  begin

    GTK_Init(@argc, @argv);

    CreateItemFactory;

    GTK_Main;
  end;

begin
  SetExceptionMask([exDenormalized, exInvalidOp, exOverflow, exPrecision, exUnderflow, exZeroDivide]);
  main;
end.
