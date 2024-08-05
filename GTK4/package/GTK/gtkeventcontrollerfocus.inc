/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  TGtkEventControllerFocus = record // _GtkEventControllerFocus
  end;
  PGtkEventControllerFocus = ^TGtkEventControllerFocus;

  TGtkEventControllerFocusClass = record // _GtkEventControllerFocusClass
  end;
  PGtkEventControllerFocusClass = ^TGtkEventControllerFocusClass;

function gtk_event_controller_focus_get_type: TGType; cdecl; external gtklib;
function gtk_event_controller_focus_new: PGtkEventController; cdecl; external gtklib;
function gtk_event_controller_focus_contains_focus(self: PGtkEventControllerFocus): Tgboolean; cdecl; external gtklib;
function gtk_event_controller_focus_is_focus(self: PGtkEventControllerFocus): Tgboolean; cdecl; external gtklib;

// === Konventiert am: 25-7-24 19:20:42 ===

function GTK_TYPE_EVENT_CONTROLLER_FOCUS: TGType;
function GTK_EVENT_CONTROLLER_FOCUS(obj: Pointer): PGtkEventControllerFocus;
function GTK_EVENT_CONTROLLER_FOCUS_CLASS(klass: Pointer): PGtkEventControllerFocusClass;
function GTK_IS_EVENT_CONTROLLER_FOCUS(obj: Pointer): Tgboolean;
function GTK_IS_EVENT_CONTROLLER_FOCUS_CLASS(klass: Pointer): Tgboolean;
function GTK_EVENT_CONTROLLER_FOCUS_GET_CLASS(obj: Pointer): PGtkEventControllerFocusClass;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_EVENT_CONTROLLER_FOCUS: TGType;
begin
  GTK_TYPE_EVENT_CONTROLLER_FOCUS := gtk_event_controller_focus_get_type;
end;

function GTK_EVENT_CONTROLLER_FOCUS(obj: Pointer): PGtkEventControllerFocus;
begin
  Result := PGtkEventControllerFocus(g_type_check_instance_cast(obj, GTK_TYPE_EVENT_CONTROLLER_FOCUS));
end;

function GTK_EVENT_CONTROLLER_FOCUS_CLASS(klass: Pointer): PGtkEventControllerFocusClass;
begin
  Result := PGtkEventControllerFocusClass(g_type_check_class_cast(klass, GTK_TYPE_EVENT_CONTROLLER_FOCUS));
end;

function GTK_IS_EVENT_CONTROLLER_FOCUS(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_EVENT_CONTROLLER_FOCUS);
end;

function GTK_IS_EVENT_CONTROLLER_FOCUS_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_EVENT_CONTROLLER_FOCUS);
end;

function GTK_EVENT_CONTROLLER_FOCUS_GET_CLASS(obj: Pointer): PGtkEventControllerFocusClass;
begin
  Result := PGtkEventControllerFocusClass(PGTypeInstance(obj)^.g_class);
end;



{$ENDIF read_implementation}
