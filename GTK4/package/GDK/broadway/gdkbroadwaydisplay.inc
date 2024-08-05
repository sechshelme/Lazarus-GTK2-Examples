/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  PGdkBroadwayDisplay = ^TGdkBroadwayDisplay;
  TGdkBroadwayDisplay = TGdkDisplay;

  TGdkBroadwayDisplayClass = record
  end;
  PGdkBroadwayDisplayClass = ^TGdkBroadwayDisplayClass;

function gdk_broadway_display_get_type: TGType; cdecl; external gtklib;
procedure gdk_broadway_display_show_keyboard(display: PGdkBroadwayDisplay); cdecl; external gtklib;
procedure gdk_broadway_display_hide_keyboard(display: PGdkBroadwayDisplay); cdecl; external gtklib;
function gdk_broadway_display_get_surface_scale(display: PGdkDisplay): longint; cdecl; external gtklib;
procedure gdk_broadway_display_set_surface_scale(display: PGdkDisplay; scale: longint); cdecl; external gtklib;

// === Konventiert am: 3-8-24 18:13:25 ===

function GDK_TYPE_BROADWAY_DISPLAY: TGType;
function GDK_BROADWAY_DISPLAY(obj: Pointer): PGdkBroadwayDisplay;
function GDK_BROADWAY_DISPLAY_CLASS(klass: Pointer): PGdkBroadwayDisplayClass;
function GDK_IS_BROADWAY_DISPLAY(obj: Pointer): Tgboolean;
function GDK_IS_BROADWAY_DISPLAY_CLASS(klass: Pointer): Tgboolean;
function GDK_BROADWAY_DISPLAY_GET_CLASS(obj: Pointer): PGdkBroadwayDisplayClass;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GDK_TYPE_BROADWAY_DISPLAY: TGType;
begin
  GDK_TYPE_BROADWAY_DISPLAY := gdk_broadway_display_get_type;
end;

function GDK_BROADWAY_DISPLAY(obj: Pointer): PGdkBroadwayDisplay;
begin
  Result := PGdkBroadwayDisplay(g_type_check_instance_cast(obj, GDK_TYPE_BROADWAY_DISPLAY));
end;

function GDK_BROADWAY_DISPLAY_CLASS(klass: Pointer): PGdkBroadwayDisplayClass;
begin
  Result := PGdkBroadwayDisplayClass(g_type_check_class_cast(klass, GDK_TYPE_BROADWAY_DISPLAY));
end;

function GDK_IS_BROADWAY_DISPLAY(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GDK_TYPE_BROADWAY_DISPLAY);
end;

function GDK_IS_BROADWAY_DISPLAY_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GDK_TYPE_BROADWAY_DISPLAY);
end;

function GDK_BROADWAY_DISPLAY_GET_CLASS(obj: Pointer): PGdkBroadwayDisplayClass;
begin
  Result := PGdkBroadwayDisplayClass(PGTypeInstance(obj)^.g_class);
end;



{$ENDIF read_implementation}
