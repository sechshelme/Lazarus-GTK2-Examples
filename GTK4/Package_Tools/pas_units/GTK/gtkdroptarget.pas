unit gtkdroptarget;

interface

uses
  glib2, GDK4, common_GTK;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  TGtkDropTarget = record // _GtkDropTarget
  end;
  PGtkDropTarget = ^TGtkDropTarget;

  TGtkDropTargetClass = record // _GtkDropTargetClass
  end;
  PGtkDropTargetClass = ^TGtkDropTargetClass;

function gtk_drop_target_get_type: TGType; cdecl; external gtklib;
function gtk_drop_target_new(_type: TGType; actions: TGdkDragAction): PGtkDropTarget; cdecl; external gtklib;
procedure gtk_drop_target_set_gtypes(self: PGtkDropTarget; types: PGType; n_types: Tgsize); cdecl; external gtklib;
function gtk_drop_target_get_gtypes(self: PGtkDropTarget; n_types: Pgsize): PGType; cdecl; external gtklib;
function gtk_drop_target_get_formats(self: PGtkDropTarget): PGdkContentFormats; cdecl; external gtklib;
procedure gtk_drop_target_set_actions(self: PGtkDropTarget; actions: TGdkDragAction); cdecl; external gtklib;
function gtk_drop_target_get_actions(self: PGtkDropTarget): TGdkDragAction; cdecl; external gtklib;
procedure gtk_drop_target_set_preload(self: PGtkDropTarget; preload: Tgboolean); cdecl; external gtklib;
function gtk_drop_target_get_preload(self: PGtkDropTarget): Tgboolean; cdecl; external gtklib;
function gtk_drop_target_get_drop(self: PGtkDropTarget): PGdkDrop; cdecl; external gtklib;
function gtk_drop_target_get_current_drop(self: PGtkDropTarget): PGdkDrop; cdecl; external gtklib;
function gtk_drop_target_get_value(self: PGtkDropTarget): PGValue; cdecl; external gtklib;
procedure gtk_drop_target_reject(self: PGtkDropTarget); cdecl; external gtklib;

// === Konventiert am: 25-7-24 18:17:16 ===

function GTK_TYPE_DROP_TARGET: TGType;
function GTK_DROP_TARGET(obj: Pointer): PGtkDropTarget;
function GTK_DROP_TARGET_CLASS(klass: Pointer): PGtkDropTargetClass;
function GTK_IS_DROP_TARGET(obj: Pointer): Tgboolean;
function GTK_IS_DROP_TARGET_CLASS(klass: Pointer): Tgboolean;
function GTK_DROP_TARGET_GET_CLASS(obj: Pointer): PGtkDropTargetClass;

implementation

function GTK_TYPE_DROP_TARGET: TGType;
begin
  GTK_TYPE_DROP_TARGET := gtk_drop_target_get_type;
end;

function GTK_DROP_TARGET(obj: Pointer): PGtkDropTarget;
begin
  Result := PGtkDropTarget(g_type_check_instance_cast(obj, GTK_TYPE_DROP_TARGET));
end;

function GTK_DROP_TARGET_CLASS(klass: Pointer): PGtkDropTargetClass;
begin
  Result := PGtkDropTargetClass(g_type_check_class_cast(klass, GTK_TYPE_DROP_TARGET));
end;

function GTK_IS_DROP_TARGET(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_DROP_TARGET);
end;

function GTK_IS_DROP_TARGET_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_DROP_TARGET);
end;

function GTK_DROP_TARGET_GET_CLASS(obj: Pointer): PGtkDropTargetClass;
begin
  Result := PGtkDropTargetClass(PGTypeInstance(obj)^.g_class);
end;



end.
