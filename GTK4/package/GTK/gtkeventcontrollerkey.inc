/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}


type
  TGtkEventControllerKey = record // _GtkEventControllerKey
  end;
  PGtkEventControllerKey = ^TGtkEventControllerKey;

  TGtkEventControllerKeyClass = record // _GtkEventControllerKeyClass
  end;
  PGtkEventControllerKeyClass = ^TGtkEventControllerKeyClass;


function gtk_event_controller_key_get_type: TGType; cdecl; external gtklib;
function gtk_event_controller_key_new: PGtkEventController; cdecl; external gtklib;
procedure gtk_event_controller_key_set_im_context(controller: PGtkEventControllerKey; im_context: PGtkIMContext); cdecl; external gtklib;
function gtk_event_controller_key_get_im_context(controller: PGtkEventControllerKey): PGtkIMContext; cdecl; external gtklib;
function gtk_event_controller_key_forward(controller: PGtkEventControllerKey; widget: PGtkWidget): Tgboolean; cdecl; external gtklib;
function gtk_event_controller_key_get_group(controller: PGtkEventControllerKey): Tguint; cdecl; external gtklib;

// === Konventiert am: 25-7-24 19:21:23 ===

function GTK_TYPE_EVENT_CONTROLLER_KEY: TGType;
function GTK_EVENT_CONTROLLER_KEY(obj: Pointer): PGtkEventControllerKey;
function GTK_EVENT_CONTROLLER_KEY_CLASS(klass: Pointer): PGtkEventControllerKeyClass;
function GTK_IS_EVENT_CONTROLLER_KEY(obj: Pointer): Tgboolean;
function GTK_IS_EVENT_CONTROLLER_KEY_CLASS(klass: Pointer): Tgboolean;
function GTK_EVENT_CONTROLLER_KEY_GET_CLASS(obj: Pointer): PGtkEventControllerKeyClass;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_EVENT_CONTROLLER_KEY: TGType;
begin
  GTK_TYPE_EVENT_CONTROLLER_KEY := gtk_event_controller_key_get_type;
end;

function GTK_EVENT_CONTROLLER_KEY(obj: Pointer): PGtkEventControllerKey;
begin
  Result := PGtkEventControllerKey(g_type_check_instance_cast(obj, GTK_TYPE_EVENT_CONTROLLER_KEY));
end;

function GTK_EVENT_CONTROLLER_KEY_CLASS(klass: Pointer): PGtkEventControllerKeyClass;
begin
  Result := PGtkEventControllerKeyClass(g_type_check_class_cast(klass, GTK_TYPE_EVENT_CONTROLLER_KEY));
end;

function GTK_IS_EVENT_CONTROLLER_KEY(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_EVENT_CONTROLLER_KEY);
end;

function GTK_IS_EVENT_CONTROLLER_KEY_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_EVENT_CONTROLLER_KEY);
end;

function GTK_EVENT_CONTROLLER_KEY_GET_CLASS(obj: Pointer): PGtkEventControllerKeyClass;
begin
  Result := PGtkEventControllerKeyClass(PGTypeInstance(obj)^.g_class);
end;



{$ENDIF read_implementation}
