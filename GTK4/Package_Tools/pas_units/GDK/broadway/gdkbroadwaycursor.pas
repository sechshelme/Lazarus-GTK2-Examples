unit gdkbroadwaycursor;

interface

uses
  glib2, common_GTK, gdkcursor;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  PGdkBroadwayCursor = ^TGdkBroadwayCursor;
  TGdkBroadwayCursor = TGdkCursor;

  TGdkBroadwayCursorClass = record
  end;
  PGdkBroadwayCursorClass = ^TGdkBroadwayCursorClass;

function gdk_broadway_cursor_get_type: TGType; cdecl; external gtklib;

// === Konventiert am: 3-8-24 18:13:18 ===

function GDK_TYPE_BROADWAY_CURSOR: TGType;
function GDK_BROADWAY_CURSOR(obj: Pointer): PGdkBroadwayCursor;
function GDK_BROADWAY_CURSOR_CLASS(klass: Pointer): PGdkBroadwayCursorClass;
function GDK_IS_BROADWAY_CURSOR(obj: Pointer): Tgboolean;
function GDK_IS_BROADWAY_CURSOR_CLASS(klass: Pointer): Tgboolean;
function GDK_BROADWAY_CURSOR_GET_CLASS(obj: Pointer): PGdkBroadwayCursorClass;

implementation

function GDK_TYPE_BROADWAY_CURSOR: TGType;
begin
  GDK_TYPE_BROADWAY_CURSOR := gdk_broadway_cursor_get_type;
end;

function GDK_BROADWAY_CURSOR(obj: Pointer): PGdkBroadwayCursor;
begin
  Result := PGdkBroadwayCursor(g_type_check_instance_cast(obj, GDK_TYPE_BROADWAY_CURSOR));
end;

function GDK_BROADWAY_CURSOR_CLASS(klass: Pointer): PGdkBroadwayCursorClass;
begin
  Result := PGdkBroadwayCursorClass(g_type_check_class_cast(klass, GDK_TYPE_BROADWAY_CURSOR));
end;

function GDK_IS_BROADWAY_CURSOR(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GDK_TYPE_BROADWAY_CURSOR);
end;

function GDK_IS_BROADWAY_CURSOR_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GDK_TYPE_BROADWAY_CURSOR);
end;

function GDK_BROADWAY_CURSOR_GET_CLASS(obj: Pointer): PGdkBroadwayCursorClass;
begin
  Result := PGdkBroadwayCursorClass(PGTypeInstance(obj)^.g_class);
end;



end.
