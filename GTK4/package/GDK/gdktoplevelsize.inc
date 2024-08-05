/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  TGdkToplevelSize = record
  end;
  PGdkToplevelSize = ^TGdkToplevelSize;

function gdk_toplevel_size_get_type: TGType; cdecl; external gtklib;
procedure gdk_toplevel_size_get_bounds(size: PGdkToplevelSize; bounds_width: Plongint; bounds_height: Plongint); cdecl; external gtklib;
procedure gdk_toplevel_size_set_size(size: PGdkToplevelSize; Width: longint; Height: longint); cdecl; external gtklib;
procedure gdk_toplevel_size_set_min_size(size: PGdkToplevelSize; min_width: longint; min_height: longint); cdecl; external gtklib;
procedure gdk_toplevel_size_set_shadow_width(size: PGdkToplevelSize; left: longint; right: longint; top: longint; bottom: longint); cdecl; external gtklib;

// === Konventiert am: 30-7-24 19:36:10 ===

function GDK_TYPE_TOPLEVEL_SIZE: TGType;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GDK_TYPE_TOPLEVEL_SIZE: TGType;
begin
  GDK_TYPE_TOPLEVEL_SIZE := gdk_toplevel_size_get_type;
end;



{$ENDIF read_implementation}
