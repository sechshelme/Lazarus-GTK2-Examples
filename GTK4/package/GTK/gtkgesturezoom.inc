/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  TGtkGestureZoom=record // _GtkGestureZoom
    end;
  PGtkGestureZoom=^TGtkGestureZoom;

  TGtkGestureZoomClass=record // _GtkGestureZoomClass
    end;
  PGtkGestureZoomClass=^TGtkGestureZoomClass;

function gtk_gesture_zoom_get_type: TGType; cdecl; external gtklib;
function gtk_gesture_zoom_new: PGtkGesture; cdecl; external gtklib;
function gtk_gesture_zoom_get_scale_delta(gesture: PGtkGestureZoom): Tdouble; cdecl; external gtklib;

// === Konventiert am: 27-7-24 15:43:30 ===

function GTK_TYPE_GESTURE_ZOOM: TGType;
function GTK_GESTURE_ZOOM(obj: Pointer): PGtkGestureZoom;
function GTK_GESTURE_ZOOM_CLASS(klass: Pointer): PGtkGestureZoomClass;
function GTK_IS_GESTURE_ZOOM(obj: Pointer): Tgboolean;
function GTK_IS_GESTURE_ZOOM_CLASS(klass: Pointer): Tgboolean;
function GTK_GESTURE_ZOOM_GET_CLASS(obj: Pointer): PGtkGestureZoomClass;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_GESTURE_ZOOM: TGType;
begin
  GTK_TYPE_GESTURE_ZOOM := gtk_gesture_zoom_get_type;
end;

function GTK_GESTURE_ZOOM(obj: Pointer): PGtkGestureZoom;
begin
  Result := PGtkGestureZoom(g_type_check_instance_cast(obj, GTK_TYPE_GESTURE_ZOOM));
end;

function GTK_GESTURE_ZOOM_CLASS(klass: Pointer): PGtkGestureZoomClass;
begin
  Result := PGtkGestureZoomClass(g_type_check_class_cast(klass, GTK_TYPE_GESTURE_ZOOM));
end;

function GTK_IS_GESTURE_ZOOM(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_GESTURE_ZOOM);
end;

function GTK_IS_GESTURE_ZOOM_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_GESTURE_ZOOM);
end;

function GTK_GESTURE_ZOOM_GET_CLASS(obj: Pointer): PGtkGestureZoomClass;
begin
  Result := PGtkGestureZoomClass(PGTypeInstance(obj)^.g_class);
end;



{$ENDIF read_implementation}
