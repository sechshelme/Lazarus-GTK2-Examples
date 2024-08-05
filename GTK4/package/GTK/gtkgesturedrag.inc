/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  TGtkGestureDrag = record // _GtkGestureDrag
  end;
  PGtkGestureDrag = ^TGtkGestureDrag;

  TGtkGestureDragClass = record // _GtkGestureDragClass
  end;
  PGtkGestureDragClass = ^TGtkGestureDragClass;

function gtk_gesture_drag_get_type: TGType; cdecl; external gtklib;
function gtk_gesture_drag_new: PGtkGesture; cdecl; external gtklib;
function gtk_gesture_drag_get_start_point(gesture: PGtkGestureDrag; x: Pdouble; y: Pdouble): Tgboolean; cdecl; external gtklib;
function gtk_gesture_drag_get_offset(gesture: PGtkGestureDrag; x: Pdouble; y: Pdouble): Tgboolean; cdecl; external gtklib;

// === Konventiert am: 27-7-24 15:44:00 ===

function GTK_TYPE_GESTURE_DRAG: TGType;
function GTK_GESTURE_DRAG(obj: Pointer): PGtkGestureDrag;
function GTK_GESTURE_DRAG_CLASS(klass: Pointer): PGtkGestureDragClass;
function GTK_IS_GESTURE_DRAG(obj: Pointer): Tgboolean;
function GTK_IS_GESTURE_DRAG_CLASS(klass: Pointer): Tgboolean;
function GTK_GESTURE_DRAG_GET_CLASS(obj: Pointer): PGtkGestureDragClass;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_GESTURE_DRAG: TGType;
begin
  GTK_TYPE_GESTURE_DRAG := gtk_gesture_drag_get_type;
end;

function GTK_GESTURE_DRAG(obj: Pointer): PGtkGestureDrag;
begin
  Result := PGtkGestureDrag(g_type_check_instance_cast(obj, GTK_TYPE_GESTURE_DRAG));
end;

function GTK_GESTURE_DRAG_CLASS(klass: Pointer): PGtkGestureDragClass;
begin
  Result := PGtkGestureDragClass(g_type_check_class_cast(klass, GTK_TYPE_GESTURE_DRAG));
end;

function GTK_IS_GESTURE_DRAG(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_GESTURE_DRAG);
end;

function GTK_IS_GESTURE_DRAG_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_GESTURE_DRAG);
end;

function GTK_GESTURE_DRAG_GET_CLASS(obj: Pointer): PGtkGestureDragClass;
begin
  Result := PGtkGestureDragClass(PGTypeInstance(obj)^.g_class);
end;



{$ENDIF read_implementation}
