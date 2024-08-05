/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  TGtkRevealer = record // _GtkRevealer
  end;
  PGtkRevealer = ^TGtkRevealer;

  PGtkRevealerTransitionType = ^TGtkRevealerTransitionType;
  TGtkRevealerTransitionType = longint;

const
  GTK_REVEALER_TRANSITION_TYPE_NONE = 0;
  GTK_REVEALER_TRANSITION_TYPE_CROSSFADE = 1;
  GTK_REVEALER_TRANSITION_TYPE_SLIDE_RIGHT = 2;
  GTK_REVEALER_TRANSITION_TYPE_SLIDE_LEFT = 3;
  GTK_REVEALER_TRANSITION_TYPE_SLIDE_UP = 4;
  GTK_REVEALER_TRANSITION_TYPE_SLIDE_DOWN = 5;
  GTK_REVEALER_TRANSITION_TYPE_SWING_RIGHT = 6;
  GTK_REVEALER_TRANSITION_TYPE_SWING_LEFT = 7;
  GTK_REVEALER_TRANSITION_TYPE_SWING_UP = 8;
  GTK_REVEALER_TRANSITION_TYPE_SWING_DOWN = 9;

function gtk_revealer_get_type: TGType; cdecl; external gtklib;
function gtk_revealer_new: PGtkWidget; cdecl; external gtklib;
function gtk_revealer_get_reveal_child(revealer: PGtkRevealer): Tgboolean; cdecl; external gtklib;
procedure gtk_revealer_set_reveal_child(revealer: PGtkRevealer; reveal_child: Tgboolean); cdecl; external gtklib;
function gtk_revealer_get_child_revealed(revealer: PGtkRevealer): Tgboolean; cdecl; external gtklib;
function gtk_revealer_get_transition_duration(revealer: PGtkRevealer): Tguint; cdecl; external gtklib;
procedure gtk_revealer_set_transition_duration(revealer: PGtkRevealer; duration: Tguint); cdecl; external gtklib;
procedure gtk_revealer_set_transition_type(revealer: PGtkRevealer; transition: TGtkRevealerTransitionType); cdecl; external gtklib;
function gtk_revealer_get_transition_type(revealer: PGtkRevealer): TGtkRevealerTransitionType; cdecl; external gtklib;
procedure gtk_revealer_set_child(revealer: PGtkRevealer; child: PGtkWidget); cdecl; external gtklib;
function gtk_revealer_get_child(revealer: PGtkRevealer): PGtkWidget; cdecl; external gtklib;

// === Konventiert am: 28-7-24 15:27:04 ===

function GTK_TYPE_REVEALER: TGType;
function GTK_REVEALER(obj: Pointer): PGtkRevealer;
function GTK_IS_REVEALER(obj: Pointer): Tgboolean;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_REVEALER: TGType;
begin
  GTK_TYPE_REVEALER := gtk_revealer_get_type;
end;

function GTK_REVEALER(obj: Pointer): PGtkRevealer;
begin
  Result := PGtkRevealer(g_type_check_instance_cast(obj, GTK_TYPE_REVEALER));
end;

function GTK_IS_REVEALER(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_REVEALER);
end;



{$ENDIF read_implementation}
