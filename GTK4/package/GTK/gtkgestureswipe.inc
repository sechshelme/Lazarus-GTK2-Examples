/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  TGtkGestureSwipe = record // _GtkGestureSwipe
  end;
  PGtkGestureSwipe = ^TGtkGestureSwipe;

  TGtkGestureSwipeClass = record // _GtkGestureSwipeClass
  end;
  PGtkGestureSwipeClass = ^TGtkGestureSwipeClass;

function gtk_gesture_swipe_get_type: TGType; cdecl; external gtklib;
function gtk_gesture_swipe_new: PGtkGesture; cdecl; external gtklib;
function gtk_gesture_swipe_get_velocity(gesture: PGtkGestureSwipe; velocity_x: Pdouble; velocity_y: Pdouble): Tgboolean; cdecl; external gtklib;

// === Konventiert am: 27-7-24 15:43:25 ===

function GTK_TYPE_GESTURE_SWIPE: TGType;
function GTK_GESTURE_SWIPE(obj: Pointer): PGtkGestureSwipe;
function GTK_GESTURE_SWIPE_CLASS(klass: Pointer): PGtkGestureSwipeClass;
function GTK_IS_GESTURE_SWIPE(obj: Pointer): Tgboolean;
function GTK_IS_GESTURE_SWIPE_CLASS(klass: Pointer): Tgboolean;
function GTK_GESTURE_SWIPE_GET_CLASS(obj: Pointer): PGtkGestureSwipeClass;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_GESTURE_SWIPE: TGType;
begin
  GTK_TYPE_GESTURE_SWIPE := gtk_gesture_swipe_get_type;
end;

function GTK_GESTURE_SWIPE(obj: Pointer): PGtkGestureSwipe;
begin
  Result := PGtkGestureSwipe(g_type_check_instance_cast(obj, GTK_TYPE_GESTURE_SWIPE));
end;

function GTK_GESTURE_SWIPE_CLASS(klass: Pointer): PGtkGestureSwipeClass;
begin
  Result := PGtkGestureSwipeClass(g_type_check_class_cast(klass, GTK_TYPE_GESTURE_SWIPE));
end;

function GTK_IS_GESTURE_SWIPE(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_GESTURE_SWIPE);
end;

function GTK_IS_GESTURE_SWIPE_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_GESTURE_SWIPE);
end;

function GTK_GESTURE_SWIPE_GET_CLASS(obj: Pointer): PGtkGestureSwipeClass;
begin
  Result := PGtkGestureSwipeClass(PGTypeInstance(obj)^.g_class);
end;



{$ENDIF read_implementation}
