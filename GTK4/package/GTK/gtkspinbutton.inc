/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

const
  GTK_INPUT_ERROR = -(1);

type
  PGtkSpinButtonUpdatePolicy = ^TGtkSpinButtonUpdatePolicy;
  TGtkSpinButtonUpdatePolicy = longint;

const
  GTK_UPDATE_ALWAYS = 0;
  GTK_UPDATE_IF_VALID = 1;

type
  PGtkSpinType = ^TGtkSpinType;
  TGtkSpinType = longint;

const
  GTK_SPIN_STEP_FORWARD = 0;
  GTK_SPIN_STEP_BACKWARD = 1;
  GTK_SPIN_PAGE_FORWARD = 2;
  GTK_SPIN_PAGE_BACKWARD = 3;
  GTK_SPIN_HOME = 4;
  GTK_SPIN_END = 5;
  GTK_SPIN_USER_DEFINED = 6;

type
  TGtkSpinButton = record // _GtkSpinButton
  end;
  PGtkSpinButton = ^TGtkSpinButton;

function gtk_spin_button_get_type: TGType; cdecl; external gtklib;
procedure gtk_spin_button_configure(spin_button: PGtkSpinButton; adjustment: PGtkAdjustment; climb_rate: Tdouble; digits: Tguint); cdecl; external gtklib;
function gtk_spin_button_new(adjustment: PGtkAdjustment; climb_rate: Tdouble; digits: Tguint): PGtkWidget; cdecl; external gtklib;
function gtk_spin_button_new_with_range(min: Tdouble; max: Tdouble; step: Tdouble): PGtkWidget; cdecl; external gtklib;
procedure gtk_spin_button_set_activates_default(spin_button: PGtkSpinButton; activates_default: Tgboolean); cdecl; external gtklib;
function gtk_spin_button_get_activates_default(spin_button: PGtkSpinButton): Tgboolean; cdecl; external gtklib;
procedure gtk_spin_button_set_adjustment(spin_button: PGtkSpinButton; adjustment: PGtkAdjustment); cdecl; external gtklib;
function gtk_spin_button_get_adjustment(spin_button: PGtkSpinButton): PGtkAdjustment; cdecl; external gtklib;
procedure gtk_spin_button_set_digits(spin_button: PGtkSpinButton; digits: Tguint); cdecl; external gtklib;
function gtk_spin_button_get_digits(spin_button: PGtkSpinButton): Tguint; cdecl; external gtklib;
procedure gtk_spin_button_set_increments(spin_button: PGtkSpinButton; step: Tdouble; page: Tdouble); cdecl; external gtklib;
procedure gtk_spin_button_get_increments(spin_button: PGtkSpinButton; step: Pdouble; page: Pdouble); cdecl; external gtklib;
procedure gtk_spin_button_set_range(spin_button: PGtkSpinButton; min: Tdouble; max: Tdouble); cdecl; external gtklib;
procedure gtk_spin_button_get_range(spin_button: PGtkSpinButton; min: Pdouble; max: Pdouble); cdecl; external gtklib;
function gtk_spin_button_get_value(spin_button: PGtkSpinButton): Tdouble; cdecl; external gtklib;
function gtk_spin_button_get_value_as_int(spin_button: PGtkSpinButton): longint; cdecl; external gtklib;
procedure gtk_spin_button_set_value(spin_button: PGtkSpinButton; Value: Tdouble); cdecl; external gtklib;
procedure gtk_spin_button_set_update_policy(spin_button: PGtkSpinButton; policy: TGtkSpinButtonUpdatePolicy); cdecl; external gtklib;
function gtk_spin_button_get_update_policy(spin_button: PGtkSpinButton): TGtkSpinButtonUpdatePolicy; cdecl; external gtklib;
procedure gtk_spin_button_set_numeric(spin_button: PGtkSpinButton; numeric: Tgboolean); cdecl; external gtklib;
function gtk_spin_button_get_numeric(spin_button: PGtkSpinButton): Tgboolean; cdecl; external gtklib;
procedure gtk_spin_button_spin(spin_button: PGtkSpinButton; direction: TGtkSpinType; increment: Tdouble); cdecl; external gtklib;
procedure gtk_spin_button_set_wrap(spin_button: PGtkSpinButton; wrap: Tgboolean); cdecl; external gtklib;
function gtk_spin_button_get_wrap(spin_button: PGtkSpinButton): Tgboolean; cdecl; external gtklib;
procedure gtk_spin_button_set_snap_to_ticks(spin_button: PGtkSpinButton; snap_to_ticks: Tgboolean); cdecl; external gtklib;
function gtk_spin_button_get_snap_to_ticks(spin_button: PGtkSpinButton): Tgboolean; cdecl; external gtklib;
procedure gtk_spin_button_set_climb_rate(spin_button: PGtkSpinButton; climb_rate: Tdouble); cdecl; external gtklib;
function gtk_spin_button_get_climb_rate(spin_button: PGtkSpinButton): Tdouble; cdecl; external gtklib;
procedure gtk_spin_button_update(spin_button: PGtkSpinButton); cdecl; external gtklib;

// === Konventiert am: 23-7-24 16:05:43 ===

function GTK_TYPE_SPIN_BUTTON: TGType;
function GTK_SPIN_BUTTON(obj: Pointer): PGtkSpinButton;
function GTK_IS_SPIN_BUTTON(obj: Pointer): Tgboolean;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_SPIN_BUTTON: TGType;
begin
  GTK_TYPE_SPIN_BUTTON := gtk_spin_button_get_type;
end;

function GTK_SPIN_BUTTON(obj: Pointer): PGtkSpinButton;
begin
  Result := PGtkSpinButton(g_type_check_instance_cast(obj, GTK_TYPE_SPIN_BUTTON));
end;

function GTK_IS_SPIN_BUTTON(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_SPIN_BUTTON);
end;



{$ENDIF read_implementation}
