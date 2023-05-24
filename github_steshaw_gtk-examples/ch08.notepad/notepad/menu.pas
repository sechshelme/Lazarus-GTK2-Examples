unit menu;

interface

uses
  Math,
  Character,
  ctypes,
  SysUtils,
  pango,
  GLib2,
  Gdk2,
  Gtk2,
  misc,
  Icons;

var
  accel_group: PGtkAccelGroup;
toolbar,  win_main:PGtkWidget;
procedure CreateMenu(win,vbox_main:PGtkWidget);
implementation

procedure CreateToolbar(vbox_main: PGtkWidget);
var
  toolbar: PGtkWidget;
begin
//  toolbar:=gtk_toolbar_new(GTK_ORIENTATION_HORIZONTAL,GTK_TOOLBAR_ICONS);
  toolbar:=gtk_toolbar_new;
   gtk_box_pack_start(GTK_BOX(vbox_main),toolbar,False,True,0);

   gtk_toolbar_append_item(GTK_TOOLBAR(toolbar),nil,'New Window',nil, CreateWidgetFrimXpm(win_main,PPChar( xpm_new)), TGtkSignalFunc(menu_New),nil);

end;

procedure CreateMenu(win, vbox_main: PGtkWidget);
var
  menubar,menu, menuitem: PGtkWidget;
begin
   win_main:=win;

               accel_group := gtk_accel_group_new ;
  //  gtk_accel_group_attach (accel_group, GTK_OBJECT (window));

  menubar:=gtk_menu_bar_new;

      menu := CreateBarSubMenu(menubar, 'File');


     menuitem := CreateMenuItem (menu, 'New', '^N',
                     'Create a new item',
                     GTK_SIGNAL_FUNC (menu_New), 'new');

  CreateToolbar(vbox_main);
end;


end.

