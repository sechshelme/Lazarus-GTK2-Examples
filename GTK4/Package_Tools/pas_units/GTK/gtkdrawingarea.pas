unit gtkdrawingarea;

interface

uses
  glib2, Cairo, common_GTK, gtktypes, gtkwidget;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  TGtkDrawingArea = record
    widget: TGtkWidget;
  end;
  PGtkDrawingArea = ^TGtkDrawingArea;

  TGtkDrawingAreaClass = record
    parent_class: TGtkWidgetClass;
    resize: procedure(area: PGtkDrawingArea; Width: longint; Height: longint); cdecl;
    padding: array[0..7] of Tgpointer;
  end;
  PGtkDrawingAreaClass = ^TGtkDrawingAreaClass;

  TGtkDrawingAreaDrawFunc = procedure(drawing_area: PGtkDrawingArea; cr: Pcairo_t; Width: longint; Height: longint; user_data: Tgpointer); cdecl;

function gtk_drawing_area_get_type: TGType; cdecl; external gtklib;
function gtk_drawing_area_new: PGtkWidget; cdecl; external gtklib;
procedure gtk_drawing_area_set_content_width(self: PGtkDrawingArea; Width: longint); cdecl; external gtklib;
function gtk_drawing_area_get_content_width(self: PGtkDrawingArea): longint; cdecl; external gtklib;
procedure gtk_drawing_area_set_content_height(self: PGtkDrawingArea; Height: longint); cdecl; external gtklib;
function gtk_drawing_area_get_content_height(self: PGtkDrawingArea): longint; cdecl; external gtklib;
procedure gtk_drawing_area_set_draw_func(self: PGtkDrawingArea; draw_func: TGtkDrawingAreaDrawFunc; user_data: Tgpointer; Destroy: TGDestroyNotify); cdecl; external gtklib;

// === Konventiert am: 25-7-24 17:33:00 ===

function GTK_TYPE_DRAWING_AREA: TGType;
function GTK_DRAWING_AREA(obj: Pointer): PGtkDrawingArea;
function GTK_DRAWING_AREA_CLASS(klass: Pointer): PGtkDrawingAreaClass;
function GTK_IS_DRAWING_AREA(obj: Pointer): Tgboolean;
function GTK_IS_DRAWING_AREA_CLASS(klass: Pointer): Tgboolean;
function GTK_DRAWING_AREA_GET_CLASS(obj: Pointer): PGtkDrawingAreaClass;

implementation

function GTK_TYPE_DRAWING_AREA: TGType;
begin
  GTK_TYPE_DRAWING_AREA := gtk_drawing_area_get_type;
end;

function GTK_DRAWING_AREA(obj: Pointer): PGtkDrawingArea;
begin
  Result := PGtkDrawingArea(g_type_check_instance_cast(obj, GTK_TYPE_DRAWING_AREA));
end;

function GTK_DRAWING_AREA_CLASS(klass: Pointer): PGtkDrawingAreaClass;
begin
  Result := PGtkDrawingAreaClass(g_type_check_class_cast(klass, GTK_TYPE_DRAWING_AREA));
end;

function GTK_IS_DRAWING_AREA(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_DRAWING_AREA);
end;

function GTK_IS_DRAWING_AREA_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_DRAWING_AREA);
end;

function GTK_DRAWING_AREA_GET_CLASS(obj: Pointer): PGtkDrawingAreaClass;
begin
  Result := PGtkDrawingAreaClass(PGTypeInstance(obj)^.g_class);
end;



end.
