unit misc;

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
  Icons;


function CreateWidgetFrimXpm(win:PGtkWidget;xpm_data:PPChar):PGtkWidget;
function CreateMenuItem(menu:PGtkWidget;szName,szAccel,szTip:PChar;func:TGtkSignalFunc;data:gpointer):PGtkWidget;
function CreateSubMenu(menubar:PGtkWidget;szName:PChar):PGtkWidget;
function CreateBarSubMenu(menu:PGtkWidget;szName:PChar):PGtkWidget;

implementation

function CreateWidgetFrimXpm(win: PGtkWidget; xpm_data: PPChar): PGtkWidget;
var
  pixmap_data: PGdkPixmap;
  mask: PGdkBitmap;
  pixmap_widget: PGtkWidget;
begin
  pixmap_data:=gdk_pixmap_create_from_xpm_d(win^.window, mask,nil,xpm_data);
  pixmap_widget:=gtk_pixmap_new(pixmap_data,mask);
  Result:=pixmap_widget;
end;

function CreateMenuItem(menu: PGtkWidget; szName, szAccel, szTip: PChar;
  func: TGtkSignalFunc; data: gpointer): PGtkWidget;
begin

end;

function CreateSubMenu(menubar: PGtkWidget; szName: PChar): PGtkWidget;
begin

end;

function CreateBarSubMenu(menu: PGtkWidget; szName: PChar): PGtkWidget;
begin

end;

end.

