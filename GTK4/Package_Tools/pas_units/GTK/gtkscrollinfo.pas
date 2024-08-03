unit gtkscrollinfo;

interface

uses
  glib2, common_GTK;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  TGtkScrollInfo = record // _GtkScrollInfo
  end;
  PGtkScrollInfo = ^TGtkScrollInfo;

function gtk_scroll_info_get_type: TGType; cdecl; external gtklib;
function gtk_scroll_info_new: PGtkScrollInfo; cdecl; external gtklib;
function gtk_scroll_info_ref(self: PGtkScrollInfo): PGtkScrollInfo; cdecl; external gtklib;
procedure gtk_scroll_info_unref(self: PGtkScrollInfo); cdecl; external gtklib;
procedure gtk_scroll_info_set_enable_horizontal(self: PGtkScrollInfo; horizontal: Tgboolean); cdecl; external gtklib;
function gtk_scroll_info_get_enable_horizontal(self: PGtkScrollInfo): Tgboolean; cdecl; external gtklib;
procedure gtk_scroll_info_set_enable_vertical(self: PGtkScrollInfo; vertical: Tgboolean); cdecl; external gtklib;
function gtk_scroll_info_get_enable_vertical(self: PGtkScrollInfo): Tgboolean; cdecl; external gtklib;

// === Konventiert am: 26-7-24 19:58:44 ===

function GTK_TYPE_SCROLL_INFO: TGType;

implementation

function GTK_TYPE_SCROLL_INFO: TGType;
begin
  GTK_TYPE_SCROLL_INFO := gtk_scroll_info_get_type;
end;



end.
