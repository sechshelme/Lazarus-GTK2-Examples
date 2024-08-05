/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  TGtkGestureRotate = record // _GtkGestureRotate
  end;
  PGtkGestureRotate = ^TGtkGestureRotate;

  TGtkGestureRotateClass = record // _GtkGestureRotateClass
  end;
  PGtkGestureRotateClass = ^TGtkGestureRotateClass;

function gtk_gesture_rotate_get_type: TGType; cdecl; external gtklib;
function gtk_gesture_rotate_new: PGtkGesture; cdecl; external gtklib;
function gtk_gesture_rotate_get_angle_delta(gesture: PGtkGestureRotate): Tdouble; cdecl; external gtklib;

// === Konventiert am: 27-7-24 15:44:29 ===

function GTK_TYPE_GESTURE_ROTATE: TGType;
function GTK_GESTURE_ROTATE(obj: Pointer): PGtkGestureRotate;
function GTK_GESTURE_ROTATE_CLASS(klass: Pointer): PGtkGestureRotateClass;
function GTK_IS_GESTURE_ROTATE(obj: Pointer): Tgboolean;
function GTK_IS_GESTURE_ROTATE_CLASS(klass: Pointer): Tgboolean;
function GTK_GESTURE_ROTATE_GET_CLASS(obj: Pointer): PGtkGestureRotateClass;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_GESTURE_ROTATE: TGType;
begin
  GTK_TYPE_GESTURE_ROTATE := gtk_gesture_rotate_get_type;
end;

function GTK_GESTURE_ROTATE(obj: Pointer): PGtkGestureRotate;
begin
  Result := PGtkGestureRotate(g_type_check_instance_cast(obj, GTK_TYPE_GESTURE_ROTATE));
end;

function GTK_GESTURE_ROTATE_CLASS(klass: Pointer): PGtkGestureRotateClass;
begin
  Result := PGtkGestureRotateClass(g_type_check_class_cast(klass, GTK_TYPE_GESTURE_ROTATE));
end;

function GTK_IS_GESTURE_ROTATE(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_GESTURE_ROTATE);
end;

function GTK_IS_GESTURE_ROTATE_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_GESTURE_ROTATE);
end;

function GTK_GESTURE_ROTATE_GET_CLASS(obj: Pointer): PGtkGestureRotateClass;
begin
  Result := PGtkGestureRotateClass(PGTypeInstance(obj)^.g_class);
end;



{$ENDIF read_implementation}
