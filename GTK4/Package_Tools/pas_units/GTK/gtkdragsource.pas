unit gtkdragsource;

interface

uses
  glib2, GDK4, common_GTK, gtktypes, gtkwidget;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}


type
  TGtkDragSource = record // _GtkDragSource
  end;
  PGtkDragSource = ^TGtkDragSource;

  TGtkDragSourceClass = record // _GtkDragSourceClass
  end;
  PGtkDragSourceClass = ^TGtkDragSourceClass;

function gtk_drag_source_get_type: TGType; cdecl; external gtklib;
function gtk_drag_source_new: PGtkDragSource; cdecl; external gtklib;
procedure gtk_drag_source_set_content(Source: PGtkDragSource; content: PGdkContentProvider); cdecl; external gtklib;
function gtk_drag_source_get_content(Source: PGtkDragSource): PGdkContentProvider; cdecl; external gtklib;
procedure gtk_drag_source_set_actions(Source: PGtkDragSource; actions: TGdkDragAction); cdecl; external gtklib;
function gtk_drag_source_get_actions(Source: PGtkDragSource): TGdkDragAction; cdecl; external gtklib;
procedure gtk_drag_source_set_icon(Source: PGtkDragSource; paintable: PGdkPaintable; hot_x: longint; hot_y: longint); cdecl; external gtklib;
procedure gtk_drag_source_drag_cancel(Source: PGtkDragSource); cdecl; external gtklib;
function gtk_drag_source_get_drag(Source: PGtkDragSource): PGdkDrag; cdecl; external gtklib;
function gtk_drag_check_threshold(widget: PGtkWidget; start_x: longint; start_y: longint; current_x: longint; current_y: longint): Tgboolean; cdecl; external gtklib;

// === Konventiert am: 25-7-24 18:08:37 ===

function GTK_TYPE_DRAG_SOURCE: TGType;
function GTK_DRAG_SOURCE(obj: Pointer): PGtkDragSource;
function GTK_DRAG_SOURCE_CLASS(klass: Pointer): PGtkDragSourceClass;
function GTK_IS_DRAG_SOURCE(obj: Pointer): Tgboolean;
function GTK_IS_DRAG_SOURCE_CLASS(klass: Pointer): Tgboolean;
function GTK_DRAG_SOURCE_GET_CLASS(obj: Pointer): PGtkDragSourceClass;

implementation

function GTK_TYPE_DRAG_SOURCE: TGType;
begin
  GTK_TYPE_DRAG_SOURCE := gtk_drag_source_get_type;
end;

function GTK_DRAG_SOURCE(obj: Pointer): PGtkDragSource;
begin
  Result := PGtkDragSource(g_type_check_instance_cast(obj, GTK_TYPE_DRAG_SOURCE));
end;

function GTK_DRAG_SOURCE_CLASS(klass: Pointer): PGtkDragSourceClass;
begin
  Result := PGtkDragSourceClass(g_type_check_class_cast(klass, GTK_TYPE_DRAG_SOURCE));
end;

function GTK_IS_DRAG_SOURCE(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_DRAG_SOURCE);
end;

function GTK_IS_DRAG_SOURCE_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_DRAG_SOURCE);
end;

function GTK_DRAG_SOURCE_GET_CLASS(obj: Pointer): PGtkDragSourceClass;
begin
  Result := PGtkDragSourceClass(PGTypeInstance(obj)^.g_class);
end;



end.
