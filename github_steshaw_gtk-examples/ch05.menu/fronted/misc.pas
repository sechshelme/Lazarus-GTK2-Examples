unit misc;

interface

uses
  Math,
  Strings,
  SysUtils,
  GLib2,
  Gdk2,
  Gtk2;

var
  accel_group: PGtkAccelGroup;
  win_main: PGtkWidget;
  tooltips: PGtkTooltips;

function CreateBarSubMenu(menu: PGtkWidget; szName: PChar): PGtkWidget;
function CreateMenuItem(menu: PGtkWidget; szName, szAccel, szTip: PChar; func: TGtkSignalFunc; Data: gpointer): PGtkWidget;
function CreateMenuCheck(menu: PGtkWidget; szName, szTip: PChar; func: TGtkSignalFunc; Data: gpointer): PGtkWidget;
function CreateMenuRadio(menu: PGtkWidget; szName, szTip: PChar; group: PPGSList; func: TGtkSignalFunc; Data: gpointer): PGtkWidget;

function CreateWidgetFromXpm(window: PGtkWidget;xpm_data: Pointer): PGtkWidget;

implementation

function CreateBarSubMenu(menu: PGtkWidget; szName: PChar): PGtkWidget;
var
  menuitem, submenu: PGtkWidget;
begin
  menuitem := gtk_menu_item_new_with_mnemonic(szName);

  gtk_menu_bar_append(menu, menuitem);
  //   gtk_menu_bar_append(GTK_MENU_BAR(menu),menuitem);
  gtk_widget_show(menuitem);

  submenu := gtk_menu_new;
  gtk_menu_item_set_submenu(GTK_MENU_ITEM(menuitem), submenu);

  Result := submenu;
end;

function CreateMenuItem(menu: PGtkWidget; szName, szAccel, szTip: PChar; func: TGtkSignalFunc; Data: gpointer): PGtkWidget;
var
  menuitem: PGtkWidget;
begin
  if (szName <> nil) and (strlen(szName) > 0) then begin
    menuitem := gtk_menu_item_new_with_label(szName);
    gtk_signal_connect(GTK_OBJECT(menuitem), 'activate', GTK_SIGNAL_FUNC(func), Data);
  end else begin
    menuitem := gtk_menu_item_new;
  end;


  gtk_menu_append(menu, menuitem);
  gtk_widget_show(menuitem);


  if accel_group = nil then begin
    accel_group := gtk_accel_group_new;
    //    gtk_accel_group_attach(accel_group,GTK_OBJECT(win_main));

  end;

  if (szAccel <> nil) and (szAccel[0] = '^') then begin
    gtk_widget_add_accelerator(menuitem, 'activate', accel_group, guint(szAccel[1]), GDK_CONTROL_MASK, GTK_ACCEL_VISIBLE);
  end;

  if (szTip <> nil) and (StrLen(szTip) > 0) then begin
    gtk_tooltips_set_tip(tooltips, menuitem, szTip, nil);
  end;

  Result := menuitem;
end;

function CreateMenuCheck(menu: PGtkWidget; szName, szTip: PChar; func: TGtkSignalFunc; Data: gpointer): PGtkWidget;
var
  menuitem: PGtkWidget;
begin
  menuitem := gtk_check_menu_item_new_with_label(szName);

  //  gtk_menu_append(GTK_MENU(menu),menuitem);
  gtk_menu_append(menu, menuitem);
  gtk_widget_show(menuitem);

  gtk_signal_connect(GTK_OBJECT(menuitem), 'toggled', GTK_SIGNAL_FUNC(func), Data);

  if (szTip <> nil) and (StrLen(szTip) > 0) then begin
    gtk_tooltips_set_tip(tooltips, menuitem, szTip, nil);
  end;

  Result := menuitem;
end;

function CreateMenuRadio(menu: PGtkWidget; szName, szTip: PChar; group: PPGSList; func: TGtkSignalFunc; Data: gpointer): PGtkWidget;
var
  menuitem: PGtkWidget;
begin
  menuitem := gtk_radio_menu_item_new_with_label(group^, szName);
  group^ := gtk_radio_menu_item_group(GTK_RADIO_MENU_ITEM(menuitem));

  //  gtk_menu_append(GTK_MENU(menu),menuitem);
  gtk_menu_append(menu, menuitem);
  gtk_widget_show(menuitem);

  gtk_signal_connect(GTK_OBJECT(menuitem), 'toggled', GTK_SIGNAL_FUNC(func), Data);

  if (szTip <> nil) and (StrLen(szTip) > 0) then begin
    gtk_tooltips_set_tip(tooltips, menuitem, szTip, nil);
  end;

  Result := menuitem;
end;

function CreateWidgetFromXpm(window: PGtkWidget; xpm_data: Pointer): PGtkWidget;
var
  pixmap_data: PGdkPixmap;
  pixmap_widget: PGtkWidget;
  mask: PGdkBitmap;
begin
  pixmap_data := gdk_pixmap_create_from_xpm_d(win_main^.window, mask, nil, xpm_data);
  pixmap_widget := gtk_pixmap_new(pixmap_data, mask);
  gtk_widget_show(pixmap_widget);
  Result := pixmap_widget;
end;

end.
