/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

  {G_DECLARE_FINAL_TYPE (GtkCenterLayout, gtk_center_layout, GTK, CENTER_LAYOUT, GtkLayoutManager) }
type
  TGtkCenterLayout = record
  end;
  PGtkCenterLayout = ^TGtkCenterLayout;

  TGtkCenterLayoutClass = record
    parent_class: TGtkLayoutManagerClass;
  end;
  PGtkCenterLayoutClass = ^TGtkCenterLayoutClass;

function gtk_center_layout_get_type: TGType; cdecl; external gtklib;
function gtk_center_layout_new: PGtkLayoutManager; cdecl; external gtklib;
procedure gtk_center_layout_set_orientation(self: PGtkCenterLayout; orientation: TGtkOrientation); cdecl; external gtklib;
function gtk_center_layout_get_orientation(self: PGtkCenterLayout): TGtkOrientation; cdecl; external gtklib;
procedure gtk_center_layout_set_baseline_position(self: PGtkCenterLayout; baseline_position: TGtkBaselinePosition); cdecl; external gtklib;
function gtk_center_layout_get_baseline_position(self: PGtkCenterLayout): TGtkBaselinePosition; cdecl; external gtklib;
procedure gtk_center_layout_set_start_widget(self: PGtkCenterLayout; widget: PGtkWidget); cdecl; external gtklib;
function gtk_center_layout_get_start_widget(self: PGtkCenterLayout): PGtkWidget; cdecl; external gtklib;
procedure gtk_center_layout_set_center_widget(self: PGtkCenterLayout; widget: PGtkWidget); cdecl; external gtklib;
function gtk_center_layout_get_center_widget(self: PGtkCenterLayout): PGtkWidget; cdecl; external gtklib;
procedure gtk_center_layout_set_end_widget(self: PGtkCenterLayout; widget: PGtkWidget); cdecl; external gtklib;
function gtk_center_layout_get_end_widget(self: PGtkCenterLayout): PGtkWidget; cdecl; external gtklib;
procedure gtk_center_layout_set_shrink_center_last(self: PGtkCenterLayout; shrink_center_last: Tgboolean); cdecl; external gtklib;
function gtk_center_layout_get_shrink_center_last(self: PGtkCenterLayout): Tgboolean; cdecl; external gtklib;

// === Konventiert am: 23-7-24 17:04:24 ===

function GTK_TYPE_CENTER_LAYOUT: TGType;
function GTK_CENTER_LAYOUT(obj: Pointer): PGtkCenterLayout;
function GTK_IS_CENTER_LAYOUT(obj: Pointer): Tgboolean;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_CENTER_LAYOUT: TGType;
begin
  Result := gtk_center_layout_get_type;
end;

function GTK_CENTER_LAYOUT(obj: Pointer): PGtkCenterLayout;
begin
  Result := PGtkCenterLayout(g_type_check_instance_cast(obj, GTK_TYPE_CENTER_LAYOUT));
end;

function GTK_IS_CENTER_LAYOUT(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_CENTER_LAYOUT);
end;




{$ENDIF read_implementation}
