/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  TGtkEventControllerLegacy = record // _GtkEventControllerLegacy
  end;
  PGtkEventControllerLegacy = ^TGtkEventControllerLegacy;

  TGtkEventControllerLegacyClass = record // _GtkEventControllerLegacyClass
  end;
  PGtkEventControllerLegacyClass = ^TGtkEventControllerLegacyClass;

function gtk_event_controller_legacy_get_type: TGType; cdecl; external gtklib;
function gtk_event_controller_legacy_new: PGtkEventController; cdecl; external gtklib;

// === Konventiert am: 25-7-24 19:21:58 ===

function GTK_TYPE_EVENT_CONTROLLER_LEGACY: TGType;
function GTK_EVENT_CONTROLLER_LEGACY(obj: Pointer): PGtkEventControllerLegacy;
function GTK_EVENT_CONTROLLER_LEGACY_CLASS(klass: Pointer): PGtkEventControllerLegacyClass;
function GTK_IS_EVENT_CONTROLLER_LEGACY(obj: Pointer): Tgboolean;
function GTK_IS_EVENT_CONTROLLER_LEGACY_CLASS(klass: Pointer): Tgboolean;
function GTK_EVENT_CONTROLLER_LEGACY_GET_CLASS(obj: Pointer): PGtkEventControllerLegacyClass;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_EVENT_CONTROLLER_LEGACY: TGType;
begin
  GTK_TYPE_EVENT_CONTROLLER_LEGACY := gtk_event_controller_legacy_get_type;
end;

function GTK_EVENT_CONTROLLER_LEGACY(obj: Pointer): PGtkEventControllerLegacy;
begin
  Result := PGtkEventControllerLegacy(g_type_check_instance_cast(obj, GTK_TYPE_EVENT_CONTROLLER_LEGACY));
end;

function GTK_EVENT_CONTROLLER_LEGACY_CLASS(klass: Pointer): PGtkEventControllerLegacyClass;
begin
  Result := PGtkEventControllerLegacyClass(g_type_check_class_cast(klass, GTK_TYPE_EVENT_CONTROLLER_LEGACY));
end;

function GTK_IS_EVENT_CONTROLLER_LEGACY(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_EVENT_CONTROLLER_LEGACY);
end;

function GTK_IS_EVENT_CONTROLLER_LEGACY_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_EVENT_CONTROLLER_LEGACY);
end;

function GTK_EVENT_CONTROLLER_LEGACY_GET_CLASS(obj: Pointer): PGtkEventControllerLegacyClass;
begin
  Result := PGtkEventControllerLegacyClass(PGTypeInstance(obj)^.g_class);
end;



{$ENDIF read_implementation}
