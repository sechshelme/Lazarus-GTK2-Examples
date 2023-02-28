unit GTK4;

interface
// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gdk/gdk4types.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gdk/gdk4types.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gdk/gdk4types.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef __GDK_TYPES_H__}
//// {$define __GDK_TYPES_H__}
//// {$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gdk/gdk.h> can be included directly."}
//// {$endif}

//// {$include <glib.h>}
//// {$include <glib-object.h>}
//// {$include <gio/gio.h>}
//// {$include <cairo.h>}
//// {$include <pango/pango.h>}

//// {$include <gdk/gdkconfig.h>}


const
  GDK_CURRENT_TIME = 0;  
//// {$ifdef __GI_SCANNER__}

type
  T_GdkRectangle = record
      x : longint;
      y : longint;
      width : longint;
      height : longint;
    end;

  T_GdkRectangle = TGdkRectangle;
//// {$else}
type
  TGdkRectangle = Tcairo_rectangle_int_t;
//// {$endif}

type
  T_GdkRGBA = TGdkRGBA;
  T_GdkContentFormats = TGdkContentFormats;
  T_GdkContentProvider = TGdkContentProvider;
  T_GdkCursor = TGdkCursor;
  T_GdkTexture = TGdkTexture;
  T_GdkDevice = TGdkDevice;
  T_GdkDrag = TGdkDrag;
  T_GdkDrop = TGdkDrop;
  T_GdkClipboard = TGdkClipboard;
  T_GdkDisplayManager = TGdkDisplayManager;
  T_GdkDisplay = TGdkDisplay;
  T_GdkSurface = TGdkSurface;
  T_GdkAppLaunchContext = TGdkAppLaunchContext;
  T_GdkSeat = TGdkSeat;
  T_GdkSnapshot = TGdkSnapshot;
  T_GdkDrawContext = TGdkDrawContext;
  T_GdkCairoContext = TGdkCairoContext;
  T_GdkGLContext = TGdkGLContext;
  T_GdkVulkanContext = TGdkVulkanContext;

  T_GdkKeymapKey = TGdkKeymapKey;

  T_GdkKeymapKey = record
      keycode : Tguint;
      group : longint;
      level : longint;
    end;

//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gdk/gdk4toplevelsize.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gdk/gdk4toplevelsize.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gdk/gdk4toplevelsize.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// Type
//// PGdkToplevelSize  = ^GdkToplevelSize;
//// Plongint  = ^longint;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GDK_TOPLEVEL_SIZE_H__}
//// {$define __GDK_TOPLEVEL_SIZE_H__}
//// {$if !defined(__GDK_H_INSIDE__) && !defined(GTK_COMPILATION)}
//// {$error "Only <gdk/gdk.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdktypes.h>}
//// {$include <gdk/gdkversionmacros.h>}
type
  T_GdkToplevelSize = TGdkToplevelSize;

function GDK_TYPE_TOPLEVEL_SIZE : longint; { return type might be wrong }

function gdk_toplevel_size_get_type:TGType;cdecl;external;
procedure gdk_toplevel_size_get_bounds(size:PTGdkToplevelSize; bounds_width:Plongint; bounds_height:Plongint);cdecl;external;
procedure gdk_toplevel_size_set_size(size:PTGdkToplevelSize; width:longint; height:longint);cdecl;external;
procedure gdk_toplevel_size_set_min_size(size:PTGdkToplevelSize; min_width:longint; min_height:longint);cdecl;external;
procedure gdk_toplevel_size_set_shadow_width(size:PTGdkToplevelSize; left:longint; right:longint; top:longint; bottom:longint);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gdk/gdk4toplevel.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gdk/gdk4toplevel.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gdk/gdk4toplevel.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// Type
//// Pchar  = ^char;
//// PGdkDevice  = ^GdkDevice;
//// PGdkEvent  = ^GdkEvent;
//// PGdkSurface  = ^GdkSurface;
//// PGdkToplevel  = ^GdkToplevel;
//// PGdkToplevelLayout  = ^GdkToplevelLayout;
//// PGList  = ^GList;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GDK_TOPLEVEL_H__}
//// {$define __GDK_TOPLEVEL_H__}
//// {$if !defined(__GDK_H_INSIDE__) && !defined(GTK_COMPILATION)}
//// {$error "Only <gdk/gdk.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdkseat.h>}
//// {$include <gdk/gdksurface.h>}
//// {$include <gdk/gdktoplevellayout.h>}

type
  TGdkSurfaceEdge = (GDK_SURFACE_EDGE_NORTH_WEST,GDK_SURFACE_EDGE_NORTH,
    GDK_SURFACE_EDGE_NORTH_EAST,GDK_SURFACE_EDGE_WEST,
    GDK_SURFACE_EDGE_EAST,GDK_SURFACE_EDGE_SOUTH_WEST,
    GDK_SURFACE_EDGE_SOUTH,GDK_SURFACE_EDGE_SOUTH_EAST
    );


  TGdkFullscreenMode = (GDK_FULLSCREEN_ON_CURRENT_MONITOR,GDK_FULLSCREEN_ON_ALL_MONITORS
    );


  TGdkToplevelState = (GDK_TOPLEVEL_STATE_MINIMIZED := 1 shl 0,GDK_TOPLEVEL_STATE_MAXIMIZED := 1 shl 1,
    GDK_TOPLEVEL_STATE_STICKY := 1 shl 2,GDK_TOPLEVEL_STATE_FULLSCREEN := 1 shl 3,
    GDK_TOPLEVEL_STATE_ABOVE := 1 shl 4,GDK_TOPLEVEL_STATE_BELOW := 1 shl 5,
    GDK_TOPLEVEL_STATE_FOCUSED := 1 shl 6,GDK_TOPLEVEL_STATE_TILED := 1 shl 7,
    GDK_TOPLEVEL_STATE_TOP_TILED := 1 shl 8,GDK_TOPLEVEL_STATE_TOP_RESIZABLE := 1 shl 9,
    GDK_TOPLEVEL_STATE_RIGHT_TILED := 1 shl 10,GDK_TOPLEVEL_STATE_RIGHT_RESIZABLE := 1 shl 11,
    GDK_TOPLEVEL_STATE_BOTTOM_TILED := 1 shl 12,
    GDK_TOPLEVEL_STATE_BOTTOM_RESIZABLE := 1 shl 13,
    GDK_TOPLEVEL_STATE_LEFT_TILED := 1 shl 14,GDK_TOPLEVEL_STATE_LEFT_RESIZABLE := 1 shl 15
    );


  TGdkTitlebarGesture = (GDK_TITLEBAR_GESTURE_DOUBLE_CLICK := 1,
    GDK_TITLEBAR_GESTURE_RIGHT_CLICK := 2,
    GDK_TITLEBAR_GESTURE_MIDDLE_CLICK := 3
    );

function GDK_TYPE_TOPLEVEL : longint; { return type might be wrong }

procedure gdk_toplevel_present(toplevel:PTGdkToplevel; layout:PTGdkToplevelLayout);cdecl;external;
function gdk_toplevel_minimize(toplevel:PTGdkToplevel):Tgboolean;cdecl;external;
function gdk_toplevel_lower(toplevel:PTGdkToplevel):Tgboolean;cdecl;external;
procedure gdk_toplevel_focus(toplevel:PTGdkToplevel; timestamp:Tguint32);cdecl;external;
function gdk_toplevel_get_state(toplevel:PTGdkToplevel):TGdkToplevelState;cdecl;external;
procedure gdk_toplevel_set_title(toplevel:PTGdkToplevel; title:Pchar);cdecl;external;
procedure gdk_toplevel_set_startup_id(toplevel:PTGdkToplevel; startup_id:Pchar);cdecl;external;
procedure gdk_toplevel_set_transient_for(toplevel:PTGdkToplevel; parent:PTGdkSurface);cdecl;external;
procedure gdk_toplevel_set_modal(toplevel:PTGdkToplevel; modal:Tgboolean);cdecl;external;
procedure gdk_toplevel_set_icon_list(toplevel:PTGdkToplevel; surfaces:PTGList);cdecl;external;
function gdk_toplevel_show_window_menu(toplevel:PTGdkToplevel; event:PTGdkEvent):Tgboolean;cdecl;external;
procedure gdk_toplevel_set_decorated(toplevel:PTGdkToplevel; decorated:Tgboolean);cdecl;external;
procedure gdk_toplevel_set_deletable(toplevel:PTGdkToplevel; deletable:Tgboolean);cdecl;external;
function gdk_toplevel_supports_edge_constraints(toplevel:PTGdkToplevel):Tgboolean;cdecl;external;
procedure gdk_toplevel_inhibit_system_shortcuts(toplevel:PTGdkToplevel; event:PTGdkEvent);cdecl;external;
procedure gdk_toplevel_restore_system_shortcuts(toplevel:PTGdkToplevel);cdecl;external;
procedure gdk_toplevel_begin_resize(toplevel:PTGdkToplevel; edge:TGdkSurfaceEdge; device:PTGdkDevice; button:longint; x:Tdouble; 
            y:Tdouble; timestamp:Tguint32);cdecl;external;
procedure gdk_toplevel_begin_move(toplevel:PTGdkToplevel; device:PTGdkDevice; button:longint; x:Tdouble; y:Tdouble; 
            timestamp:Tguint32);cdecl;external;
function gdk_toplevel_titlebar_gesture(toplevel:PTGdkToplevel; gesture:TGdkTitlebarGesture):Tgboolean;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gdk/gdk4texture.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gdk/gdk4texture.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gdk/gdk4texture.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// Type
//// Pchar  = ^char;
//// PGBytes  = ^GBytes;
//// PGdkPixbuf  = ^GdkPixbuf;
//// PGdkTexture  = ^GdkTexture;
//// PGError  = ^GError;
//// PGFile  = ^GFile;
//// Pguchar  = ^guchar;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GDK_TEXTURE_H__}
//// {$define __GDK_TEXTURE_H__}
//// {$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gdk/gdk.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdkversionmacros.h>}
//// {$include <gdk/gdktypes.h>}
//// {$include <gdk-pixbuf/gdk-pixbuf.h>}

function GDK_TYPE_TEXTURE : longint; { return type might be wrong }

function GDK_TEXTURE(obj : longint) : longint;

function GDK_IS_TEXTURE(obj : longint) : longint;

type
  T_GdkTextureClass = TGdkTextureClass;

function GDK_TEXTURE_ERROR : longint; { return type might be wrong }

function gdk_texture_error_quark:TGQuark;cdecl;external;

type
  TGdkTextureError = (GDK_TEXTURE_ERROR_TOO_LARGE,GDK_TEXTURE_ERROR_CORRUPT_IMAGE,
    GDK_TEXTURE_ERROR_UNSUPPORTED_CONTENT,
    GDK_TEXTURE_ERROR_UNSUPPORTED_FORMAT);

function gdk_texture_get_type:TGType;cdecl;external;
function gdk_texture_new_for_pixbuf(pixbuf:PTGdkPixbuf):^TGdkTexture;cdecl;external;
function gdk_texture_new_from_resource(resource_path:Pchar):^TGdkTexture;cdecl;external;
function gdk_texture_new_from_file(file:PTGFile; error:PPTGError):^TGdkTexture;cdecl;external;
function gdk_texture_new_from_filename(path:Pchar; error:PPTGError):^TGdkTexture;cdecl;external;
function gdk_texture_new_from_bytes(bytes:PTGBytes; error:PPTGError):^TGdkTexture;cdecl;external;
function gdk_texture_get_width(texture:PTGdkTexture):longint;cdecl;external;
function gdk_texture_get_height(texture:PTGdkTexture):longint;cdecl;external;
procedure gdk_texture_download(texture:PTGdkTexture; data:PTguchar; stride:Tgsize);cdecl;external;
function gdk_texture_save_to_png(texture:PTGdkTexture; filename:Pchar):Tgboolean;cdecl;external;
function gdk_texture_save_to_png_bytes(texture:PTGdkTexture):^TGBytes;cdecl;external;
function gdk_texture_save_to_tiff(texture:PTGdkTexture; filename:Pchar):Tgboolean;cdecl;external;
function gdk_texture_save_to_tiff_bytes(texture:PTGdkTexture):^TGBytes;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gdk/gdk4toplevellayout.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gdk/gdk4toplevellayout.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gdk/gdk4toplevellayout.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// Type
//// Pgboolean  = ^gboolean;
//// PGdkMonitor  = ^GdkMonitor;
//// PGdkToplevelLayout  = ^GdkToplevelLayout;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GDK_TOPLEVEL_LAYOUT_H__}
//// {$define __GDK_TOPLEVEL_LAYOUT_H__}
//// {$if !defined(__GDK_H_INSIDE__) && !defined(GTK_COMPILATION)}
//// {$error "Only <gdk/gdk.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdkmonitor.h>}
//// {$include <gdk/gdktypes.h>}
//// {$include <gdk/gdkversionmacros.h>}
type
  T_GdkToplevelLayout = TGdkToplevelLayout;

function GDK_TYPE_TOPLEVEL_LAYOUT : longint; { return type might be wrong }

function gdk_toplevel_layout_get_type:TGType;cdecl;external;
function gdk_toplevel_layout_new:^TGdkToplevelLayout;cdecl;external;
function gdk_toplevel_layout_ref(layout:PTGdkToplevelLayout):^TGdkToplevelLayout;cdecl;external;
procedure gdk_toplevel_layout_unref(layout:PTGdkToplevelLayout);cdecl;external;
function gdk_toplevel_layout_copy(layout:PTGdkToplevelLayout):^TGdkToplevelLayout;cdecl;external;
function gdk_toplevel_layout_equal(layout:PTGdkToplevelLayout; other:PTGdkToplevelLayout):Tgboolean;cdecl;external;
procedure gdk_toplevel_layout_set_maximized(layout:PTGdkToplevelLayout; maximized:Tgboolean);cdecl;external;
procedure gdk_toplevel_layout_set_fullscreen(layout:PTGdkToplevelLayout; fullscreen:Tgboolean; monitor:PTGdkMonitor);cdecl;external;
function gdk_toplevel_layout_get_maximized(layout:PTGdkToplevelLayout; maximized:PTgboolean):Tgboolean;cdecl;external;
function gdk_toplevel_layout_get_fullscreen(layout:PTGdkToplevelLayout; fullscreen:PTgboolean):Tgboolean;cdecl;external;
function gdk_toplevel_layout_get_fullscreen_monitor(layout:PTGdkToplevelLayout):^TGdkMonitor;cdecl;external;
procedure gdk_toplevel_layout_set_resizable(layout:PTGdkToplevelLayout; resizable:Tgboolean);cdecl;external;
function gdk_toplevel_layout_get_resizable(layout:PTGdkToplevelLayout):Tgboolean;cdecl;external;
//// {$endif}



implementation
// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gdk/gdk4types.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gdk/gdk4toplevelsize.pp
// -------------------------------------------------

function GDK_TYPE_TOPLEVEL_SIZE : longint; { return type might be wrong }
  begin
    GDK_TYPE_TOPLEVEL_SIZE:=gdk_toplevel_size_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gdk/gdk4toplevel.pp
// -------------------------------------------------

function GDK_TYPE_TOPLEVEL : longint; { return type might be wrong }
  begin
    GDK_TYPE_TOPLEVEL:=gdk_toplevel_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gdk/gdk4texture.pp
// -------------------------------------------------

function GDK_TYPE_TEXTURE : longint; { return type might be wrong }
  begin
    GDK_TYPE_TEXTURE:=gdk_texture_get_type;
  end;

function GDK_TEXTURE(obj : longint) : longint;
begin
  GDK_TEXTURE:=G_TYPE_CHECK_INSTANCE_CAST(obj,GDK_TYPE_TEXTURE,GdkTexture);
end;

function GDK_IS_TEXTURE(obj : longint) : longint;
begin
  GDK_IS_TEXTURE:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GDK_TYPE_TEXTURE);
end;

function GDK_TEXTURE_ERROR : longint; { return type might be wrong }
  begin
    GDK_TEXTURE_ERROR:=gdk_texture_error_quark;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gdk/gdk4toplevellayout.pp
// -------------------------------------------------

function GDK_TYPE_TOPLEVEL_LAYOUT : longint; { return type might be wrong }
  begin
    GDK_TYPE_TOPLEVEL_LAYOUT:=gdk_toplevel_layout_get_type;
  end;




end.
