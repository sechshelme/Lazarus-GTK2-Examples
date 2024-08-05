/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}


type
  TGtkEventControllerMotion = record // _GtkEventControllerMotion
  end;
  PGtkEventControllerMotion = ^TGtkEventControllerMotion;

  TGtkEventControllerMotionClass = record // _GtkEventControllerMotionClass
  end;
  PGtkEventControllerMotionClass = ^TGtkEventControllerMotionClass;

function gtk_event_controller_motion_get_type: TGType; cdecl; external gtklib;
function gtk_event_controller_motion_new: PGtkEventController; cdecl; external gtklib;
function gtk_event_controller_motion_contains_pointer(self: PGtkEventControllerMotion): Tgboolean; cdecl; external gtklib;
function gtk_event_controller_motion_is_pointer(self: PGtkEventControllerMotion): Tgboolean; cdecl; external gtklib;

// === Konventiert am: 25-7-24 19:22:30 ===

function GTK_TYPE_EVENT_CONTROLLER_MOTION: TGType;
function GTK_EVENT_CONTROLLER_MOTION(obj: Pointer): PGtkEventControllerMotion;
function GTK_EVENT_CONTROLLER_MOTION_CLASS(klass: Pointer): PGtkEventControllerMotionClass;
function GTK_IS_EVENT_CONTROLLER_MOTION(obj: Pointer): Tgboolean;
function GTK_IS_EVENT_CONTROLLER_MOTION_CLASS(klass: Pointer): Tgboolean;
function GTK_EVENT_CONTROLLER_MOTION_GET_CLASS(obj: Pointer): PGtkEventControllerMotionClass;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_EVENT_CONTROLLER_MOTION: TGType;
begin
  GTK_TYPE_EVENT_CONTROLLER_MOTION := gtk_event_controller_motion_get_type;
end;

function GTK_EVENT_CONTROLLER_MOTION(obj: Pointer): PGtkEventControllerMotion;
begin
  Result := PGtkEventControllerMotion(g_type_check_instance_cast(obj, GTK_TYPE_EVENT_CONTROLLER_MOTION));
end;

function GTK_EVENT_CONTROLLER_MOTION_CLASS(klass: Pointer): PGtkEventControllerMotionClass;
begin
  Result := PGtkEventControllerMotionClass(g_type_check_class_cast(klass, GTK_TYPE_EVENT_CONTROLLER_MOTION));
end;

function GTK_IS_EVENT_CONTROLLER_MOTION(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_EVENT_CONTROLLER_MOTION);
end;

function GTK_IS_EVENT_CONTROLLER_MOTION_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_EVENT_CONTROLLER_MOTION);
end;

function GTK_EVENT_CONTROLLER_MOTION_GET_CLASS(obj: Pointer): PGtkEventControllerMotionClass;
begin
  Result := PGtkEventControllerMotionClass(PGTypeInstance(obj)^.g_class);
end;



{$ENDIF read_implementation}
