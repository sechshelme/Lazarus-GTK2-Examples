/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  TGtkCustomRequestModeFunc = function(widget: PGtkWidget): TGtkSizeRequestMode; cdecl;
  TGtkCustomMeasureFunc = procedure(widget: PGtkWidget; orientation: TGtkOrientation; for_size: longint; minimum: Plongint; natural: Plongint;
    minimum_baseline: Plongint; natural_baseline: Plongint); cdecl;
  TGtkCustomAllocateFunc = procedure(widget: PGtkWidget; Width: longint; Height: longint; baseline: longint); cdecl;

  {G_DECLARE_FINAL_TYPE (GtkCustomLayout, gtk_custom_layout, GTK, CUSTOM_LAYOUT, GtkLayoutManager) }
type
  TGtkCustomLayout = record
  end;
  PGtkCustomLayout = ^TGtkCustomLayout;

  TGtkCustomLayoutClass = record
    parent_class: TGtkLayoutManagerClass;
  end;
  PGtkCustomLayoutClass = ^TGtkCustomLayoutClass;

function gtk_custom_layout_get_type: TGType; cdecl; external gtklib;
function gtk_custom_layout_new(request_mode: TGtkCustomRequestModeFunc; measure: TGtkCustomMeasureFunc; allocate: TGtkCustomAllocateFunc): PGtkLayoutManager; cdecl; external gtklib;

// === Konventiert am: 24-7-24 19:37:33 ===

function GTK_TYPE_CUSTOM_LAYOUT: TGType;
function GTK_CUSTOM_LAYOUT(obj: Pointer): PGtkCustomLayout;
function GTK_IS_CUSTOM_LAYOUT(obj: Pointer): Tgboolean;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_CUSTOM_LAYOUT: TGType;
begin
  Result := gtk_custom_layout_get_type;
end;

function GTK_CUSTOM_LAYOUT(obj: Pointer): PGtkCustomLayout;
begin
  Result := PGtkCustomLayout(g_type_check_instance_cast(obj, GTK_TYPE_CUSTOM_LAYOUT));
end;

function GTK_IS_CUSTOM_LAYOUT(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_CUSTOM_LAYOUT);
end;




{$ENDIF read_implementation}
