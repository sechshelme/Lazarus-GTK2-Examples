/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  TGtkGesturePan = record // _GtkGesturePan
  end;
  PGtkGesturePan = ^TGtkGesturePan;

  TGtkGesturePanClass = record // _GtkGesturePanClass
  end;
  PGtkGesturePanClass = ^TGtkGesturePanClass;

function gtk_gesture_pan_get_type: TGType; cdecl; external gtklib;
function gtk_gesture_pan_new(orientation: TGtkOrientation): PGtkGesture; cdecl; external gtklib;
function gtk_gesture_pan_get_orientation(gesture: PGtkGesturePan): TGtkOrientation; cdecl; external gtklib;
procedure gtk_gesture_pan_set_orientation(gesture: PGtkGesturePan; orientation: TGtkOrientation); cdecl; external gtklib;

// === Konventiert am: 27-7-24 15:44:24 ===

function GTK_TYPE_GESTURE_PAN: TGType;
function GTK_GESTURE_PAN(obj: Pointer): PGtkGesturePan;
function GTK_GESTURE_PAN_CLASS(klass: Pointer): PGtkGesturePanClass;
function GTK_IS_GESTURE_PAN(obj: Pointer): Tgboolean;
function GTK_IS_GESTURE_PAN_CLASS(klass: Pointer): Tgboolean;
function GTK_GESTURE_PAN_GET_CLASS(obj: Pointer): PGtkGesturePanClass;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_GESTURE_PAN: TGType;
begin
  GTK_TYPE_GESTURE_PAN := gtk_gesture_pan_get_type;
end;

function GTK_GESTURE_PAN(obj: Pointer): PGtkGesturePan;
begin
  Result := PGtkGesturePan(g_type_check_instance_cast(obj, GTK_TYPE_GESTURE_PAN));
end;

function GTK_GESTURE_PAN_CLASS(klass: Pointer): PGtkGesturePanClass;
begin
  Result := PGtkGesturePanClass(g_type_check_class_cast(klass, GTK_TYPE_GESTURE_PAN));
end;

function GTK_IS_GESTURE_PAN(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_GESTURE_PAN);
end;

function GTK_IS_GESTURE_PAN_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_GESTURE_PAN);
end;

function GTK_GESTURE_PAN_GET_CLASS(obj: Pointer): PGtkGesturePanClass;
begin
  Result := PGtkGesturePanClass(PGTypeInstance(obj)^.g_class);
end;



{$ENDIF read_implementation}
