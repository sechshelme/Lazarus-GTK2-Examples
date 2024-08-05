/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  TGtkAdjustment = record
    parent_instance: TGInitiallyUnowned;
  end;
  PGtkAdjustment = ^TGtkAdjustment;

  TGtkAdjustmentClass = record
    parent_class: TGInitiallyUnownedClass;
    changed: procedure(adjustment: PGtkAdjustment); cdecl;
    value_changed: procedure(adjustment: PGtkAdjustment); cdecl;
    _gtk_reserved1: procedure; cdecl;
    _gtk_reserved2: procedure; cdecl;
    _gtk_reserved3: procedure; cdecl;
    _gtk_reserved4: procedure; cdecl;
  end;
  PGtkAdjustmentClass = ^TGtkAdjustmentClass;


function gtk_adjustment_get_type: TGType; cdecl; external gtklib;
function gtk_adjustment_new(Value: Tdouble; lower: Tdouble; upper: Tdouble; step_increment: Tdouble; page_increment: Tdouble;
  page_size: Tdouble): PGtkAdjustment; cdecl; external gtklib;
procedure gtk_adjustment_clamp_page(adjustment: PGtkAdjustment; lower: Tdouble; upper: Tdouble); cdecl; external gtklib;
function gtk_adjustment_get_value(adjustment: PGtkAdjustment): Tdouble; cdecl; external gtklib;
procedure gtk_adjustment_set_value(adjustment: PGtkAdjustment; Value: Tdouble); cdecl; external gtklib;
function gtk_adjustment_get_lower(adjustment: PGtkAdjustment): Tdouble; cdecl; external gtklib;
procedure gtk_adjustment_set_lower(adjustment: PGtkAdjustment; lower: Tdouble); cdecl; external gtklib;
function gtk_adjustment_get_upper(adjustment: PGtkAdjustment): Tdouble; cdecl; external gtklib;
procedure gtk_adjustment_set_upper(adjustment: PGtkAdjustment; upper: Tdouble); cdecl; external gtklib;
function gtk_adjustment_get_step_increment(adjustment: PGtkAdjustment): Tdouble; cdecl; external gtklib;
procedure gtk_adjustment_set_step_increment(adjustment: PGtkAdjustment; step_increment: Tdouble); cdecl; external gtklib;
function gtk_adjustment_get_page_increment(adjustment: PGtkAdjustment): Tdouble; cdecl; external gtklib;
procedure gtk_adjustment_set_page_increment(adjustment: PGtkAdjustment; page_increment: Tdouble); cdecl; external gtklib;
function gtk_adjustment_get_page_size(adjustment: PGtkAdjustment): Tdouble; cdecl; external gtklib;
procedure gtk_adjustment_set_page_size(adjustment: PGtkAdjustment; page_size: Tdouble); cdecl; external gtklib;
procedure gtk_adjustment_configure(adjustment: PGtkAdjustment; Value: Tdouble; lower: Tdouble; upper: Tdouble; step_increment: Tdouble;
  page_increment: Tdouble; page_size: Tdouble); cdecl; external gtklib;
function gtk_adjustment_get_minimum_increment(adjustment: PGtkAdjustment): Tdouble; cdecl; external gtklib;

// === Konventiert am: 12-7-24 19:28:57 ===

function GTK_TYPE_ADJUSTMENT: TGType;
function GTK_ADJUSTMENT(obj: Pointer): PGtkAdjustment;
function GTK_ADJUSTMENT_CLASS(klass: Pointer): PGtkAdjustmentClass;
function GTK_IS_ADJUSTMENT(obj: Pointer): Tgboolean;
function GTK_IS_ADJUSTMENT_CLASS(klass: Pointer): Tgboolean;
function GTK_ADJUSTMENT_GET_CLASS(obj: Pointer): PGtkAdjustmentClass;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_ADJUSTMENT: TGType;
begin
  GTK_TYPE_ADJUSTMENT := gtk_adjustment_get_type;
end;

function GTK_ADJUSTMENT(obj: Pointer): PGtkAdjustment;
begin
  Result := PGtkAdjustment(g_type_check_instance_cast(obj, GTK_TYPE_ADJUSTMENT));
end;

function GTK_ADJUSTMENT_CLASS(klass: Pointer): PGtkAdjustmentClass;
begin
  Result := PGtkAdjustmentClass(g_type_check_class_cast(klass, GTK_TYPE_ADJUSTMENT));
end;

function GTK_IS_ADJUSTMENT(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_ADJUSTMENT);
end;

function GTK_IS_ADJUSTMENT_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_ADJUSTMENT);
end;

function GTK_ADJUSTMENT_GET_CLASS(obj: Pointer): PGtkAdjustmentClass;
begin
  Result := PGtkAdjustmentClass(PGTypeInstance(obj)^.g_class);
end;



{$ENDIF read_implementation}
