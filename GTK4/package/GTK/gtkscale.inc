/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  TGtkScale = record
    parent_instance: TGtkRange;
  end;
  PGtkScale = ^TGtkScale;

  TGtkScaleClass = record
    parent_class: TGtkRangeClass;
    get_layout_offsets: procedure(scale: PGtkScale; x: Plongint; y: Plongint); cdecl;
    padding: array[0..7] of Tgpointer;
  end;
  PGtkScaleClass = ^TGtkScaleClass;


  TGtkScaleFormatValueFunc = function(scale: PGtkScale; Value: Tdouble; user_data: Tgpointer): PChar; cdecl;
  PGtkScaleFormatValueFunc = ^TGtkScaleFormatValueFunc;

function gtk_scale_get_type: TGType; cdecl; external gtklib;
function gtk_scale_new(orientation: TGtkOrientation; adjustment: PGtkAdjustment): PGtkWidget; cdecl; external gtklib;
function gtk_scale_new_with_range(orientation: TGtkOrientation; min: Tdouble; max: Tdouble; step: Tdouble): PGtkWidget; cdecl; external gtklib;
procedure gtk_scale_set_digits(scale: PGtkScale; digits: longint); cdecl; external gtklib;
function gtk_scale_get_digits(scale: PGtkScale): longint; cdecl; external gtklib;
procedure gtk_scale_set_draw_value(scale: PGtkScale; draw_value: Tgboolean); cdecl; external gtklib;
function gtk_scale_get_draw_value(scale: PGtkScale): Tgboolean; cdecl; external gtklib;
procedure gtk_scale_set_has_origin(scale: PGtkScale; has_origin: Tgboolean); cdecl; external gtklib;
function gtk_scale_get_has_origin(scale: PGtkScale): Tgboolean; cdecl; external gtklib;
procedure gtk_scale_set_value_pos(scale: PGtkScale; pos: TGtkPositionType); cdecl; external gtklib;
function gtk_scale_get_value_pos(scale: PGtkScale): TGtkPositionType; cdecl; external gtklib;
function gtk_scale_get_layout(scale: PGtkScale): PPangoLayout; cdecl; external gtklib;
procedure gtk_scale_get_layout_offsets(scale: PGtkScale; x: Plongint; y: Plongint); cdecl; external gtklib;
procedure gtk_scale_add_mark(scale: PGtkScale; Value: Tdouble; position: TGtkPositionType; markup: PChar); cdecl; external gtklib;
procedure gtk_scale_clear_marks(scale: PGtkScale); cdecl; external gtklib;
procedure gtk_scale_set_format_value_func(scale: PGtkScale; func: TGtkScaleFormatValueFunc; user_data: Tgpointer; destroy_notify: TGDestroyNotify); cdecl; external gtklib;

// === Konventiert am: 12-7-24 19:49:07 ===

function GTK_TYPE_SCALE: TGType;
function GTK_SCALE(obj: Pointer): PGtkScale;
function GTK_SCALE_CLASS(klass: Pointer): PGtkScaleClass;
function GTK_IS_SCALE(obj: Pointer): Tgboolean;
function GTK_IS_SCALE_CLASS(klass: Pointer): Tgboolean;
function GTK_SCALE_GET_CLASS(obj: Pointer): PGtkScaleClass;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_SCALE: TGType;
begin
  GTK_TYPE_SCALE := gtk_scale_get_type;
end;

function GTK_SCALE(obj: Pointer): PGtkScale;
begin
  Result := PGtkScale(g_type_check_instance_cast(obj, GTK_TYPE_SCALE));
end;

function GTK_SCALE_CLASS(klass: Pointer): PGtkScaleClass;
begin
  Result := PGtkScaleClass(g_type_check_class_cast(klass, GTK_TYPE_SCALE));
end;

function GTK_IS_SCALE(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_SCALE);
end;

function GTK_IS_SCALE_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_SCALE);
end;

function GTK_SCALE_GET_CLASS(obj: Pointer): PGtkScaleClass;
begin
  Result := PGtkScaleClass(PGTypeInstance(obj)^.g_class);
end;



{$ENDIF read_implementation}
