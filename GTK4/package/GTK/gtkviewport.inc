/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}


type
  TGtkViewport = record // _GtkViewport
  end;
  PGtkViewport = ^tGtkViewport;

function gtk_viewport_get_type: TGType; cdecl; external gtklib;
function gtk_viewport_new(hadjustment: PGtkAdjustment; vadjustment: PGtkAdjustment): PGtkWidget; cdecl; external gtklib;
function gtk_viewport_get_scroll_to_focus(viewport: PGtkViewport): Tgboolean; cdecl; external gtklib;
procedure gtk_viewport_set_scroll_to_focus(viewport: PGtkViewport; scroll_to_focus: Tgboolean); cdecl; external gtklib;
procedure gtk_viewport_set_child(viewport: PGtkViewport; child: PGtkWidget); cdecl; external gtklib;
function gtk_viewport_get_child(viewport: PGtkViewport): PGtkWidget; cdecl; external gtklib;
procedure gtk_viewport_scroll_to(viewport: PGtkViewport; descendant: PGtkWidget; scroll: PGtkScrollInfo); cdecl; external gtklib;

// === Konventiert am: 28-7-24 17:07:06 ===

function GTK_TYPE_VIEWPORT: TGType;
function GTK_VIEWPORT(obj: Pointer): PGtkViewport;
function GTK_IS_VIEWPORT(obj: Pointer): Tgboolean;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_VIEWPORT: TGType;
begin
  GTK_TYPE_VIEWPORT := gtk_viewport_get_type;
end;

function GTK_VIEWPORT(obj: Pointer): PGtkViewport;
begin
  Result := PGtkViewport(g_type_check_instance_cast(obj, GTK_TYPE_VIEWPORT));
end;

function GTK_IS_VIEWPORT(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_VIEWPORT);
end;



{$ENDIF read_implementation}
