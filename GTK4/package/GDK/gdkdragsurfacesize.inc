/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  TGdkDragSurfaceSize = record
  end;
  PGdkDragSurfaceSize = ^TGdkDragSurfaceSize;

function gdk_drag_surface_size_get_type: TGType; cdecl; external gtklib;
procedure gdk_drag_surface_size_set_size(size: PGdkDragSurfaceSize; Width: longint; Height: longint); cdecl; external gtklib;

// === Konventiert am: 2-8-24 17:10:39 ===

function GDK_TYPE_DRAG_SURFACE_SIZE: TGType;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GDK_TYPE_DRAG_SURFACE_SIZE: TGType;
begin
  GDK_TYPE_DRAG_SURFACE_SIZE := gdk_drag_surface_size_get_type;
end;



{$ENDIF read_implementation}
