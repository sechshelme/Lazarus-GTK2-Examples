unit gtkrange;

interface

uses
  glib2, common_GTK, gtkenums, GDK4, gtkborder, gtktypes, gtkwidget, gtkadjustment;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  TGtkRange = record
    parent_instance: TGtkWidget;
  end;
  PGtkRange = ^TGtkRange;

  TGtkRangeClass = record
    parent_class: TGtkWidgetClass;
    value_changed: procedure(range: PGtkRange); cdecl;
    adjust_bounds: procedure(range: PGtkRange; new_value: Tdouble); cdecl;
    move_slider: procedure(range: PGtkRange; scroll: TGtkScrollType); cdecl;
    get_range_border: procedure(range: PGtkRange; border_: PGtkBorder); cdecl;
    change_value: function(range: PGtkRange; scroll: TGtkScrollType; new_value: Tdouble): Tgboolean; cdecl;
    padding: array[0..7] of Tgpointer;
  end;
  PGtkRangeClass = ^TGtkRangeClass;


function gtk_range_get_type: TGType; cdecl; external gtklib;
procedure gtk_range_set_adjustment(range: PGtkRange; adjustment: PGtkAdjustment); cdecl; external gtklib;
function gtk_range_get_adjustment(range: PGtkRange): PGtkAdjustment; cdecl; external gtklib;
procedure gtk_range_set_inverted(range: PGtkRange; setting: Tgboolean); cdecl; external gtklib;
function gtk_range_get_inverted(range: PGtkRange): Tgboolean; cdecl; external gtklib;
procedure gtk_range_set_flippable(range: PGtkRange; flippable: Tgboolean); cdecl; external gtklib;
function gtk_range_get_flippable(range: PGtkRange): Tgboolean; cdecl; external gtklib;
procedure gtk_range_set_slider_size_fixed(range: PGtkRange; size_fixed: Tgboolean); cdecl; external gtklib;
function gtk_range_get_slider_size_fixed(range: PGtkRange): Tgboolean; cdecl; external gtklib;
procedure gtk_range_get_range_rect(range: PGtkRange; range_rect: PGdkRectangle); cdecl; external gtklib;
procedure gtk_range_get_slider_range(range: PGtkRange; slider_start: Plongint; slider_end: Plongint); cdecl; external gtklib;
procedure gtk_range_set_increments(range: PGtkRange; step: Tdouble; page: Tdouble); cdecl; external gtklib;
procedure gtk_range_set_range(range: PGtkRange; min: Tdouble; max: Tdouble); cdecl; external gtklib;
procedure gtk_range_set_value(range: PGtkRange; Value: Tdouble); cdecl; external gtklib;
function gtk_range_get_value(range: PGtkRange): Tdouble; cdecl; external gtklib;
procedure gtk_range_set_show_fill_level(range: PGtkRange; show_fill_level: Tgboolean); cdecl; external gtklib;
function gtk_range_get_show_fill_level(range: PGtkRange): Tgboolean; cdecl; external gtklib;
procedure gtk_range_set_restrict_to_fill_level(range: PGtkRange; restrict_to_fill_level: Tgboolean); cdecl; external gtklib;
function gtk_range_get_restrict_to_fill_level(range: PGtkRange): Tgboolean; cdecl; external gtklib;
procedure gtk_range_set_fill_level(range: PGtkRange; fill_level: Tdouble); cdecl; external gtklib;
function gtk_range_get_fill_level(range: PGtkRange): Tdouble; cdecl; external gtklib;
procedure gtk_range_set_round_digits(range: PGtkRange; round_digits: longint); cdecl; external gtklib;
function gtk_range_get_round_digits(range: PGtkRange): longint; cdecl; external gtklib;

// === Konventiert am: 12-7-24 19:52:14 ===

function GTK_TYPE_RANGE: TGType;
function GTK_RANGE(obj: Pointer): PGtkRange;
function GTK_RANGE_CLASS(klass: Pointer): PGtkRangeClass;
function GTK_IS_RANGE(obj: Pointer): Tgboolean;
function GTK_IS_RANGE_CLASS(klass: Pointer): Tgboolean;
function GTK_RANGE_GET_CLASS(obj: Pointer): PGtkRangeClass;

implementation

function GTK_TYPE_RANGE: TGType;
begin
  GTK_TYPE_RANGE := gtk_range_get_type;
end;

function GTK_RANGE(obj: Pointer): PGtkRange;
begin
  Result := PGtkRange(g_type_check_instance_cast(obj, GTK_TYPE_RANGE));
end;

function GTK_RANGE_CLASS(klass: Pointer): PGtkRangeClass;
begin
  Result := PGtkRangeClass(g_type_check_class_cast(klass, GTK_TYPE_RANGE));
end;

function GTK_IS_RANGE(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_RANGE);
end;

function GTK_IS_RANGE_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_RANGE);
end;

function GTK_RANGE_GET_CLASS(obj: Pointer): PGtkRangeClass;
begin
  Result := PGtkRangeClass(PGTypeInstance(obj)^.g_class);
end;



end.
