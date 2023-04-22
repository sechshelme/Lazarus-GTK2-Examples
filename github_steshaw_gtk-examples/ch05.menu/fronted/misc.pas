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

end.
