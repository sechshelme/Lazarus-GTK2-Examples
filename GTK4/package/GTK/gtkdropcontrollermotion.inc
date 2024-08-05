/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  TGtkDropControllerMotion = record // _GtkDropControllerMotion
  end;
  PGtkDropControllerMotion = ^TGtkDropControllerMotion;

  TGtkDropControllerMotionClass = record // _GtkDropControllerMotionClass
  end;
  PGtkDropControllerMotionClass = ^TGtkDropControllerMotionClass;

function gtk_drop_controller_motion_get_type: TGType; cdecl; external gtklib;
function gtk_drop_controller_motion_new: PGtkEventController; cdecl; external gtklib;
function gtk_drop_controller_motion_contains_pointer(self: PGtkDropControllerMotion): Tgboolean; cdecl; external gtklib;
function gtk_drop_controller_motion_get_drop(self: PGtkDropControllerMotion): PGdkDrop; cdecl; external gtklib;
function gtk_drop_controller_motion_is_pointer(self: PGtkDropControllerMotion): Tgboolean; cdecl; external gtklib;

// === Konventiert am: 25-7-24 18:16:15 ===

function GTK_TYPE_DROP_CONTROLLER_MOTION: TGType;
function GTK_DROP_CONTROLLER_MOTION(obj: Pointer): PGtkDropControllerMotion;
function GTK_DROP_CONTROLLER_MOTION_CLASS(klass: Pointer): PGtkDropControllerMotionClass;
function GTK_IS_DROP_CONTROLLER_MOTION(obj: Pointer): Tgboolean;
function GTK_IS_DROP_CONTROLLER_MOTION_CLASS(klass: Pointer): Tgboolean;
function GTK_DROP_CONTROLLER_MOTION_GET_CLASS(obj: Pointer): PGtkDropControllerMotionClass;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_DROP_CONTROLLER_MOTION: TGType;
begin
  GTK_TYPE_DROP_CONTROLLER_MOTION := gtk_drop_controller_motion_get_type;
end;

function GTK_DROP_CONTROLLER_MOTION(obj: Pointer): PGtkDropControllerMotion;
begin
  Result := PGtkDropControllerMotion(g_type_check_instance_cast(obj, GTK_TYPE_DROP_CONTROLLER_MOTION));
end;

function GTK_DROP_CONTROLLER_MOTION_CLASS(klass: Pointer): PGtkDropControllerMotionClass;
begin
  Result := PGtkDropControllerMotionClass(g_type_check_class_cast(klass, GTK_TYPE_DROP_CONTROLLER_MOTION));
end;

function GTK_IS_DROP_CONTROLLER_MOTION(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_DROP_CONTROLLER_MOTION);
end;

function GTK_IS_DROP_CONTROLLER_MOTION_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_DROP_CONTROLLER_MOTION);
end;

function GTK_DROP_CONTROLLER_MOTION_GET_CLASS(obj: Pointer): PGtkDropControllerMotionClass;
begin
  Result := PGtkDropControllerMotionClass(PGTypeInstance(obj)^.g_class);
end;



{$ENDIF read_implementation}
