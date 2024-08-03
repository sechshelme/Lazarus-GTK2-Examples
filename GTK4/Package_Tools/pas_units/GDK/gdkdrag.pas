unit gdkdrag;

interface

uses
  glib2, common_GTK, gdkenums, gdkcontentformats, gdktypes;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  TGdkDrag = record
  end;
  PGdkDrag = ^TGdkDrag;

  PGdkDragCancelReason = ^TGdkDragCancelReason;
  TGdkDragCancelReason = longint;

const
  GDK_DRAG_CANCEL_NO_TARGET = 0;
  GDK_DRAG_CANCEL_USER_CANCELLED = 1;
  GDK_DRAG_CANCEL_ERROR = 2;

function gdk_drag_get_type: TGType; cdecl; external gtklib;
function gdk_drag_get_display(drag: PGdkDrag): PGdkDisplay; cdecl; external gtklib;
function gdk_drag_get_device(drag: PGdkDrag): PGdkDevice; cdecl; external gtklib;
function gdk_drag_get_formats(drag: PGdkDrag): PGdkContentFormats; cdecl; external gtklib;
function gdk_drag_get_actions(drag: PGdkDrag): TGdkDragAction; cdecl; external gtklib;
function gdk_drag_get_selected_action(drag: PGdkDrag): TGdkDragAction; cdecl; external gtklib;
function gdk_drag_action_is_unique(action: TGdkDragAction): Tgboolean; cdecl; external gtklib;
function gdk_drag_begin(surface: PGdkSurface; device: PGdkDevice; content: PGdkContentProvider; actions: TGdkDragAction; dx: Tdouble;
  dy: Tdouble): PGdkDrag; cdecl; external gtklib;
procedure gdk_drag_drop_done(drag: PGdkDrag; success: Tgboolean); cdecl; external gtklib;
function gdk_drag_get_drag_surface(drag: PGdkDrag): PGdkSurface; cdecl; external gtklib;
procedure gdk_drag_set_hotspot(drag: PGdkDrag; hot_x: longint; hot_y: longint); cdecl; external gtklib;
function gdk_drag_get_content(drag: PGdkDrag): PGdkContentProvider; cdecl; external gtklib;
function gdk_drag_get_surface(drag: PGdkDrag): PGdkSurface; cdecl; external gtklib;

// === Konventiert am: 31-7-24 19:30:20 ===

function GDK_TYPE_DRAG: TGType;
function GDK_DRAG(obj: Pointer): PGdkDrag;
function GDK_IS_DRAG(obj: Pointer): Tgboolean;

implementation

function GDK_TYPE_DRAG: TGType;
begin
  GDK_TYPE_DRAG := gdk_drag_get_type;
end;

function GDK_DRAG(obj: Pointer): PGdkDrag;
begin
  Result := PGdkDrag(g_type_check_instance_cast(obj, GDK_TYPE_DRAG));
end;

function GDK_IS_DRAG(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GDK_TYPE_DRAG);
end;



end.
