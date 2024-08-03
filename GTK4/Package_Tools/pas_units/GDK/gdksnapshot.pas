unit gdksnapshot;

interface

uses
  glib2, common_GTK;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}


type
  TGdkSnapshot = record
  end;
  PGdkSnapshot = ^TGdkSnapshot;

function gdk_snapshot_get_type: TGType; cdecl; external gtklib;

// === Konventiert am: 2-8-24 15:19:57 ===

function GDK_TYPE_SNAPSHOT: TGType;
function GDK_SNAPSHOT(obj: Pointer): PGdkSnapshot;
function GDK_IS_SNAPSHOT(obj: Pointer): Tgboolean;

implementation

function GDK_TYPE_SNAPSHOT: TGType;
begin
  GDK_TYPE_SNAPSHOT := gdk_snapshot_get_type;
end;

function GDK_SNAPSHOT(obj: Pointer): PGdkSnapshot;
begin
  Result := PGdkSnapshot(g_type_check_instance_cast(obj, GDK_TYPE_SNAPSHOT));
end;

function GDK_IS_SNAPSHOT(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GDK_TYPE_SNAPSHOT);
end;



end.
