/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  TGdkToplevelLayout = record
  end;
  PGdkToplevelLayout = ^TGdkToplevelLayout;

function gdk_toplevel_layout_get_type: TGType; cdecl; external gtklib;
function gdk_toplevel_layout_new: PGdkToplevelLayout; cdecl; external gtklib;
function gdk_toplevel_layout_ref(layout: PGdkToplevelLayout): PGdkToplevelLayout; cdecl; external gtklib;
procedure gdk_toplevel_layout_unref(layout: PGdkToplevelLayout); cdecl; external gtklib;
function gdk_toplevel_layout_copy(layout: PGdkToplevelLayout): PGdkToplevelLayout; cdecl; external gtklib;
function gdk_toplevel_layout_equal(layout: PGdkToplevelLayout; other: PGdkToplevelLayout): Tgboolean; cdecl; external gtklib;
procedure gdk_toplevel_layout_set_maximized(layout: PGdkToplevelLayout; maximized: Tgboolean); cdecl; external gtklib;
procedure gdk_toplevel_layout_set_fullscreen(layout: PGdkToplevelLayout; fullscreen: Tgboolean; monitor: PGdkMonitor); cdecl; external gtklib;
function gdk_toplevel_layout_get_maximized(layout: PGdkToplevelLayout; maximized: Pgboolean): Tgboolean; cdecl; external gtklib;
function gdk_toplevel_layout_get_fullscreen(layout: PGdkToplevelLayout; fullscreen: Pgboolean): Tgboolean; cdecl; external gtklib;
function gdk_toplevel_layout_get_fullscreen_monitor(layout: PGdkToplevelLayout): PGdkMonitor; cdecl; external gtklib;
procedure gdk_toplevel_layout_set_resizable(layout: PGdkToplevelLayout; resizable: Tgboolean); cdecl; external gtklib;
function gdk_toplevel_layout_get_resizable(layout: PGdkToplevelLayout): Tgboolean; cdecl; external gtklib;

// === Konventiert am: 30-7-24 19:36:03 ===

function GDK_TYPE_TOPLEVEL_LAYOUT: TGType;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GDK_TYPE_TOPLEVEL_LAYOUT: TGType;
begin
  GDK_TYPE_TOPLEVEL_LAYOUT := gdk_toplevel_layout_get_type;
end;



{$ENDIF read_implementation}
