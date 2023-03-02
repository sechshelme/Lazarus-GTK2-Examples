unit GTK4;

interface

uses
  cairo, pango;
// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gdksurface.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gdksurface.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gdksurface.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pcairo_region_t  = ^cairo_region_t;
Pdouble  = ^double;
PGdkCursor  = ^GdkCursor;
PGdkDevice  = ^GdkDevice;
PGdkDisplay  = ^GdkDisplay;
PGdkModifierType  = ^GdkModifierType;
PGdkSurface  = ^GdkSurface;
PGError  = ^GError;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef __GDK_SURFACE_H__}
//// {$define __GDK_SURFACE_H__}
//// {$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gdk/gdk.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdkversionmacros.h>}
//// {$include <gdk/gdktypes.h>}
//// {$include <gdk/gdkevents.h>}
//// {$include <gdk/gdkframeclock.h>}
//// {$include <gdk/gdkmonitor.h>}
//// {$include <gdk/gdkpopuplayout.h>}
type
  T_GdkSurfaceClass = TGdkSurfaceClass;

function GDK_TYPE_SURFACE : longint; { return type might be wrong }

function GDK_SURFACE(object : longint) : longint;

function GDK_SURFACE_CLASS(klass : longint) : longint;

function GDK_IS_SURFACE(object : longint) : longint;

function GDK_IS_SURFACE_CLASS(klass : longint) : longint;

function GDK_SURFACE_GET_CLASS(obj : longint) : longint;

function gdk_surface_get_type:TGType;cdecl;external;
function gdk_surface_new_toplevel(display:PTGdkDisplay):^TGdkSurface;cdecl;external;
function gdk_surface_new_popup(parent:PTGdkSurface; autohide:Tgboolean):^TGdkSurface;cdecl;external;
procedure gdk_surface_destroy(surface:PTGdkSurface);cdecl;external;
function gdk_surface_is_destroyed(surface:PTGdkSurface):Tgboolean;cdecl;external;
function gdk_surface_get_display(surface:PTGdkSurface):^TGdkDisplay;cdecl;external;
procedure gdk_surface_hide(surface:PTGdkSurface);cdecl;external;
procedure gdk_surface_set_input_region(surface:PTGdkSurface; region:PTcairo_region_t);cdecl;external;
function gdk_surface_get_mapped(surface:PTGdkSurface):Tgboolean;cdecl;external;
procedure gdk_surface_set_cursor(surface:PTGdkSurface; cursor:PTGdkCursor);cdecl;external;
function gdk_surface_get_cursor(surface:PTGdkSurface):^TGdkCursor;cdecl;external;
procedure gdk_surface_set_device_cursor(surface:PTGdkSurface; device:PTGdkDevice; cursor:PTGdkCursor);cdecl;external;
function gdk_surface_get_device_cursor(surface:PTGdkSurface; device:PTGdkDevice):^TGdkCursor;cdecl;external;
function gdk_surface_get_width(surface:PTGdkSurface):longint;cdecl;external;
function gdk_surface_get_height(surface:PTGdkSurface):longint;cdecl;external;
function gdk_surface_translate_coordinates(from:PTGdkSurface; to:PTGdkSurface; x:PTdouble; y:PTdouble):Tgboolean;cdecl;external;
function gdk_surface_get_scale_factor(surface:PTGdkSurface):longint;cdecl;external;
function gdk_surface_get_device_position(surface:PTGdkSurface; device:PTGdkDevice; x:PTdouble; y:PTdouble; mask:PTGdkModifierType):Tgboolean;cdecl;external;
function gdk_surface_create_similar_surface(surface:PTGdkSurface; content:Tcairo_content_t; width:longint; height:longint):^Tcairo_surface_t;cdecl;external;
procedure gdk_surface_beep(surface:PTGdkSurface);cdecl;external;
procedure gdk_surface_queue_render(surface:PTGdkSurface);cdecl;external;
procedure gdk_surface_request_layout(surface:PTGdkSurface);cdecl;external;
function gdk_surface_get_frame_clock(surface:PTGdkSurface):^TGdkFrameClock;cdecl;external;
procedure gdk_surface_set_opaque_region(surface:PTGdkSurface; region:PTcairo_region_t);cdecl;external;
function gdk_surface_create_cairo_context(surface:PTGdkSurface):^TGdkCairoContext;cdecl;external;
function gdk_surface_create_gl_context(surface:PTGdkSurface; error:PPTGError):^TGdkGLContext;cdecl;external;
function gdk_surface_create_vulkan_context(surface:PTGdkSurface; error:PPTGError):^TGdkVulkanContext;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gdkvulkancontext.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gdkvulkancontext.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gdkvulkancontext.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGdkVulkanContext  = ^GdkVulkanContext;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GDK_VULKAN_CONTEXT__}
//// {$define __GDK_VULKAN_CONTEXT__}
//// {$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gdk/gdk.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdkversionmacros.h>}
//// {$include <gdk/gdktypes.h>}
//// {$ifdef GDK_RENDERING_VULKAN}
//// {$include <vulkan/vulkan.h>}
//// {$endif}

function GDK_TYPE_VULKAN_CONTEXT : longint; { return type might be wrong }

function GDK_VULKAN_CONTEXT(obj : longint) : longint;

function GDK_IS_VULKAN_CONTEXT(obj : longint) : longint;

function GDK_VULKAN_ERROR : longint; { return type might be wrong }

function gdk_vulkan_error_quark:TGQuark;cdecl;external;
function gdk_vulkan_context_get_type:TGType;cdecl;external;
//// {$ifndef __GI_SCANNER__}
//// {$ifdef GDK_RENDERING_VULKAN}

function gdk_vulkan_strerror(result:TVkResult):^char;cdecl;external;
function gdk_vulkan_context_get_instance(context:PTGdkVulkanContext):TVkInstance;cdecl;external;
function gdk_vulkan_context_get_physical_device(context:PTGdkVulkanContext):TVkPhysicalDevice;cdecl;external;
function gdk_vulkan_context_get_device(context:PTGdkVulkanContext):TVkDevice;cdecl;external;
function gdk_vulkan_context_get_queue(context:PTGdkVulkanContext):TVkQueue;cdecl;external;
function gdk_vulkan_context_get_queue_family_index(context:PTGdkVulkanContext):Tuint32_t;cdecl;external;
function gdk_vulkan_context_get_image_format(context:PTGdkVulkanContext):TVkFormat;cdecl;external;
function gdk_vulkan_context_get_n_images(context:PTGdkVulkanContext):Tuint32_t;cdecl;external;
function gdk_vulkan_context_get_image(context:PTGdkVulkanContext; id:Tguint):TVkImage;cdecl;external;
function gdk_vulkan_context_get_draw_index(context:PTGdkVulkanContext):Tuint32_t;cdecl;external;
function gdk_vulkan_context_get_draw_semaphore(context:PTGdkVulkanContext):TVkSemaphore;cdecl;external;
//// {$endif}

//// {$endif}

//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gdkdevicepad.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gdkdevicepad.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gdkdevicepad.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGdkDevicePad  = ^GdkDevicePad;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GDK_DEVICE_PAD_H__}
//// {$define __GDK_DEVICE_PAD_H__}
//// {$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gdk/gdk.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdkversionmacros.h>}
//// {$include <gdk/gdktypes.h>}

function GDK_TYPE_DEVICE_PAD : longint; { return type might be wrong }

function GDK_DEVICE_PAD(o : longint) : longint;

function GDK_IS_DEVICE_PAD(o : longint) : longint;

type
  T_GdkDevicePad = TGdkDevicePad;
  T_GdkDevicePadInterface = TGdkDevicePadInterface;


  TGdkDevicePadFeature = (GDK_DEVICE_PAD_FEATURE_BUTTON,GDK_DEVICE_PAD_FEATURE_RING,
    GDK_DEVICE_PAD_FEATURE_STRIP);

function gdk_device_pad_get_type:TGType;cdecl;external;
function gdk_device_pad_get_n_groups(pad:PTGdkDevicePad):longint;cdecl;external;
function gdk_device_pad_get_group_n_modes(pad:PTGdkDevicePad; group_idx:longint):longint;cdecl;external;
function gdk_device_pad_get_n_features(pad:PTGdkDevicePad; feature:TGdkDevicePadFeature):longint;cdecl;external;
function gdk_device_pad_get_feature_group(pad:PTGdkDevicePad; feature:TGdkDevicePadFeature; feature_idx:longint):longint;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gdktoplevelsize.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gdktoplevelsize.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gdktoplevelsize.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGdkToplevelSize  = ^GdkToplevelSize;
Plongint  = ^longint;
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
// /tmp/GTK4-Konverter-header/gdkpango.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gdkpango.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gdkpango.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Plongint  = ^longint;
PPangoLayout  = ^PangoLayout;
PPangoLayoutLine  = ^PangoLayoutLine;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GDK_PANGO_H__}
//// {$define __GDK_PANGO_H__}
//// {$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gdk/gdk.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdktypes.h>}
//// {$include <gdk/gdkversionmacros.h>}


function gdk_pango_layout_line_get_clip_region(line:PTPangoLayoutLine; x_origin:longint; y_origin:longint; index_ranges:Plongint; n_ranges:longint):^Tcairo_region_t;cdecl;external;
function gdk_pango_layout_get_clip_region(layout:PTPangoLayout; x_origin:longint; y_origin:longint; index_ranges:Plongint; n_ranges:longint):^Tcairo_region_t;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gdkenums.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gdkenums.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gdkenums.h
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




//// {$ifndef __GDK_ENUMS_H__}
//// {$define __GDK_ENUMS_H__}
//// {$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gdk/gdk.h> can be included directly."}
//// {$endif}
//// {$include <glib.h>}


type
  TGdkGravity = (GDK_GRAVITY_NORTH_WEST := 1,GDK_GRAVITY_NORTH,
    GDK_GRAVITY_NORTH_EAST,GDK_GRAVITY_WEST,
    GDK_GRAVITY_CENTER,GDK_GRAVITY_EAST,GDK_GRAVITY_SOUTH_WEST,
    GDK_GRAVITY_SOUTH,GDK_GRAVITY_SOUTH_EAST,
    GDK_GRAVITY_STATIC);



  TGdkModifierType = (GDK_SHIFT_MASK := 1 shl 0,GDK_LOCK_MASK := 1 shl 1,
    GDK_CONTROL_MASK := 1 shl 2,GDK_ALT_MASK := 1 shl 3,
    GDK_BUTTON1_MASK := 1 shl 8,GDK_BUTTON2_MASK := 1 shl 9,
    GDK_BUTTON3_MASK := 1 shl 10,GDK_BUTTON4_MASK := 1 shl 11,
    GDK_BUTTON5_MASK := 1 shl 12,GDK_SUPER_MASK := 1 shl 26,
    GDK_HYPER_MASK := 1 shl 27,GDK_META_MASK := 1 shl 28
    );


const
  GDK_MODIFIER_MASK = ((((((((((GDK_SHIFT_MASK or GDK_LOCK_MASK) or GDK_CONTROL_MASK) or GDK_ALT_MASK) or GDK_SUPER_MASK) or GDK_HYPER_MASK) or GDK_META_MASK) or GDK_BUTTON1_MASK) or GDK_BUTTON2_MASK) or GDK_BUTTON3_MASK) or GDK_BUTTON4_MASK) or GDK_BUTTON5_MASK;  

type
  TGdkGLError = (GDK_GL_ERROR_NOT_AVAILABLE,GDK_GL_ERROR_UNSUPPORTED_FORMAT,
    GDK_GL_ERROR_UNSUPPORTED_PROFILE,GDK_GL_ERROR_COMPILATION_FAILED,
    GDK_GL_ERROR_LINK_FAILED);


  TGdkVulkanError = (GDK_VULKAN_ERROR_UNSUPPORTED,GDK_VULKAN_ERROR_NOT_AVAILABLE
    );


  TGdkAxisUse = (GDK_AXIS_IGNORE,GDK_AXIS_X,GDK_AXIS_Y,GDK_AXIS_DELTA_X,
    GDK_AXIS_DELTA_Y,GDK_AXIS_PRESSURE,GDK_AXIS_XTILT,
    GDK_AXIS_YTILT,GDK_AXIS_WHEEL,GDK_AXIS_DISTANCE,
    GDK_AXIS_ROTATION,GDK_AXIS_SLIDER,GDK_AXIS_LAST
    );


  TGdkAxisFlags = (GDK_AXIS_FLAG_X := 1 shl GDK_AXIS_X,GDK_AXIS_FLAG_Y := 1 shl GDK_AXIS_Y,
    GDK_AXIS_FLAG_DELTA_X := 1 shl GDK_AXIS_DELTA_X,GDK_AXIS_FLAG_DELTA_Y := 1 shl GDK_AXIS_DELTA_Y,
    GDK_AXIS_FLAG_PRESSURE := 1 shl GDK_AXIS_PRESSURE,GDK_AXIS_FLAG_XTILT := 1 shl GDK_AXIS_XTILT,
    GDK_AXIS_FLAG_YTILT := 1 shl GDK_AXIS_YTILT,GDK_AXIS_FLAG_WHEEL := 1 shl GDK_AXIS_WHEEL,
    GDK_AXIS_FLAG_DISTANCE := 1 shl GDK_AXIS_DISTANCE,GDK_AXIS_FLAG_ROTATION := 1 shl GDK_AXIS_ROTATION,
    GDK_AXIS_FLAG_SLIDER := 1 shl GDK_AXIS_SLIDER);


  TGdkDragAction = (GDK_ACTION_COPY := 1 shl 0,GDK_ACTION_MOVE := 1 shl 1,
    GDK_ACTION_LINK := 1 shl 2,GDK_ACTION_ASK := 1 shl 3
    );


const
  GDK_ACTION_ALL = (GDK_ACTION_COPY or GDK_ACTION_MOVE) or GDK_ACTION_LINK;  

type
  TGdkMemoryFormat = (GDK_MEMORY_B8G8R8A8_PREMULTIPLIED,GDK_MEMORY_A8R8G8B8_PREMULTIPLIED,
    GDK_MEMORY_R8G8B8A8_PREMULTIPLIED,GDK_MEMORY_B8G8R8A8,
    GDK_MEMORY_A8R8G8B8,GDK_MEMORY_R8G8B8A8,
    GDK_MEMORY_A8B8G8R8,GDK_MEMORY_R8G8B8,GDK_MEMORY_B8G8R8,
    GDK_MEMORY_R16G16B16,GDK_MEMORY_R16G16B16A16_PREMULTIPLIED,
    GDK_MEMORY_R16G16B16A16,GDK_MEMORY_R16G16B16_FLOAT,
    GDK_MEMORY_R16G16B16A16_FLOAT_PREMULTIPLIED,
    GDK_MEMORY_R16G16B16A16_FLOAT,GDK_MEMORY_R32G32B32_FLOAT,
    GDK_MEMORY_R32G32B32A32_FLOAT_PREMULTIPLIED,
    GDK_MEMORY_R32G32B32A32_FLOAT,GDK_MEMORY_N_FORMATS
    );
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gdkcontentdeserializer.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gdkcontentdeserializer.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gdkcontentdeserializer.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGAsyncResult  = ^GAsyncResult;
PGCancellable  = ^GCancellable;
PGdkContentDeserializer  = ^GdkContentDeserializer;
PGdkContentFormats  = ^GdkContentFormats;
PGError  = ^GError;
PGInputStream  = ^GInputStream;
PGValue  = ^GValue;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_CONTENT_DESERIALIZER_H__}
//// {$define __GTK_CONTENT_DESERIALIZER_H__}
//// {$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gdk/gdk.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdkversionmacros.h>}
//// {$include <gdk/gdktypes.h>}

function GDK_TYPE_CONTENT_DESERIALIZER : longint; { return type might be wrong }

function GDK_CONTENT_DESERIALIZER(o : longint) : longint;

function GDK_IS_CONTENT_DESERIALIZER(o : longint) : longint;

type
  T_GdkContentDeserializer = TGdkContentDeserializer;


  TGdkContentDeserializeFunc = procedure (deserializer:PTGdkContentDeserializer);cdecl;

function gdk_content_deserializer_get_type:TGType;cdecl;external;
function gdk_content_deserializer_get_mime_type(deserializer:PTGdkContentDeserializer):^char;cdecl;external;
function gdk_content_deserializer_get_gtype(deserializer:PTGdkContentDeserializer):TGType;cdecl;external;
function gdk_content_deserializer_get_value(deserializer:PTGdkContentDeserializer):^TGValue;cdecl;external;
function gdk_content_deserializer_get_input_stream(deserializer:PTGdkContentDeserializer):^TGInputStream;cdecl;external;
function gdk_content_deserializer_get_priority(deserializer:PTGdkContentDeserializer):longint;cdecl;external;
function gdk_content_deserializer_get_cancellable(deserializer:PTGdkContentDeserializer):^TGCancellable;cdecl;external;
function gdk_content_deserializer_get_user_data(deserializer:PTGdkContentDeserializer):Tgpointer;cdecl;external;
procedure gdk_content_deserializer_set_task_data(deserializer:PTGdkContentDeserializer; data:Tgpointer; notify:TGDestroyNotify);cdecl;external;
function gdk_content_deserializer_get_task_data(deserializer:PTGdkContentDeserializer):Tgpointer;cdecl;external;
procedure gdk_content_deserializer_return_success(deserializer:PTGdkContentDeserializer);cdecl;external;
procedure gdk_content_deserializer_return_error(deserializer:PTGdkContentDeserializer; error:PTGError);cdecl;external;
function gdk_content_formats_union_deserialize_gtypes(formats:PTGdkContentFormats):^TGdkContentFormats;cdecl;external;
function gdk_content_formats_union_deserialize_mime_types(formats:PTGdkContentFormats):^TGdkContentFormats;cdecl;external;
procedure gdk_content_register_deserializer(mime_type:Pchar; _type:TGType; deserialize:TGdkContentDeserializeFunc; data:Tgpointer; notify:TGDestroyNotify);cdecl;external;
procedure gdk_content_deserialize_async(stream:PTGInputStream; mime_type:Pchar; _type:TGType; io_priority:longint; cancellable:PTGCancellable; 
            callback:TGAsyncReadyCallback; user_data:Tgpointer);cdecl;external;
function gdk_content_deserialize_finish(result:PTGAsyncResult; value:PTGValue; error:PPTGError):Tgboolean;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gdkdrawcontext.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gdkdrawcontext.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gdkdrawcontext.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pcairo_region_t  = ^cairo_region_t;
PGdkDrawContext  = ^GdkDrawContext;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GDK_DRAW_CONTEXT__}
//// {$define __GDK_DRAW_CONTEXT__}
//// {$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gdk/gdk.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdkversionmacros.h>}
//// {$include <gdk/gdktypes.h>}

function GDK_TYPE_DRAW_CONTEXT : longint; { return type might be wrong }

function GDK_DRAW_CONTEXT(obj : longint) : longint;

function GDK_IS_DRAW_CONTEXT(obj : longint) : longint;

function gdk_draw_context_get_type:TGType;cdecl;external;
function gdk_draw_context_get_display(context:PTGdkDrawContext):^TGdkDisplay;cdecl;external;
function gdk_draw_context_get_surface(context:PTGdkDrawContext):^TGdkSurface;cdecl;external;
procedure gdk_draw_context_begin_frame(context:PTGdkDrawContext; region:PTcairo_region_t);cdecl;external;
procedure gdk_draw_context_end_frame(context:PTGdkDrawContext);cdecl;external;
function gdk_draw_context_is_in_frame(context:PTGdkDrawContext):Tgboolean;cdecl;external;
function gdk_draw_context_get_frame_region(context:PTGdkDrawContext):^Tcairo_region_t;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gdkpaintable.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gdkpaintable.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gdkpaintable.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pdouble  = ^double;
PGdkPaintable  = ^GdkPaintable;
PGdkSnapshot  = ^GdkSnapshot;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GDK_PAINTABLE_H__}
//// {$define __GDK_PAINTABLE_H__}
//// {$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gdk/gdk.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdktypes.h>}
//// {$include <gdk/gdkversionmacros.h>}

function GDK_TYPE_PAINTABLE : longint; { return type might be wrong }


type
  TGdkPaintableFlags = (GDK_PAINTABLE_STATIC_SIZE := 1 shl 0,GDK_PAINTABLE_STATIC_CONTENTS := 1 shl 1
    );









  T_GdkPaintableInterface = record
      g_iface : TGTypeInterface;
      snapshot : procedure (paintable:PTGdkPaintable; snapshot:PTGdkSnapshot; width:Tdouble; height:Tdouble);cdecl;
      get_current_image : function (paintable:PTGdkPaintable):PTGdkPaintable;cdecl;
      get_flags : function (paintable:PTGdkPaintable):TGdkPaintableFlags;cdecl;
      get_intrinsic_width : function (paintable:PTGdkPaintable):longint;cdecl;
      get_intrinsic_height : function (paintable:PTGdkPaintable):longint;cdecl;
      get_intrinsic_aspect_ratio : function (paintable:PTGdkPaintable):Tdouble;cdecl;
    end;


procedure gdk_paintable_snapshot(paintable:PTGdkPaintable; snapshot:PTGdkSnapshot; width:Tdouble; height:Tdouble);cdecl;external;
function gdk_paintable_get_current_image(paintable:PTGdkPaintable):^TGdkPaintable;cdecl;external;
function gdk_paintable_get_flags(paintable:PTGdkPaintable):TGdkPaintableFlags;cdecl;external;
function gdk_paintable_get_intrinsic_width(paintable:PTGdkPaintable):longint;cdecl;external;
function gdk_paintable_get_intrinsic_height(paintable:PTGdkPaintable):longint;cdecl;external;
function gdk_paintable_get_intrinsic_aspect_ratio(paintable:PTGdkPaintable):Tdouble;cdecl;external;
procedure gdk_paintable_compute_concrete_size(paintable:PTGdkPaintable; specified_width:Tdouble; specified_height:Tdouble; default_width:Tdouble; default_height:Tdouble; 
            concrete_width:PTdouble; concrete_height:PTdouble);cdecl;external;

procedure gdk_paintable_invalidate_contents(paintable:PTGdkPaintable);cdecl;external;
procedure gdk_paintable_invalidate_size(paintable:PTGdkPaintable);cdecl;external;
function gdk_paintable_new_empty(intrinsic_width:longint; intrinsic_height:longint):^TGdkPaintable;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gdkgltexture.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gdkgltexture.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gdkgltexture.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGdkGLContext  = ^GdkGLContext;
PGdkGLTexture  = ^GdkGLTexture;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GDK_GL_TEXTURE_H__}
//// {$define __GDK_GL_TEXTURE_H__}
//// {$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gdk/gdk.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdkglcontext.h>}
//// {$include <gdk/gdktexture.h>}

function GDK_TYPE_GL_TEXTURE : longint; { return type might be wrong }

function GDK_GL_TEXTURE(obj : longint) : longint;

function GDK_IS_GL_TEXTURE(obj : longint) : longint;

type
  T_GdkGLTexture = TGdkGLTexture;
  T_GdkGLTextureClass = TGdkGLTextureClass;

function gdk_gl_texture_get_type:TGType;cdecl;external;
function gdk_gl_texture_new(context:PTGdkGLContext; id:Tguint; width:longint; height:longint; destroy:TGDestroyNotify; 
           data:Tgpointer):^TGdkTexture;cdecl;external;
procedure gdk_gl_texture_release(self:PTGdkGLTexture);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gdkcontentserializer.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gdkcontentserializer.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gdkcontentserializer.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGAsyncResult  = ^GAsyncResult;
PGCancellable  = ^GCancellable;
PGdkContentFormats  = ^GdkContentFormats;
PGdkContentSerializer  = ^GdkContentSerializer;
PGError  = ^GError;
PGOutputStream  = ^GOutputStream;
PGValue  = ^GValue;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_CONTENT_SERIALIZER_H__}
//// {$define __GTK_CONTENT_SERIALIZER_H__}
//// {$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gdk/gdk.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdkversionmacros.h>}
//// {$include <gdk/gdktypes.h>}

function GDK_TYPE_CONTENT_SERIALIZER : longint; { return type might be wrong }

function GDK_CONTENT_SERIALIZER(o : longint) : longint;

function GDK_IS_CONTENT_SERIALIZER(o : longint) : longint;

type
  T_GdkContentSerializer = TGdkContentSerializer;


  TGdkContentSerializeFunc = procedure (serializer:PTGdkContentSerializer);cdecl;

function gdk_content_serializer_get_type:TGType;cdecl;external;
function gdk_content_serializer_get_mime_type(serializer:PTGdkContentSerializer):^char;cdecl;external;
function gdk_content_serializer_get_gtype(serializer:PTGdkContentSerializer):TGType;cdecl;external;
function gdk_content_serializer_get_value(serializer:PTGdkContentSerializer):^TGValue;cdecl;external;
function gdk_content_serializer_get_output_stream(serializer:PTGdkContentSerializer):^TGOutputStream;cdecl;external;
function gdk_content_serializer_get_priority(serializer:PTGdkContentSerializer):longint;cdecl;external;
function gdk_content_serializer_get_cancellable(serializer:PTGdkContentSerializer):^TGCancellable;cdecl;external;
function gdk_content_serializer_get_user_data(serializer:PTGdkContentSerializer):Tgpointer;cdecl;external;
procedure gdk_content_serializer_set_task_data(serializer:PTGdkContentSerializer; data:Tgpointer; notify:TGDestroyNotify);cdecl;external;
function gdk_content_serializer_get_task_data(serializer:PTGdkContentSerializer):Tgpointer;cdecl;external;
procedure gdk_content_serializer_return_success(serializer:PTGdkContentSerializer);cdecl;external;
procedure gdk_content_serializer_return_error(serializer:PTGdkContentSerializer; error:PTGError);cdecl;external;
function gdk_content_formats_union_serialize_gtypes(formats:PTGdkContentFormats):^TGdkContentFormats;cdecl;external;
function gdk_content_formats_union_serialize_mime_types(formats:PTGdkContentFormats):^TGdkContentFormats;cdecl;external;
procedure gdk_content_register_serializer(_type:TGType; mime_type:Pchar; serialize:TGdkContentSerializeFunc; data:Tgpointer; notify:TGDestroyNotify);cdecl;external;
procedure gdk_content_serialize_async(stream:PTGOutputStream; mime_type:Pchar; value:PTGValue; io_priority:longint; cancellable:PTGCancellable; 
            callback:TGAsyncReadyCallback; user_data:Tgpointer);cdecl;external;
function gdk_content_serialize_finish(result:PTGAsyncResult; error:PPTGError):Tgboolean;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gdkcursor.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gdkcursor.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gdkcursor.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGdkCursor  = ^GdkCursor;
PGdkTexture  = ^GdkTexture;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef __GDK_CURSOR_H__}
//// {$define __GDK_CURSOR_H__}
//// {$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gdk/gdk.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdkversionmacros.h>}
//// {$include <gdk/gdktypes.h>}

function GDK_TYPE_CURSOR : longint; { return type might be wrong }

function GDK_CURSOR(object : longint) : longint;

function GDK_IS_CURSOR(object : longint) : longint;


function gdk_cursor_get_type:TGType;cdecl;external;
function gdk_cursor_new_from_texture(texture:PTGdkTexture; hotspot_x:longint; hotspot_y:longint; fallback:PTGdkCursor):^TGdkCursor;cdecl;external;
function gdk_cursor_new_from_name(name:Pchar; fallback:PTGdkCursor):^TGdkCursor;cdecl;external;
function gdk_cursor_get_fallback(cursor:PTGdkCursor):^TGdkCursor;cdecl;external;
function gdk_cursor_get_name(cursor:PTGdkCursor):^char;cdecl;external;
function gdk_cursor_get_texture(cursor:PTGdkCursor):^TGdkTexture;cdecl;external;
function gdk_cursor_get_hotspot_x(cursor:PTGdkCursor):longint;cdecl;external;
function gdk_cursor_get_hotspot_y(cursor:PTGdkCursor):longint;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gdkrectangle.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gdkrectangle.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gdkrectangle.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGdkRectangle  = ^GdkRectangle;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef __GDK_RECTANGLE_H__}
//// {$define __GDK_RECTANGLE_H__}
//// {$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gdk/gdk.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdktypes.h>}
//// {$include <gdk/gdkversionmacros.h>}


function gdk_rectangle_intersect(src1:PTGdkRectangle; src2:PTGdkRectangle; dest:PTGdkRectangle):Tgboolean;cdecl;external;
procedure gdk_rectangle_union(src1:PTGdkRectangle; src2:PTGdkRectangle; dest:PTGdkRectangle);cdecl;external;
function gdk_rectangle_equal(rect1:PTGdkRectangle; rect2:PTGdkRectangle):Tgboolean;cdecl;external;
function gdk_rectangle_contains_point(rect:PTGdkRectangle; x:longint; y:longint):Tgboolean;cdecl;external;
function gdk_rectangle_get_type:TGType;cdecl;external;
function GDK_TYPE_RECTANGLE : longint; { return type might be wrong }

//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gdktoplevel.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gdktoplevel.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gdktoplevel.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGdkDevice  = ^GdkDevice;
PGdkEvent  = ^GdkEvent;
PGdkSurface  = ^GdkSurface;
PGdkToplevel  = ^GdkToplevel;
PGdkToplevelLayout  = ^GdkToplevelLayout;
PGList  = ^GList;
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
// /tmp/GTK4-Konverter-header/gdkrgba.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gdkrgba.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gdkrgba.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGdkRGBA  = ^GdkRGBA;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef __GDK_RGBA_H__}
//// {$define __GDK_RGBA_H__}
//// {$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gdk/gdk.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdktypes.h>}
//// {$include <gdk/gdkversionmacros.h>}
type
  T_GdkRGBA = record
      red : single;
      green : single;
      blue : single;
      alpha : single;
    end;


function GDK_TYPE_RGBA : longint; { return type might be wrong }

function gdk_rgba_get_type:TGType;cdecl;external;
function gdk_rgba_copy(rgba:PTGdkRGBA):^TGdkRGBA;cdecl;external;
procedure gdk_rgba_free(rgba:PTGdkRGBA);cdecl;external;
function gdk_rgba_is_clear(rgba:PTGdkRGBA):Tgboolean;cdecl;external;
function gdk_rgba_is_opaque(rgba:PTGdkRGBA):Tgboolean;cdecl;external;
function gdk_rgba_hash(p:Tgconstpointer):Tguint;cdecl;external;
function gdk_rgba_equal(p1:Tgconstpointer; p2:Tgconstpointer):Tgboolean;cdecl;external;
function gdk_rgba_parse(rgba:PTGdkRGBA; spec:Pchar):Tgboolean;cdecl;external;
function gdk_rgba_to_string(rgba:PTGdkRGBA):^char;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gdkkeys.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gdkkeys.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gdkkeys.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
Pguint  = ^guint;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef __GDK_KEYS_H__}
//// {$define __GDK_KEYS_H__}
//// {$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gdk/gdk.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdkversionmacros.h>}
//// {$include <gdk/gdktypes.h>}

function gdk_keyval_name(keyval:Tguint):^char;cdecl;external;
function gdk_keyval_from_name(keyval_name:Pchar):Tguint;cdecl;external;
procedure gdk_keyval_convert_case(symbol:Tguint; lower:PTguint; upper:PTguint);cdecl;external;
function gdk_keyval_to_upper(keyval:Tguint):Tguint;cdecl;external;
function gdk_keyval_to_lower(keyval:Tguint):Tguint;cdecl;external;
function gdk_keyval_is_upper(keyval:Tguint):Tgboolean;cdecl;external;
function gdk_keyval_is_lower(keyval:Tguint):Tgboolean;cdecl;external;
function gdk_keyval_to_unicode(keyval:Tguint):Tguint32;cdecl;external;
function gdk_unicode_to_keyval(wc:Tguint32):Tguint;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gdkevents.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gdkevents.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gdkevents.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pdouble  = ^double;
PGdkEvent  = ^GdkEvent;
PGdkModifierType  = ^GdkModifierType;
Pguint  = ^guint;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef __GDK_EVENTS_H__}
//// {$define __GDK_EVENTS_H__}
//// {$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gdk/gdk.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdkdevice.h>}
//// {$include <gdk/gdkdevicetool.h>}
//// {$include <gdk/gdkdrag.h>}
//// {$include <gdk/gdkenums.h>}
//// {$include <gdk/gdktypes.h>}
//// {$include <gdk/gdkversionmacros.h>}

function GDK_TYPE_EVENT : longint; { return type might be wrong }

function GDK_TYPE_EVENT_SEQUENCE : longint; { return type might be wrong }

function GDK_IS_EVENT(obj : longint) : longint;

function GDK_EVENT(obj : longint) : longint;

function GDK_IS_EVENT_TYPE(event,_type : longint) : longint;


const
  GDK_PRIORITY_EVENTS = G_PRIORITY_DEFAULT;  

  GDK_PRIORITY_REDRAW = G_PRIORITY_HIGH_IDLE+20;  

  GDK_EVENT_PROPAGATE = _FALSE;  

  GDK_EVENT_STOP = _TRUE;  

  GDK_BUTTON_PRIMARY = 1;  

  GDK_BUTTON_MIDDLE = 2;  

  GDK_BUTTON_SECONDARY = 3;  
type
  T_GdkEventSequence = TGdkEventSequence;
  T_GdkEvent = TGdkEvent;

function GDK_TYPE_BUTTON_EVENT : longint; { return type might be wrong }

function GDK_TYPE_CROSSING_EVENT : longint; { return type might be wrong }

function GDK_TYPE_DELETE_EVENT : longint; { return type might be wrong }

function GDK_TYPE_DND_EVENT : longint; { return type might be wrong }

function GDK_TYPE_FOCUS_EVENT : longint; { return type might be wrong }

function GDK_TYPE_GRAB_BROKEN_EVENT : longint; { return type might be wrong }

function GDK_TYPE_KEY_EVENT : longint; { return type might be wrong }

function GDK_TYPE_MOTION_EVENT : longint; { return type might be wrong }

function GDK_TYPE_PAD_EVENT : longint; { return type might be wrong }

function GDK_TYPE_PROXIMITY_EVENT : longint; { return type might be wrong }

function GDK_TYPE_SCROLL_EVENT : longint; { return type might be wrong }

function GDK_TYPE_TOUCH_EVENT : longint; { return type might be wrong }

function GDK_TYPE_TOUCHPAD_EVENT : longint; { return type might be wrong }

type
  T_GdkButtonEvent = TGdkButtonEvent;
  T_GdkCrossingEvent = TGdkCrossingEvent;
  T_GdkDeleteEvent = TGdkDeleteEvent;
  T_GdkDNDEvent = TGdkDNDEvent;
  T_GdkFocusEvent = TGdkFocusEvent;
  T_GdkGrabBrokenEvent = TGdkGrabBrokenEvent;
  T_GdkKeyEvent = TGdkKeyEvent;
  T_GdkMotionEvent = TGdkMotionEvent;
  T_GdkPadEvent = TGdkPadEvent;
  T_GdkProximityEvent = TGdkProximityEvent;
  T_GdkScrollEvent = TGdkScrollEvent;
  T_GdkTouchEvent = TGdkTouchEvent;
  T_GdkTouchpadEvent = TGdkTouchpadEvent;



  TGdkEventType = (GDK_DELETE,GDK_MOTION_NOTIFY,GDK_BUTTON_PRESS,
    GDK_BUTTON_RELEASE,GDK_KEY_PRESS,GDK_KEY_RELEASE,
    GDK_ENTER_NOTIFY,GDK_LEAVE_NOTIFY,GDK_FOCUS_CHANGE,
    GDK_PROXIMITY_IN,GDK_PROXIMITY_OUT,GDK_DRAG_ENTER,
    GDK_DRAG_LEAVE,GDK_DRAG_MOTION,GDK_DROP_START,
    GDK_SCROLL,GDK_GRAB_BROKEN,GDK_TOUCH_BEGIN,
    GDK_TOUCH_UPDATE,GDK_TOUCH_END,GDK_TOUCH_CANCEL,
    GDK_TOUCHPAD_SWIPE,GDK_TOUCHPAD_PINCH,GDK_PAD_BUTTON_PRESS,
    GDK_PAD_BUTTON_RELEASE,GDK_PAD_RING,GDK_PAD_STRIP,
    GDK_PAD_GROUP_MODE,GDK_TOUCHPAD_HOLD,GDK_EVENT_LAST
    );


  TGdkTouchpadGesturePhase = (GDK_TOUCHPAD_GESTURE_PHASE_BEGIN,GDK_TOUCHPAD_GESTURE_PHASE_UPDATE,
    GDK_TOUCHPAD_GESTURE_PHASE_END,GDK_TOUCHPAD_GESTURE_PHASE_CANCEL
    );


  TGdkScrollDirection = (GDK_SCROLL_UP,GDK_SCROLL_DOWN,GDK_SCROLL_LEFT,
    GDK_SCROLL_RIGHT,GDK_SCROLL_SMOOTH);


  TGdkScrollUnit = (GDK_SCROLL_UNIT_WHEEL,GDK_SCROLL_UNIT_SURFACE
    );


  TGdkNotifyType = (GDK_NOTIFY_ANCESTOR := 0,GDK_NOTIFY_VIRTUAL := 1,
    GDK_NOTIFY_INFERIOR := 2,GDK_NOTIFY_NONLINEAR := 3,
    GDK_NOTIFY_NONLINEAR_VIRTUAL := 4,GDK_NOTIFY_UNKNOWN := 5
    );


  TGdkCrossingMode = (GDK_CROSSING_NORMAL,GDK_CROSSING_GRAB,GDK_CROSSING_UNGRAB,
    GDK_CROSSING_GTK_GRAB,GDK_CROSSING_GTK_UNGRAB,
    GDK_CROSSING_STATE_CHANGED,GDK_CROSSING_TOUCH_BEGIN,
    GDK_CROSSING_TOUCH_END,GDK_CROSSING_DEVICE_SWITCH
    );

function gdk_event_get_type:TGType;cdecl;external;
function gdk_event_sequence_get_type:TGType;cdecl;external;
function gdk_event_ref(event:PTGdkEvent):^TGdkEvent;cdecl;external;
procedure gdk_event_unref(event:PTGdkEvent);cdecl;external;
function gdk_event_get_event_type(event:PTGdkEvent):TGdkEventType;cdecl;external;
function gdk_event_get_surface(event:PTGdkEvent):^TGdkSurface;cdecl;external;
function gdk_event_get_seat(event:PTGdkEvent):^TGdkSeat;cdecl;external;
function gdk_event_get_device(event:PTGdkEvent):^TGdkDevice;cdecl;external;
function gdk_event_get_device_tool(event:PTGdkEvent):^TGdkDeviceTool;cdecl;external;
function gdk_event_get_time(event:PTGdkEvent):Tguint32;cdecl;external;
function gdk_event_get_display(event:PTGdkEvent):^TGdkDisplay;cdecl;external;
function gdk_event_get_event_sequence(event:PTGdkEvent):^TGdkEventSequence;cdecl;external;
function gdk_event_get_modifier_state(event:PTGdkEvent):TGdkModifierType;cdecl;external;
function gdk_event_get_position(event:PTGdkEvent; x:PTdouble; y:PTdouble):Tgboolean;cdecl;external;
function gdk_event_get_axes(event:PTGdkEvent; axes:PPTdouble; n_axes:PTguint):Tgboolean;cdecl;external;
function gdk_event_get_axis(event:PTGdkEvent; axis_use:TGdkAxisUse; value:PTdouble):Tgboolean;cdecl;external;
function gdk_event_get_history(event:PTGdkEvent; out_n_coords:PTguint):^TGdkTimeCoord;cdecl;external;
function gdk_event_get_pointer_emulated(event:PTGdkEvent):Tgboolean;cdecl;external;
function gdk_button_event_get_type:TGType;cdecl;external;
function gdk_button_event_get_button(event:PTGdkEvent):Tguint;cdecl;external;
function gdk_scroll_event_get_type:TGType;cdecl;external;
function gdk_scroll_event_get_direction(event:PTGdkEvent):TGdkScrollDirection;cdecl;external;
procedure gdk_scroll_event_get_deltas(event:PTGdkEvent; delta_x:PTdouble; delta_y:PTdouble);cdecl;external;
function gdk_scroll_event_get_unit(event:PTGdkEvent):TGdkScrollUnit;cdecl;external;
function gdk_scroll_event_is_stop(event:PTGdkEvent):Tgboolean;cdecl;external;
function gdk_key_event_get_type:TGType;cdecl;external;
function gdk_key_event_get_keyval(event:PTGdkEvent):Tguint;cdecl;external;
function gdk_key_event_get_keycode(event:PTGdkEvent):Tguint;cdecl;external;
function gdk_key_event_get_consumed_modifiers(event:PTGdkEvent):TGdkModifierType;cdecl;external;
function gdk_key_event_get_layout(event:PTGdkEvent):Tguint;cdecl;external;
function gdk_key_event_get_level(event:PTGdkEvent):Tguint;cdecl;external;
function gdk_key_event_is_modifier(event:PTGdkEvent):Tgboolean;cdecl;external;
function gdk_focus_event_get_type:TGType;cdecl;external;
function gdk_focus_event_get_in(event:PTGdkEvent):Tgboolean;cdecl;external;
function gdk_touch_event_get_type:TGType;cdecl;external;
function gdk_touch_event_get_emulating_pointer(event:PTGdkEvent):Tgboolean;cdecl;external;
function gdk_crossing_event_get_type:TGType;cdecl;external;
function gdk_crossing_event_get_mode(event:PTGdkEvent):TGdkCrossingMode;cdecl;external;
function gdk_crossing_event_get_detail(event:PTGdkEvent):TGdkNotifyType;cdecl;external;
function gdk_crossing_event_get_focus(event:PTGdkEvent):Tgboolean;cdecl;external;
function gdk_touchpad_event_get_type:TGType;cdecl;external;
function gdk_touchpad_event_get_gesture_phase(event:PTGdkEvent):TGdkTouchpadGesturePhase;cdecl;external;
function gdk_touchpad_event_get_n_fingers(event:PTGdkEvent):Tguint;cdecl;external;
procedure gdk_touchpad_event_get_deltas(event:PTGdkEvent; dx:PTdouble; dy:PTdouble);cdecl;external;
function gdk_touchpad_event_get_pinch_angle_delta(event:PTGdkEvent):Tdouble;cdecl;external;
function gdk_touchpad_event_get_pinch_scale(event:PTGdkEvent):Tdouble;cdecl;external;
function gdk_pad_event_get_type:TGType;cdecl;external;
function gdk_pad_event_get_button(event:PTGdkEvent):Tguint;cdecl;external;
procedure gdk_pad_event_get_axis_value(event:PTGdkEvent; index:PTguint; value:PTdouble);cdecl;external;
procedure gdk_pad_event_get_group_mode(event:PTGdkEvent; group:PTguint; mode:PTguint);cdecl;external;
function gdk_dnd_event_get_type:TGType;cdecl;external;
function gdk_dnd_event_get_drop(event:PTGdkEvent):^TGdkDrop;cdecl;external;
function gdk_grab_broken_event_get_type:TGType;cdecl;external;
function gdk_grab_broken_event_get_grab_surface(event:PTGdkEvent):^TGdkSurface;cdecl;external;
function gdk_grab_broken_event_get_implicit(event:PTGdkEvent):Tgboolean;cdecl;external;
function gdk_motion_event_get_type:TGType;cdecl;external;
function gdk_delete_event_get_type:TGType;cdecl;external;
function gdk_proximity_event_get_type:TGType;cdecl;external;
function gdk_event_triggers_context_menu(event:PTGdkEvent):Tgboolean;cdecl;external;
function gdk_events_get_distance(event1:PTGdkEvent; event2:PTGdkEvent; distance:PTdouble):Tgboolean;cdecl;external;
function gdk_events_get_angle(event1:PTGdkEvent; event2:PTGdkEvent; angle:PTdouble):Tgboolean;cdecl;external;
function gdk_events_get_center(event1:PTGdkEvent; event2:PTGdkEvent; x:PTdouble; y:PTdouble):Tgboolean;cdecl;external;

type
  TGdkKeyMatch = (GDK_KEY_MATCH_NONE,GDK_KEY_MATCH_PARTIAL,
    GDK_KEY_MATCH_EXACT);

function gdk_key_event_matches(event:PTGdkEvent; keyval:Tguint; modifiers:TGdkModifierType):TGdkKeyMatch;cdecl;external;
function gdk_key_event_get_match(event:PTGdkEvent; keyval:PTguint; modifiers:PTGdkModifierType):Tgboolean;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gdkdragsurface.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gdkdragsurface.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gdkdragsurface.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGdkDragSurface  = ^GdkDragSurface;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GDK_DRAG_SURFACE_H__}
//// {$define __GDK_DRAG_SURFACE_H__}
//// {$if !defined(__GDK_H_INSIDE__) && !defined(GTK_COMPILATION)}
//// {$error "Only <gdk/gdk.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdksurface.h>}

function GDK_TYPE_DRAG_SURFACE : longint; { return type might be wrong }

function gdk_drag_surface_present(drag_surface:PTGdkDragSurface; width:longint; height:longint):Tgboolean;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gdkkeysyms.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gdkkeysyms.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gdkkeysyms.h
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





//// {$ifndef __GDK_KEYSYMS_H__}
//// {$define __GDK_KEYSYMS_H__}

const
  GDK_KEY_VoidSymbol = $ffffff;  
  GDK_KEY_BackSpace = $ff08;  
  GDK_KEY_Tab = $ff09;  
  GDK_KEY_Linefeed = $ff0a;  
  GDK_KEY_Clear = $ff0b;  
  GDK_KEY_Return = $ff0d;  
  GDK_KEY_Pause = $ff13;  
  GDK_KEY_Scroll_Lock = $ff14;  
  GDK_KEY_Sys_Req = $ff15;  
  GDK_KEY_Escape = $ff1b;  
  GDK_KEY_Delete = $ffff;  
  GDK_KEY_Multi_key = $ff20;  
  GDK_KEY_Codeinput = $ff37;  
  GDK_KEY_SingleCandidate = $ff3c;  
  GDK_KEY_MultipleCandidate = $ff3d;  
  GDK_KEY_PreviousCandidate = $ff3e;  
  GDK_KEY_Kanji = $ff21;  
  GDK_KEY_Muhenkan = $ff22;  
  GDK_KEY_Henkan_Mode = $ff23;  
  GDK_KEY_Henkan = $ff23;  
  GDK_KEY_Romaji = $ff24;  
  GDK_KEY_Hiragana = $ff25;  
  GDK_KEY_Katakana = $ff26;  
  GDK_KEY_Hiragana_Katakana = $ff27;  
  GDK_KEY_Zenkaku = $ff28;  
  GDK_KEY_Hankaku = $ff29;  
  GDK_KEY_Zenkaku_Hankaku = $ff2a;  
  GDK_KEY_Touroku = $ff2b;  
  GDK_KEY_Massyo = $ff2c;  
  GDK_KEY_Kana_Lock = $ff2d;  
  GDK_KEY_Kana_Shift = $ff2e;  
  GDK_KEY_Eisu_Shift = $ff2f;  
  GDK_KEY_Eisu_toggle = $ff30;  
  GDK_KEY_Kanji_Bangou = $ff37;  
  GDK_KEY_Zen_Koho = $ff3d;  
  GDK_KEY_Mae_Koho = $ff3e;  
  GDK_KEY_Home = $ff50;  
  GDK_KEY_Left = $ff51;  
  GDK_KEY_Up = $ff52;  
  GDK_KEY_Right = $ff53;  
  GDK_KEY_Down = $ff54;  
  GDK_KEY_Prior = $ff55;  
  GDK_KEY_Page_Up = $ff55;  
  GDK_KEY_Next = $ff56;  
  GDK_KEY_Page_Down = $ff56;  
  GDK_KEY_End = $ff57;  
  GDK_KEY_Begin = $ff58;  
  GDK_KEY_Select = $ff60;  
  GDK_KEY_Print = $ff61;  
  GDK_KEY_Execute = $ff62;  
  GDK_KEY_Insert = $ff63;  
  GDK_KEY_Undo = $ff65;  
  GDK_KEY_Redo = $ff66;  
  GDK_KEY_Menu = $ff67;  
  GDK_KEY_Find = $ff68;  
  GDK_KEY_Cancel = $ff69;  
  GDK_KEY_Help = $ff6a;  
  GDK_KEY_Break = $ff6b;  
  GDK_KEY_Mode_switch = $ff7e;  
  GDK_KEY_script_switch = $ff7e;  
  GDK_KEY_Num_Lock = $ff7f;  
  GDK_KEY_KP_Space = $ff80;  
  GDK_KEY_KP_Tab = $ff89;  
  GDK_KEY_KP_Enter = $ff8d;  
  GDK_KEY_KP_F1 = $ff91;  
  GDK_KEY_KP_F2 = $ff92;  
  GDK_KEY_KP_F3 = $ff93;  
  GDK_KEY_KP_F4 = $ff94;  
  GDK_KEY_KP_Home = $ff95;  
  GDK_KEY_KP_Left = $ff96;  
  GDK_KEY_KP_Up = $ff97;  
  GDK_KEY_KP_Right = $ff98;  
  GDK_KEY_KP_Down = $ff99;  
  GDK_KEY_KP_Prior = $ff9a;  
  GDK_KEY_KP_Page_Up = $ff9a;  
  GDK_KEY_KP_Next = $ff9b;  
  GDK_KEY_KP_Page_Down = $ff9b;  
  GDK_KEY_KP_End = $ff9c;  
  GDK_KEY_KP_Begin = $ff9d;  
  GDK_KEY_KP_Insert = $ff9e;  
  GDK_KEY_KP_Delete = $ff9f;  
  GDK_KEY_KP_Equal = $ffbd;  
  GDK_KEY_KP_Multiply = $ffaa;  
  GDK_KEY_KP_Add = $ffab;  
  GDK_KEY_KP_Separator = $ffac;  
  GDK_KEY_KP_Subtract = $ffad;  
  GDK_KEY_KP_Decimal = $ffae;  
  GDK_KEY_KP_Divide = $ffaf;  
  GDK_KEY_KP_0 = $ffb0;  
  GDK_KEY_KP_1 = $ffb1;  
  GDK_KEY_KP_2 = $ffb2;  
  GDK_KEY_KP_3 = $ffb3;  
  GDK_KEY_KP_4 = $ffb4;  
  GDK_KEY_KP_5 = $ffb5;  
  GDK_KEY_KP_6 = $ffb6;  
  GDK_KEY_KP_7 = $ffb7;  
  GDK_KEY_KP_8 = $ffb8;  
  GDK_KEY_KP_9 = $ffb9;  
  GDK_KEY_F1 = $ffbe;  
  GDK_KEY_F2 = $ffbf;  
  GDK_KEY_F3 = $ffc0;  
  GDK_KEY_F4 = $ffc1;  
  GDK_KEY_F5 = $ffc2;  
  GDK_KEY_F6 = $ffc3;  
  GDK_KEY_F7 = $ffc4;  
  GDK_KEY_F8 = $ffc5;  
  GDK_KEY_F9 = $ffc6;  
  GDK_KEY_F10 = $ffc7;  
  GDK_KEY_F11 = $ffc8;  
  GDK_KEY_L1 = $ffc8;  
  GDK_KEY_F12 = $ffc9;  
  GDK_KEY_L2 = $ffc9;  
  GDK_KEY_F13 = $ffca;  
  GDK_KEY_L3 = $ffca;  
  GDK_KEY_F14 = $ffcb;  
  GDK_KEY_L4 = $ffcb;  
  GDK_KEY_F15 = $ffcc;  
  GDK_KEY_L5 = $ffcc;  
  GDK_KEY_F16 = $ffcd;  
  GDK_KEY_L6 = $ffcd;  
  GDK_KEY_F17 = $ffce;  
  GDK_KEY_L7 = $ffce;  
  GDK_KEY_F18 = $ffcf;  
  GDK_KEY_L8 = $ffcf;  
  GDK_KEY_F19 = $ffd0;  
  GDK_KEY_L9 = $ffd0;  
  GDK_KEY_F20 = $ffd1;  
  GDK_KEY_L10 = $ffd1;  
  GDK_KEY_F21 = $ffd2;  
  GDK_KEY_R1 = $ffd2;  
  GDK_KEY_F22 = $ffd3;  
  GDK_KEY_R2 = $ffd3;  
  GDK_KEY_F23 = $ffd4;  
  GDK_KEY_R3 = $ffd4;  
  GDK_KEY_F24 = $ffd5;  
  GDK_KEY_R4 = $ffd5;  
  GDK_KEY_F25 = $ffd6;  
  GDK_KEY_R5 = $ffd6;  
  GDK_KEY_F26 = $ffd7;  
  GDK_KEY_R6 = $ffd7;  
  GDK_KEY_F27 = $ffd8;  
  GDK_KEY_R7 = $ffd8;  
  GDK_KEY_F28 = $ffd9;  
  GDK_KEY_R8 = $ffd9;  
  GDK_KEY_F29 = $ffda;  
  GDK_KEY_R9 = $ffda;  
  GDK_KEY_F30 = $ffdb;  
  GDK_KEY_R10 = $ffdb;  
  GDK_KEY_F31 = $ffdc;  
  GDK_KEY_R11 = $ffdc;  
  GDK_KEY_F32 = $ffdd;  
  GDK_KEY_R12 = $ffdd;  
  GDK_KEY_F33 = $ffde;  
  GDK_KEY_R13 = $ffde;  
  GDK_KEY_F34 = $ffdf;  
  GDK_KEY_R14 = $ffdf;  
  GDK_KEY_F35 = $ffe0;  
  GDK_KEY_R15 = $ffe0;  
  GDK_KEY_Shift_L = $ffe1;  
  GDK_KEY_Shift_R = $ffe2;  
  GDK_KEY_Control_L = $ffe3;  
  GDK_KEY_Control_R = $ffe4;  
  GDK_KEY_Caps_Lock = $ffe5;  
  GDK_KEY_Shift_Lock = $ffe6;  
  GDK_KEY_Meta_L = $ffe7;  
  GDK_KEY_Meta_R = $ffe8;  
  GDK_KEY_Alt_L = $ffe9;  
  GDK_KEY_Alt_R = $ffea;  
  GDK_KEY_Super_L = $ffeb;  
  GDK_KEY_Super_R = $ffec;  
  GDK_KEY_Hyper_L = $ffed;  
  GDK_KEY_Hyper_R = $ffee;  
  GDK_KEY_ISO_Lock = $fe01;  
  GDK_KEY_ISO_Level2_Latch = $fe02;  
  GDK_KEY_ISO_Level3_Shift = $fe03;  
  GDK_KEY_ISO_Level3_Latch = $fe04;  
  GDK_KEY_ISO_Level3_Lock = $fe05;  
  GDK_KEY_ISO_Level5_Shift = $fe11;  
  GDK_KEY_ISO_Level5_Latch = $fe12;  
  GDK_KEY_ISO_Level5_Lock = $fe13;  
  GDK_KEY_ISO_Group_Shift = $ff7e;  
  GDK_KEY_ISO_Group_Latch = $fe06;  
  GDK_KEY_ISO_Group_Lock = $fe07;  
  GDK_KEY_ISO_Next_Group = $fe08;  
  GDK_KEY_ISO_Next_Group_Lock = $fe09;  
  GDK_KEY_ISO_Prev_Group = $fe0a;  
  GDK_KEY_ISO_Prev_Group_Lock = $fe0b;  
  GDK_KEY_ISO_First_Group = $fe0c;  
  GDK_KEY_ISO_First_Group_Lock = $fe0d;  
  GDK_KEY_ISO_Last_Group = $fe0e;  
  GDK_KEY_ISO_Last_Group_Lock = $fe0f;  
  GDK_KEY_ISO_Left_Tab = $fe20;  
  GDK_KEY_ISO_Move_Line_Up = $fe21;  
  GDK_KEY_ISO_Move_Line_Down = $fe22;  
  GDK_KEY_ISO_Partial_Line_Up = $fe23;  
  GDK_KEY_ISO_Partial_Line_Down = $fe24;  
  GDK_KEY_ISO_Partial_Space_Left = $fe25;  
  GDK_KEY_ISO_Partial_Space_Right = $fe26;  
  GDK_KEY_ISO_Set_Margin_Left = $fe27;  
  GDK_KEY_ISO_Set_Margin_Right = $fe28;  
  GDK_KEY_ISO_Release_Margin_Left = $fe29;  
  GDK_KEY_ISO_Release_Margin_Right = $fe2a;  
  GDK_KEY_ISO_Release_Both_Margins = $fe2b;  
  GDK_KEY_ISO_Fast_Cursor_Left = $fe2c;  
  GDK_KEY_ISO_Fast_Cursor_Right = $fe2d;  
  GDK_KEY_ISO_Fast_Cursor_Up = $fe2e;  
  GDK_KEY_ISO_Fast_Cursor_Down = $fe2f;  
  GDK_KEY_ISO_Continuous_Underline = $fe30;  
  GDK_KEY_ISO_Discontinuous_Underline = $fe31;  
  GDK_KEY_ISO_Emphasize = $fe32;  
  GDK_KEY_ISO_Center_Object = $fe33;  
  GDK_KEY_ISO_Enter = $fe34;  
  GDK_KEY_dead_grave = $fe50;  
  GDK_KEY_dead_acute = $fe51;  
  GDK_KEY_dead_circumflex = $fe52;  
  GDK_KEY_dead_tilde = $fe53;  
  GDK_KEY_dead_perispomeni = $fe53;  
  GDK_KEY_dead_macron = $fe54;  
  GDK_KEY_dead_breve = $fe55;  
  GDK_KEY_dead_abovedot = $fe56;  
  GDK_KEY_dead_diaeresis = $fe57;  
  GDK_KEY_dead_abovering = $fe58;  
  GDK_KEY_dead_doubleacute = $fe59;  
  GDK_KEY_dead_caron = $fe5a;  
  GDK_KEY_dead_cedilla = $fe5b;  
  GDK_KEY_dead_ogonek = $fe5c;  
  GDK_KEY_dead_iota = $fe5d;  
  GDK_KEY_dead_voiced_sound = $fe5e;  
  GDK_KEY_dead_semivoiced_sound = $fe5f;  
  GDK_KEY_dead_belowdot = $fe60;  
  GDK_KEY_dead_hook = $fe61;  
  GDK_KEY_dead_horn = $fe62;  
  GDK_KEY_dead_stroke = $fe63;  
  GDK_KEY_dead_abovecomma = $fe64;  
  GDK_KEY_dead_psili = $fe64;  
  GDK_KEY_dead_abovereversedcomma = $fe65;  
  GDK_KEY_dead_dasia = $fe65;  
  GDK_KEY_dead_doublegrave = $fe66;  
  GDK_KEY_dead_belowring = $fe67;  
  GDK_KEY_dead_belowmacron = $fe68;  
  GDK_KEY_dead_belowcircumflex = $fe69;  
  GDK_KEY_dead_belowtilde = $fe6a;  
  GDK_KEY_dead_belowbreve = $fe6b;  
  GDK_KEY_dead_belowdiaeresis = $fe6c;  
  GDK_KEY_dead_invertedbreve = $fe6d;  
  GDK_KEY_dead_belowcomma = $fe6e;  
  GDK_KEY_dead_currency = $fe6f;  
  GDK_KEY_dead_lowline = $fe90;  
  GDK_KEY_dead_aboveverticalline = $fe91;  
  GDK_KEY_dead_belowverticalline = $fe92;  
  GDK_KEY_dead_longsolidusoverlay = $fe93;  
  GDK_KEY_dead_a = $fe80;  
  GDK_KEY_dead_A = $fe81;  
  GDK_KEY_dead_e = $fe82;  
  GDK_KEY_dead_E = $fe83;  
  GDK_KEY_dead_i = $fe84;  
  GDK_KEY_dead_I = $fe85;  
  GDK_KEY_dead_o = $fe86;  
  GDK_KEY_dead_O = $fe87;  
  GDK_KEY_dead_u = $fe88;  
  GDK_KEY_dead_U = $fe89;  
  GDK_KEY_dead_small_schwa = $fe8a;  
  GDK_KEY_dead_capital_schwa = $fe8b;  
  GDK_KEY_dead_greek = $fe8c;  
  GDK_KEY_First_Virtual_Screen = $fed0;  
  GDK_KEY_Prev_Virtual_Screen = $fed1;  
  GDK_KEY_Next_Virtual_Screen = $fed2;  
  GDK_KEY_Last_Virtual_Screen = $fed4;  
  GDK_KEY_Terminate_Server = $fed5;  
  GDK_KEY_AccessX_Enable = $fe70;  
  GDK_KEY_AccessX_Feedback_Enable = $fe71;  
  GDK_KEY_RepeatKeys_Enable = $fe72;  
  GDK_KEY_SlowKeys_Enable = $fe73;  
  GDK_KEY_BounceKeys_Enable = $fe74;  
  GDK_KEY_StickyKeys_Enable = $fe75;  
  GDK_KEY_MouseKeys_Enable = $fe76;  
  GDK_KEY_MouseKeys_Accel_Enable = $fe77;  
  GDK_KEY_Overlay1_Enable = $fe78;  
  GDK_KEY_Overlay2_Enable = $fe79;  
  GDK_KEY_AudibleBell_Enable = $fe7a;  
  GDK_KEY_Pointer_Left = $fee0;  
  GDK_KEY_Pointer_Right = $fee1;  
  GDK_KEY_Pointer_Up = $fee2;  
  GDK_KEY_Pointer_Down = $fee3;  
  GDK_KEY_Pointer_UpLeft = $fee4;  
  GDK_KEY_Pointer_UpRight = $fee5;  
  GDK_KEY_Pointer_DownLeft = $fee6;  
  GDK_KEY_Pointer_DownRight = $fee7;  
  GDK_KEY_Pointer_Button_Dflt = $fee8;  
  GDK_KEY_Pointer_Button1 = $fee9;  
  GDK_KEY_Pointer_Button2 = $feea;  
  GDK_KEY_Pointer_Button3 = $feeb;  
  GDK_KEY_Pointer_Button4 = $feec;  
  GDK_KEY_Pointer_Button5 = $feed;  
  GDK_KEY_Pointer_DblClick_Dflt = $feee;  
  GDK_KEY_Pointer_DblClick1 = $feef;  
  GDK_KEY_Pointer_DblClick2 = $fef0;  
  GDK_KEY_Pointer_DblClick3 = $fef1;  
  GDK_KEY_Pointer_DblClick4 = $fef2;  
  GDK_KEY_Pointer_DblClick5 = $fef3;  
  GDK_KEY_Pointer_Drag_Dflt = $fef4;  
  GDK_KEY_Pointer_Drag1 = $fef5;  
  GDK_KEY_Pointer_Drag2 = $fef6;  
  GDK_KEY_Pointer_Drag3 = $fef7;  
  GDK_KEY_Pointer_Drag4 = $fef8;  
  GDK_KEY_Pointer_Drag5 = $fefd;  
  GDK_KEY_Pointer_EnableKeys = $fef9;  
  GDK_KEY_Pointer_Accelerate = $fefa;  
  GDK_KEY_Pointer_DfltBtnNext = $fefb;  
  GDK_KEY_Pointer_DfltBtnPrev = $fefc;  
  GDK_KEY_ch = $fea0;  
  GDK_KEY_Ch = $fea1;  
  GDK_KEY_CH = $fea2;  
  GDK_KEY_c_h = $fea3;  
  GDK_KEY_C_h = $fea4;  
  GDK_KEY_C_H = $fea5;  
  GDK_KEY_3270_Duplicate = $fd01;  
  GDK_KEY_3270_FieldMark = $fd02;  
  GDK_KEY_3270_Right2 = $fd03;  
  GDK_KEY_3270_Left2 = $fd04;  
  GDK_KEY_3270_BackTab = $fd05;  
  GDK_KEY_3270_EraseEOF = $fd06;  
  GDK_KEY_3270_EraseInput = $fd07;  
  GDK_KEY_3270_Reset = $fd08;  
  GDK_KEY_3270_Quit = $fd09;  
  GDK_KEY_3270_PA1 = $fd0a;  
  GDK_KEY_3270_PA2 = $fd0b;  
  GDK_KEY_3270_PA3 = $fd0c;  
  GDK_KEY_3270_Test = $fd0d;  
  GDK_KEY_3270_Attn = $fd0e;  
  GDK_KEY_3270_CursorBlink = $fd0f;  
  GDK_KEY_3270_AltCursor = $fd10;  
  GDK_KEY_3270_KeyClick = $fd11;  
  GDK_KEY_3270_Jump = $fd12;  
  GDK_KEY_3270_Ident = $fd13;  
  GDK_KEY_3270_Rule = $fd14;  
  GDK_KEY_3270_Copy = $fd15;  
  GDK_KEY_3270_Play = $fd16;  
  GDK_KEY_3270_Setup = $fd17;  
  GDK_KEY_3270_Record = $fd18;  
  GDK_KEY_3270_ChangeScreen = $fd19;  
  GDK_KEY_3270_DeleteWord = $fd1a;  
  GDK_KEY_3270_ExSelect = $fd1b;  
  GDK_KEY_3270_CursorSelect = $fd1c;  
  GDK_KEY_3270_PrintScreen = $fd1d;  
  GDK_KEY_3270_Enter = $fd1e;  
  GDK_KEY_space = $020;  
  GDK_KEY_exclam = $021;  
  GDK_KEY_quotedbl = $022;  
  GDK_KEY_numbersign = $023;  
  GDK_KEY_dollar = $024;  
  GDK_KEY_percent = $025;  
  GDK_KEY_ampersand = $026;  
  GDK_KEY_apostrophe = $027;  
  GDK_KEY_quoteright = $027;  
  GDK_KEY_parenleft = $028;  
  GDK_KEY_parenright = $029;  
  GDK_KEY_asterisk = $02a;  
  GDK_KEY_plus = $02b;  
  GDK_KEY_comma = $02c;  
  GDK_KEY_minus = $02d;  
  GDK_KEY_period = $02e;  
  GDK_KEY_slash = $02f;  
  GDK_KEY_0 = $030;  
  GDK_KEY_1 = $031;  
  GDK_KEY_2 = $032;  
  GDK_KEY_3 = $033;  
  GDK_KEY_4 = $034;  
  GDK_KEY_5 = $035;  
  GDK_KEY_6 = $036;  
  GDK_KEY_7 = $037;  
  GDK_KEY_8 = $038;  
  GDK_KEY_9 = $039;  
  GDK_KEY_colon = $03a;  
  GDK_KEY_semicolon = $03b;  
  GDK_KEY_less = $03c;  
  GDK_KEY_equal = $03d;  
  GDK_KEY_greater = $03e;  
  GDK_KEY_question = $03f;  
  GDK_KEY_at = $040;  
  GDK_KEY_A = $041;  
  GDK_KEY_B = $042;  
  GDK_KEY_C = $043;  
  GDK_KEY_D = $044;  
  GDK_KEY_E = $045;  
  GDK_KEY_F = $046;  
  GDK_KEY_G = $047;  
  GDK_KEY_H = $048;  
  GDK_KEY_I = $049;  
  GDK_KEY_J = $04a;  
  GDK_KEY_K = $04b;  
  GDK_KEY_L = $04c;  
  GDK_KEY_M = $04d;  
  GDK_KEY_N = $04e;  
  GDK_KEY_O = $04f;  
  GDK_KEY_P = $050;  
  GDK_KEY_Q = $051;  
  GDK_KEY_R = $052;  
  GDK_KEY_S = $053;  
  GDK_KEY_T = $054;  
  GDK_KEY_U = $055;  
  GDK_KEY_V = $056;  
  GDK_KEY_W = $057;  
  GDK_KEY_X = $058;  
  GDK_KEY_Y = $059;  
  GDK_KEY_Z = $05a;  
  GDK_KEY_bracketleft = $05b;  
  GDK_KEY_backslash = $05c;  
  GDK_KEY_bracketright = $05d;  
  GDK_KEY_asciicircum = $05e;  
  GDK_KEY_underscore = $05f;  
  GDK_KEY_grave = $060;  
  GDK_KEY_quoteleft = $060;  
  GDK_KEY_a = $061;  
  GDK_KEY_b = $062;  
  GDK_KEY_c = $063;  
  GDK_KEY_d = $064;  
  GDK_KEY_e = $065;  
  GDK_KEY_f = $066;  
  GDK_KEY_g = $067;  
  GDK_KEY_h = $068;  
  GDK_KEY_i = $069;  
  GDK_KEY_j = $06a;  
  GDK_KEY_k = $06b;  
  GDK_KEY_l = $06c;  
  GDK_KEY_m = $06d;  
  GDK_KEY_n = $06e;  
  GDK_KEY_o = $06f;  
  GDK_KEY_p = $070;  
  GDK_KEY_q = $071;  
  GDK_KEY_r = $072;  
  GDK_KEY_s = $073;  
  GDK_KEY_t = $074;  
  GDK_KEY_u = $075;  
  GDK_KEY_v = $076;  
  GDK_KEY_w = $077;  
  GDK_KEY_x = $078;  
  GDK_KEY_y = $079;  
  GDK_KEY_z = $07a;  
  GDK_KEY_braceleft = $07b;  
  GDK_KEY_bar = $07c;  
  GDK_KEY_braceright = $07d;  
  GDK_KEY_asciitilde = $07e;  
  GDK_KEY_nobreakspace = $0a0;  
  GDK_KEY_exclamdown = $0a1;  
  GDK_KEY_cent = $0a2;  
  GDK_KEY_sterling = $0a3;  
  GDK_KEY_currency = $0a4;  
  GDK_KEY_yen = $0a5;  
  GDK_KEY_brokenbar = $0a6;  
  GDK_KEY_section = $0a7;  
  GDK_KEY_diaeresis = $0a8;  
  GDK_KEY_copyright = $0a9;  
  GDK_KEY_ordfeminine = $0aa;  
  GDK_KEY_guillemotleft = $0ab;  
  GDK_KEY_notsign = $0ac;  
  GDK_KEY_hyphen = $0ad;  
  GDK_KEY_registered = $0ae;  
  GDK_KEY_macron = $0af;  
  GDK_KEY_degree = $0b0;  
  GDK_KEY_plusminus = $0b1;  
  GDK_KEY_twosuperior = $0b2;  
  GDK_KEY_threesuperior = $0b3;  
  GDK_KEY_acute = $0b4;  
  GDK_KEY_mu = $0b5;  
  GDK_KEY_paragraph = $0b6;  
  GDK_KEY_periodcentered = $0b7;  
  GDK_KEY_cedilla = $0b8;  
  GDK_KEY_onesuperior = $0b9;  
  GDK_KEY_masculine = $0ba;  
  GDK_KEY_guillemotright = $0bb;  
  GDK_KEY_onequarter = $0bc;  
  GDK_KEY_onehalf = $0bd;  
  GDK_KEY_threequarters = $0be;  
  GDK_KEY_questiondown = $0bf;  
  GDK_KEY_Agrave = $0c0;  
  GDK_KEY_Aacute = $0c1;  
  GDK_KEY_Acircumflex = $0c2;  
  GDK_KEY_Atilde = $0c3;  
  GDK_KEY_Adiaeresis = $0c4;  
  GDK_KEY_Aring = $0c5;  
  GDK_KEY_AE = $0c6;  
  GDK_KEY_Ccedilla = $0c7;  
  GDK_KEY_Egrave = $0c8;  
  GDK_KEY_Eacute = $0c9;  
  GDK_KEY_Ecircumflex = $0ca;  
  GDK_KEY_Ediaeresis = $0cb;  
  GDK_KEY_Igrave = $0cc;  
  GDK_KEY_Iacute = $0cd;  
  GDK_KEY_Icircumflex = $0ce;  
  GDK_KEY_Idiaeresis = $0cf;  
  GDK_KEY_ETH = $0d0;  
  GDK_KEY_Eth = $0d0;  
  GDK_KEY_Ntilde = $0d1;  
  GDK_KEY_Ograve = $0d2;  
  GDK_KEY_Oacute = $0d3;  
  GDK_KEY_Ocircumflex = $0d4;  
  GDK_KEY_Otilde = $0d5;  
  GDK_KEY_Odiaeresis = $0d6;  
  GDK_KEY_multiply = $0d7;  
  GDK_KEY_Oslash = $0d8;  
  GDK_KEY_Ooblique = $0d8;  
  GDK_KEY_Ugrave = $0d9;  
  GDK_KEY_Uacute = $0da;  
  GDK_KEY_Ucircumflex = $0db;  
  GDK_KEY_Udiaeresis = $0dc;  
  GDK_KEY_Yacute = $0dd;  
  GDK_KEY_THORN = $0de;  
  GDK_KEY_Thorn = $0de;  
  GDK_KEY_ssharp = $0df;  
  GDK_KEY_agrave = $0e0;  
  GDK_KEY_aacute = $0e1;  
  GDK_KEY_acircumflex = $0e2;  
  GDK_KEY_atilde = $0e3;  
  GDK_KEY_adiaeresis = $0e4;  
  GDK_KEY_aring = $0e5;  
  GDK_KEY_ae = $0e6;  
  GDK_KEY_ccedilla = $0e7;  
  GDK_KEY_egrave = $0e8;  
  GDK_KEY_eacute = $0e9;  
  GDK_KEY_ecircumflex = $0ea;  
  GDK_KEY_ediaeresis = $0eb;  
  GDK_KEY_igrave = $0ec;  
  GDK_KEY_iacute = $0ed;  
  GDK_KEY_icircumflex = $0ee;  
  GDK_KEY_idiaeresis = $0ef;  
  GDK_KEY_eth = $0f0;  
  GDK_KEY_ntilde = $0f1;  
  GDK_KEY_ograve = $0f2;  
  GDK_KEY_oacute = $0f3;  
  GDK_KEY_ocircumflex = $0f4;  
  GDK_KEY_otilde = $0f5;  
  GDK_KEY_odiaeresis = $0f6;  
  GDK_KEY_division = $0f7;  
  GDK_KEY_oslash = $0f8;  
  GDK_KEY_ooblique = $0f8;  
  GDK_KEY_ugrave = $0f9;  
  GDK_KEY_uacute = $0fa;  
  GDK_KEY_ucircumflex = $0fb;  
  GDK_KEY_udiaeresis = $0fc;  
  GDK_KEY_yacute = $0fd;  
  GDK_KEY_thorn = $0fe;  
  GDK_KEY_ydiaeresis = $0ff;  
  GDK_KEY_Aogonek = $1a1;  
  GDK_KEY_breve = $1a2;  
  GDK_KEY_Lstroke = $1a3;  
  GDK_KEY_Lcaron = $1a5;  
  GDK_KEY_Sacute = $1a6;  
  GDK_KEY_Scaron = $1a9;  
  GDK_KEY_Scedilla = $1aa;  
  GDK_KEY_Tcaron = $1ab;  
  GDK_KEY_Zacute = $1ac;  
  GDK_KEY_Zcaron = $1ae;  
  GDK_KEY_Zabovedot = $1af;  
  GDK_KEY_aogonek = $1b1;  
  GDK_KEY_ogonek = $1b2;  
  GDK_KEY_lstroke = $1b3;  
  GDK_KEY_lcaron = $1b5;  
  GDK_KEY_sacute = $1b6;  
  GDK_KEY_caron = $1b7;  
  GDK_KEY_scaron = $1b9;  
  GDK_KEY_scedilla = $1ba;  
  GDK_KEY_tcaron = $1bb;  
  GDK_KEY_zacute = $1bc;  
  GDK_KEY_doubleacute = $1bd;  
  GDK_KEY_zcaron = $1be;  
  GDK_KEY_zabovedot = $1bf;  
  GDK_KEY_Racute = $1c0;  
  GDK_KEY_Abreve = $1c3;  
  GDK_KEY_Lacute = $1c5;  
  GDK_KEY_Cacute = $1c6;  
  GDK_KEY_Ccaron = $1c8;  
  GDK_KEY_Eogonek = $1ca;  
  GDK_KEY_Ecaron = $1cc;  
  GDK_KEY_Dcaron = $1cf;  
  GDK_KEY_Dstroke = $1d0;  
  GDK_KEY_Nacute = $1d1;  
  GDK_KEY_Ncaron = $1d2;  
  GDK_KEY_Odoubleacute = $1d5;  
  GDK_KEY_Rcaron = $1d8;  
  GDK_KEY_Uring = $1d9;  
  GDK_KEY_Udoubleacute = $1db;  
  GDK_KEY_Tcedilla = $1de;  
  GDK_KEY_racute = $1e0;  
  GDK_KEY_abreve = $1e3;  
  GDK_KEY_lacute = $1e5;  
  GDK_KEY_cacute = $1e6;  
  GDK_KEY_ccaron = $1e8;  
  GDK_KEY_eogonek = $1ea;  
  GDK_KEY_ecaron = $1ec;  
  GDK_KEY_dcaron = $1ef;  
  GDK_KEY_dstroke = $1f0;  
  GDK_KEY_nacute = $1f1;  
  GDK_KEY_ncaron = $1f2;  
  GDK_KEY_odoubleacute = $1f5;  
  GDK_KEY_rcaron = $1f8;  
  GDK_KEY_uring = $1f9;  
  GDK_KEY_udoubleacute = $1fb;  
  GDK_KEY_tcedilla = $1fe;  
  GDK_KEY_abovedot = $1ff;  
  GDK_KEY_Hstroke = $2a1;  
  GDK_KEY_Hcircumflex = $2a6;  
  GDK_KEY_Iabovedot = $2a9;  
  GDK_KEY_Gbreve = $2ab;  
  GDK_KEY_Jcircumflex = $2ac;  
  GDK_KEY_hstroke = $2b1;  
  GDK_KEY_hcircumflex = $2b6;  
  GDK_KEY_idotless = $2b9;  
  GDK_KEY_gbreve = $2bb;  
  GDK_KEY_jcircumflex = $2bc;  
  GDK_KEY_Cabovedot = $2c5;  
  GDK_KEY_Ccircumflex = $2c6;  
  GDK_KEY_Gabovedot = $2d5;  
  GDK_KEY_Gcircumflex = $2d8;  
  GDK_KEY_Ubreve = $2dd;  
  GDK_KEY_Scircumflex = $2de;  
  GDK_KEY_cabovedot = $2e5;  
  GDK_KEY_ccircumflex = $2e6;  
  GDK_KEY_gabovedot = $2f5;  
  GDK_KEY_gcircumflex = $2f8;  
  GDK_KEY_ubreve = $2fd;  
  GDK_KEY_scircumflex = $2fe;  
  GDK_KEY_kra = $3a2;  
  GDK_KEY_kappa = $3a2;  
  GDK_KEY_Rcedilla = $3a3;  
  GDK_KEY_Itilde = $3a5;  
  GDK_KEY_Lcedilla = $3a6;  
  GDK_KEY_Emacron = $3aa;  
  GDK_KEY_Gcedilla = $3ab;  
  GDK_KEY_Tslash = $3ac;  
  GDK_KEY_rcedilla = $3b3;  
  GDK_KEY_itilde = $3b5;  
  GDK_KEY_lcedilla = $3b6;  
  GDK_KEY_emacron = $3ba;  
  GDK_KEY_gcedilla = $3bb;  
  GDK_KEY_tslash = $3bc;  
  GDK_KEY_ENG = $3bd;  
  GDK_KEY_eng = $3bf;  
  GDK_KEY_Amacron = $3c0;  
  GDK_KEY_Iogonek = $3c7;  
  GDK_KEY_Eabovedot = $3cc;  
  GDK_KEY_Imacron = $3cf;  
  GDK_KEY_Ncedilla = $3d1;  
  GDK_KEY_Omacron = $3d2;  
  GDK_KEY_Kcedilla = $3d3;  
  GDK_KEY_Uogonek = $3d9;  
  GDK_KEY_Utilde = $3dd;  
  GDK_KEY_Umacron = $3de;  
  GDK_KEY_amacron = $3e0;  
  GDK_KEY_iogonek = $3e7;  
  GDK_KEY_eabovedot = $3ec;  
  GDK_KEY_imacron = $3ef;  
  GDK_KEY_ncedilla = $3f1;  
  GDK_KEY_omacron = $3f2;  
  GDK_KEY_kcedilla = $3f3;  
  GDK_KEY_uogonek = $3f9;  
  GDK_KEY_utilde = $3fd;  
  GDK_KEY_umacron = $3fe;  
  GDK_KEY_Wcircumflex = $1000174;  
  GDK_KEY_wcircumflex = $1000175;  
  GDK_KEY_Ycircumflex = $1000176;  
  GDK_KEY_ycircumflex = $1000177;  
  GDK_KEY_Babovedot = $1001e02;  
  GDK_KEY_babovedot = $1001e03;  
  GDK_KEY_Dabovedot = $1001e0a;  
  GDK_KEY_dabovedot = $1001e0b;  
  GDK_KEY_Fabovedot = $1001e1e;  
  GDK_KEY_fabovedot = $1001e1f;  
  GDK_KEY_Mabovedot = $1001e40;  
  GDK_KEY_mabovedot = $1001e41;  
  GDK_KEY_Pabovedot = $1001e56;  
  GDK_KEY_pabovedot = $1001e57;  
  GDK_KEY_Sabovedot = $1001e60;  
  GDK_KEY_sabovedot = $1001e61;  
  GDK_KEY_Tabovedot = $1001e6a;  
  GDK_KEY_tabovedot = $1001e6b;  
  GDK_KEY_Wgrave = $1001e80;  
  GDK_KEY_wgrave = $1001e81;  
  GDK_KEY_Wacute = $1001e82;  
  GDK_KEY_wacute = $1001e83;  
  GDK_KEY_Wdiaeresis = $1001e84;  
  GDK_KEY_wdiaeresis = $1001e85;  
  GDK_KEY_Ygrave = $1001ef2;  
  GDK_KEY_ygrave = $1001ef3;  
  GDK_KEY_OE = $13bc;  
  GDK_KEY_oe = $13bd;  
  GDK_KEY_Ydiaeresis = $13be;  
  GDK_KEY_overline = $47e;  
  GDK_KEY_kana_fullstop = $4a1;  
  GDK_KEY_kana_openingbracket = $4a2;  
  GDK_KEY_kana_closingbracket = $4a3;  
  GDK_KEY_kana_comma = $4a4;  
  GDK_KEY_kana_conjunctive = $4a5;  
  GDK_KEY_kana_middledot = $4a5;  
  GDK_KEY_kana_WO = $4a6;  
  GDK_KEY_kana_a = $4a7;  
  GDK_KEY_kana_i = $4a8;  
  GDK_KEY_kana_u = $4a9;  
  GDK_KEY_kana_e = $4aa;  
  GDK_KEY_kana_o = $4ab;  
  GDK_KEY_kana_ya = $4ac;  
  GDK_KEY_kana_yu = $4ad;  
  GDK_KEY_kana_yo = $4ae;  
  GDK_KEY_kana_tsu = $4af;  
  GDK_KEY_kana_tu = $4af;  
  GDK_KEY_prolongedsound = $4b0;  
  GDK_KEY_kana_A = $4b1;  
  GDK_KEY_kana_I = $4b2;  
  GDK_KEY_kana_U = $4b3;  
  GDK_KEY_kana_E = $4b4;  
  GDK_KEY_kana_O = $4b5;  
  GDK_KEY_kana_KA = $4b6;  
  GDK_KEY_kana_KI = $4b7;  
  GDK_KEY_kana_KU = $4b8;  
  GDK_KEY_kana_KE = $4b9;  
  GDK_KEY_kana_KO = $4ba;  
  GDK_KEY_kana_SA = $4bb;  
  GDK_KEY_kana_SHI = $4bc;  
  GDK_KEY_kana_SU = $4bd;  
  GDK_KEY_kana_SE = $4be;  
  GDK_KEY_kana_SO = $4bf;  
  GDK_KEY_kana_TA = $4c0;  
  GDK_KEY_kana_CHI = $4c1;  
  GDK_KEY_kana_TI = $4c1;  
  GDK_KEY_kana_TSU = $4c2;  
  GDK_KEY_kana_TU = $4c2;  
  GDK_KEY_kana_TE = $4c3;  
  GDK_KEY_kana_TO = $4c4;  
  GDK_KEY_kana_NA = $4c5;  
  GDK_KEY_kana_NI = $4c6;  
  GDK_KEY_kana_NU = $4c7;  
  GDK_KEY_kana_NE = $4c8;  
  GDK_KEY_kana_NO = $4c9;  
  GDK_KEY_kana_HA = $4ca;  
  GDK_KEY_kana_HI = $4cb;  
  GDK_KEY_kana_FU = $4cc;  
  GDK_KEY_kana_HU = $4cc;  
  GDK_KEY_kana_HE = $4cd;  
  GDK_KEY_kana_HO = $4ce;  
  GDK_KEY_kana_MA = $4cf;  
  GDK_KEY_kana_MI = $4d0;  
  GDK_KEY_kana_MU = $4d1;  
  GDK_KEY_kana_ME = $4d2;  
  GDK_KEY_kana_MO = $4d3;  
  GDK_KEY_kana_YA = $4d4;  
  GDK_KEY_kana_YU = $4d5;  
  GDK_KEY_kana_YO = $4d6;  
  GDK_KEY_kana_RA = $4d7;  
  GDK_KEY_kana_RI = $4d8;  
  GDK_KEY_kana_RU = $4d9;  
  GDK_KEY_kana_RE = $4da;  
  GDK_KEY_kana_RO = $4db;  
  GDK_KEY_kana_WA = $4dc;  
  GDK_KEY_kana_N = $4dd;  
  GDK_KEY_voicedsound = $4de;  
  GDK_KEY_semivoicedsound = $4df;  
  GDK_KEY_kana_switch = $ff7e;  
  GDK_KEY_Farsi_0 = $10006f0;  
  GDK_KEY_Farsi_1 = $10006f1;  
  GDK_KEY_Farsi_2 = $10006f2;  
  GDK_KEY_Farsi_3 = $10006f3;  
  GDK_KEY_Farsi_4 = $10006f4;  
  GDK_KEY_Farsi_5 = $10006f5;  
  GDK_KEY_Farsi_6 = $10006f6;  
  GDK_KEY_Farsi_7 = $10006f7;  
  GDK_KEY_Farsi_8 = $10006f8;  
  GDK_KEY_Farsi_9 = $10006f9;  
  GDK_KEY_Arabic_percent = $100066a;  
  GDK_KEY_Arabic_superscript_alef = $1000670;  
  GDK_KEY_Arabic_tteh = $1000679;  
  GDK_KEY_Arabic_peh = $100067e;  
  GDK_KEY_Arabic_tcheh = $1000686;  
  GDK_KEY_Arabic_ddal = $1000688;  
  GDK_KEY_Arabic_rreh = $1000691;  
  GDK_KEY_Arabic_comma = $5ac;  
  GDK_KEY_Arabic_fullstop = $10006d4;  
  GDK_KEY_Arabic_0 = $1000660;  
  GDK_KEY_Arabic_1 = $1000661;  
  GDK_KEY_Arabic_2 = $1000662;  
  GDK_KEY_Arabic_3 = $1000663;  
  GDK_KEY_Arabic_4 = $1000664;  
  GDK_KEY_Arabic_5 = $1000665;  
  GDK_KEY_Arabic_6 = $1000666;  
  GDK_KEY_Arabic_7 = $1000667;  
  GDK_KEY_Arabic_8 = $1000668;  
  GDK_KEY_Arabic_9 = $1000669;  
  GDK_KEY_Arabic_semicolon = $5bb;  
  GDK_KEY_Arabic_question_mark = $5bf;  
  GDK_KEY_Arabic_hamza = $5c1;  
  GDK_KEY_Arabic_maddaonalef = $5c2;  
  GDK_KEY_Arabic_hamzaonalef = $5c3;  
  GDK_KEY_Arabic_hamzaonwaw = $5c4;  
  GDK_KEY_Arabic_hamzaunderalef = $5c5;  
  GDK_KEY_Arabic_hamzaonyeh = $5c6;  
  GDK_KEY_Arabic_alef = $5c7;  
  GDK_KEY_Arabic_beh = $5c8;  
  GDK_KEY_Arabic_tehmarbuta = $5c9;  
  GDK_KEY_Arabic_teh = $5ca;  
  GDK_KEY_Arabic_theh = $5cb;  
  GDK_KEY_Arabic_jeem = $5cc;  
  GDK_KEY_Arabic_hah = $5cd;  
  GDK_KEY_Arabic_khah = $5ce;  
  GDK_KEY_Arabic_dal = $5cf;  
  GDK_KEY_Arabic_thal = $5d0;  
  GDK_KEY_Arabic_ra = $5d1;  
  GDK_KEY_Arabic_zain = $5d2;  
  GDK_KEY_Arabic_seen = $5d3;  
  GDK_KEY_Arabic_sheen = $5d4;  
  GDK_KEY_Arabic_sad = $5d5;  
  GDK_KEY_Arabic_dad = $5d6;  
  GDK_KEY_Arabic_tah = $5d7;  
  GDK_KEY_Arabic_zah = $5d8;  
  GDK_KEY_Arabic_ain = $5d9;  
  GDK_KEY_Arabic_ghain = $5da;  
  GDK_KEY_Arabic_tatweel = $5e0;  
  GDK_KEY_Arabic_feh = $5e1;  
  GDK_KEY_Arabic_qaf = $5e2;  
  GDK_KEY_Arabic_kaf = $5e3;  
  GDK_KEY_Arabic_lam = $5e4;  
  GDK_KEY_Arabic_meem = $5e5;  
  GDK_KEY_Arabic_noon = $5e6;  
  GDK_KEY_Arabic_ha = $5e7;  
  GDK_KEY_Arabic_heh = $5e7;  
  GDK_KEY_Arabic_waw = $5e8;  
  GDK_KEY_Arabic_alefmaksura = $5e9;  
  GDK_KEY_Arabic_yeh = $5ea;  
  GDK_KEY_Arabic_fathatan = $5eb;  
  GDK_KEY_Arabic_dammatan = $5ec;  
  GDK_KEY_Arabic_kasratan = $5ed;  
  GDK_KEY_Arabic_fatha = $5ee;  
  GDK_KEY_Arabic_damma = $5ef;  
  GDK_KEY_Arabic_kasra = $5f0;  
  GDK_KEY_Arabic_shadda = $5f1;  
  GDK_KEY_Arabic_sukun = $5f2;  
  GDK_KEY_Arabic_madda_above = $1000653;  
  GDK_KEY_Arabic_hamza_above = $1000654;  
  GDK_KEY_Arabic_hamza_below = $1000655;  
  GDK_KEY_Arabic_jeh = $1000698;  
  GDK_KEY_Arabic_veh = $10006a4;  
  GDK_KEY_Arabic_keheh = $10006a9;  
  GDK_KEY_Arabic_gaf = $10006af;  
  GDK_KEY_Arabic_noon_ghunna = $10006ba;  
  GDK_KEY_Arabic_heh_doachashmee = $10006be;  
  GDK_KEY_Farsi_yeh = $10006cc;  
  GDK_KEY_Arabic_farsi_yeh = $10006cc;  
  GDK_KEY_Arabic_yeh_baree = $10006d2;  
  GDK_KEY_Arabic_heh_goal = $10006c1;  
  GDK_KEY_Arabic_switch = $ff7e;  
  GDK_KEY_Cyrillic_GHE_bar = $1000492;  
  GDK_KEY_Cyrillic_ghe_bar = $1000493;  
  GDK_KEY_Cyrillic_ZHE_descender = $1000496;  
  GDK_KEY_Cyrillic_zhe_descender = $1000497;  
  GDK_KEY_Cyrillic_KA_descender = $100049a;  
  GDK_KEY_Cyrillic_ka_descender = $100049b;  
  GDK_KEY_Cyrillic_KA_vertstroke = $100049c;  
  GDK_KEY_Cyrillic_ka_vertstroke = $100049d;  
  GDK_KEY_Cyrillic_EN_descender = $10004a2;  
  GDK_KEY_Cyrillic_en_descender = $10004a3;  
  GDK_KEY_Cyrillic_U_straight = $10004ae;  
  GDK_KEY_Cyrillic_u_straight = $10004af;  
  GDK_KEY_Cyrillic_U_straight_bar = $10004b0;  
  GDK_KEY_Cyrillic_u_straight_bar = $10004b1;  
  GDK_KEY_Cyrillic_HA_descender = $10004b2;  
  GDK_KEY_Cyrillic_ha_descender = $10004b3;  
  GDK_KEY_Cyrillic_CHE_descender = $10004b6;  
  GDK_KEY_Cyrillic_che_descender = $10004b7;  
  GDK_KEY_Cyrillic_CHE_vertstroke = $10004b8;  
  GDK_KEY_Cyrillic_che_vertstroke = $10004b9;  
  GDK_KEY_Cyrillic_SHHA = $10004ba;  
  GDK_KEY_Cyrillic_shha = $10004bb;  
  GDK_KEY_Cyrillic_SCHWA = $10004d8;  
  GDK_KEY_Cyrillic_schwa = $10004d9;  
  GDK_KEY_Cyrillic_I_macron = $10004e2;  
  GDK_KEY_Cyrillic_i_macron = $10004e3;  
  GDK_KEY_Cyrillic_O_bar = $10004e8;  
  GDK_KEY_Cyrillic_o_bar = $10004e9;  
  GDK_KEY_Cyrillic_U_macron = $10004ee;  
  GDK_KEY_Cyrillic_u_macron = $10004ef;  
  GDK_KEY_Serbian_dje = $6a1;  
  GDK_KEY_Macedonia_gje = $6a2;  
  GDK_KEY_Cyrillic_io = $6a3;  
  GDK_KEY_Ukrainian_ie = $6a4;  
  GDK_KEY_Ukranian_je = $6a4;  
  GDK_KEY_Macedonia_dse = $6a5;  
  GDK_KEY_Ukrainian_i = $6a6;  
  GDK_KEY_Ukranian_i = $6a6;  
  GDK_KEY_Ukrainian_yi = $6a7;  
  GDK_KEY_Ukranian_yi = $6a7;  
  GDK_KEY_Cyrillic_je = $6a8;  
  GDK_KEY_Serbian_je = $6a8;  
  GDK_KEY_Cyrillic_lje = $6a9;  
  GDK_KEY_Serbian_lje = $6a9;  
  GDK_KEY_Cyrillic_nje = $6aa;  
  GDK_KEY_Serbian_nje = $6aa;  
  GDK_KEY_Serbian_tshe = $6ab;  
  GDK_KEY_Macedonia_kje = $6ac;  
  GDK_KEY_Ukrainian_ghe_with_upturn = $6ad;  
  GDK_KEY_Byelorussian_shortu = $6ae;  
  GDK_KEY_Cyrillic_dzhe = $6af;  
  GDK_KEY_Serbian_dze = $6af;  
  GDK_KEY_numerosign = $6b0;  
  GDK_KEY_Serbian_DJE = $6b1;  
  GDK_KEY_Macedonia_GJE = $6b2;  
  GDK_KEY_Cyrillic_IO = $6b3;  
  GDK_KEY_Ukrainian_IE = $6b4;  
  GDK_KEY_Ukranian_JE = $6b4;  
  GDK_KEY_Macedonia_DSE = $6b5;  
  GDK_KEY_Ukrainian_I = $6b6;  
  GDK_KEY_Ukranian_I = $6b6;  
  GDK_KEY_Ukrainian_YI = $6b7;  
  GDK_KEY_Ukranian_YI = $6b7;  
  GDK_KEY_Cyrillic_JE = $6b8;  
  GDK_KEY_Serbian_JE = $6b8;  
  GDK_KEY_Cyrillic_LJE = $6b9;  
  GDK_KEY_Serbian_LJE = $6b9;  
  GDK_KEY_Cyrillic_NJE = $6ba;  
  GDK_KEY_Serbian_NJE = $6ba;  
  GDK_KEY_Serbian_TSHE = $6bb;  
  GDK_KEY_Macedonia_KJE = $6bc;  
  GDK_KEY_Ukrainian_GHE_WITH_UPTURN = $6bd;  
  GDK_KEY_Byelorussian_SHORTU = $6be;  
  GDK_KEY_Cyrillic_DZHE = $6bf;  
  GDK_KEY_Serbian_DZE = $6bf;  
  GDK_KEY_Cyrillic_yu = $6c0;  
  GDK_KEY_Cyrillic_a = $6c1;  
  GDK_KEY_Cyrillic_be = $6c2;  
  GDK_KEY_Cyrillic_tse = $6c3;  
  GDK_KEY_Cyrillic_de = $6c4;  
  GDK_KEY_Cyrillic_ie = $6c5;  
  GDK_KEY_Cyrillic_ef = $6c6;  
  GDK_KEY_Cyrillic_ghe = $6c7;  
  GDK_KEY_Cyrillic_ha = $6c8;  
  GDK_KEY_Cyrillic_i = $6c9;  
  GDK_KEY_Cyrillic_shorti = $6ca;  
  GDK_KEY_Cyrillic_ka = $6cb;  
  GDK_KEY_Cyrillic_el = $6cc;  
  GDK_KEY_Cyrillic_em = $6cd;  
  GDK_KEY_Cyrillic_en = $6ce;  
  GDK_KEY_Cyrillic_o = $6cf;  
  GDK_KEY_Cyrillic_pe = $6d0;  
  GDK_KEY_Cyrillic_ya = $6d1;  
  GDK_KEY_Cyrillic_er = $6d2;  
  GDK_KEY_Cyrillic_es = $6d3;  
  GDK_KEY_Cyrillic_te = $6d4;  
  GDK_KEY_Cyrillic_u = $6d5;  
  GDK_KEY_Cyrillic_zhe = $6d6;  
  GDK_KEY_Cyrillic_ve = $6d7;  
  GDK_KEY_Cyrillic_softsign = $6d8;  
  GDK_KEY_Cyrillic_yeru = $6d9;  
  GDK_KEY_Cyrillic_ze = $6da;  
  GDK_KEY_Cyrillic_sha = $6db;  
  GDK_KEY_Cyrillic_e = $6dc;  
  GDK_KEY_Cyrillic_shcha = $6dd;  
  GDK_KEY_Cyrillic_che = $6de;  
  GDK_KEY_Cyrillic_hardsign = $6df;  
  GDK_KEY_Cyrillic_YU = $6e0;  
  GDK_KEY_Cyrillic_A = $6e1;  
  GDK_KEY_Cyrillic_BE = $6e2;  
  GDK_KEY_Cyrillic_TSE = $6e3;  
  GDK_KEY_Cyrillic_DE = $6e4;  
  GDK_KEY_Cyrillic_IE = $6e5;  
  GDK_KEY_Cyrillic_EF = $6e6;  
  GDK_KEY_Cyrillic_GHE = $6e7;  
  GDK_KEY_Cyrillic_HA = $6e8;  
  GDK_KEY_Cyrillic_I = $6e9;  
  GDK_KEY_Cyrillic_SHORTI = $6ea;  
  GDK_KEY_Cyrillic_KA = $6eb;  
  GDK_KEY_Cyrillic_EL = $6ec;  
  GDK_KEY_Cyrillic_EM = $6ed;  
  GDK_KEY_Cyrillic_EN = $6ee;  
  GDK_KEY_Cyrillic_O = $6ef;  
  GDK_KEY_Cyrillic_PE = $6f0;  
  GDK_KEY_Cyrillic_YA = $6f1;  
  GDK_KEY_Cyrillic_ER = $6f2;  
  GDK_KEY_Cyrillic_ES = $6f3;  
  GDK_KEY_Cyrillic_TE = $6f4;  
  GDK_KEY_Cyrillic_U = $6f5;  
  GDK_KEY_Cyrillic_ZHE = $6f6;  
  GDK_KEY_Cyrillic_VE = $6f7;  
  GDK_KEY_Cyrillic_SOFTSIGN = $6f8;  
  GDK_KEY_Cyrillic_YERU = $6f9;  
  GDK_KEY_Cyrillic_ZE = $6fa;  
  GDK_KEY_Cyrillic_SHA = $6fb;  
  GDK_KEY_Cyrillic_E = $6fc;  
  GDK_KEY_Cyrillic_SHCHA = $6fd;  
  GDK_KEY_Cyrillic_CHE = $6fe;  
  GDK_KEY_Cyrillic_HARDSIGN = $6ff;  
  GDK_KEY_Greek_ALPHAaccent = $7a1;  
  GDK_KEY_Greek_EPSILONaccent = $7a2;  
  GDK_KEY_Greek_ETAaccent = $7a3;  
  GDK_KEY_Greek_IOTAaccent = $7a4;  
  GDK_KEY_Greek_IOTAdieresis = $7a5;  
  GDK_KEY_Greek_IOTAdiaeresis = $7a5;  
  GDK_KEY_Greek_OMICRONaccent = $7a7;  
  GDK_KEY_Greek_UPSILONaccent = $7a8;  
  GDK_KEY_Greek_UPSILONdieresis = $7a9;  
  GDK_KEY_Greek_OMEGAaccent = $7ab;  
  GDK_KEY_Greek_accentdieresis = $7ae;  
  GDK_KEY_Greek_horizbar = $7af;  
  GDK_KEY_Greek_alphaaccent = $7b1;  
  GDK_KEY_Greek_epsilonaccent = $7b2;  
  GDK_KEY_Greek_etaaccent = $7b3;  
  GDK_KEY_Greek_iotaaccent = $7b4;  
  GDK_KEY_Greek_iotadieresis = $7b5;  
  GDK_KEY_Greek_iotaaccentdieresis = $7b6;  
  GDK_KEY_Greek_omicronaccent = $7b7;  
  GDK_KEY_Greek_upsilonaccent = $7b8;  
  GDK_KEY_Greek_upsilondieresis = $7b9;  
  GDK_KEY_Greek_upsilonaccentdieresis = $7ba;  
  GDK_KEY_Greek_omegaaccent = $7bb;  
  GDK_KEY_Greek_ALPHA = $7c1;  
  GDK_KEY_Greek_BETA = $7c2;  
  GDK_KEY_Greek_GAMMA = $7c3;  
  GDK_KEY_Greek_DELTA = $7c4;  
  GDK_KEY_Greek_EPSILON = $7c5;  
  GDK_KEY_Greek_ZETA = $7c6;  
  GDK_KEY_Greek_ETA = $7c7;  
  GDK_KEY_Greek_THETA = $7c8;  
  GDK_KEY_Greek_IOTA = $7c9;  
  GDK_KEY_Greek_KAPPA = $7ca;  
  GDK_KEY_Greek_LAMDA = $7cb;  
  GDK_KEY_Greek_LAMBDA = $7cb;  
  GDK_KEY_Greek_MU = $7cc;  
  GDK_KEY_Greek_NU = $7cd;  
  GDK_KEY_Greek_XI = $7ce;  
  GDK_KEY_Greek_OMICRON = $7cf;  
  GDK_KEY_Greek_PI = $7d0;  
  GDK_KEY_Greek_RHO = $7d1;  
  GDK_KEY_Greek_SIGMA = $7d2;  
  GDK_KEY_Greek_TAU = $7d4;  
  GDK_KEY_Greek_UPSILON = $7d5;  
  GDK_KEY_Greek_PHI = $7d6;  
  GDK_KEY_Greek_CHI = $7d7;  
  GDK_KEY_Greek_PSI = $7d8;  
  GDK_KEY_Greek_OMEGA = $7d9;  
  GDK_KEY_Greek_alpha = $7e1;  
  GDK_KEY_Greek_beta = $7e2;  
  GDK_KEY_Greek_gamma = $7e3;  
  GDK_KEY_Greek_delta = $7e4;  
  GDK_KEY_Greek_epsilon = $7e5;  
  GDK_KEY_Greek_zeta = $7e6;  
  GDK_KEY_Greek_eta = $7e7;  
  GDK_KEY_Greek_theta = $7e8;  
  GDK_KEY_Greek_iota = $7e9;  
  GDK_KEY_Greek_kappa = $7ea;  
  GDK_KEY_Greek_lamda = $7eb;  
  GDK_KEY_Greek_lambda = $7eb;  
  GDK_KEY_Greek_mu = $7ec;  
  GDK_KEY_Greek_nu = $7ed;  
  GDK_KEY_Greek_xi = $7ee;  
  GDK_KEY_Greek_omicron = $7ef;  
  GDK_KEY_Greek_pi = $7f0;  
  GDK_KEY_Greek_rho = $7f1;  
  GDK_KEY_Greek_sigma = $7f2;  
  GDK_KEY_Greek_finalsmallsigma = $7f3;  
  GDK_KEY_Greek_tau = $7f4;  
  GDK_KEY_Greek_upsilon = $7f5;  
  GDK_KEY_Greek_phi = $7f6;  
  GDK_KEY_Greek_chi = $7f7;  
  GDK_KEY_Greek_psi = $7f8;  
  GDK_KEY_Greek_omega = $7f9;  
  GDK_KEY_Greek_switch = $ff7e;  
  GDK_KEY_leftradical = $8a1;  
  GDK_KEY_topleftradical = $8a2;  
  GDK_KEY_horizconnector = $8a3;  
  GDK_KEY_topintegral = $8a4;  
  GDK_KEY_botintegral = $8a5;  
  GDK_KEY_vertconnector = $8a6;  
  GDK_KEY_topleftsqbracket = $8a7;  
  GDK_KEY_botleftsqbracket = $8a8;  
  GDK_KEY_toprightsqbracket = $8a9;  
  GDK_KEY_botrightsqbracket = $8aa;  
  GDK_KEY_topleftparens = $8ab;  
  GDK_KEY_botleftparens = $8ac;  
  GDK_KEY_toprightparens = $8ad;  
  GDK_KEY_botrightparens = $8ae;  
  GDK_KEY_leftmiddlecurlybrace = $8af;  
  GDK_KEY_rightmiddlecurlybrace = $8b0;  
  GDK_KEY_topleftsummation = $8b1;  
  GDK_KEY_botleftsummation = $8b2;  
  GDK_KEY_topvertsummationconnector = $8b3;  
  GDK_KEY_botvertsummationconnector = $8b4;  
  GDK_KEY_toprightsummation = $8b5;  
  GDK_KEY_botrightsummation = $8b6;  
  GDK_KEY_rightmiddlesummation = $8b7;  
  GDK_KEY_lessthanequal = $8bc;  
  GDK_KEY_notequal = $8bd;  
  GDK_KEY_greaterthanequal = $8be;  
  GDK_KEY_integral = $8bf;  
  GDK_KEY_therefore = $8c0;  
  GDK_KEY_variation = $8c1;  
  GDK_KEY_infinity = $8c2;  
  GDK_KEY_nabla = $8c5;  
  GDK_KEY_approximate = $8c8;  
  GDK_KEY_similarequal = $8c9;  
  GDK_KEY_ifonlyif = $8cd;  
  GDK_KEY_implies = $8ce;  
  GDK_KEY_identical = $8cf;  
  GDK_KEY_radical = $8d6;  
  GDK_KEY_includedin = $8da;  
  GDK_KEY_includes = $8db;  
  GDK_KEY_intersection = $8dc;  
  GDK_KEY_union = $8dd;  
  GDK_KEY_logicaland = $8de;  
  GDK_KEY_logicalor = $8df;  
  GDK_KEY_partialderivative = $8ef;  
  GDK_KEY_function = $8f6;  
  GDK_KEY_leftarrow = $8fb;  
  GDK_KEY_uparrow = $8fc;  
  GDK_KEY_rightarrow = $8fd;  
  GDK_KEY_downarrow = $8fe;  
  GDK_KEY_blank = $9df;  
  GDK_KEY_soliddiamond = $9e0;  
  GDK_KEY_checkerboard = $9e1;  
  GDK_KEY_ht = $9e2;  
  GDK_KEY_ff = $9e3;  
  GDK_KEY_cr = $9e4;  
  GDK_KEY_lf = $9e5;  
  GDK_KEY_nl = $9e8;  
  GDK_KEY_vt = $9e9;  
  GDK_KEY_lowrightcorner = $9ea;  
  GDK_KEY_uprightcorner = $9eb;  
  GDK_KEY_upleftcorner = $9ec;  
  GDK_KEY_lowleftcorner = $9ed;  
  GDK_KEY_crossinglines = $9ee;  
  GDK_KEY_horizlinescan1 = $9ef;  
  GDK_KEY_horizlinescan3 = $9f0;  
  GDK_KEY_horizlinescan5 = $9f1;  
  GDK_KEY_horizlinescan7 = $9f2;  
  GDK_KEY_horizlinescan9 = $9f3;  
  GDK_KEY_leftt = $9f4;  
  GDK_KEY_rightt = $9f5;  
  GDK_KEY_bott = $9f6;  
  GDK_KEY_topt = $9f7;  
  GDK_KEY_vertbar = $9f8;  
  GDK_KEY_emspace = $aa1;  
  GDK_KEY_enspace = $aa2;  
  GDK_KEY_em3space = $aa3;  
  GDK_KEY_em4space = $aa4;  
  GDK_KEY_digitspace = $aa5;  
  GDK_KEY_punctspace = $aa6;  
  GDK_KEY_thinspace = $aa7;  
  GDK_KEY_hairspace = $aa8;  
  GDK_KEY_emdash = $aa9;  
  GDK_KEY_endash = $aaa;  
  GDK_KEY_signifblank = $aac;  
  GDK_KEY_ellipsis = $aae;  
  GDK_KEY_doubbaselinedot = $aaf;  
  GDK_KEY_onethird = $ab0;  
  GDK_KEY_twothirds = $ab1;  
  GDK_KEY_onefifth = $ab2;  
  GDK_KEY_twofifths = $ab3;  
  GDK_KEY_threefifths = $ab4;  
  GDK_KEY_fourfifths = $ab5;  
  GDK_KEY_onesixth = $ab6;  
  GDK_KEY_fivesixths = $ab7;  
  GDK_KEY_careof = $ab8;  
  GDK_KEY_figdash = $abb;  
  GDK_KEY_leftanglebracket = $abc;  
  GDK_KEY_decimalpoint = $abd;  
  GDK_KEY_rightanglebracket = $abe;  
  GDK_KEY_marker = $abf;  
  GDK_KEY_oneeighth = $ac3;  
  GDK_KEY_threeeighths = $ac4;  
  GDK_KEY_fiveeighths = $ac5;  
  GDK_KEY_seveneighths = $ac6;  
  GDK_KEY_trademark = $ac9;  
  GDK_KEY_signaturemark = $aca;  
  GDK_KEY_trademarkincircle = $acb;  
  GDK_KEY_leftopentriangle = $acc;  
  GDK_KEY_rightopentriangle = $acd;  
  GDK_KEY_emopencircle = $ace;  
  GDK_KEY_emopenrectangle = $acf;  
  GDK_KEY_leftsinglequotemark = $ad0;  
  GDK_KEY_rightsinglequotemark = $ad1;  
  GDK_KEY_leftdoublequotemark = $ad2;  
  GDK_KEY_rightdoublequotemark = $ad3;  
  GDK_KEY_prescription = $ad4;  
  GDK_KEY_permille = $ad5;  
  GDK_KEY_minutes = $ad6;  
  GDK_KEY_seconds = $ad7;  
  GDK_KEY_latincross = $ad9;  
  GDK_KEY_hexagram = $ada;  
  GDK_KEY_filledrectbullet = $adb;  
  GDK_KEY_filledlefttribullet = $adc;  
  GDK_KEY_filledrighttribullet = $add;  
  GDK_KEY_emfilledcircle = $ade;  
  GDK_KEY_emfilledrect = $adf;  
  GDK_KEY_enopencircbullet = $ae0;  
  GDK_KEY_enopensquarebullet = $ae1;  
  GDK_KEY_openrectbullet = $ae2;  
  GDK_KEY_opentribulletup = $ae3;  
  GDK_KEY_opentribulletdown = $ae4;  
  GDK_KEY_openstar = $ae5;  
  GDK_KEY_enfilledcircbullet = $ae6;  
  GDK_KEY_enfilledsqbullet = $ae7;  
  GDK_KEY_filledtribulletup = $ae8;  
  GDK_KEY_filledtribulletdown = $ae9;  
  GDK_KEY_leftpointer = $aea;  
  GDK_KEY_rightpointer = $aeb;  
  GDK_KEY_club = $aec;  
  GDK_KEY_diamond = $aed;  
  GDK_KEY_heart = $aee;  
  GDK_KEY_maltesecross = $af0;  
  GDK_KEY_dagger = $af1;  
  GDK_KEY_doubledagger = $af2;  
  GDK_KEY_checkmark = $af3;  
  GDK_KEY_ballotcross = $af4;  
  GDK_KEY_musicalsharp = $af5;  
  GDK_KEY_musicalflat = $af6;  
  GDK_KEY_malesymbol = $af7;  
  GDK_KEY_femalesymbol = $af8;  
  GDK_KEY_telephone = $af9;  
  GDK_KEY_telephonerecorder = $afa;  
  GDK_KEY_phonographcopyright = $afb;  
  GDK_KEY_caret = $afc;  
  GDK_KEY_singlelowquotemark = $afd;  
  GDK_KEY_doublelowquotemark = $afe;  
  GDK_KEY_cursor = $aff;  
  GDK_KEY_leftcaret = $ba3;  
  GDK_KEY_rightcaret = $ba6;  
  GDK_KEY_downcaret = $ba8;  
  GDK_KEY_upcaret = $ba9;  
  GDK_KEY_overbar = $bc0;  
  GDK_KEY_downtack = $bc2;  
  GDK_KEY_upshoe = $bc3;  
  GDK_KEY_downstile = $bc4;  
  GDK_KEY_underbar = $bc6;  
  GDK_KEY_jot = $bca;  
  GDK_KEY_quad = $bcc;  
  GDK_KEY_uptack = $bce;  
  GDK_KEY_circle = $bcf;  
  GDK_KEY_upstile = $bd3;  
  GDK_KEY_downshoe = $bd6;  
  GDK_KEY_rightshoe = $bd8;  
  GDK_KEY_leftshoe = $bda;  
  GDK_KEY_lefttack = $bdc;  
  GDK_KEY_righttack = $bfc;  
  GDK_KEY_hebrew_doublelowline = $cdf;  
  GDK_KEY_hebrew_aleph = $ce0;  
  GDK_KEY_hebrew_bet = $ce1;  
  GDK_KEY_hebrew_beth = $ce1;  
  GDK_KEY_hebrew_gimel = $ce2;  
  GDK_KEY_hebrew_gimmel = $ce2;  
  GDK_KEY_hebrew_dalet = $ce3;  
  GDK_KEY_hebrew_daleth = $ce3;  
  GDK_KEY_hebrew_he = $ce4;  
  GDK_KEY_hebrew_waw = $ce5;  
  GDK_KEY_hebrew_zain = $ce6;  
  GDK_KEY_hebrew_zayin = $ce6;  
  GDK_KEY_hebrew_chet = $ce7;  
  GDK_KEY_hebrew_het = $ce7;  
  GDK_KEY_hebrew_tet = $ce8;  
  GDK_KEY_hebrew_teth = $ce8;  
  GDK_KEY_hebrew_yod = $ce9;  
  GDK_KEY_hebrew_finalkaph = $cea;  
  GDK_KEY_hebrew_kaph = $ceb;  
  GDK_KEY_hebrew_lamed = $cec;  
  GDK_KEY_hebrew_finalmem = $ced;  
  GDK_KEY_hebrew_mem = $cee;  
  GDK_KEY_hebrew_finalnun = $cef;  
  GDK_KEY_hebrew_nun = $cf0;  
  GDK_KEY_hebrew_samech = $cf1;  
  GDK_KEY_hebrew_samekh = $cf1;  
  GDK_KEY_hebrew_ayin = $cf2;  
  GDK_KEY_hebrew_finalpe = $cf3;  
  GDK_KEY_hebrew_pe = $cf4;  
  GDK_KEY_hebrew_finalzade = $cf5;  
  GDK_KEY_hebrew_finalzadi = $cf5;  
  GDK_KEY_hebrew_zade = $cf6;  
  GDK_KEY_hebrew_zadi = $cf6;  
  GDK_KEY_hebrew_qoph = $cf7;  
  GDK_KEY_hebrew_kuf = $cf7;  
  GDK_KEY_hebrew_resh = $cf8;  
  GDK_KEY_hebrew_shin = $cf9;  
  GDK_KEY_hebrew_taw = $cfa;  
  GDK_KEY_hebrew_taf = $cfa;  
  GDK_KEY_Hebrew_switch = $ff7e;  
  GDK_KEY_Thai_kokai = $da1;  
  GDK_KEY_Thai_khokhai = $da2;  
  GDK_KEY_Thai_khokhuat = $da3;  
  GDK_KEY_Thai_khokhwai = $da4;  
  GDK_KEY_Thai_khokhon = $da5;  
  GDK_KEY_Thai_khorakhang = $da6;  
  GDK_KEY_Thai_ngongu = $da7;  
  GDK_KEY_Thai_chochan = $da8;  
  GDK_KEY_Thai_choching = $da9;  
  GDK_KEY_Thai_chochang = $daa;  
  GDK_KEY_Thai_soso = $dab;  
  GDK_KEY_Thai_chochoe = $dac;  
  GDK_KEY_Thai_yoying = $dad;  
  GDK_KEY_Thai_dochada = $dae;  
  GDK_KEY_Thai_topatak = $daf;  
  GDK_KEY_Thai_thothan = $db0;  
  GDK_KEY_Thai_thonangmontho = $db1;  
  GDK_KEY_Thai_thophuthao = $db2;  
  GDK_KEY_Thai_nonen = $db3;  
  GDK_KEY_Thai_dodek = $db4;  
  GDK_KEY_Thai_totao = $db5;  
  GDK_KEY_Thai_thothung = $db6;  
  GDK_KEY_Thai_thothahan = $db7;  
  GDK_KEY_Thai_thothong = $db8;  
  GDK_KEY_Thai_nonu = $db9;  
  GDK_KEY_Thai_bobaimai = $dba;  
  GDK_KEY_Thai_popla = $dbb;  
  GDK_KEY_Thai_phophung = $dbc;  
  GDK_KEY_Thai_fofa = $dbd;  
  GDK_KEY_Thai_phophan = $dbe;  
  GDK_KEY_Thai_fofan = $dbf;  
  GDK_KEY_Thai_phosamphao = $dc0;  
  GDK_KEY_Thai_moma = $dc1;  
  GDK_KEY_Thai_yoyak = $dc2;  
  GDK_KEY_Thai_rorua = $dc3;  
  GDK_KEY_Thai_ru = $dc4;  
  GDK_KEY_Thai_loling = $dc5;  
  GDK_KEY_Thai_lu = $dc6;  
  GDK_KEY_Thai_wowaen = $dc7;  
  GDK_KEY_Thai_sosala = $dc8;  
  GDK_KEY_Thai_sorusi = $dc9;  
  GDK_KEY_Thai_sosua = $dca;  
  GDK_KEY_Thai_hohip = $dcb;  
  GDK_KEY_Thai_lochula = $dcc;  
  GDK_KEY_Thai_oang = $dcd;  
  GDK_KEY_Thai_honokhuk = $dce;  
  GDK_KEY_Thai_paiyannoi = $dcf;  
  GDK_KEY_Thai_saraa = $dd0;  
  GDK_KEY_Thai_maihanakat = $dd1;  
  GDK_KEY_Thai_saraaa = $dd2;  
  GDK_KEY_Thai_saraam = $dd3;  
  GDK_KEY_Thai_sarai = $dd4;  
  GDK_KEY_Thai_saraii = $dd5;  
  GDK_KEY_Thai_saraue = $dd6;  
  GDK_KEY_Thai_sarauee = $dd7;  
  GDK_KEY_Thai_sarau = $dd8;  
  GDK_KEY_Thai_sarauu = $dd9;  
  GDK_KEY_Thai_phinthu = $dda;  
  GDK_KEY_Thai_maihanakat_maitho = $dde;  
  GDK_KEY_Thai_baht = $ddf;  
  GDK_KEY_Thai_sarae = $de0;  
  GDK_KEY_Thai_saraae = $de1;  
  GDK_KEY_Thai_sarao = $de2;  
  GDK_KEY_Thai_saraaimaimuan = $de3;  
  GDK_KEY_Thai_saraaimaimalai = $de4;  
  GDK_KEY_Thai_lakkhangyao = $de5;  
  GDK_KEY_Thai_maiyamok = $de6;  
  GDK_KEY_Thai_maitaikhu = $de7;  
  GDK_KEY_Thai_maiek = $de8;  
  GDK_KEY_Thai_maitho = $de9;  
  GDK_KEY_Thai_maitri = $dea;  
  GDK_KEY_Thai_maichattawa = $deb;  
  GDK_KEY_Thai_thanthakhat = $dec;  
  GDK_KEY_Thai_nikhahit = $ded;  
  GDK_KEY_Thai_leksun = $df0;  
  GDK_KEY_Thai_leknung = $df1;  
  GDK_KEY_Thai_leksong = $df2;  
  GDK_KEY_Thai_leksam = $df3;  
  GDK_KEY_Thai_leksi = $df4;  
  GDK_KEY_Thai_lekha = $df5;  
  GDK_KEY_Thai_lekhok = $df6;  
  GDK_KEY_Thai_lekchet = $df7;  
  GDK_KEY_Thai_lekpaet = $df8;  
  GDK_KEY_Thai_lekkao = $df9;  
  GDK_KEY_Hangul = $ff31;  
  GDK_KEY_Hangul_Start = $ff32;  
  GDK_KEY_Hangul_End = $ff33;  
  GDK_KEY_Hangul_Hanja = $ff34;  
  GDK_KEY_Hangul_Jamo = $ff35;  
  GDK_KEY_Hangul_Romaja = $ff36;  
  GDK_KEY_Hangul_Codeinput = $ff37;  
  GDK_KEY_Hangul_Jeonja = $ff38;  
  GDK_KEY_Hangul_Banja = $ff39;  
  GDK_KEY_Hangul_PreHanja = $ff3a;  
  GDK_KEY_Hangul_PostHanja = $ff3b;  
  GDK_KEY_Hangul_SingleCandidate = $ff3c;  
  GDK_KEY_Hangul_MultipleCandidate = $ff3d;  
  GDK_KEY_Hangul_PreviousCandidate = $ff3e;  
  GDK_KEY_Hangul_Special = $ff3f;  
  GDK_KEY_Hangul_switch = $ff7e;  
  GDK_KEY_Hangul_Kiyeog = $ea1;  
  GDK_KEY_Hangul_SsangKiyeog = $ea2;  
  GDK_KEY_Hangul_KiyeogSios = $ea3;  
  GDK_KEY_Hangul_Nieun = $ea4;  
  GDK_KEY_Hangul_NieunJieuj = $ea5;  
  GDK_KEY_Hangul_NieunHieuh = $ea6;  
  GDK_KEY_Hangul_Dikeud = $ea7;  
  GDK_KEY_Hangul_SsangDikeud = $ea8;  
  GDK_KEY_Hangul_Rieul = $ea9;  
  GDK_KEY_Hangul_RieulKiyeog = $eaa;  
  GDK_KEY_Hangul_RieulMieum = $eab;  
  GDK_KEY_Hangul_RieulPieub = $eac;  
  GDK_KEY_Hangul_RieulSios = $ead;  
  GDK_KEY_Hangul_RieulTieut = $eae;  
  GDK_KEY_Hangul_RieulPhieuf = $eaf;  
  GDK_KEY_Hangul_RieulHieuh = $eb0;  
  GDK_KEY_Hangul_Mieum = $eb1;  
  GDK_KEY_Hangul_Pieub = $eb2;  
  GDK_KEY_Hangul_SsangPieub = $eb3;  
  GDK_KEY_Hangul_PieubSios = $eb4;  
  GDK_KEY_Hangul_Sios = $eb5;  
  GDK_KEY_Hangul_SsangSios = $eb6;  
  GDK_KEY_Hangul_Ieung = $eb7;  
  GDK_KEY_Hangul_Jieuj = $eb8;  
  GDK_KEY_Hangul_SsangJieuj = $eb9;  
  GDK_KEY_Hangul_Cieuc = $eba;  
  GDK_KEY_Hangul_Khieuq = $ebb;  
  GDK_KEY_Hangul_Tieut = $ebc;  
  GDK_KEY_Hangul_Phieuf = $ebd;  
  GDK_KEY_Hangul_Hieuh = $ebe;  
  GDK_KEY_Hangul_A = $ebf;  
  GDK_KEY_Hangul_AE = $ec0;  
  GDK_KEY_Hangul_YA = $ec1;  
  GDK_KEY_Hangul_YAE = $ec2;  
  GDK_KEY_Hangul_EO = $ec3;  
  GDK_KEY_Hangul_E = $ec4;  
  GDK_KEY_Hangul_YEO = $ec5;  
  GDK_KEY_Hangul_YE = $ec6;  
  GDK_KEY_Hangul_O = $ec7;  
  GDK_KEY_Hangul_WA = $ec8;  
  GDK_KEY_Hangul_WAE = $ec9;  
  GDK_KEY_Hangul_OE = $eca;  
  GDK_KEY_Hangul_YO = $ecb;  
  GDK_KEY_Hangul_U = $ecc;  
  GDK_KEY_Hangul_WEO = $ecd;  
  GDK_KEY_Hangul_WE = $ece;  
  GDK_KEY_Hangul_WI = $ecf;  
  GDK_KEY_Hangul_YU = $ed0;  
  GDK_KEY_Hangul_EU = $ed1;  
  GDK_KEY_Hangul_YI = $ed2;  
  GDK_KEY_Hangul_I = $ed3;  
  GDK_KEY_Hangul_J_Kiyeog = $ed4;  
  GDK_KEY_Hangul_J_SsangKiyeog = $ed5;  
  GDK_KEY_Hangul_J_KiyeogSios = $ed6;  
  GDK_KEY_Hangul_J_Nieun = $ed7;  
  GDK_KEY_Hangul_J_NieunJieuj = $ed8;  
  GDK_KEY_Hangul_J_NieunHieuh = $ed9;  
  GDK_KEY_Hangul_J_Dikeud = $eda;  
  GDK_KEY_Hangul_J_Rieul = $edb;  
  GDK_KEY_Hangul_J_RieulKiyeog = $edc;  
  GDK_KEY_Hangul_J_RieulMieum = $edd;  
  GDK_KEY_Hangul_J_RieulPieub = $ede;  
  GDK_KEY_Hangul_J_RieulSios = $edf;  
  GDK_KEY_Hangul_J_RieulTieut = $ee0;  
  GDK_KEY_Hangul_J_RieulPhieuf = $ee1;  
  GDK_KEY_Hangul_J_RieulHieuh = $ee2;  
  GDK_KEY_Hangul_J_Mieum = $ee3;  
  GDK_KEY_Hangul_J_Pieub = $ee4;  
  GDK_KEY_Hangul_J_PieubSios = $ee5;  
  GDK_KEY_Hangul_J_Sios = $ee6;  
  GDK_KEY_Hangul_J_SsangSios = $ee7;  
  GDK_KEY_Hangul_J_Ieung = $ee8;  
  GDK_KEY_Hangul_J_Jieuj = $ee9;  
  GDK_KEY_Hangul_J_Cieuc = $eea;  
  GDK_KEY_Hangul_J_Khieuq = $eeb;  
  GDK_KEY_Hangul_J_Tieut = $eec;  
  GDK_KEY_Hangul_J_Phieuf = $eed;  
  GDK_KEY_Hangul_J_Hieuh = $eee;  
  GDK_KEY_Hangul_RieulYeorinHieuh = $eef;  
  GDK_KEY_Hangul_SunkyeongeumMieum = $ef0;  
  GDK_KEY_Hangul_SunkyeongeumPieub = $ef1;  
  GDK_KEY_Hangul_PanSios = $ef2;  
  GDK_KEY_Hangul_KkogjiDalrinIeung = $ef3;  
  GDK_KEY_Hangul_SunkyeongeumPhieuf = $ef4;  
  GDK_KEY_Hangul_YeorinHieuh = $ef5;  
  GDK_KEY_Hangul_AraeA = $ef6;  
  GDK_KEY_Hangul_AraeAE = $ef7;  
  GDK_KEY_Hangul_J_PanSios = $ef8;  
  GDK_KEY_Hangul_J_KkogjiDalrinIeung = $ef9;  
  GDK_KEY_Hangul_J_YeorinHieuh = $efa;  
  GDK_KEY_Korean_Won = $eff;  
  GDK_KEY_Armenian_ligature_ew = $1000587;  
  GDK_KEY_Armenian_full_stop = $1000589;  
  GDK_KEY_Armenian_verjaket = $1000589;  
  GDK_KEY_Armenian_separation_mark = $100055d;  
  GDK_KEY_Armenian_but = $100055d;  
  GDK_KEY_Armenian_hyphen = $100058a;  
  GDK_KEY_Armenian_yentamna = $100058a;  
  GDK_KEY_Armenian_exclam = $100055c;  
  GDK_KEY_Armenian_amanak = $100055c;  
  GDK_KEY_Armenian_accent = $100055b;  
  GDK_KEY_Armenian_shesht = $100055b;  
  GDK_KEY_Armenian_question = $100055e;  
  GDK_KEY_Armenian_paruyk = $100055e;  
  GDK_KEY_Armenian_AYB = $1000531;  
  GDK_KEY_Armenian_ayb = $1000561;  
  GDK_KEY_Armenian_BEN = $1000532;  
  GDK_KEY_Armenian_ben = $1000562;  
  GDK_KEY_Armenian_GIM = $1000533;  
  GDK_KEY_Armenian_gim = $1000563;  
  GDK_KEY_Armenian_DA = $1000534;  
  GDK_KEY_Armenian_da = $1000564;  
  GDK_KEY_Armenian_YECH = $1000535;  
  GDK_KEY_Armenian_yech = $1000565;  
  GDK_KEY_Armenian_ZA = $1000536;  
  GDK_KEY_Armenian_za = $1000566;  
  GDK_KEY_Armenian_E = $1000537;  
  GDK_KEY_Armenian_e = $1000567;  
  GDK_KEY_Armenian_AT = $1000538;  
  GDK_KEY_Armenian_at = $1000568;  
  GDK_KEY_Armenian_TO = $1000539;  
  GDK_KEY_Armenian_to = $1000569;  
  GDK_KEY_Armenian_ZHE = $100053a;  
  GDK_KEY_Armenian_zhe = $100056a;  
  GDK_KEY_Armenian_INI = $100053b;  
  GDK_KEY_Armenian_ini = $100056b;  
  GDK_KEY_Armenian_LYUN = $100053c;  
  GDK_KEY_Armenian_lyun = $100056c;  
  GDK_KEY_Armenian_KHE = $100053d;  
  GDK_KEY_Armenian_khe = $100056d;  
  GDK_KEY_Armenian_TSA = $100053e;  
  GDK_KEY_Armenian_tsa = $100056e;  
  GDK_KEY_Armenian_KEN = $100053f;  
  GDK_KEY_Armenian_ken = $100056f;  
  GDK_KEY_Armenian_HO = $1000540;  
  GDK_KEY_Armenian_ho = $1000570;  
  GDK_KEY_Armenian_DZA = $1000541;  
  GDK_KEY_Armenian_dza = $1000571;  
  GDK_KEY_Armenian_GHAT = $1000542;  
  GDK_KEY_Armenian_ghat = $1000572;  
  GDK_KEY_Armenian_TCHE = $1000543;  
  GDK_KEY_Armenian_tche = $1000573;  
  GDK_KEY_Armenian_MEN = $1000544;  
  GDK_KEY_Armenian_men = $1000574;  
  GDK_KEY_Armenian_HI = $1000545;  
  GDK_KEY_Armenian_hi = $1000575;  
  GDK_KEY_Armenian_NU = $1000546;  
  GDK_KEY_Armenian_nu = $1000576;  
  GDK_KEY_Armenian_SHA = $1000547;  
  GDK_KEY_Armenian_sha = $1000577;  
  GDK_KEY_Armenian_VO = $1000548;  
  GDK_KEY_Armenian_vo = $1000578;  
  GDK_KEY_Armenian_CHA = $1000549;  
  GDK_KEY_Armenian_cha = $1000579;  
  GDK_KEY_Armenian_PE = $100054a;  
  GDK_KEY_Armenian_pe = $100057a;  
  GDK_KEY_Armenian_JE = $100054b;  
  GDK_KEY_Armenian_je = $100057b;  
  GDK_KEY_Armenian_RA = $100054c;  
  GDK_KEY_Armenian_ra = $100057c;  
  GDK_KEY_Armenian_SE = $100054d;  
  GDK_KEY_Armenian_se = $100057d;  
  GDK_KEY_Armenian_VEV = $100054e;  
  GDK_KEY_Armenian_vev = $100057e;  
  GDK_KEY_Armenian_TYUN = $100054f;  
  GDK_KEY_Armenian_tyun = $100057f;  
  GDK_KEY_Armenian_RE = $1000550;  
  GDK_KEY_Armenian_re = $1000580;  
  GDK_KEY_Armenian_TSO = $1000551;  
  GDK_KEY_Armenian_tso = $1000581;  
  GDK_KEY_Armenian_VYUN = $1000552;  
  GDK_KEY_Armenian_vyun = $1000582;  
  GDK_KEY_Armenian_PYUR = $1000553;  
  GDK_KEY_Armenian_pyur = $1000583;  
  GDK_KEY_Armenian_KE = $1000554;  
  GDK_KEY_Armenian_ke = $1000584;  
  GDK_KEY_Armenian_O = $1000555;  
  GDK_KEY_Armenian_o = $1000585;  
  GDK_KEY_Armenian_FE = $1000556;  
  GDK_KEY_Armenian_fe = $1000586;  
  GDK_KEY_Armenian_apostrophe = $100055a;  
  GDK_KEY_Georgian_an = $10010d0;  
  GDK_KEY_Georgian_ban = $10010d1;  
  GDK_KEY_Georgian_gan = $10010d2;  
  GDK_KEY_Georgian_don = $10010d3;  
  GDK_KEY_Georgian_en = $10010d4;  
  GDK_KEY_Georgian_vin = $10010d5;  
  GDK_KEY_Georgian_zen = $10010d6;  
  GDK_KEY_Georgian_tan = $10010d7;  
  GDK_KEY_Georgian_in = $10010d8;  
  GDK_KEY_Georgian_kan = $10010d9;  
  GDK_KEY_Georgian_las = $10010da;  
  GDK_KEY_Georgian_man = $10010db;  
  GDK_KEY_Georgian_nar = $10010dc;  
  GDK_KEY_Georgian_on = $10010dd;  
  GDK_KEY_Georgian_par = $10010de;  
  GDK_KEY_Georgian_zhar = $10010df;  
  GDK_KEY_Georgian_rae = $10010e0;  
  GDK_KEY_Georgian_san = $10010e1;  
  GDK_KEY_Georgian_tar = $10010e2;  
  GDK_KEY_Georgian_un = $10010e3;  
  GDK_KEY_Georgian_phar = $10010e4;  
  GDK_KEY_Georgian_khar = $10010e5;  
  GDK_KEY_Georgian_ghan = $10010e6;  
  GDK_KEY_Georgian_qar = $10010e7;  
  GDK_KEY_Georgian_shin = $10010e8;  
  GDK_KEY_Georgian_chin = $10010e9;  
  GDK_KEY_Georgian_can = $10010ea;  
  GDK_KEY_Georgian_jil = $10010eb;  
  GDK_KEY_Georgian_cil = $10010ec;  
  GDK_KEY_Georgian_char = $10010ed;  
  GDK_KEY_Georgian_xan = $10010ee;  
  GDK_KEY_Georgian_jhan = $10010ef;  
  GDK_KEY_Georgian_hae = $10010f0;  
  GDK_KEY_Georgian_he = $10010f1;  
  GDK_KEY_Georgian_hie = $10010f2;  
  GDK_KEY_Georgian_we = $10010f3;  
  GDK_KEY_Georgian_har = $10010f4;  
  GDK_KEY_Georgian_hoe = $10010f5;  
  GDK_KEY_Georgian_fi = $10010f6;  
  GDK_KEY_Xabovedot = $1001e8a;  
  GDK_KEY_Ibreve = $100012c;  
  GDK_KEY_Zstroke = $10001b5;  
  GDK_KEY_Gcaron = $10001e6;  
  GDK_KEY_Ocaron = $10001d1;  
  GDK_KEY_Obarred = $100019f;  
  GDK_KEY_xabovedot = $1001e8b;  
  GDK_KEY_ibreve = $100012d;  
  GDK_KEY_zstroke = $10001b6;  
  GDK_KEY_gcaron = $10001e7;  
  GDK_KEY_ocaron = $10001d2;  
  GDK_KEY_obarred = $1000275;  
  GDK_KEY_SCHWA = $100018f;  
  GDK_KEY_schwa = $1000259;  
  GDK_KEY_EZH = $10001b7;  
  GDK_KEY_ezh = $1000292;  
  GDK_KEY_Lbelowdot = $1001e36;  
  GDK_KEY_lbelowdot = $1001e37;  
  GDK_KEY_Abelowdot = $1001ea0;  
  GDK_KEY_abelowdot = $1001ea1;  
  GDK_KEY_Ahook = $1001ea2;  
  GDK_KEY_ahook = $1001ea3;  
  GDK_KEY_Acircumflexacute = $1001ea4;  
  GDK_KEY_acircumflexacute = $1001ea5;  
  GDK_KEY_Acircumflexgrave = $1001ea6;  
  GDK_KEY_acircumflexgrave = $1001ea7;  
  GDK_KEY_Acircumflexhook = $1001ea8;  
  GDK_KEY_acircumflexhook = $1001ea9;  
  GDK_KEY_Acircumflextilde = $1001eaa;  
  GDK_KEY_acircumflextilde = $1001eab;  
  GDK_KEY_Acircumflexbelowdot = $1001eac;  
  GDK_KEY_acircumflexbelowdot = $1001ead;  
  GDK_KEY_Abreveacute = $1001eae;  
  GDK_KEY_abreveacute = $1001eaf;  
  GDK_KEY_Abrevegrave = $1001eb0;  
  GDK_KEY_abrevegrave = $1001eb1;  
  GDK_KEY_Abrevehook = $1001eb2;  
  GDK_KEY_abrevehook = $1001eb3;  
  GDK_KEY_Abrevetilde = $1001eb4;  
  GDK_KEY_abrevetilde = $1001eb5;  
  GDK_KEY_Abrevebelowdot = $1001eb6;  
  GDK_KEY_abrevebelowdot = $1001eb7;  
  GDK_KEY_Ebelowdot = $1001eb8;  
  GDK_KEY_ebelowdot = $1001eb9;  
  GDK_KEY_Ehook = $1001eba;  
  GDK_KEY_ehook = $1001ebb;  
  GDK_KEY_Etilde = $1001ebc;  
  GDK_KEY_etilde = $1001ebd;  
  GDK_KEY_Ecircumflexacute = $1001ebe;  
  GDK_KEY_ecircumflexacute = $1001ebf;  
  GDK_KEY_Ecircumflexgrave = $1001ec0;  
  GDK_KEY_ecircumflexgrave = $1001ec1;  
  GDK_KEY_Ecircumflexhook = $1001ec2;  
  GDK_KEY_ecircumflexhook = $1001ec3;  
  GDK_KEY_Ecircumflextilde = $1001ec4;  
  GDK_KEY_ecircumflextilde = $1001ec5;  
  GDK_KEY_Ecircumflexbelowdot = $1001ec6;  
  GDK_KEY_ecircumflexbelowdot = $1001ec7;  
  GDK_KEY_Ihook = $1001ec8;  
  GDK_KEY_ihook = $1001ec9;  
  GDK_KEY_Ibelowdot = $1001eca;  
  GDK_KEY_ibelowdot = $1001ecb;  
  GDK_KEY_Obelowdot = $1001ecc;  
  GDK_KEY_obelowdot = $1001ecd;  
  GDK_KEY_Ohook = $1001ece;  
  GDK_KEY_ohook = $1001ecf;  
  GDK_KEY_Ocircumflexacute = $1001ed0;  
  GDK_KEY_ocircumflexacute = $1001ed1;  
  GDK_KEY_Ocircumflexgrave = $1001ed2;  
  GDK_KEY_ocircumflexgrave = $1001ed3;  
  GDK_KEY_Ocircumflexhook = $1001ed4;  
  GDK_KEY_ocircumflexhook = $1001ed5;  
  GDK_KEY_Ocircumflextilde = $1001ed6;  
  GDK_KEY_ocircumflextilde = $1001ed7;  
  GDK_KEY_Ocircumflexbelowdot = $1001ed8;  
  GDK_KEY_ocircumflexbelowdot = $1001ed9;  
  GDK_KEY_Ohornacute = $1001eda;  
  GDK_KEY_ohornacute = $1001edb;  
  GDK_KEY_Ohorngrave = $1001edc;  
  GDK_KEY_ohorngrave = $1001edd;  
  GDK_KEY_Ohornhook = $1001ede;  
  GDK_KEY_ohornhook = $1001edf;  
  GDK_KEY_Ohorntilde = $1001ee0;  
  GDK_KEY_ohorntilde = $1001ee1;  
  GDK_KEY_Ohornbelowdot = $1001ee2;  
  GDK_KEY_ohornbelowdot = $1001ee3;  
  GDK_KEY_Ubelowdot = $1001ee4;  
  GDK_KEY_ubelowdot = $1001ee5;  
  GDK_KEY_Uhook = $1001ee6;  
  GDK_KEY_uhook = $1001ee7;  
  GDK_KEY_Uhornacute = $1001ee8;  
  GDK_KEY_uhornacute = $1001ee9;  
  GDK_KEY_Uhorngrave = $1001eea;  
  GDK_KEY_uhorngrave = $1001eeb;  
  GDK_KEY_Uhornhook = $1001eec;  
  GDK_KEY_uhornhook = $1001eed;  
  GDK_KEY_Uhorntilde = $1001eee;  
  GDK_KEY_uhorntilde = $1001eef;  
  GDK_KEY_Uhornbelowdot = $1001ef0;  
  GDK_KEY_uhornbelowdot = $1001ef1;  
  GDK_KEY_Ybelowdot = $1001ef4;  
  GDK_KEY_ybelowdot = $1001ef5;  
  GDK_KEY_Yhook = $1001ef6;  
  GDK_KEY_yhook = $1001ef7;  
  GDK_KEY_Ytilde = $1001ef8;  
  GDK_KEY_ytilde = $1001ef9;  
  GDK_KEY_Ohorn = $10001a0;  
  GDK_KEY_ohorn = $10001a1;  
  GDK_KEY_Uhorn = $10001af;  
  GDK_KEY_uhorn = $10001b0;  
  GDK_KEY_EcuSign = $10020a0;  
  GDK_KEY_ColonSign = $10020a1;  
  GDK_KEY_CruzeiroSign = $10020a2;  
  GDK_KEY_FFrancSign = $10020a3;  
  GDK_KEY_LiraSign = $10020a4;  
  GDK_KEY_MillSign = $10020a5;  
  GDK_KEY_NairaSign = $10020a6;  
  GDK_KEY_PesetaSign = $10020a7;  
  GDK_KEY_RupeeSign = $10020a8;  
  GDK_KEY_WonSign = $10020a9;  
  GDK_KEY_NewSheqelSign = $10020aa;  
  GDK_KEY_DongSign = $10020ab;  
  GDK_KEY_EuroSign = $20ac;  
  GDK_KEY_zerosuperior = $1002070;  
  GDK_KEY_foursuperior = $1002074;  
  GDK_KEY_fivesuperior = $1002075;  
  GDK_KEY_sixsuperior = $1002076;  
  GDK_KEY_sevensuperior = $1002077;  
  GDK_KEY_eightsuperior = $1002078;  
  GDK_KEY_ninesuperior = $1002079;  
  GDK_KEY_zerosubscript = $1002080;  
  GDK_KEY_onesubscript = $1002081;  
  GDK_KEY_twosubscript = $1002082;  
  GDK_KEY_threesubscript = $1002083;  
  GDK_KEY_foursubscript = $1002084;  
  GDK_KEY_fivesubscript = $1002085;  
  GDK_KEY_sixsubscript = $1002086;  
  GDK_KEY_sevensubscript = $1002087;  
  GDK_KEY_eightsubscript = $1002088;  
  GDK_KEY_ninesubscript = $1002089;  
  GDK_KEY_partdifferential = $1002202;  
  GDK_KEY_emptyset = $1002205;  
  GDK_KEY_elementof = $1002208;  
  GDK_KEY_notelementof = $1002209;  
  GDK_KEY_containsas = $100220b;  
  GDK_KEY_squareroot = $100221a;  
  GDK_KEY_cuberoot = $100221b;  
  GDK_KEY_fourthroot = $100221c;  
  GDK_KEY_dintegral = $100222c;  
  GDK_KEY_tintegral = $100222d;  
  GDK_KEY_because = $1002235;  
  GDK_KEY_approxeq = $1002248;  
  GDK_KEY_notapproxeq = $1002247;  
  GDK_KEY_notidentical = $1002262;  
  GDK_KEY_stricteq = $1002263;  
  GDK_KEY_braille_dot_1 = $fff1;  
  GDK_KEY_braille_dot_2 = $fff2;  
  GDK_KEY_braille_dot_3 = $fff3;  
  GDK_KEY_braille_dot_4 = $fff4;  
  GDK_KEY_braille_dot_5 = $fff5;  
  GDK_KEY_braille_dot_6 = $fff6;  
  GDK_KEY_braille_dot_7 = $fff7;  
  GDK_KEY_braille_dot_8 = $fff8;  
  GDK_KEY_braille_dot_9 = $fff9;  
  GDK_KEY_braille_dot_10 = $fffa;  
  GDK_KEY_braille_blank = $1002800;  
  GDK_KEY_braille_dots_1 = $1002801;  
  GDK_KEY_braille_dots_2 = $1002802;  
  GDK_KEY_braille_dots_12 = $1002803;  
  GDK_KEY_braille_dots_3 = $1002804;  
  GDK_KEY_braille_dots_13 = $1002805;  
  GDK_KEY_braille_dots_23 = $1002806;  
  GDK_KEY_braille_dots_123 = $1002807;  
  GDK_KEY_braille_dots_4 = $1002808;  
  GDK_KEY_braille_dots_14 = $1002809;  
  GDK_KEY_braille_dots_24 = $100280a;  
  GDK_KEY_braille_dots_124 = $100280b;  
  GDK_KEY_braille_dots_34 = $100280c;  
  GDK_KEY_braille_dots_134 = $100280d;  
  GDK_KEY_braille_dots_234 = $100280e;  
  GDK_KEY_braille_dots_1234 = $100280f;  
  GDK_KEY_braille_dots_5 = $1002810;  
  GDK_KEY_braille_dots_15 = $1002811;  
  GDK_KEY_braille_dots_25 = $1002812;  
  GDK_KEY_braille_dots_125 = $1002813;  
  GDK_KEY_braille_dots_35 = $1002814;  
  GDK_KEY_braille_dots_135 = $1002815;  
  GDK_KEY_braille_dots_235 = $1002816;  
  GDK_KEY_braille_dots_1235 = $1002817;  
  GDK_KEY_braille_dots_45 = $1002818;  
  GDK_KEY_braille_dots_145 = $1002819;  
  GDK_KEY_braille_dots_245 = $100281a;  
  GDK_KEY_braille_dots_1245 = $100281b;  
  GDK_KEY_braille_dots_345 = $100281c;  
  GDK_KEY_braille_dots_1345 = $100281d;  
  GDK_KEY_braille_dots_2345 = $100281e;  
  GDK_KEY_braille_dots_12345 = $100281f;  
  GDK_KEY_braille_dots_6 = $1002820;  
  GDK_KEY_braille_dots_16 = $1002821;  
  GDK_KEY_braille_dots_26 = $1002822;  
  GDK_KEY_braille_dots_126 = $1002823;  
  GDK_KEY_braille_dots_36 = $1002824;  
  GDK_KEY_braille_dots_136 = $1002825;  
  GDK_KEY_braille_dots_236 = $1002826;  
  GDK_KEY_braille_dots_1236 = $1002827;  
  GDK_KEY_braille_dots_46 = $1002828;  
  GDK_KEY_braille_dots_146 = $1002829;  
  GDK_KEY_braille_dots_246 = $100282a;  
  GDK_KEY_braille_dots_1246 = $100282b;  
  GDK_KEY_braille_dots_346 = $100282c;  
  GDK_KEY_braille_dots_1346 = $100282d;  
  GDK_KEY_braille_dots_2346 = $100282e;  
  GDK_KEY_braille_dots_12346 = $100282f;  
  GDK_KEY_braille_dots_56 = $1002830;  
  GDK_KEY_braille_dots_156 = $1002831;  
  GDK_KEY_braille_dots_256 = $1002832;  
  GDK_KEY_braille_dots_1256 = $1002833;  
  GDK_KEY_braille_dots_356 = $1002834;  
  GDK_KEY_braille_dots_1356 = $1002835;  
  GDK_KEY_braille_dots_2356 = $1002836;  
  GDK_KEY_braille_dots_12356 = $1002837;  
  GDK_KEY_braille_dots_456 = $1002838;  
  GDK_KEY_braille_dots_1456 = $1002839;  
  GDK_KEY_braille_dots_2456 = $100283a;  
  GDK_KEY_braille_dots_12456 = $100283b;  
  GDK_KEY_braille_dots_3456 = $100283c;  
  GDK_KEY_braille_dots_13456 = $100283d;  
  GDK_KEY_braille_dots_23456 = $100283e;  
  GDK_KEY_braille_dots_123456 = $100283f;  
  GDK_KEY_braille_dots_7 = $1002840;  
  GDK_KEY_braille_dots_17 = $1002841;  
  GDK_KEY_braille_dots_27 = $1002842;  
  GDK_KEY_braille_dots_127 = $1002843;  
  GDK_KEY_braille_dots_37 = $1002844;  
  GDK_KEY_braille_dots_137 = $1002845;  
  GDK_KEY_braille_dots_237 = $1002846;  
  GDK_KEY_braille_dots_1237 = $1002847;  
  GDK_KEY_braille_dots_47 = $1002848;  
  GDK_KEY_braille_dots_147 = $1002849;  
  GDK_KEY_braille_dots_247 = $100284a;  
  GDK_KEY_braille_dots_1247 = $100284b;  
  GDK_KEY_braille_dots_347 = $100284c;  
  GDK_KEY_braille_dots_1347 = $100284d;  
  GDK_KEY_braille_dots_2347 = $100284e;  
  GDK_KEY_braille_dots_12347 = $100284f;  
  GDK_KEY_braille_dots_57 = $1002850;  
  GDK_KEY_braille_dots_157 = $1002851;  
  GDK_KEY_braille_dots_257 = $1002852;  
  GDK_KEY_braille_dots_1257 = $1002853;  
  GDK_KEY_braille_dots_357 = $1002854;  
  GDK_KEY_braille_dots_1357 = $1002855;  
  GDK_KEY_braille_dots_2357 = $1002856;  
  GDK_KEY_braille_dots_12357 = $1002857;  
  GDK_KEY_braille_dots_457 = $1002858;  
  GDK_KEY_braille_dots_1457 = $1002859;  
  GDK_KEY_braille_dots_2457 = $100285a;  
  GDK_KEY_braille_dots_12457 = $100285b;  
  GDK_KEY_braille_dots_3457 = $100285c;  
  GDK_KEY_braille_dots_13457 = $100285d;  
  GDK_KEY_braille_dots_23457 = $100285e;  
  GDK_KEY_braille_dots_123457 = $100285f;  
  GDK_KEY_braille_dots_67 = $1002860;  
  GDK_KEY_braille_dots_167 = $1002861;  
  GDK_KEY_braille_dots_267 = $1002862;  
  GDK_KEY_braille_dots_1267 = $1002863;  
  GDK_KEY_braille_dots_367 = $1002864;  
  GDK_KEY_braille_dots_1367 = $1002865;  
  GDK_KEY_braille_dots_2367 = $1002866;  
  GDK_KEY_braille_dots_12367 = $1002867;  
  GDK_KEY_braille_dots_467 = $1002868;  
  GDK_KEY_braille_dots_1467 = $1002869;  
  GDK_KEY_braille_dots_2467 = $100286a;  
  GDK_KEY_braille_dots_12467 = $100286b;  
  GDK_KEY_braille_dots_3467 = $100286c;  
  GDK_KEY_braille_dots_13467 = $100286d;  
  GDK_KEY_braille_dots_23467 = $100286e;  
  GDK_KEY_braille_dots_123467 = $100286f;  
  GDK_KEY_braille_dots_567 = $1002870;  
  GDK_KEY_braille_dots_1567 = $1002871;  
  GDK_KEY_braille_dots_2567 = $1002872;  
  GDK_KEY_braille_dots_12567 = $1002873;  
  GDK_KEY_braille_dots_3567 = $1002874;  
  GDK_KEY_braille_dots_13567 = $1002875;  
  GDK_KEY_braille_dots_23567 = $1002876;  
  GDK_KEY_braille_dots_123567 = $1002877;  
  GDK_KEY_braille_dots_4567 = $1002878;  
  GDK_KEY_braille_dots_14567 = $1002879;  
  GDK_KEY_braille_dots_24567 = $100287a;  
  GDK_KEY_braille_dots_124567 = $100287b;  
  GDK_KEY_braille_dots_34567 = $100287c;  
  GDK_KEY_braille_dots_134567 = $100287d;  
  GDK_KEY_braille_dots_234567 = $100287e;  
  GDK_KEY_braille_dots_1234567 = $100287f;  
  GDK_KEY_braille_dots_8 = $1002880;  
  GDK_KEY_braille_dots_18 = $1002881;  
  GDK_KEY_braille_dots_28 = $1002882;  
  GDK_KEY_braille_dots_128 = $1002883;  
  GDK_KEY_braille_dots_38 = $1002884;  
  GDK_KEY_braille_dots_138 = $1002885;  
  GDK_KEY_braille_dots_238 = $1002886;  
  GDK_KEY_braille_dots_1238 = $1002887;  
  GDK_KEY_braille_dots_48 = $1002888;  
  GDK_KEY_braille_dots_148 = $1002889;  
  GDK_KEY_braille_dots_248 = $100288a;  
  GDK_KEY_braille_dots_1248 = $100288b;  
  GDK_KEY_braille_dots_348 = $100288c;  
  GDK_KEY_braille_dots_1348 = $100288d;  
  GDK_KEY_braille_dots_2348 = $100288e;  
  GDK_KEY_braille_dots_12348 = $100288f;  
  GDK_KEY_braille_dots_58 = $1002890;  
  GDK_KEY_braille_dots_158 = $1002891;  
  GDK_KEY_braille_dots_258 = $1002892;  
  GDK_KEY_braille_dots_1258 = $1002893;  
  GDK_KEY_braille_dots_358 = $1002894;  
  GDK_KEY_braille_dots_1358 = $1002895;  
  GDK_KEY_braille_dots_2358 = $1002896;  
  GDK_KEY_braille_dots_12358 = $1002897;  
  GDK_KEY_braille_dots_458 = $1002898;  
  GDK_KEY_braille_dots_1458 = $1002899;  
  GDK_KEY_braille_dots_2458 = $100289a;  
  GDK_KEY_braille_dots_12458 = $100289b;  
  GDK_KEY_braille_dots_3458 = $100289c;  
  GDK_KEY_braille_dots_13458 = $100289d;  
  GDK_KEY_braille_dots_23458 = $100289e;  
  GDK_KEY_braille_dots_123458 = $100289f;  
  GDK_KEY_braille_dots_68 = $10028a0;  
  GDK_KEY_braille_dots_168 = $10028a1;  
  GDK_KEY_braille_dots_268 = $10028a2;  
  GDK_KEY_braille_dots_1268 = $10028a3;  
  GDK_KEY_braille_dots_368 = $10028a4;  
  GDK_KEY_braille_dots_1368 = $10028a5;  
  GDK_KEY_braille_dots_2368 = $10028a6;  
  GDK_KEY_braille_dots_12368 = $10028a7;  
  GDK_KEY_braille_dots_468 = $10028a8;  
  GDK_KEY_braille_dots_1468 = $10028a9;  
  GDK_KEY_braille_dots_2468 = $10028aa;  
  GDK_KEY_braille_dots_12468 = $10028ab;  
  GDK_KEY_braille_dots_3468 = $10028ac;  
  GDK_KEY_braille_dots_13468 = $10028ad;  
  GDK_KEY_braille_dots_23468 = $10028ae;  
  GDK_KEY_braille_dots_123468 = $10028af;  
  GDK_KEY_braille_dots_568 = $10028b0;  
  GDK_KEY_braille_dots_1568 = $10028b1;  
  GDK_KEY_braille_dots_2568 = $10028b2;  
  GDK_KEY_braille_dots_12568 = $10028b3;  
  GDK_KEY_braille_dots_3568 = $10028b4;  
  GDK_KEY_braille_dots_13568 = $10028b5;  
  GDK_KEY_braille_dots_23568 = $10028b6;  
  GDK_KEY_braille_dots_123568 = $10028b7;  
  GDK_KEY_braille_dots_4568 = $10028b8;  
  GDK_KEY_braille_dots_14568 = $10028b9;  
  GDK_KEY_braille_dots_24568 = $10028ba;  
  GDK_KEY_braille_dots_124568 = $10028bb;  
  GDK_KEY_braille_dots_34568 = $10028bc;  
  GDK_KEY_braille_dots_134568 = $10028bd;  
  GDK_KEY_braille_dots_234568 = $10028be;  
  GDK_KEY_braille_dots_1234568 = $10028bf;  
  GDK_KEY_braille_dots_78 = $10028c0;  
  GDK_KEY_braille_dots_178 = $10028c1;  
  GDK_KEY_braille_dots_278 = $10028c2;  
  GDK_KEY_braille_dots_1278 = $10028c3;  
  GDK_KEY_braille_dots_378 = $10028c4;  
  GDK_KEY_braille_dots_1378 = $10028c5;  
  GDK_KEY_braille_dots_2378 = $10028c6;  
  GDK_KEY_braille_dots_12378 = $10028c7;  
  GDK_KEY_braille_dots_478 = $10028c8;  
  GDK_KEY_braille_dots_1478 = $10028c9;  
  GDK_KEY_braille_dots_2478 = $10028ca;  
  GDK_KEY_braille_dots_12478 = $10028cb;  
  GDK_KEY_braille_dots_3478 = $10028cc;  
  GDK_KEY_braille_dots_13478 = $10028cd;  
  GDK_KEY_braille_dots_23478 = $10028ce;  
  GDK_KEY_braille_dots_123478 = $10028cf;  
  GDK_KEY_braille_dots_578 = $10028d0;  
  GDK_KEY_braille_dots_1578 = $10028d1;  
  GDK_KEY_braille_dots_2578 = $10028d2;  
  GDK_KEY_braille_dots_12578 = $10028d3;  
  GDK_KEY_braille_dots_3578 = $10028d4;  
  GDK_KEY_braille_dots_13578 = $10028d5;  
  GDK_KEY_braille_dots_23578 = $10028d6;  
  GDK_KEY_braille_dots_123578 = $10028d7;  
  GDK_KEY_braille_dots_4578 = $10028d8;  
  GDK_KEY_braille_dots_14578 = $10028d9;  
  GDK_KEY_braille_dots_24578 = $10028da;  
  GDK_KEY_braille_dots_124578 = $10028db;  
  GDK_KEY_braille_dots_34578 = $10028dc;  
  GDK_KEY_braille_dots_134578 = $10028dd;  
  GDK_KEY_braille_dots_234578 = $10028de;  
  GDK_KEY_braille_dots_1234578 = $10028df;  
  GDK_KEY_braille_dots_678 = $10028e0;  
  GDK_KEY_braille_dots_1678 = $10028e1;  
  GDK_KEY_braille_dots_2678 = $10028e2;  
  GDK_KEY_braille_dots_12678 = $10028e3;  
  GDK_KEY_braille_dots_3678 = $10028e4;  
  GDK_KEY_braille_dots_13678 = $10028e5;  
  GDK_KEY_braille_dots_23678 = $10028e6;  
  GDK_KEY_braille_dots_123678 = $10028e7;  
  GDK_KEY_braille_dots_4678 = $10028e8;  
  GDK_KEY_braille_dots_14678 = $10028e9;  
  GDK_KEY_braille_dots_24678 = $10028ea;  
  GDK_KEY_braille_dots_124678 = $10028eb;  
  GDK_KEY_braille_dots_34678 = $10028ec;  
  GDK_KEY_braille_dots_134678 = $10028ed;  
  GDK_KEY_braille_dots_234678 = $10028ee;  
  GDK_KEY_braille_dots_1234678 = $10028ef;  
  GDK_KEY_braille_dots_5678 = $10028f0;  
  GDK_KEY_braille_dots_15678 = $10028f1;  
  GDK_KEY_braille_dots_25678 = $10028f2;  
  GDK_KEY_braille_dots_125678 = $10028f3;  
  GDK_KEY_braille_dots_35678 = $10028f4;  
  GDK_KEY_braille_dots_135678 = $10028f5;  
  GDK_KEY_braille_dots_235678 = $10028f6;  
  GDK_KEY_braille_dots_1235678 = $10028f7;  
  GDK_KEY_braille_dots_45678 = $10028f8;  
  GDK_KEY_braille_dots_145678 = $10028f9;  
  GDK_KEY_braille_dots_245678 = $10028fa;  
  GDK_KEY_braille_dots_1245678 = $10028fb;  
  GDK_KEY_braille_dots_345678 = $10028fc;  
  GDK_KEY_braille_dots_1345678 = $10028fd;  
  GDK_KEY_braille_dots_2345678 = $10028fe;  
  GDK_KEY_braille_dots_12345678 = $10028ff;  
  GDK_KEY_Sinh_ng = $1000d82;  
  GDK_KEY_Sinh_h2 = $1000d83;  
  GDK_KEY_Sinh_a = $1000d85;  
  GDK_KEY_Sinh_aa = $1000d86;  
  GDK_KEY_Sinh_ae = $1000d87;  
  GDK_KEY_Sinh_aee = $1000d88;  
  GDK_KEY_Sinh_i = $1000d89;  
  GDK_KEY_Sinh_ii = $1000d8a;  
  GDK_KEY_Sinh_u = $1000d8b;  
  GDK_KEY_Sinh_uu = $1000d8c;  
  GDK_KEY_Sinh_ri = $1000d8d;  
  GDK_KEY_Sinh_rii = $1000d8e;  
  GDK_KEY_Sinh_lu = $1000d8f;  
  GDK_KEY_Sinh_luu = $1000d90;  
  GDK_KEY_Sinh_e = $1000d91;  
  GDK_KEY_Sinh_ee = $1000d92;  
  GDK_KEY_Sinh_ai = $1000d93;  
  GDK_KEY_Sinh_o = $1000d94;  
  GDK_KEY_Sinh_oo = $1000d95;  
  GDK_KEY_Sinh_au = $1000d96;  
  GDK_KEY_Sinh_ka = $1000d9a;  
  GDK_KEY_Sinh_kha = $1000d9b;  
  GDK_KEY_Sinh_ga = $1000d9c;  
  GDK_KEY_Sinh_gha = $1000d9d;  
  GDK_KEY_Sinh_ng2 = $1000d9e;  
  GDK_KEY_Sinh_nga = $1000d9f;  
  GDK_KEY_Sinh_ca = $1000da0;  
  GDK_KEY_Sinh_cha = $1000da1;  
  GDK_KEY_Sinh_ja = $1000da2;  
  GDK_KEY_Sinh_jha = $1000da3;  
  GDK_KEY_Sinh_nya = $1000da4;  
  GDK_KEY_Sinh_jnya = $1000da5;  
  GDK_KEY_Sinh_nja = $1000da6;  
  GDK_KEY_Sinh_tta = $1000da7;  
  GDK_KEY_Sinh_ttha = $1000da8;  
  GDK_KEY_Sinh_dda = $1000da9;  
  GDK_KEY_Sinh_ddha = $1000daa;  
  GDK_KEY_Sinh_nna = $1000dab;  
  GDK_KEY_Sinh_ndda = $1000dac;  
  GDK_KEY_Sinh_tha = $1000dad;  
  GDK_KEY_Sinh_thha = $1000dae;  
  GDK_KEY_Sinh_dha = $1000daf;  
  GDK_KEY_Sinh_dhha = $1000db0;  
  GDK_KEY_Sinh_na = $1000db1;  
  GDK_KEY_Sinh_ndha = $1000db3;  
  GDK_KEY_Sinh_pa = $1000db4;  
  GDK_KEY_Sinh_pha = $1000db5;  
  GDK_KEY_Sinh_ba = $1000db6;  
  GDK_KEY_Sinh_bha = $1000db7;  
  GDK_KEY_Sinh_ma = $1000db8;  
  GDK_KEY_Sinh_mba = $1000db9;  
  GDK_KEY_Sinh_ya = $1000dba;  
  GDK_KEY_Sinh_ra = $1000dbb;  
  GDK_KEY_Sinh_la = $1000dbd;  
  GDK_KEY_Sinh_va = $1000dc0;  
  GDK_KEY_Sinh_sha = $1000dc1;  
  GDK_KEY_Sinh_ssha = $1000dc2;  
  GDK_KEY_Sinh_sa = $1000dc3;  
  GDK_KEY_Sinh_ha = $1000dc4;  
  GDK_KEY_Sinh_lla = $1000dc5;  
  GDK_KEY_Sinh_fa = $1000dc6;  
  GDK_KEY_Sinh_al = $1000dca;  
  GDK_KEY_Sinh_aa2 = $1000dcf;  
  GDK_KEY_Sinh_ae2 = $1000dd0;  
  GDK_KEY_Sinh_aee2 = $1000dd1;  
  GDK_KEY_Sinh_i2 = $1000dd2;  
  GDK_KEY_Sinh_ii2 = $1000dd3;  
  GDK_KEY_Sinh_u2 = $1000dd4;  
  GDK_KEY_Sinh_uu2 = $1000dd6;  
  GDK_KEY_Sinh_ru2 = $1000dd8;  
  GDK_KEY_Sinh_e2 = $1000dd9;  
  GDK_KEY_Sinh_ee2 = $1000dda;  
  GDK_KEY_Sinh_ai2 = $1000ddb;  
  GDK_KEY_Sinh_o2 = $1000ddc;  
  GDK_KEY_Sinh_oo2 = $1000ddd;  
  GDK_KEY_Sinh_au2 = $1000dde;  
  GDK_KEY_Sinh_lu2 = $1000ddf;  
  GDK_KEY_Sinh_ruu2 = $1000df2;  
  GDK_KEY_Sinh_luu2 = $1000df3;  
  GDK_KEY_Sinh_kunddaliya = $1000df4;  
  GDK_KEY_ModeLock = $1008ff01;  
  GDK_KEY_MonBrightnessUp = $1008ff02;  
  GDK_KEY_MonBrightnessDown = $1008ff03;  
  GDK_KEY_KbdLightOnOff = $1008ff04;  
  GDK_KEY_KbdBrightnessUp = $1008ff05;  
  GDK_KEY_KbdBrightnessDown = $1008ff06;  
  GDK_KEY_Standby = $1008ff10;  
  GDK_KEY_AudioLowerVolume = $1008ff11;  
  GDK_KEY_AudioMute = $1008ff12;  
  GDK_KEY_AudioRaiseVolume = $1008ff13;  
  GDK_KEY_AudioPlay = $1008ff14;  
  GDK_KEY_AudioStop = $1008ff15;  
  GDK_KEY_AudioPrev = $1008ff16;  
  GDK_KEY_AudioNext = $1008ff17;  
  GDK_KEY_HomePage = $1008ff18;  
  GDK_KEY_Mail = $1008ff19;  
  GDK_KEY_Start = $1008ff1a;  
  GDK_KEY_Search = $1008ff1b;  
  GDK_KEY_AudioRecord = $1008ff1c;  
  GDK_KEY_Calculator = $1008ff1d;  
  GDK_KEY_Memo = $1008ff1e;  
  GDK_KEY_ToDoList = $1008ff1f;  
  GDK_KEY_Calendar = $1008ff20;  
  GDK_KEY_PowerDown = $1008ff21;  
  GDK_KEY_ContrastAdjust = $1008ff22;  
  GDK_KEY_RockerUp = $1008ff23;  
  GDK_KEY_RockerDown = $1008ff24;  
  GDK_KEY_RockerEnter = $1008ff25;  
  GDK_KEY_Back = $1008ff26;  
  GDK_KEY_Forward = $1008ff27;  
  GDK_KEY_Stop = $1008ff28;  
  GDK_KEY_Refresh = $1008ff29;  
  GDK_KEY_PowerOff = $1008ff2a;  
  GDK_KEY_WakeUp = $1008ff2b;  
  GDK_KEY_Eject = $1008ff2c;  
  GDK_KEY_ScreenSaver = $1008ff2d;  
  GDK_KEY_WWW = $1008ff2e;  
  GDK_KEY_Sleep = $1008ff2f;  
  GDK_KEY_Favorites = $1008ff30;  
  GDK_KEY_AudioPause = $1008ff31;  
  GDK_KEY_AudioMedia = $1008ff32;  
  GDK_KEY_MyComputer = $1008ff33;  
  GDK_KEY_VendorHome = $1008ff34;  
  GDK_KEY_LightBulb = $1008ff35;  
  GDK_KEY_Shop = $1008ff36;  
  GDK_KEY_History = $1008ff37;  
  GDK_KEY_OpenURL = $1008ff38;  
  GDK_KEY_AddFavorite = $1008ff39;  
  GDK_KEY_HotLinks = $1008ff3a;  
  GDK_KEY_BrightnessAdjust = $1008ff3b;  
  GDK_KEY_Finance = $1008ff3c;  
  GDK_KEY_Community = $1008ff3d;  
  GDK_KEY_AudioRewind = $1008ff3e;  
  GDK_KEY_BackForward = $1008ff3f;  
  GDK_KEY_Launch0 = $1008ff40;  
  GDK_KEY_Launch1 = $1008ff41;  
  GDK_KEY_Launch2 = $1008ff42;  
  GDK_KEY_Launch3 = $1008ff43;  
  GDK_KEY_Launch4 = $1008ff44;  
  GDK_KEY_Launch5 = $1008ff45;  
  GDK_KEY_Launch6 = $1008ff46;  
  GDK_KEY_Launch7 = $1008ff47;  
  GDK_KEY_Launch8 = $1008ff48;  
  GDK_KEY_Launch9 = $1008ff49;  
  GDK_KEY_LaunchA = $1008ff4a;  
  GDK_KEY_LaunchB = $1008ff4b;  
  GDK_KEY_LaunchC = $1008ff4c;  
  GDK_KEY_LaunchD = $1008ff4d;  
  GDK_KEY_LaunchE = $1008ff4e;  
  GDK_KEY_LaunchF = $1008ff4f;  
  GDK_KEY_ApplicationLeft = $1008ff50;  
  GDK_KEY_ApplicationRight = $1008ff51;  
  GDK_KEY_Book = $1008ff52;  
  GDK_KEY_CD = $1008ff53;  
  GDK_KEY_WindowClear = $1008ff55;  
  GDK_KEY_Close = $1008ff56;  
  GDK_KEY_Copy = $1008ff57;  
  GDK_KEY_Cut = $1008ff58;  
  GDK_KEY_Display = $1008ff59;  
  GDK_KEY_DOS = $1008ff5a;  
  GDK_KEY_Documents = $1008ff5b;  
  GDK_KEY_Excel = $1008ff5c;  
  GDK_KEY_Explorer = $1008ff5d;  
  GDK_KEY_Game = $1008ff5e;  
  GDK_KEY_Go = $1008ff5f;  
  GDK_KEY_iTouch = $1008ff60;  
  GDK_KEY_LogOff = $1008ff61;  
  GDK_KEY_Market = $1008ff62;  
  GDK_KEY_Meeting = $1008ff63;  
  GDK_KEY_MenuKB = $1008ff65;  
  GDK_KEY_MenuPB = $1008ff66;  
  GDK_KEY_MySites = $1008ff67;  
  GDK_KEY_New = $1008ff68;  
  GDK_KEY_News = $1008ff69;  
  GDK_KEY_OfficeHome = $1008ff6a;  
  GDK_KEY_Open = $1008ff6b;  
  GDK_KEY_Option = $1008ff6c;  
  GDK_KEY_Paste = $1008ff6d;  
  GDK_KEY_Phone = $1008ff6e;  
  GDK_KEY_Reply = $1008ff72;  
  GDK_KEY_Reload = $1008ff73;  
  GDK_KEY_RotateWindows = $1008ff74;  
  GDK_KEY_RotationPB = $1008ff75;  
  GDK_KEY_RotationKB = $1008ff76;  
  GDK_KEY_Save = $1008ff77;  
  GDK_KEY_ScrollUp = $1008ff78;  
  GDK_KEY_ScrollDown = $1008ff79;  
  GDK_KEY_ScrollClick = $1008ff7a;  
  GDK_KEY_Send = $1008ff7b;  
  GDK_KEY_Spell = $1008ff7c;  
  GDK_KEY_SplitScreen = $1008ff7d;  
  GDK_KEY_Support = $1008ff7e;  
  GDK_KEY_TaskPane = $1008ff7f;  
  GDK_KEY_Terminal = $1008ff80;  
  GDK_KEY_Tools = $1008ff81;  
  GDK_KEY_Travel = $1008ff82;  
  GDK_KEY_UserPB = $1008ff84;  
  GDK_KEY_User1KB = $1008ff85;  
  GDK_KEY_User2KB = $1008ff86;  
  GDK_KEY_Video = $1008ff87;  
  GDK_KEY_WheelButton = $1008ff88;  
  GDK_KEY_Word = $1008ff89;  
  GDK_KEY_Xfer = $1008ff8a;  
  GDK_KEY_ZoomIn = $1008ff8b;  
  GDK_KEY_ZoomOut = $1008ff8c;  
  GDK_KEY_Away = $1008ff8d;  
  GDK_KEY_Messenger = $1008ff8e;  
  GDK_KEY_WebCam = $1008ff8f;  
  GDK_KEY_MailForward = $1008ff90;  
  GDK_KEY_Pictures = $1008ff91;  
  GDK_KEY_Music = $1008ff92;  
  GDK_KEY_Battery = $1008ff93;  
  GDK_KEY_Bluetooth = $1008ff94;  
  GDK_KEY_WLAN = $1008ff95;  
  GDK_KEY_UWB = $1008ff96;  
  GDK_KEY_AudioForward = $1008ff97;  
  GDK_KEY_AudioRepeat = $1008ff98;  
  GDK_KEY_AudioRandomPlay = $1008ff99;  
  GDK_KEY_Subtitle = $1008ff9a;  
  GDK_KEY_AudioCycleTrack = $1008ff9b;  
  GDK_KEY_CycleAngle = $1008ff9c;  
  GDK_KEY_FrameBack = $1008ff9d;  
  GDK_KEY_FrameForward = $1008ff9e;  
  GDK_KEY_Time = $1008ff9f;  
  GDK_KEY_SelectButton = $1008ffa0;  
  GDK_KEY_View = $1008ffa1;  
  GDK_KEY_TopMenu = $1008ffa2;  
  GDK_KEY_Red = $1008ffa3;  
  GDK_KEY_Green = $1008ffa4;  
  GDK_KEY_Yellow = $1008ffa5;  
  GDK_KEY_Blue = $1008ffa6;  
  GDK_KEY_Suspend = $1008ffa7;  
  GDK_KEY_Hibernate = $1008ffa8;  
  GDK_KEY_TouchpadToggle = $1008ffa9;  
  GDK_KEY_TouchpadOn = $1008ffb0;  
  GDK_KEY_TouchpadOff = $1008ffb1;  
  GDK_KEY_AudioMicMute = $1008ffb2;  
  GDK_KEY_Keyboard = $1008ffb3;  
  GDK_KEY_WWAN = $1008ffb4;  
  GDK_KEY_RFKill = $1008ffb5;  
  GDK_KEY_AudioPreset = $1008ffb6;  
  GDK_KEY_Switch_VT_1 = $1008fe01;  
  GDK_KEY_Switch_VT_2 = $1008fe02;  
  GDK_KEY_Switch_VT_3 = $1008fe03;  
  GDK_KEY_Switch_VT_4 = $1008fe04;  
  GDK_KEY_Switch_VT_5 = $1008fe05;  
  GDK_KEY_Switch_VT_6 = $1008fe06;  
  GDK_KEY_Switch_VT_7 = $1008fe07;  
  GDK_KEY_Switch_VT_8 = $1008fe08;  
  GDK_KEY_Switch_VT_9 = $1008fe09;  
  GDK_KEY_Switch_VT_10 = $1008fe0a;  
  GDK_KEY_Switch_VT_11 = $1008fe0b;  
  GDK_KEY_Switch_VT_12 = $1008fe0c;  
  GDK_KEY_Ungrab = $1008fe20;  
  GDK_KEY_ClearGrab = $1008fe21;  
  GDK_KEY_Next_VMode = $1008fe22;  
  GDK_KEY_Prev_VMode = $1008fe23;  
  GDK_KEY_LogWindowTree = $1008fe24;  
  GDK_KEY_LogGrabInfo = $1008fe25;  
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gdkpopuplayout.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gdkpopuplayout.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gdkpopuplayout.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGdkPopupLayout  = ^GdkPopupLayout;
PGdkRectangle  = ^GdkRectangle;
Plongint  = ^longint;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GDK_POPUP_LAYOUT_H__}
//// {$define __GDK_POPUP_LAYOUT_H__}
//// {$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gdk/gdk.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdkenums.h>}
//// {$include <gdk/gdktypes.h>}
//// {$include <gdk/gdkversionmacros.h>}

type
  TGdkAnchorHints = (GDK_ANCHOR_FLIP_X := 1 shl 0,GDK_ANCHOR_FLIP_Y := 1 shl 1,
    GDK_ANCHOR_SLIDE_X := 1 shl 2,GDK_ANCHOR_SLIDE_Y := 1 shl 3,
    GDK_ANCHOR_RESIZE_X := 1 shl 4,GDK_ANCHOR_RESIZE_Y := 1 shl 5,
    GDK_ANCHOR_FLIP := GDK_ANCHOR_FLIP_X or GDK_ANCHOR_FLIP_Y,GDK_ANCHOR_SLIDE := GDK_ANCHOR_SLIDE_X or GDK_ANCHOR_SLIDE_Y,
    GDK_ANCHOR_RESIZE := GDK_ANCHOR_RESIZE_X or GDK_ANCHOR_RESIZE_Y);
  T_GdkPopupLayout = TGdkPopupLayout;

function GDK_TYPE_POPUP_LAYOUT : longint; { return type might be wrong }

function gdk_popup_layout_get_type:TGType;cdecl;external;
function gdk_popup_layout_new(anchor_rect:PTGdkRectangle; rect_anchor:TGdkGravity; surface_anchor:TGdkGravity):^TGdkPopupLayout;cdecl;external;
function gdk_popup_layout_ref(layout:PTGdkPopupLayout):^TGdkPopupLayout;cdecl;external;
procedure gdk_popup_layout_unref(layout:PTGdkPopupLayout);cdecl;external;
function gdk_popup_layout_copy(layout:PTGdkPopupLayout):^TGdkPopupLayout;cdecl;external;
function gdk_popup_layout_equal(layout:PTGdkPopupLayout; other:PTGdkPopupLayout):Tgboolean;cdecl;external;
procedure gdk_popup_layout_set_anchor_rect(layout:PTGdkPopupLayout; anchor_rect:PTGdkRectangle);cdecl;external;
function gdk_popup_layout_get_anchor_rect(layout:PTGdkPopupLayout):^TGdkRectangle;cdecl;external;
procedure gdk_popup_layout_set_rect_anchor(layout:PTGdkPopupLayout; anchor:TGdkGravity);cdecl;external;
function gdk_popup_layout_get_rect_anchor(layout:PTGdkPopupLayout):TGdkGravity;cdecl;external;
procedure gdk_popup_layout_set_surface_anchor(layout:PTGdkPopupLayout; anchor:TGdkGravity);cdecl;external;
function gdk_popup_layout_get_surface_anchor(layout:PTGdkPopupLayout):TGdkGravity;cdecl;external;
procedure gdk_popup_layout_set_anchor_hints(layout:PTGdkPopupLayout; anchor_hints:TGdkAnchorHints);cdecl;external;
function gdk_popup_layout_get_anchor_hints(layout:PTGdkPopupLayout):TGdkAnchorHints;cdecl;external;
procedure gdk_popup_layout_set_offset(layout:PTGdkPopupLayout; dx:longint; dy:longint);cdecl;external;
procedure gdk_popup_layout_get_offset(layout:PTGdkPopupLayout; dx:Plongint; dy:Plongint);cdecl;external;
procedure gdk_popup_layout_set_shadow_width(layout:PTGdkPopupLayout; left:longint; right:longint; top:longint; bottom:longint);cdecl;external;
procedure gdk_popup_layout_get_shadow_width(layout:PTGdkPopupLayout; left:Plongint; right:Plongint; top:Plongint; bottom:Plongint);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gdkdisplaymanager.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gdkdisplaymanager.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gdkdisplaymanager.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGdkDisplay  = ^GdkDisplay;
PGdkDisplayManager  = ^GdkDisplayManager;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef __GDK_DISPLAY_MANAGER_H__}
//// {$define __GDK_DISPLAY_MANAGER_H__}
//// {$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gdk/gdk.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdktypes.h>}
//// {$include <gdk/gdkdisplay.h>}

function GDK_TYPE_DISPLAY_MANAGER : longint; { return type might be wrong }

function GDK_DISPLAY_MANAGER(object : longint) : longint;

function GDK_IS_DISPLAY_MANAGER(object : longint) : longint;

function gdk_display_manager_get_type:TGType;cdecl;external;
function gdk_display_manager_get:^TGdkDisplayManager;cdecl;external;
function gdk_display_manager_get_default_display(manager:PTGdkDisplayManager):^TGdkDisplay;cdecl;external;
procedure gdk_display_manager_set_default_display(manager:PTGdkDisplayManager; display:PTGdkDisplay);cdecl;external;
function gdk_display_manager_list_displays(manager:PTGdkDisplayManager):^TGSList;cdecl;external;
function gdk_display_manager_open_display(manager:PTGdkDisplayManager; name:Pchar):^TGdkDisplay;cdecl;external;
procedure gdk_set_allowed_backends(backends:Pchar);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gdk.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gdk.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gdk.h
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




//// {$ifndef __GDK_H__}
//// {$define __GDK_H__}
//// {$define __GDK_H_INSIDE__}
//// {$include <gdk/gdkapplaunchcontext.h>}
//// {$include <gdk/gdkcairo.h>}
//// {$include <gdk/gdkcairocontext.h>}
//// {$include <gdk/gdkclipboard.h>}
//// {$include <gdk/gdkconfig.h>}
//// {$include <gdk/gdkcontentdeserializer.h>}
//// {$include <gdk/gdkcontentformats.h>}
//// {$include <gdk/gdkcontentprovider.h>}
//// {$include <gdk/gdkcontentproviderimpl.h>}
//// {$include <gdk/gdkcontentserializer.h>}
//// {$include <gdk/gdkcursor.h>}
//// {$include <gdk/gdkdevice.h>}
//// {$include <gdk/gdkdevicepad.h>}
//// {$include <gdk/gdkdevicetool.h>}
//// {$include <gdk/gdkdisplay.h>}
//// {$include <gdk/gdkdisplaymanager.h>}
//// {$include <gdk/gdkdrag.h>}
//// {$include <gdk/gdkdragsurface.h>}
//// {$include <gdk/gdkdrawcontext.h>}
//// {$include <gdk/gdkdrop.h>}
//// {$include <gdk/gdkenums.h>}
//// {$include <gdk/gdkenumtypes.h>}
//// {$include <gdk/gdkevents.h>}
//// {$include <gdk/gdkframeclock.h>}
//// {$include <gdk/gdkframetimings.h>}
//// {$include <gdk/gdkglcontext.h>}
//// {$include <gdk/gdkgltexture.h>}
//// {$include <gdk/gdkkeys.h>}
//// {$include <gdk/gdkkeysyms.h>}
//// {$include <gdk/gdkmemorytexture.h>}
//// {$include <gdk/gdkmonitor.h>}
//// {$include <gdk/gdkpaintable.h>}
//// {$include <gdk/gdkpango.h>}
//// {$include <gdk/gdkpixbuf.h>}
//// {$include <gdk/gdkpopup.h>}
//// {$include <gdk/gdkpopuplayout.h>}
//// {$include <gdk/gdkrectangle.h>}
//// {$include <gdk/gdkrgba.h>}
//// {$include <gdk/gdkseat.h>}
//// {$include <gdk/gdksnapshot.h>}
//// {$include <gdk/gdksurface.h>}
//// {$include <gdk/gdktexture.h>}
//// {$include <gdk/gdktoplevel.h>}
//// {$include <gdk/gdktoplevellayout.h>}
//// {$include <gdk/gdktoplevelsize.h>}
//// {$include <gdk/gdktypes.h>}
//// {$include <gdk/gdkversionmacros.h>}
//// {$include <gdk/gdkvulkancontext.h>}
//// {$include <gdk/gdk-autocleanup.h>}
//// {$undef __GDK_H_INSIDE__}
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gdkpopup.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gdkpopup.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gdkpopup.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGdkPopup  = ^GdkPopup;
PGdkPopupLayout  = ^GdkPopupLayout;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GDK_POPUP_H__}
//// {$define __GDK_POPUP_H__}
//// {$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gdk/gdk.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdkpopuplayout.h>}
//// {$include <gdk/gdksurface.h>}

function GDK_TYPE_POPUP : longint; { return type might be wrong }

function gdk_popup_present(popup:PTGdkPopup; width:longint; height:longint; layout:PTGdkPopupLayout):Tgboolean;cdecl;external;
function gdk_popup_get_surface_anchor(popup:PTGdkPopup):TGdkGravity;cdecl;external;
function gdk_popup_get_rect_anchor(popup:PTGdkPopup):TGdkGravity;cdecl;external;
function gdk_popup_get_parent(popup:PTGdkPopup):^TGdkSurface;cdecl;external;
function gdk_popup_get_position_x(popup:PTGdkPopup):longint;cdecl;external;
function gdk_popup_get_position_y(popup:PTGdkPopup):longint;cdecl;external;
function gdk_popup_get_autohide(popup:PTGdkPopup):Tgboolean;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gdkseat.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gdkseat.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gdkseat.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGdkSeat  = ^GdkSeat;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GDK_SEAT_H__}
//// {$define __GDK_SEAT_H__}
//// {$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gdk/gdk.h> can be included directly."}
//// {$endif}
//// {$include <glib-object.h>}
//// {$include <gdk/gdksurface.h>}
//// {$include <gdk/gdkevents.h>}
//// {$include <gdk/gdktypes.h>}

function GDK_TYPE_SEAT : longint; { return type might be wrong }

function GDK_SEAT(o : longint) : longint;

function GDK_IS_SEAT(o : longint) : longint;


type
  TGdkSeatCapabilities = (GDK_SEAT_CAPABILITY_NONE := 0,GDK_SEAT_CAPABILITY_POINTER := 1 shl 0,
    GDK_SEAT_CAPABILITY_TOUCH := 1 shl 1,GDK_SEAT_CAPABILITY_TABLET_STYLUS := 1 shl 2,
    GDK_SEAT_CAPABILITY_KEYBOARD := 1 shl 3,GDK_SEAT_CAPABILITY_TABLET_PAD := 1 shl 4,
    GDK_SEAT_CAPABILITY_ALL_POINTING := (GDK_SEAT_CAPABILITY_POINTER or GDK_SEAT_CAPABILITY_TOUCH) or GDK_SEAT_CAPABILITY_TABLET_STYLUS,
    GDK_SEAT_CAPABILITY_ALL := GDK_SEAT_CAPABILITY_ALL_POINTING or GDK_SEAT_CAPABILITY_KEYBOARD);
  T_GdkSeat = record
      parent_instance : TGObject;
    end;


function gdk_seat_get_type:TGType;cdecl;external;
function gdk_seat_get_display(seat:PTGdkSeat):^TGdkDisplay;cdecl;external;
function gdk_seat_get_capabilities(seat:PTGdkSeat):TGdkSeatCapabilities;cdecl;external;
function gdk_seat_get_devices(seat:PTGdkSeat; capabilities:TGdkSeatCapabilities):^TGList;cdecl;external;
function gdk_seat_get_tools(seat:PTGdkSeat):^TGList;cdecl;external;
function gdk_seat_get_pointer(seat:PTGdkSeat):^TGdkDevice;cdecl;external;
function gdk_seat_get_keyboard(seat:PTGdkSeat):^TGdkDevice;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gdkcontentprovider.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gdkcontentprovider.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gdkcontentprovider.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGAsyncResult  = ^GAsyncResult;
PGCancellable  = ^GCancellable;
PGdkClipboard  = ^GdkClipboard;
PGdkContentFormats  = ^GdkContentFormats;
PGdkContentProvider  = ^GdkContentProvider;
PGError  = ^GError;
PGOutputStream  = ^GOutputStream;
PGValue  = ^GValue;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GDK_CONTENT_PROVIDER_H__}
//// {$define __GDK_CONTENT_PROVIDER_H__}
//// {$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gdk/gdk.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdkversionmacros.h>}
//// {$include <gdk/gdktypes.h>}

function GDK_TYPE_CONTENT_PROVIDER : longint; { return type might be wrong }

function GDK_CONTENT_PROVIDER(obj : longint) : longint;

function GDK_IS_CONTENT_PROVIDER(obj : longint) : longint;

function GDK_CONTENT_PROVIDER_CLASS(klass : longint) : longint;

function GDK_IS_CONTENT_PROVIDER_CLASS(klass : longint) : longint;

function GDK_CONTENT_PROVIDER_GET_CLASS(obj : longint) : longint;

type
  T_GdkContentProviderClass = TGdkContentProviderClass;
  T_GdkContentProvider = record
      parent : TGObject;
    end;






  T_GdkContentProviderClass = record
      parent_class : TGObjectClass;
      content_changed : procedure (provider:PTGdkContentProvider);cdecl;
      attach_clipboard : procedure (provider:PTGdkContentProvider; clipboard:PTGdkClipboard);cdecl;
      detach_clipboard : procedure (provider:PTGdkContentProvider; clipboard:PTGdkClipboard);cdecl;
      ref_formats : function (provider:PTGdkContentProvider):PTGdkContentFormats;cdecl;
      ref_storable_formats : function (provider:PTGdkContentProvider):PTGdkContentFormats;cdecl;
      write_mime_type_async : procedure (provider:PTGdkContentProvider; mime_type:Pchar; stream:PTGOutputStream; io_priority:longint; cancellable:PTGCancellable; 
                    callback:TGAsyncReadyCallback; user_data:Tgpointer);cdecl;
      write_mime_type_finish : function (provider:PTGdkContentProvider; result:PTGAsyncResult; error:PPTGError):Tgboolean;cdecl;
      get_value : function (provider:PTGdkContentProvider; value:PTGValue; error:PPTGError):Tgboolean;cdecl;
      padding : array[0..7] of Tgpointer;
    end;


function gdk_content_provider_get_type:TGType;cdecl;external;
function gdk_content_provider_ref_formats(provider:PTGdkContentProvider):^TGdkContentFormats;cdecl;external;
function gdk_content_provider_ref_storable_formats(provider:PTGdkContentProvider):^TGdkContentFormats;cdecl;external;
procedure gdk_content_provider_content_changed(provider:PTGdkContentProvider);cdecl;external;
procedure gdk_content_provider_write_mime_type_async(provider:PTGdkContentProvider; mime_type:Pchar; stream:PTGOutputStream; io_priority:longint; cancellable:PTGCancellable; 
            callback:TGAsyncReadyCallback; user_data:Tgpointer);cdecl;external;
function gdk_content_provider_write_mime_type_finish(provider:PTGdkContentProvider; result:PTGAsyncResult; error:PPTGError):Tgboolean;cdecl;external;
function gdk_content_provider_get_value(provider:PTGdkContentProvider; value:PTGValue; error:PPTGError):Tgboolean;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gdkpixbuf.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gdkpixbuf.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gdkpixbuf.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pcairo_surface_t  = ^cairo_surface_t;
PGdkTexture  = ^GdkTexture;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef __GDK_PIXBUF_H__}
//// {$define __GDK_PIXBUF_H__}
//// {$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gdk/gdk.h> can be included directly."}
//// {$endif}
//// {$include <cairo.h>}
//// {$include <gdk-pixbuf/gdk-pixbuf.h>}
//// {$include <gdk/gdktypes.h>}
//// {$include <gdk/gdkversionmacros.h>}
//// {$include <gdk/gdktexture.h>}

function gdk_pixbuf_get_from_surface(surface:PTcairo_surface_t; src_x:longint; src_y:longint; width:longint; height:longint):^TGdkPixbuf;cdecl;external;
function gdk_pixbuf_get_from_texture(texture:PTGdkTexture):^TGdkPixbuf;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gdkdrag.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gdkdrag.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gdkdrag.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGdkContentProvider  = ^GdkContentProvider;
PGdkDevice  = ^GdkDevice;
PGdkDrag  = ^GdkDrag;
PGdkSurface  = ^GdkSurface;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef __GDK_DND_H__}
//// {$define __GDK_DND_H__}
//// {$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gdk/gdk.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdkdevice.h>}
//// {$include <gdk/gdkenums.h>}
//// {$include <gdk/gdkevents.h>}
//// {$include <gdk/gdktypes.h>}

function GDK_TYPE_DRAG : longint; { return type might be wrong }

function GDK_DRAG(object : longint) : longint;

function GDK_IS_DRAG(object : longint) : longint;


type
  TGdkDragCancelReason = (GDK_DRAG_CANCEL_NO_TARGET,GDK_DRAG_CANCEL_USER_CANCELLED,
    GDK_DRAG_CANCEL_ERROR);

function gdk_drag_get_type:TGType;cdecl;external;
function gdk_drag_get_display(drag:PTGdkDrag):^TGdkDisplay;cdecl;external;
function gdk_drag_get_device(drag:PTGdkDrag):^TGdkDevice;cdecl;external;
function gdk_drag_get_formats(drag:PTGdkDrag):^TGdkContentFormats;cdecl;external;
function gdk_drag_get_actions(drag:PTGdkDrag):TGdkDragAction;cdecl;external;
function gdk_drag_get_selected_action(drag:PTGdkDrag):TGdkDragAction;cdecl;external;
function gdk_drag_action_is_unique(action:TGdkDragAction):Tgboolean;cdecl;external;
function gdk_drag_begin(surface:PTGdkSurface; device:PTGdkDevice; content:PTGdkContentProvider; actions:TGdkDragAction; dx:Tdouble; 
           dy:Tdouble):^TGdkDrag;cdecl;external;
procedure gdk_drag_drop_done(drag:PTGdkDrag; success:Tgboolean);cdecl;external;
function gdk_drag_get_drag_surface(drag:PTGdkDrag):^TGdkSurface;cdecl;external;
procedure gdk_drag_set_hotspot(drag:PTGdkDrag; hot_x:longint; hot_y:longint);cdecl;external;
function gdk_drag_get_content(drag:PTGdkDrag):^TGdkContentProvider;cdecl;external;
function gdk_drag_get_surface(drag:PTGdkDrag):^TGdkSurface;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gdkframetimings.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gdkframetimings.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gdkframetimings.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGdkFrameTimings  = ^GdkFrameTimings;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GDK_FRAME_TIMINGS_H__}
//// {$define __GDK_FRAME_TIMINGS_H__}
//// {$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gdk/gdk.h> can be included directly."}
//// {$endif}
//// {$include <glib-object.h>}
//// {$include <gdk/gdkversionmacros.h>}
type
  T_GdkFrameTimings = TGdkFrameTimings;

function gdk_frame_timings_get_type:TGType;cdecl;external;
function gdk_frame_timings_ref(timings:PTGdkFrameTimings):^TGdkFrameTimings;cdecl;external;
procedure gdk_frame_timings_unref(timings:PTGdkFrameTimings);cdecl;external;
function gdk_frame_timings_get_frame_counter(timings:PTGdkFrameTimings):Tgint64;cdecl;external;
function gdk_frame_timings_get_complete(timings:PTGdkFrameTimings):Tgboolean;cdecl;external;
function gdk_frame_timings_get_frame_time(timings:PTGdkFrameTimings):Tgint64;cdecl;external;
function gdk_frame_timings_get_presentation_time(timings:PTGdkFrameTimings):Tgint64;cdecl;external;
function gdk_frame_timings_get_refresh_interval(timings:PTGdkFrameTimings):Tgint64;cdecl;external;
function gdk_frame_timings_get_predicted_presentation_time(timings:PTGdkFrameTimings):Tgint64;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gdkdevice.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gdkdevice.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gdkdevice.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pdouble  = ^double;
PGdkDevice  = ^GdkDevice;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GDK_DEVICE_H__}
//// {$define __GDK_DEVICE_H__}
//// {$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gdk/gdk.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdkversionmacros.h>}
//// {$include <gdk/gdktypes.h>}
//// {$include <gdk/gdkdevicetool.h>}
//// {$include <gdk/gdkenums.h>}

function GDK_TYPE_DEVICE : longint; { return type might be wrong }

function GDK_DEVICE(o : longint) : longint;

function GDK_IS_DEVICE(o : longint) : longint;

type
  T_GdkTimeCoord = TGdkTimeCoord;


  TGdkInputSource = (GDK_SOURCE_MOUSE,GDK_SOURCE_PEN,GDK_SOURCE_KEYBOARD,
    GDK_SOURCE_TOUCHSCREEN,GDK_SOURCE_TOUCHPAD,
    GDK_SOURCE_TRACKPOINT,GDK_SOURCE_TABLET_PAD
    );

  T_GdkTimeCoord = record
      time : Tguint32;
      flags : TGdkAxisFlags;
      axes : array[0..(GDK_AXIS_LAST)-1] of Tdouble;
    end;


function gdk_device_get_type:TGType;cdecl;external;
function gdk_device_get_name(device:PTGdkDevice):^char;cdecl;external;
function gdk_device_get_vendor_id(device:PTGdkDevice):^char;cdecl;external;
function gdk_device_get_product_id(device:PTGdkDevice):^char;cdecl;external;
function gdk_device_get_display(device:PTGdkDevice):^TGdkDisplay;cdecl;external;
function gdk_device_get_seat(device:PTGdkDevice):^TGdkSeat;cdecl;external;
function gdk_device_get_device_tool(device:PTGdkDevice):^TGdkDeviceTool;cdecl;external;
function gdk_device_get_source(device:PTGdkDevice):TGdkInputSource;cdecl;external;
function gdk_device_get_has_cursor(device:PTGdkDevice):Tgboolean;cdecl;external;
function gdk_device_get_num_touches(device:PTGdkDevice):Tguint;cdecl;external;
function gdk_device_get_modifier_state(device:PTGdkDevice):TGdkModifierType;cdecl;external;
function gdk_device_get_direction(device:PTGdkDevice):TPangoDirection;cdecl;external;
function gdk_device_has_bidi_layouts(device:PTGdkDevice):Tgboolean;cdecl;external;
function gdk_device_get_caps_lock_state(device:PTGdkDevice):Tgboolean;cdecl;external;
function gdk_device_get_num_lock_state(device:PTGdkDevice):Tgboolean;cdecl;external;
function gdk_device_get_scroll_lock_state(device:PTGdkDevice):Tgboolean;cdecl;external;
function gdk_device_get_surface_at_position(device:PTGdkDevice; win_x:PTdouble; win_y:PTdouble):^TGdkSurface;cdecl;external;
function gdk_device_get_timestamp(device:PTGdkDevice):Tguint32;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gdktexture.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gdktexture.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gdktexture.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGBytes  = ^GBytes;
PGdkPixbuf  = ^GdkPixbuf;
PGdkTexture  = ^GdkTexture;
PGError  = ^GError;
PGFile  = ^GFile;
Pguchar  = ^guchar;
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
// /tmp/GTK4-Konverter-header/gdkmemorytexture.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gdkmemorytexture.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gdkmemorytexture.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGBytes  = ^GBytes;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GDK_MEMORY_TEXTURE__H__}
//// {$define __GDK_MEMORY_TEXTURE__H__}
//// {$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gdk/gdk.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdkenums.h>}
//// {$include <gdk/gdktexture.h>}

//// {$if G_BYTE_ORDER == G_LITTLE_ENDIAN}

const
  GDK_MEMORY_DEFAULT = GDK_MEMORY_B8G8R8A8_PREMULTIPLIED;  
//// {$else G_BYTE_ORDER == G_BIG_ENDIAN}

const
  GDK_MEMORY_DEFAULT = GDK_MEMORY_A8R8G8B8_PREMULTIPLIED;  
//// {$else}
//// {$error "Unknown byte order for GDK_MEMORY_DEFAULT"}
//// {$endif}

function GDK_TYPE_MEMORY_TEXTURE : longint; { return type might be wrong }

function GDK_MEMORY_TEXTURE(obj : longint) : longint;

function GDK_IS_MEMORY_TEXTURE(obj : longint) : longint;

type
  T_GdkMemoryTexture = TGdkMemoryTexture;
  T_GdkMemoryTextureClass = TGdkMemoryTextureClass;

function gdk_memory_texture_get_type:TGType;cdecl;external;
function gdk_memory_texture_new(width:longint; height:longint; format:TGdkMemoryFormat; bytes:PTGBytes; stride:Tgsize):^TGdkTexture;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gdkcairocontext.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gdkcairocontext.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gdkcairocontext.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGdkCairoContext  = ^GdkCairoContext;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GDK_CAIRO_CONTEXT__}
//// {$define __GDK_CAIRO_CONTEXT__}
//// {$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gdk/gdk.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdkversionmacros.h>}
//// {$include <gdk/gdktypes.h>}
//// {$include <cairo.h>}

function GDK_TYPE_CAIRO_CONTEXT : longint; { return type might be wrong }

function GDK_CAIRO_CONTEXT(obj : longint) : longint;

function GDK_IS_CAIRO_CONTEXT(obj : longint) : longint;

function GDK_CAIRO_ERROR : longint; { return type might be wrong }

function gdk_cairo_context_get_type:TGType;cdecl;external;
function gdk_cairo_context_cairo_create(self:PTGdkCairoContext):^Tcairo_t;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gdkdevicetool.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gdkdevicetool.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gdkdevicetool.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGdkDeviceTool  = ^GdkDeviceTool;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GDK_DEVICE_TOOL_H__}
//// {$define __GDK_DEVICE_TOOL_H__}
//// {$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gdk/gdk.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdkenums.h>}
//// {$include <gdk/gdktypes.h>}
//// {$include <gdk/gdkversionmacros.h>}

function GDK_TYPE_DEVICE_TOOL : longint; { return type might be wrong }

function GDK_DEVICE_TOOL(o : longint) : longint;

function GDK_IS_DEVICE_TOOL(o : longint) : longint;

type
  T_GdkDeviceTool = TGdkDeviceTool;


  TGdkDeviceToolType = (GDK_DEVICE_TOOL_TYPE_UNKNOWN,GDK_DEVICE_TOOL_TYPE_PEN,
    GDK_DEVICE_TOOL_TYPE_ERASER,GDK_DEVICE_TOOL_TYPE_BRUSH,
    GDK_DEVICE_TOOL_TYPE_PENCIL,GDK_DEVICE_TOOL_TYPE_AIRBRUSH,
    GDK_DEVICE_TOOL_TYPE_MOUSE,GDK_DEVICE_TOOL_TYPE_LENS
    );

function gdk_device_tool_get_type:TGType;cdecl;external;
function gdk_device_tool_get_serial(tool:PTGdkDeviceTool):Tguint64;cdecl;external;
function gdk_device_tool_get_hardware_id(tool:PTGdkDeviceTool):Tguint64;cdecl;external;
function gdk_device_tool_get_tool_type(tool:PTGdkDeviceTool):TGdkDeviceToolType;cdecl;external;
function gdk_device_tool_get_axes(tool:PTGdkDeviceTool):TGdkAxisFlags;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gdktypes.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gdktypes.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gdktypes.h
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
// /tmp/GTK4-Konverter-header/gdkframeclock.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gdkframeclock.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gdkframeclock.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGdkFrameClock  = ^GdkFrameClock;
Pgint64  = ^gint64;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef __GDK_FRAME_CLOCK_H__}
//// {$define __GDK_FRAME_CLOCK_H__}
//// {$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gdk/gdk.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdkframetimings.h>}

function GDK_TYPE_FRAME_CLOCK : longint; { return type might be wrong }

function GDK_FRAME_CLOCK(obj : longint) : longint;

function GDK_FRAME_CLOCK_CLASS(klass : longint) : longint;

function GDK_IS_FRAME_CLOCK(obj : longint) : longint;

function GDK_IS_FRAME_CLOCK_CLASS(klass : longint) : longint;

function GDK_FRAME_CLOCK_GET_CLASS(obj : longint) : longint;

type
  T_GdkFrameClock = TGdkFrameClock;
  T_GdkFrameClockPrivate = TGdkFrameClockPrivate;
  T_GdkFrameClockClass = TGdkFrameClockClass;


  TGdkFrameClockPhase = (GDK_FRAME_CLOCK_PHASE_NONE := 0,GDK_FRAME_CLOCK_PHASE_FLUSH_EVENTS := 1 shl 0,
    GDK_FRAME_CLOCK_PHASE_BEFORE_PAINT := 1 shl 1,
    GDK_FRAME_CLOCK_PHASE_UPDATE := 1 shl 2,GDK_FRAME_CLOCK_PHASE_LAYOUT := 1 shl 3,
    GDK_FRAME_CLOCK_PHASE_PAINT := 1 shl 4,GDK_FRAME_CLOCK_PHASE_RESUME_EVENTS := 1 shl 5,
    GDK_FRAME_CLOCK_PHASE_AFTER_PAINT := 1 shl 6
    );

function gdk_frame_clock_get_type:TGType;cdecl;external;
function gdk_frame_clock_get_frame_time(frame_clock:PTGdkFrameClock):Tgint64;cdecl;external;
procedure gdk_frame_clock_request_phase(frame_clock:PTGdkFrameClock; phase:TGdkFrameClockPhase);cdecl;external;
procedure gdk_frame_clock_begin_updating(frame_clock:PTGdkFrameClock);cdecl;external;
procedure gdk_frame_clock_end_updating(frame_clock:PTGdkFrameClock);cdecl;external;

function gdk_frame_clock_get_frame_counter(frame_clock:PTGdkFrameClock):Tgint64;cdecl;external;
function gdk_frame_clock_get_history_start(frame_clock:PTGdkFrameClock):Tgint64;cdecl;external;
function gdk_frame_clock_get_timings(frame_clock:PTGdkFrameClock; frame_counter:Tgint64):^TGdkFrameTimings;cdecl;external;
function gdk_frame_clock_get_current_timings(frame_clock:PTGdkFrameClock):^TGdkFrameTimings;cdecl;external;
procedure gdk_frame_clock_get_refresh_info(frame_clock:PTGdkFrameClock; base_time:Tgint64; refresh_interval_return:PTgint64; presentation_time_return:PTgint64);cdecl;external;
function gdk_frame_clock_get_fps(frame_clock:PTGdkFrameClock):Tdouble;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gdkapplaunchcontext.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gdkapplaunchcontext.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gdkapplaunchcontext.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGdkAppLaunchContext  = ^GdkAppLaunchContext;
PGIcon  = ^GIcon;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GDK_APP_LAUNCH_CONTEXT_H__}
//// {$define __GDK_APP_LAUNCH_CONTEXT_H__}
//// {$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gdk/gdk.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdkversionmacros.h>}
//// {$include <gdk/gdktypes.h>}

function GDK_TYPE_APP_LAUNCH_CONTEXT : longint; { return type might be wrong }

function GDK_APP_LAUNCH_CONTEXT(o : longint) : longint;

function GDK_IS_APP_LAUNCH_CONTEXT(o : longint) : longint;

function gdk_app_launch_context_get_type:TGType;cdecl;external;
function gdk_app_launch_context_get_display(context:PTGdkAppLaunchContext):^TGdkDisplay;cdecl;external;
procedure gdk_app_launch_context_set_desktop(context:PTGdkAppLaunchContext; desktop:longint);cdecl;external;
procedure gdk_app_launch_context_set_timestamp(context:PTGdkAppLaunchContext; timestamp:Tguint32);cdecl;external;
procedure gdk_app_launch_context_set_icon(context:PTGdkAppLaunchContext; icon:PTGIcon);cdecl;external;
procedure gdk_app_launch_context_set_icon_name(context:PTGdkAppLaunchContext; icon_name:Pchar);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gdkclipboard.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gdkclipboard.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gdkclipboard.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGAsyncResult  = ^GAsyncResult;
PGCancellable  = ^GCancellable;
PGdkClipboard  = ^GdkClipboard;
PGdkContentProvider  = ^GdkContentProvider;
PGdkTexture  = ^GdkTexture;
PGError  = ^GError;
PGValue  = ^GValue;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GDK_CLIPBOARD_H__}
//// {$define __GDK_CLIPBOARD_H__}
//// {$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gdk/gdk.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdkversionmacros.h>}
//// {$include <gdk/gdktypes.h>}
//// {$include <gio/gio.h>}

function GDK_TYPE_CLIPBOARD : longint; { return type might be wrong }

function GDK_CLIPBOARD(obj : longint) : longint;

function GDK_IS_CLIPBOARD(obj : longint) : longint;

function gdk_clipboard_get_type:TGType;cdecl;external;
function gdk_clipboard_get_display(clipboard:PTGdkClipboard):^TGdkDisplay;cdecl;external;
function gdk_clipboard_get_formats(clipboard:PTGdkClipboard):^TGdkContentFormats;cdecl;external;
function gdk_clipboard_is_local(clipboard:PTGdkClipboard):Tgboolean;cdecl;external;
function gdk_clipboard_get_content(clipboard:PTGdkClipboard):^TGdkContentProvider;cdecl;external;
procedure gdk_clipboard_store_async(clipboard:PTGdkClipboard; io_priority:longint; cancellable:PTGCancellable; callback:TGAsyncReadyCallback; user_data:Tgpointer);cdecl;external;
function gdk_clipboard_store_finish(clipboard:PTGdkClipboard; result:PTGAsyncResult; error:PPTGError):Tgboolean;cdecl;external;
procedure gdk_clipboard_read_async(clipboard:PTGdkClipboard; mime_types:PPchar; io_priority:longint; cancellable:PTGCancellable; callback:TGAsyncReadyCallback; 
            user_data:Tgpointer);cdecl;external;
function gdk_clipboard_read_finish(clipboard:PTGdkClipboard; result:PTGAsyncResult; out_mime_type:PPchar; error:PPTGError):^TGInputStream;cdecl;external;
procedure gdk_clipboard_read_value_async(clipboard:PTGdkClipboard; _type:TGType; io_priority:longint; cancellable:PTGCancellable; callback:TGAsyncReadyCallback; 
            user_data:Tgpointer);cdecl;external;
function gdk_clipboard_read_value_finish(clipboard:PTGdkClipboard; result:PTGAsyncResult; error:PPTGError):^TGValue;cdecl;external;
procedure gdk_clipboard_read_texture_async(clipboard:PTGdkClipboard; cancellable:PTGCancellable; callback:TGAsyncReadyCallback; user_data:Tgpointer);cdecl;external;
function gdk_clipboard_read_texture_finish(clipboard:PTGdkClipboard; result:PTGAsyncResult; error:PPTGError):^TGdkTexture;cdecl;external;
procedure gdk_clipboard_read_text_async(clipboard:PTGdkClipboard; cancellable:PTGCancellable; callback:TGAsyncReadyCallback; user_data:Tgpointer);cdecl;external;
function gdk_clipboard_read_text_finish(clipboard:PTGdkClipboard; result:PTGAsyncResult; error:PPTGError):^char;cdecl;external;
function gdk_clipboard_set_content(clipboard:PTGdkClipboard; provider:PTGdkContentProvider):Tgboolean;cdecl;external;
procedure gdk_clipboard_set(clipboard:PTGdkClipboard; _type:TGType; args:array of const);cdecl;external;
procedure gdk_clipboard_set(clipboard:PTGdkClipboard; _type:TGType);cdecl;external;
procedure gdk_clipboard_set_valist(clipboard:PTGdkClipboard; _type:TGType; args:Tva_list);cdecl;external;
procedure gdk_clipboard_set_value(clipboard:PTGdkClipboard; value:PTGValue);cdecl;external;
procedure gdk_clipboard_set_text(clipboard:PTGdkClipboard; text:Pchar);cdecl;external;
procedure gdk_clipboard_set_texture(clipboard:PTGdkClipboard; texture:PTGdkTexture);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gdkenumtypes.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gdkenumtypes.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gdkenumtypes.h
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



//// {$ifndef __GDK_ENUM_TYPES_H__}
//// {$define __GDK_ENUM_TYPES_H__}
//// {$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gdk/gdk.h> can be included directly."}
//// {$endif}
//// {$include <glib-object.h>}
//// {$include <gdk/gdkversionmacros.h>}


function gdk_input_source_get_type:TGType;cdecl;external;
function GDK_TYPE_INPUT_SOURCE : longint; { return type might be wrong }


function gdk_device_pad_feature_get_type:TGType;cdecl;external;
function GDK_TYPE_DEVICE_PAD_FEATURE : longint; { return type might be wrong }


function gdk_device_tool_type_get_type:TGType;cdecl;external;
function GDK_TYPE_DEVICE_TOOL_TYPE : longint; { return type might be wrong }


function gdk_drag_cancel_reason_get_type:TGType;cdecl;external;
function GDK_TYPE_DRAG_CANCEL_REASON : longint; { return type might be wrong }


function gdk_gravity_get_type:TGType;cdecl;external;
function GDK_TYPE_GRAVITY : longint; { return type might be wrong }

function gdk_modifier_type_get_type:TGType;cdecl;external;
function GDK_TYPE_MODIFIER_TYPE : longint; { return type might be wrong }

function gdk_gl_error_get_type:TGType;cdecl;external;
function GDK_TYPE_GL_ERROR : longint; { return type might be wrong }

function gdk_vulkan_error_get_type:TGType;cdecl;external;
function GDK_TYPE_VULKAN_ERROR : longint; { return type might be wrong }

function gdk_axis_use_get_type:TGType;cdecl;external;
function GDK_TYPE_AXIS_USE : longint; { return type might be wrong }

function gdk_axis_flags_get_type:TGType;cdecl;external;
function GDK_TYPE_AXIS_FLAGS : longint; { return type might be wrong }

function gdk_drag_action_get_type:TGType;cdecl;external;
function GDK_TYPE_DRAG_ACTION : longint; { return type might be wrong }

function gdk_memory_format_get_type:TGType;cdecl;external;
function GDK_TYPE_MEMORY_FORMAT : longint; { return type might be wrong }


function gdk_event_type_get_type:TGType;cdecl;external;
function GDK_TYPE_EVENT_TYPE : longint; { return type might be wrong }

function gdk_touchpad_gesture_phase_get_type:TGType;cdecl;external;
function GDK_TYPE_TOUCHPAD_GESTURE_PHASE : longint; { return type might be wrong }

function gdk_scroll_direction_get_type:TGType;cdecl;external;
function GDK_TYPE_SCROLL_DIRECTION : longint; { return type might be wrong }

function gdk_scroll_unit_get_type:TGType;cdecl;external;
function GDK_TYPE_SCROLL_UNIT : longint; { return type might be wrong }

function gdk_notify_type_get_type:TGType;cdecl;external;
function GDK_TYPE_NOTIFY_TYPE : longint; { return type might be wrong }

function gdk_crossing_mode_get_type:TGType;cdecl;external;
function GDK_TYPE_CROSSING_MODE : longint; { return type might be wrong }

function gdk_key_match_get_type:TGType;cdecl;external;
function GDK_TYPE_KEY_MATCH : longint; { return type might be wrong }


function gdk_frame_clock_phase_get_type:TGType;cdecl;external;
function GDK_TYPE_FRAME_CLOCK_PHASE : longint; { return type might be wrong }


function gdk_gl_api_get_type:TGType;cdecl;external;
function GDK_TYPE_GL_API : longint; { return type might be wrong }


function gdk_subpixel_layout_get_type:TGType;cdecl;external;
function GDK_TYPE_SUBPIXEL_LAYOUT : longint; { return type might be wrong }


function gdk_paintable_flags_get_type:TGType;cdecl;external;
function GDK_TYPE_PAINTABLE_FLAGS : longint; { return type might be wrong }


function gdk_anchor_hints_get_type:TGType;cdecl;external;
function GDK_TYPE_ANCHOR_HINTS : longint; { return type might be wrong }


function gdk_seat_capabilities_get_type:TGType;cdecl;external;
function GDK_TYPE_SEAT_CAPABILITIES : longint; { return type might be wrong }


function gdk_texture_error_get_type:TGType;cdecl;external;
function GDK_TYPE_TEXTURE_ERROR : longint; { return type might be wrong }


function gdk_surface_edge_get_type:TGType;cdecl;external;
function GDK_TYPE_SURFACE_EDGE : longint; { return type might be wrong }

function gdk_fullscreen_mode_get_type:TGType;cdecl;external;
function GDK_TYPE_FULLSCREEN_MODE : longint; { return type might be wrong }

function gdk_toplevel_state_get_type:TGType;cdecl;external;
function GDK_TYPE_TOPLEVEL_STATE : longint; { return type might be wrong }

function gdk_titlebar_gesture_get_type:TGType;cdecl;external;
function GDK_TYPE_TITLEBAR_GESTURE : longint; { return type might be wrong }

//// {$endif}



// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gdkcontentproviderimpl.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gdkcontentproviderimpl.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gdkcontentproviderimpl.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGBytes  = ^GBytes;
PGdkContentProvider  = ^GdkContentProvider;
PGValue  = ^GValue;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GDK_CONTENT_PROVIDER_IMPL_H__}
//// {$define __GDK_CONTENT_PROVIDER_IMPL_H__}
//// {$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gdk/gdk.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdkversionmacros.h>}
//// {$include <gdk/gdktypes.h>}

function gdk_content_provider_new_for_value(value:PTGValue):^TGdkContentProvider;cdecl;external;
function gdk_content_provider_new_typed(_type:TGType; args:array of const):^TGdkContentProvider;cdecl;external;
function gdk_content_provider_new_typed(_type:TGType):^TGdkContentProvider;cdecl;external;
function gdk_content_provider_new_union(providers:PPTGdkContentProvider; n_providers:Tgsize):^TGdkContentProvider;cdecl;external;
function gdk_content_provider_new_for_bytes(mime_type:Pchar; bytes:PTGBytes):^TGdkContentProvider;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gdksnapshot.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gdksnapshot.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gdksnapshot.h
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



//// {$ifndef __GDK_SNAPSHOT_H__}
//// {$define __GDK_SNAPSHOT_H__}
//// {$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gdk/gdk.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdktypes.h>}
//// {$include <gdk/gdkversionmacros.h>}
type
  T_GdkSnapshotClass = TGdkSnapshotClass;

function GDK_TYPE_SNAPSHOT : longint; { return type might be wrong }

function GDK_SNAPSHOT(obj : longint) : longint;

function GDK_IS_SNAPSHOT(obj : longint) : longint;

function gdk_snapshot_get_type:TGType;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gdkdrop.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gdkdrop.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gdkdrop.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGAsyncResult  = ^GAsyncResult;
PGCancellable  = ^GCancellable;
PGdkDrop  = ^GdkDrop;
PGError  = ^GError;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GDK_DROP_H__}
//// {$define __GDK_DROP_H__}
//// {$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gdk/gdk.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdkenums.h>}
//// {$include <gdk/gdktypes.h>}
//// {$include <gdk/gdkversionmacros.h>}

function GDK_TYPE_DROP : longint; { return type might be wrong }

function GDK_DROP(object : longint) : longint;

function GDK_IS_DROP(object : longint) : longint;

function gdk_drop_get_type:TGType;cdecl;external;
function gdk_drop_get_display(self:PTGdkDrop):^TGdkDisplay;cdecl;external;
function gdk_drop_get_device(self:PTGdkDrop):^TGdkDevice;cdecl;external;
function gdk_drop_get_surface(self:PTGdkDrop):^TGdkSurface;cdecl;external;
function gdk_drop_get_formats(self:PTGdkDrop):^TGdkContentFormats;cdecl;external;
function gdk_drop_get_actions(self:PTGdkDrop):TGdkDragAction;cdecl;external;
function gdk_drop_get_drag(self:PTGdkDrop):^TGdkDrag;cdecl;external;
procedure gdk_drop_status(self:PTGdkDrop; actions:TGdkDragAction; preferred:TGdkDragAction);cdecl;external;
procedure gdk_drop_finish(self:PTGdkDrop; action:TGdkDragAction);cdecl;external;
procedure gdk_drop_read_async(self:PTGdkDrop; mime_types:PPchar; io_priority:longint; cancellable:PTGCancellable; callback:TGAsyncReadyCallback; 
            user_data:Tgpointer);cdecl;external;
function gdk_drop_read_finish(self:PTGdkDrop; result:PTGAsyncResult; out_mime_type:PPchar; error:PPTGError):^TGInputStream;cdecl;external;
procedure gdk_drop_read_value_async(self:PTGdkDrop; _type:TGType; io_priority:longint; cancellable:PTGCancellable; callback:TGAsyncReadyCallback; 
            user_data:Tgpointer);cdecl;external;
function gdk_drop_read_value_finish(self:PTGdkDrop; result:PTGAsyncResult; error:PPTGError):^TGValue;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gdkmonitor.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gdkmonitor.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gdkmonitor.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGdkMonitor  = ^GdkMonitor;
PGdkRectangle  = ^GdkRectangle;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GDK_MONITOR_H__}
//// {$define __GDK_MONITOR_H__}
//// {$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gdk/gdk.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdkversionmacros.h>}
//// {$include <gdk/gdkrectangle.h>}
//// {$include <gdk/gdktypes.h>}

function GDK_TYPE_MONITOR : longint; { return type might be wrong }

function GDK_MONITOR(object : longint) : longint;

function GDK_IS_MONITOR(object : longint) : longint;

type
  T_GdkMonitor = TGdkMonitor;
  T_GdkMonitorClass = TGdkMonitorClass;


  TGdkSubpixelLayout = (GDK_SUBPIXEL_LAYOUT_UNKNOWN,GDK_SUBPIXEL_LAYOUT_NONE,
    GDK_SUBPIXEL_LAYOUT_HORIZONTAL_RGB,GDK_SUBPIXEL_LAYOUT_HORIZONTAL_BGR,
    GDK_SUBPIXEL_LAYOUT_VERTICAL_RGB,GDK_SUBPIXEL_LAYOUT_VERTICAL_BGR
    );

function gdk_monitor_get_type:TGType;cdecl;external;
function gdk_monitor_get_display(monitor:PTGdkMonitor):^TGdkDisplay;cdecl;external;
procedure gdk_monitor_get_geometry(monitor:PTGdkMonitor; geometry:PTGdkRectangle);cdecl;external;
function gdk_monitor_get_width_mm(monitor:PTGdkMonitor):longint;cdecl;external;
function gdk_monitor_get_height_mm(monitor:PTGdkMonitor):longint;cdecl;external;
function gdk_monitor_get_manufacturer(monitor:PTGdkMonitor):^char;cdecl;external;
function gdk_monitor_get_model(monitor:PTGdkMonitor):^char;cdecl;external;
function gdk_monitor_get_connector(monitor:PTGdkMonitor):^char;cdecl;external;
function gdk_monitor_get_scale_factor(monitor:PTGdkMonitor):longint;cdecl;external;
function gdk_monitor_get_refresh_rate(monitor:PTGdkMonitor):longint;cdecl;external;
function gdk_monitor_get_subpixel_layout(monitor:PTGdkMonitor):TGdkSubpixelLayout;cdecl;external;
function gdk_monitor_is_valid(monitor:PTGdkMonitor):Tgboolean;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gdkglcontext.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gdkglcontext.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gdkglcontext.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGdkGLContext  = ^GdkGLContext;
PGError  = ^GError;
Plongint  = ^longint;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GDK_GL_CONTEXT_H__}
//// {$define __GDK_GL_CONTEXT_H__}
//// {$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gdk/gdk.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdkversionmacros.h>}
//// {$include <gdk/gdktypes.h>}


type
  TGdkGLAPI = (GDK_GL_API_GL := 1 shl 0,GDK_GL_API_GLES := 1 shl 1
    );

function GDK_TYPE_GL_CONTEXT : longint; { return type might be wrong }

function GDK_GL_CONTEXT(obj : longint) : longint;

function GDK_IS_GL_CONTEXT(obj : longint) : longint;

function GDK_GL_ERROR : longint; { return type might be wrong }

function gdk_gl_error_quark:TGQuark;cdecl;external;
function gdk_gl_context_get_type:TGType;cdecl;external;
function gdk_gl_context_get_display(context:PTGdkGLContext):^TGdkDisplay;cdecl;external;
function gdk_gl_context_get_surface(context:PTGdkGLContext):^TGdkSurface;cdecl;external;
function gdk_gl_context_get_shared_context(context:PTGdkGLContext):^TGdkGLContext;cdecl;external;
procedure gdk_gl_context_get_version(context:PTGdkGLContext; major:Plongint; minor:Plongint);cdecl;external;
function gdk_gl_context_is_legacy(context:PTGdkGLContext):Tgboolean;cdecl;external;
function gdk_gl_context_is_shared(self:PTGdkGLContext; other:PTGdkGLContext):Tgboolean;cdecl;external;
procedure gdk_gl_context_set_required_version(context:PTGdkGLContext; major:longint; minor:longint);cdecl;external;
procedure gdk_gl_context_get_required_version(context:PTGdkGLContext; major:Plongint; minor:Plongint);cdecl;external;
procedure gdk_gl_context_set_debug_enabled(context:PTGdkGLContext; enabled:Tgboolean);cdecl;external;
function gdk_gl_context_get_debug_enabled(context:PTGdkGLContext):Tgboolean;cdecl;external;
procedure gdk_gl_context_set_forward_compatible(context:PTGdkGLContext; compatible:Tgboolean);cdecl;external;
function gdk_gl_context_get_forward_compatible(context:PTGdkGLContext):Tgboolean;cdecl;external;
procedure gdk_gl_context_set_allowed_apis(self:PTGdkGLContext; apis:TGdkGLAPI);cdecl;external;
function gdk_gl_context_get_allowed_apis(self:PTGdkGLContext):TGdkGLAPI;cdecl;external;
function gdk_gl_context_get_api(self:PTGdkGLContext):TGdkGLAPI;cdecl;external;
procedure gdk_gl_context_set_use_es(context:PTGdkGLContext; use_es:longint);cdecl;external;
function gdk_gl_context_get_use_es(context:PTGdkGLContext):Tgboolean;cdecl;external;
function gdk_gl_context_realize(context:PTGdkGLContext; error:PPTGError):Tgboolean;cdecl;external;
procedure gdk_gl_context_make_current(context:PTGdkGLContext);cdecl;external;
function gdk_gl_context_get_current:^TGdkGLContext;cdecl;external;
procedure gdk_gl_context_clear_current;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gdkcontentformats.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gdkcontentformats.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gdkcontentformats.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGdkContentFormats  = ^GdkContentFormats;
PGdkContentFormatsBuilder  = ^GdkContentFormatsBuilder;
PGdkFileList  = ^GdkFileList;
PGFile  = ^GFile;
Pgsize  = ^gsize;
PGSList  = ^GSList;
PGString  = ^GString;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_CONTENT_FORMATS_H__}
//// {$define __GTK_CONTENT_FORMATS_H__}
//// {$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gdk/gdk.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdkversionmacros.h>}
//// {$include <gdk/gdktypes.h>}

function GDK_TYPE_CONTENT_FORMATS : longint; { return type might be wrong }

function gdk_intern_mime_type(_string:Pchar):^char;cdecl;external;
function gdk_content_formats_get_type:TGType;cdecl;external;
function gdk_content_formats_new(mime_types:PPchar; n_mime_types:Tguint):^TGdkContentFormats;cdecl;external;
function gdk_content_formats_new_for_gtype(_type:TGType):^TGdkContentFormats;cdecl;external;
function gdk_content_formats_parse(_string:Pchar):^TGdkContentFormats;cdecl;external;
function gdk_content_formats_ref(formats:PTGdkContentFormats):^TGdkContentFormats;cdecl;external;
procedure gdk_content_formats_unref(formats:PTGdkContentFormats);cdecl;external;
procedure gdk_content_formats_print(formats:PTGdkContentFormats; _string:PTGString);cdecl;external;
function gdk_content_formats_to_string(formats:PTGdkContentFormats):^char;cdecl;external;
function gdk_content_formats_get_gtypes(formats:PTGdkContentFormats; n_gtypes:PTgsize):^TGType;cdecl;external;
function gdk_content_formats_get_mime_types(formats:PTGdkContentFormats; n_mime_types:PTgsize):^^char;cdecl;external;
function gdk_content_formats_union(first:PTGdkContentFormats; second:PTGdkContentFormats):^TGdkContentFormats;cdecl;external;
function gdk_content_formats_match(first:PTGdkContentFormats; second:PTGdkContentFormats):Tgboolean;cdecl;external;
function gdk_content_formats_match_gtype(first:PTGdkContentFormats; second:PTGdkContentFormats):TGType;cdecl;external;
function gdk_content_formats_match_mime_type(first:PTGdkContentFormats; second:PTGdkContentFormats):^char;cdecl;external;
function gdk_content_formats_contain_gtype(formats:PTGdkContentFormats; _type:TGType):Tgboolean;cdecl;external;
function gdk_content_formats_contain_mime_type(formats:PTGdkContentFormats; mime_type:Pchar):Tgboolean;cdecl;external;
function GDK_TYPE_CONTENT_FORMATS_BUILDER : longint; { return type might be wrong }

type
  T_GdkContentFormatsBuilder = TGdkContentFormatsBuilder;

function gdk_content_formats_builder_get_type:TGType;cdecl;external;
function gdk_content_formats_builder_new:^TGdkContentFormatsBuilder;cdecl;external;
function gdk_content_formats_builder_ref(builder:PTGdkContentFormatsBuilder):^TGdkContentFormatsBuilder;cdecl;external;
procedure gdk_content_formats_builder_unref(builder:PTGdkContentFormatsBuilder);cdecl;external;
function gdk_content_formats_builder_free_to_formats(builder:PTGdkContentFormatsBuilder):^TGdkContentFormats;cdecl;external;
function gdk_content_formats_builder_to_formats(builder:PTGdkContentFormatsBuilder):^TGdkContentFormats;cdecl;external;
procedure gdk_content_formats_builder_add_formats(builder:PTGdkContentFormatsBuilder; formats:PTGdkContentFormats);cdecl;external;
procedure gdk_content_formats_builder_add_mime_type(builder:PTGdkContentFormatsBuilder; mime_type:Pchar);cdecl;external;
procedure gdk_content_formats_builder_add_gtype(builder:PTGdkContentFormatsBuilder; _type:TGType);cdecl;external;

function GDK_TYPE_FILE_LIST : longint; { return type might be wrong }

function gdk_file_list_get_type:TGType;cdecl;external;

type
  T_GdkFileList = TGdkFileList;

function gdk_file_list_get_files(file_list:PTGdkFileList):^TGSList;cdecl;external;
function gdk_file_list_new_from_list(files:PTGSList):^TGdkFileList;cdecl;external;
function gdk_file_list_new_from_array(files:PPTGFile; n_files:Tgsize):^TGdkFileList;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gdktoplevellayout.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gdktoplevellayout.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gdktoplevellayout.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pgboolean  = ^gboolean;
PGdkMonitor  = ^GdkMonitor;
PGdkToplevelLayout  = ^GdkToplevelLayout;
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


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gdkdisplay.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gdkdisplay.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gdkdisplay.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGdkDevice  = ^GdkDevice;
PGdkDisplay  = ^GdkDisplay;
PGdkEvent  = ^GdkEvent;
PGdkKeymapKey  = ^GdkKeymapKey;
PGdkModifierType  = ^GdkModifierType;
PGdkSurface  = ^GdkSurface;
PGError  = ^GError;
Pguint  = ^guint;
PGValue  = ^GValue;
Plongint  = ^longint;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GDK_DISPLAY_H__}
//// {$define __GDK_DISPLAY_H__}
//// {$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gdk/gdk.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdkversionmacros.h>}
//// {$include <gdk/gdktypes.h>}
//// {$include <gdk/gdkevents.h>}
//// {$include <gdk/gdkseat.h>}
//// {$include <gdk/gdkmonitor.h>}

function GDK_TYPE_DISPLAY : longint; { return type might be wrong }

function GDK_DISPLAY(object : longint) : longint;

function GDK_IS_DISPLAY(object : longint) : longint;

function gdk_display_get_type:TGType;cdecl;external;
function gdk_display_open(display_name:Pchar):^TGdkDisplay;cdecl;external;
function gdk_display_get_name(display:PTGdkDisplay):^char;cdecl;external;
function gdk_display_device_is_grabbed(display:PTGdkDisplay; device:PTGdkDevice):Tgboolean;cdecl;external;
procedure gdk_display_beep(display:PTGdkDisplay);cdecl;external;
procedure gdk_display_sync(display:PTGdkDisplay);cdecl;external;
procedure gdk_display_flush(display:PTGdkDisplay);cdecl;external;
procedure gdk_display_close(display:PTGdkDisplay);cdecl;external;
function gdk_display_is_closed(display:PTGdkDisplay):Tgboolean;cdecl;external;
function gdk_display_is_composited(display:PTGdkDisplay):Tgboolean;cdecl;external;
function gdk_display_is_rgba(display:PTGdkDisplay):Tgboolean;cdecl;external;
function gdk_display_supports_input_shapes(display:PTGdkDisplay):Tgboolean;cdecl;external;
function gdk_display_prepare_gl(self:PTGdkDisplay; error:PPTGError):Tgboolean;cdecl;external;
function gdk_display_create_gl_context(self:PTGdkDisplay; error:PPTGError):^TGdkGLContext;cdecl;external;
function gdk_display_get_default:^TGdkDisplay;cdecl;external;
function gdk_display_get_clipboard(display:PTGdkDisplay):^TGdkClipboard;cdecl;external;
function gdk_display_get_primary_clipboard(display:PTGdkDisplay):^TGdkClipboard;cdecl;external;
procedure gdk_display_notify_startup_complete(display:PTGdkDisplay; startup_id:Pchar);cdecl;external;
function gdk_display_get_startup_notification_id(display:PTGdkDisplay):^char;cdecl;external;
function gdk_display_get_app_launch_context(display:PTGdkDisplay):^TGdkAppLaunchContext;cdecl;external;
function gdk_display_get_default_seat(display:PTGdkDisplay):^TGdkSeat;cdecl;external;
function gdk_display_list_seats(display:PTGdkDisplay):^TGList;cdecl;external;
function gdk_display_get_monitors(self:PTGdkDisplay):^TGListModel;cdecl;external;
function gdk_display_get_monitor_at_surface(display:PTGdkDisplay; surface:PTGdkSurface):^TGdkMonitor;cdecl;external;
procedure gdk_display_put_event(display:PTGdkDisplay; event:PTGdkEvent);cdecl;external;
function gdk_display_map_keyval(display:PTGdkDisplay; keyval:Tguint; keys:PPTGdkKeymapKey; n_keys:Plongint):Tgboolean;cdecl;external;
function gdk_display_map_keycode(display:PTGdkDisplay; keycode:Tguint; keys:PPTGdkKeymapKey; keyvals:PPTguint; n_entries:Plongint):Tgboolean;cdecl;external;
function gdk_display_translate_key(display:PTGdkDisplay; keycode:Tguint; state:TGdkModifierType; group:longint; keyval:PTguint; 
           effective_group:Plongint; level:Plongint; consumed:PTGdkModifierType):Tgboolean;cdecl;external;
function gdk_display_get_setting(display:PTGdkDisplay; name:Pchar; value:PTGValue):Tgboolean;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gdkcairo.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gdkcairo.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gdkcairo.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pcairo_region_t  = ^cairo_region_t;
Pcairo_surface_t  = ^cairo_surface_t;
Pcairo_t  = ^cairo_t;
PGdkPixbuf  = ^GdkPixbuf;
PGdkRectangle  = ^GdkRectangle;
PGdkRGBA  = ^GdkRGBA;
PGdkSurface  = ^GdkSurface;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GDK_CAIRO_H__}
//// {$define __GDK_CAIRO_H__}
//// {$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gdk/gdk.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdkversionmacros.h>}
//// {$include <gdk/gdkrgba.h>}
//// {$include <gdk/gdkpixbuf.h>}
//// {$include <pango/pangocairo.h>}

procedure gdk_cairo_set_source_rgba(cr:PTcairo_t; rgba:PTGdkRGBA);cdecl;external;
procedure gdk_cairo_set_source_pixbuf(cr:PTcairo_t; pixbuf:PTGdkPixbuf; pixbuf_x:Tdouble; pixbuf_y:Tdouble);cdecl;external;
procedure gdk_cairo_rectangle(cr:PTcairo_t; rectangle:PTGdkRectangle);cdecl;external;
procedure gdk_cairo_region(cr:PTcairo_t; region:PTcairo_region_t);cdecl;external;
function gdk_cairo_region_create_from_surface(surface:PTcairo_surface_t):^Tcairo_region_t;cdecl;external;
procedure gdk_cairo_draw_from_gl(cr:PTcairo_t; surface:PTGdkSurface; source:longint; source_type:longint; buffer_scale:longint; 
            x:longint; y:longint; width:longint; height:longint);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gdkconfig.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gdkconfig.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gdkconfig.h
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


//// {$ifndef __GDKCONFIG_H__}
//// {$define __GDKCONFIG_H__}
//// {$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gdk/gdk.h> can be included directly."}
//// {$endif}
//// {$include <glib.h>}
//// {$define GDK_WINDOWING_X11}
//// {$define GDK_WINDOWING_BROADWAY}
//// {$undef GDK_WINDOWING_MACOS}
//// {$define GDK_WINDOWING_WAYLAND}
//// {$undef GDK_WINDOWING_WIN32}
//// {$undef GDK_RENDERING_VULKAN}
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/x11/gdkx11device.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/x11/gdkx11device.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/x11/gdkx11device.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGdkDevice  = ^GdkDevice;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GDK_X11_DEVICE_H__}
//// {$define __GDK_X11_DEVICE_H__}
//// {$if !defined (__GDKX_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gdk/x11/gdkx.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdk.h>}

function gdk_x11_device_get_id(device:PTGdkDevice):longint;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/x11/gdkx11utils.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/x11/gdkx11utils.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/x11/gdkx11utils.h
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




//// {$ifndef __GDK_X11_UTILS_H__}
//// {$define __GDK_X11_UTILS_H__}
//// {$if !defined (__GDKX_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gdk/x11/gdkx.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdk.h>}
//// {$include <X11/Xlib.h>}
//// {$include <X11/Xutil.h>}


function GDK_XID_TO_POINTER(xid : longint) : longint;


function GDK_POINTER_TO_XID(pointer : longint) : longint;

//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/x11/gdkx11dnd.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/x11/gdkx11dnd.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/x11/gdkx11dnd.h
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



//// {$ifndef __GDK_X11_DND_H__}
//// {$define __GDK_X11_DND_H__}
//// {$if !defined (__GDKX_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gdk/x11/gdkx.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdk.h>}

function GDK_TYPE_X11_DRAG : longint; { return type might be wrong }

function GDK_X11_DRAG(object : longint) : longint;

function GDK_X11_DRAG_CLASS(klass : longint) : longint;

function GDK_IS_X11_DRAG(object : longint) : longint;

function GDK_IS_X11_DRAG_CLASS(klass : longint) : longint;

function GDK_X11_DRAG_GET_CLASS(obj : longint) : longint;

//// {$ifdef GTK_COMPILATION}
type
  T_GdkX11Drag = TGdkX11Drag;
//// {$else}
type
  TGdkX11Drag = TGdkDrag;
//// {$endif}
type
  T_GdkX11DragClass = TGdkX11DragClass;

function gdk_x11_drag_get_type:TGType;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/x11/gdkx11devicemanager-xi2.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/x11/gdkx11devicemanager-xi2.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/x11/gdkx11devicemanager-xi2.h
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



//// {$ifndef __GDK_X11_DEVICE_MANAGER_XI2_H__}
//// {$define __GDK_X11_DEVICE_MANAGER_XI2_H__}
//// {$include <gdk/gdk.h>}

function GDK_TYPE_X11_DEVICE_MANAGER_XI2 : longint; { return type might be wrong }

function GDK_X11_DEVICE_MANAGER_XI2(o : longint) : longint;

function GDK_X11_DEVICE_MANAGER_XI2_CLASS(c : longint) : longint;

function GDK_IS_X11_DEVICE_MANAGER_XI2(o : longint) : longint;

function GDK_IS_X11_DEVICE_MANAGER_XI2_CLASS(c : longint) : longint;

function GDK_X11_DEVICE_MANAGER_XI2_GET_CLASS(o : longint) : longint;

type
  T_GdkX11DeviceManagerXI2 = TGdkX11DeviceManagerXI2;
  T_GdkX11DeviceManagerXI2Class = TGdkX11DeviceManagerXI2Class;

function gdk_x11_device_manager_xi2_get_type:TGType;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/x11/gdkx11screen.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/x11/gdkx11screen.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/x11/gdkx11screen.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGdkX11Screen  = ^GdkX11Screen;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef __GDK_X11_SCREEN_H__}
//// {$define __GDK_X11_SCREEN_H__}
//// {$if !defined (__GDKX_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gdk/x11/gdkx.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdk.h>}
//// {$include <X11/Xlib.h>}
//// {$include <X11/Xutil.h>}

function GDK_TYPE_X11_SCREEN : longint; { return type might be wrong }

function GDK_X11_SCREEN(object : longint) : longint;

function GDK_X11_SCREEN_CLASS(klass : longint) : longint;

function GDK_IS_X11_SCREEN(object : longint) : longint;

function GDK_IS_X11_SCREEN_CLASS(klass : longint) : longint;

function GDK_X11_SCREEN_GET_CLASS(obj : longint) : longint;

type
  T_GdkX11Screen = TGdkX11Screen;
  T_GdkX11ScreenClass = TGdkX11ScreenClass;

function gdk_x11_screen_get_type:TGType;cdecl;external;
function gdk_x11_screen_get_xscreen(screen:PTGdkX11Screen):^TScreen;cdecl;external;
function gdk_x11_screen_get_screen_number(screen:PTGdkX11Screen):longint;cdecl;external;
function gdk_x11_screen_get_window_manager_name(screen:PTGdkX11Screen):^char;cdecl;external;
function gdk_x11_screen_supports_net_wm_hint(screen:PTGdkX11Screen; property_name:Pchar):Tgboolean;cdecl;external;
function gdk_x11_screen_get_monitor_output(screen:PTGdkX11Screen; monitor_num:longint):TXID;cdecl;external;
function gdk_x11_screen_get_number_of_desktops(screen:PTGdkX11Screen):Tguint32;cdecl;external;
function gdk_x11_screen_get_current_desktop(screen:PTGdkX11Screen):Tguint32;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/x11/gdkx11display.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/x11/gdkx11display.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/x11/gdkx11display.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PDisplay  = ^Display;
PGdkCursor  = ^GdkCursor;
PGdkDisplay  = ^GdkDisplay;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef __GDK_X11_DISPLAY_H__}
//// {$define __GDK_X11_DISPLAY_H__}
//// {$if !defined (__GDKX_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gdk/x11/gdkx.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdk.h>}
//// {$include <gdk/x11/gdkx11screen.h>}
//// {$include <X11/Xlib.h>}
//// {$include <X11/Xutil.h>}
//// {$ifdef GTK_COMPILATION}
type
  T_GdkX11Display = TGdkX11Display;
//// {$else}
type
  TGdkX11Display = TGdkDisplay;
//// {$endif}
type
  T_GdkX11DisplayClass = TGdkX11DisplayClass;

function GDK_TYPE_X11_DISPLAY : longint; { return type might be wrong }

function GDK_X11_DISPLAY(object : longint) : longint;

function GDK_X11_DISPLAY_CLASS(klass : longint) : longint;

function GDK_IS_X11_DISPLAY(object : longint) : longint;

function GDK_IS_X11_DISPLAY_CLASS(klass : longint) : longint;

function GDK_X11_DISPLAY_GET_CLASS(obj : longint) : longint;

function gdk_x11_display_get_type:TGType;cdecl;external;
function gdk_x11_display_open(display_name:Pchar):^TGdkDisplay;cdecl;external;
function gdk_x11_display_get_xdisplay(display:PTGdkDisplay):^TDisplay;cdecl;external;
function gdk_x11_display_get_xscreen(display:PTGdkDisplay):^TScreen;cdecl;external;
function gdk_x11_display_get_xrootwindow(display:PTGdkDisplay):TWindow;cdecl;external;
function gdk_x11_display_get_xcursor(display:PTGdkDisplay; cursor:PTGdkCursor):TCursor;cdecl;external;

function GDK_DISPLAY_XDISPLAY(display : longint) : longint;

function gdk_x11_display_get_user_time(display:PTGdkDisplay):Tguint32;cdecl;external;
function gdk_x11_display_get_startup_notification_id(display:PTGdkDisplay):^char;cdecl;external;
procedure gdk_x11_display_set_startup_notification_id(display:PTGdkDisplay; startup_id:Pchar);cdecl;external;
procedure gdk_x11_display_set_program_class(display:PTGdkDisplay; program_class:Pchar);cdecl;external;
procedure gdk_x11_display_set_cursor_theme(display:PTGdkDisplay; theme:Pchar; size:longint);cdecl;external;
procedure gdk_x11_display_broadcast_startup_message(display:PTGdkDisplay; message_type:Pchar; args:array of const);cdecl;external;
procedure gdk_x11_display_broadcast_startup_message(display:PTGdkDisplay; message_type:Pchar);cdecl;external;
function gdk_x11_lookup_xdisplay(xdisplay:PTDisplay):^TGdkDisplay;cdecl;external;
function gdk_x11_display_get_screen(display:PTGdkDisplay):^TGdkX11Screen;cdecl;external;
function gdk_x11_display_get_primary_monitor(display:PTGdkDisplay):^TGdkMonitor;cdecl;external;
procedure gdk_x11_display_grab(display:PTGdkDisplay);cdecl;external;
procedure gdk_x11_display_ungrab(display:PTGdkDisplay);cdecl;external;
procedure gdk_x11_display_set_surface_scale(display:PTGdkDisplay; scale:longint);cdecl;external;
procedure gdk_x11_display_error_trap_push(display:PTGdkDisplay);cdecl;external;

function gdk_x11_display_error_trap_pop(display:PTGdkDisplay):longint;cdecl;external;
procedure gdk_x11_display_error_trap_pop_ignored(display:PTGdkDisplay);cdecl;external;
procedure gdk_x11_set_sm_client_id(sm_client_id:Pchar);cdecl;external;
function gdk_x11_display_get_default_group(display:PTGdkDisplay):^TGdkSurface;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/x11/gdkx11applaunchcontext.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/x11/gdkx11applaunchcontext.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/x11/gdkx11applaunchcontext.h
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



//// {$ifndef __GDK_X11_APP_LAUNCH_CONTEXT_H__}
//// {$define __GDK_X11_APP_LAUNCH_CONTEXT_H__}
//// {$if !defined (__GDKX_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gdk/x11/gdkx.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdk.h>}

function GDK_TYPE_X11_APP_LAUNCH_CONTEXT : longint; { return type might be wrong }

function GDK_X11_APP_LAUNCH_CONTEXT(object : longint) : longint;

function GDK_X11_APP_LAUNCH_CONTEXT_CLASS(klass : longint) : longint;

function GDK_IS_X11_APP_LAUNCH_CONTEXT(object : longint) : longint;

function GDK_IS_X11_APP_LAUNCH_CONTEXT_CLASS(klass : longint) : longint;

function GDK_X11_APP_LAUNCH_CONTEXT_GET_CLASS(obj : longint) : longint;

//// {$ifdef GTK_COMPILATION}
type
  T_GdkX11AppLaunchContext = TGdkX11AppLaunchContext;
//// {$else}
type
  TGdkX11AppLaunchContext = TGdkAppLaunchContext;
//// {$endif}
type
  T_GdkX11AppLaunchContextClass = TGdkX11AppLaunchContextClass;

function gdk_x11_app_launch_context_get_type:TGType;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/x11/gdkx11device-xi2.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/x11/gdkx11device-xi2.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/x11/gdkx11device-xi2.h
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



//// {$ifndef __GDK_X11_DEVICE_XI2_H__}
//// {$define __GDK_X11_DEVICE_XI2_H__}
//// {$include <gdk/gdk.h>}

function GDK_TYPE_X11_DEVICE_XI2 : longint; { return type might be wrong }

function GDK_X11_DEVICE_XI2(o : longint) : longint;

function GDK_X11_DEVICE_XI2_CLASS(c : longint) : longint;

function GDK_IS_X11_DEVICE_XI2(o : longint) : longint;

function GDK_IS_X11_DEVICE_XI2_CLASS(c : longint) : longint;

function GDK_X11_DEVICE_XI2_GET_CLASS(o : longint) : longint;

type
  T_GdkX11DeviceXI2 = TGdkX11DeviceXI2;
  T_GdkX11DeviceXI2Class = TGdkX11DeviceXI2Class;

  TGdkX11DeviceType = (GDK_X11_DEVICE_TYPE_LOGICAL,GDK_X11_DEVICE_TYPE_PHYSICAL,
    GDK_X11_DEVICE_TYPE_FLOATING);

function gdk_x11_device_xi2_get_type:TGType;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/x11/gdkx11glcontext.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/x11/gdkx11glcontext.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/x11/gdkx11glcontext.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGdkDisplay  = ^GdkDisplay;
Plongint  = ^longint;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GDK_X11_GL_CONTEXT_H__}
//// {$define __GDK_X11_GL_CONTEXT_H__}
//// {$if !defined (__GDKX_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gdk/x11/gdkx.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdk.h>}

function GDK_TYPE_X11_GL_CONTEXT : longint; { return type might be wrong }

function GDK_X11_GL_CONTEXT(obj : longint) : longint;

function GDK_X11_IS_GL_CONTEXT(obj : longint) : longint;

type
  T_GdkX11GLContext = TGdkX11GLContext;
  T_GdkX11GLContextClass = TGdkX11GLContextClass;

function gdk_x11_gl_context_get_type:TGType;cdecl;external;
function gdk_x11_display_get_glx_version(display:PTGdkDisplay; major:Plongint; minor:Plongint):Tgboolean;cdecl;external;
function gdk_x11_display_get_egl_version(display:PTGdkDisplay; major:Plongint; minor:Plongint):Tgboolean;cdecl;external;
function gdk_x11_display_get_egl_display(display:PTGdkDisplay):Tgpointer;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/x11/gdkx11selection.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/x11/gdkx11selection.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/x11/gdkx11selection.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGdkDisplay  = ^GdkDisplay;
Pguchar  = ^guchar;
Plongint  = ^longint;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef __GDK_X11_SELECTION_H__}
//// {$define __GDK_X11_SELECTION_H__}
//// {$if !defined (__GDKX_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gdk/x11/gdkx.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdk.h>}
//// {$include <X11/Xlib.h>}
//// {$include <X11/Xutil.h>}

function gdk_x11_display_text_property_to_text_list(display:PTGdkDisplay; encoding:Pchar; format:longint; text:PTguchar; length:longint; 
           list:PPPchar):longint;cdecl;external;
procedure gdk_x11_free_text_list(list:PPchar);cdecl;external;
function gdk_x11_display_string_to_compound_text(display:PTGdkDisplay; str:Pchar; encoding:PPchar; format:Plongint; ctext:PPTguchar; 
           length:Plongint):longint;cdecl;external;
function gdk_x11_display_utf8_to_compound_text(display:PTGdkDisplay; str:Pchar; encoding:PPchar; format:Plongint; ctext:PPTguchar; 
           length:Plongint):Tgboolean;cdecl;external;
procedure gdk_x11_free_compound_text(ctext:PTguchar);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/x11/gdkx11property.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/x11/gdkx11property.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/x11/gdkx11property.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGdkDisplay  = ^GdkDisplay;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef __GDK_X11_PROPERTY_H__}
//// {$define __GDK_X11_PROPERTY_H__}
//// {$if !defined (__GDKX_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gdk/x11/gdkx.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdk.h>}
//// {$include <X11/Xlib.h>}
//// {$include <X11/Xutil.h>}

function gdk_x11_get_xatom_by_name_for_display(display:PTGdkDisplay; atom_name:Pchar):TAtom;cdecl;external;
function gdk_x11_get_xatom_name_for_display(display:PTGdkDisplay; xatom:TAtom):^char;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/x11/gdkx.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/x11/gdkx.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/x11/gdkx.h
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




//// {$ifndef __GDK_X_H__}
//// {$define __GDK_X_H__}
//// {$include <gdk/gdk.h>}
//// {$include <X11/Xlib.h>}
//// {$include <X11/Xutil.h>}
//// {$define __GDKX_H_INSIDE__}
//// {$include <gdk/x11/gdkx11applaunchcontext.h>}
//// {$include <gdk/x11/gdkx11device.h>}
//// {$include <gdk/x11/gdkx11device-xi2.h>}
//// {$include <gdk/x11/gdkx11devicemanager.h>}
//// {$include <gdk/x11/gdkx11devicemanager-xi2.h>}
//// {$include <gdk/x11/gdkx11display.h>}
//// {$include <gdk/x11/gdkx11dnd.h>}
//// {$include <gdk/x11/gdkx11glcontext.h>}
//// {$include <gdk/x11/gdkx11monitor.h>}
//// {$include <gdk/x11/gdkx11property.h>}
//// {$include <gdk/x11/gdkx11screen.h>}
//// {$include <gdk/x11/gdkx11selection.h>}
//// {$include <gdk/x11/gdkx11utils.h>}
//// {$include <gdk/x11/gdkx11surface.h>}
//// {$include <gdk/x11/gdkx-autocleanups.h>}
//// {$undef __GDKX_H_INSIDE__}
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/x11/gdkx11monitor.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/x11/gdkx11monitor.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/x11/gdkx11monitor.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGdkMonitor  = ^GdkMonitor;
PGdkRectangle  = ^GdkRectangle;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GDK_X11_MONITOR_H__}
//// {$define __GDK_X11_MONITOR_H__}
//// {$if !defined (__GDKX_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gdk/x11/gdkx.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdkmonitor.h>}

function GDK_TYPE_X11_MONITOR : longint; { return type might be wrong }

function GDK_X11_MONITOR(object : longint) : longint;

function GDK_IS_X11_MONITOR(object : longint) : longint;

type
  T_GdkX11Monitor = TGdkX11Monitor;
  T_GdkX11MonitorClass = TGdkX11MonitorClass;

function gdk_x11_monitor_get_type:TGType;cdecl;external;
function gdk_x11_monitor_get_output(monitor:PTGdkMonitor):TXID;cdecl;external;
procedure gdk_x11_monitor_get_workarea(monitor:PTGdkMonitor; workarea:PTGdkRectangle);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/x11/gdkx11devicemanager.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/x11/gdkx11devicemanager.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/x11/gdkx11devicemanager.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGdkX11DeviceManagerXI2  = ^GdkX11DeviceManagerXI2;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GDK_X11_DEVICE_MANAGER_H__}
//// {$define __GDK_X11_DEVICE_MANAGER_H__}
//// {$if !defined (__GDKX_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gdk/x11/gdkx.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdk.h>}
//// {$include <gdk/x11/gdkx11devicemanager-xi2.h>}
//// {$include <X11/Xlib.h>}
//// {$include <X11/Xutil.h>}

function gdk_x11_device_manager_lookup(device_manager:PTGdkX11DeviceManagerXI2; device_id:longint):^TGdkDevice;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/x11/gdkx11surface.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/x11/gdkx11surface.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/x11/gdkx11surface.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGdkDisplay  = ^GdkDisplay;
PGdkSurface  = ^GdkSurface;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef __GDK_X11_SURFACE_H__}
//// {$define __GDK_X11_SURFACE_H__}
//// {$if !defined (__GDKX_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gdk/x11/gdkx.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdk.h>}
//// {$include <X11/Xlib.h>}
//// {$include <X11/Xutil.h>}

function GDK_TYPE_X11_SURFACE : longint; { return type might be wrong }

function GDK_X11_SURFACE(object : longint) : longint;

function GDK_X11_SURFACE_CLASS(klass : longint) : longint;

function GDK_IS_X11_SURFACE(object : longint) : longint;

function GDK_IS_X11_SURFACE_CLASS(klass : longint) : longint;

function GDK_X11_SURFACE_GET_CLASS(obj : longint) : longint;

//// {$ifdef GTK_COMPILATION}
type
  T_GdkX11Surface = TGdkX11Surface;
//// {$else}
type
  TGdkX11Surface = TGdkSurface;
//// {$endif}
type
  T_GdkX11SurfaceClass = TGdkX11SurfaceClass;

function gdk_x11_surface_get_type:TGType;cdecl;external;
function gdk_x11_surface_get_xid(surface:PTGdkSurface):TWindow;cdecl;external;
procedure gdk_x11_surface_set_user_time(surface:PTGdkSurface; timestamp:Tguint32);cdecl;external;
procedure gdk_x11_surface_set_utf8_property(surface:PTGdkSurface; name:Pchar; value:Pchar);cdecl;external;
procedure gdk_x11_surface_set_theme_variant(surface:PTGdkSurface; variant:Pchar);cdecl;external;
procedure gdk_x11_surface_move_to_current_desktop(surface:PTGdkSurface);cdecl;external;
function gdk_x11_surface_get_desktop(surface:PTGdkSurface):Tguint32;cdecl;external;
procedure gdk_x11_surface_move_to_desktop(surface:PTGdkSurface; desktop:Tguint32);cdecl;external;
procedure gdk_x11_surface_set_frame_sync_enabled(surface:PTGdkSurface; frame_sync_enabled:Tgboolean);cdecl;external;

function GDK_SURFACE_XDISPLAY(win : longint) : longint;


function GDK_SURFACE_XID(win : longint) : longint;

function gdk_x11_get_server_time(surface:PTGdkSurface):Tguint32;cdecl;external;
function gdk_x11_surface_lookup_for_display(display:PTGdkDisplay; window:TWindow):^TGdkSurface;cdecl;external;
procedure gdk_x11_surface_set_skip_taskbar_hint(surface:PTGdkSurface; skips_taskbar:Tgboolean);cdecl;external;
procedure gdk_x11_surface_set_skip_pager_hint(surface:PTGdkSurface; skips_pager:Tgboolean);cdecl;external;
procedure gdk_x11_surface_set_urgency_hint(surface:PTGdkSurface; urgent:Tgboolean);cdecl;external;
procedure gdk_x11_surface_set_group(surface:PTGdkSurface; leader:PTGdkSurface);cdecl;external;
function gdk_x11_surface_get_group(surface:PTGdkSurface):^TGdkSurface;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/wayland/gdkwaylandsurface.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/wayland/gdkwaylandsurface.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/wayland/gdkwaylandsurface.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGdkSurface  = ^GdkSurface;
PGdkToplevel  = ^GdkToplevel;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GDK_WAYLAND_SURFACE_H__}
//// {$define __GDK_WAYLAND_SURFACE_H__}
//// {$if !defined (__GDKWAYLAND_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gdk/wayland/gdkwayland.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdk.h>}
//// {$include <wayland-client.h>}
//// {$ifdef GTK_COMPILATION}
type
  T_GdkWaylandSurface = TGdkWaylandSurface;
  T_GdkWaylandToplevel = TGdkWaylandToplevel;
  T_GdkWaylandPopup = TGdkWaylandPopup;
//// {$else}
type
  TGdkWaylandSurface = TGdkSurface;

  TGdkWaylandToplevel = TGdkToplevel;

  TGdkWaylandPopup = TGdkPopup;
//// {$endif}

function GDK_TYPE_WAYLAND_SURFACE : longint; { return type might be wrong }

function GDK_WAYLAND_SURFACE(object : longint) : longint;

function GDK_IS_WAYLAND_SURFACE(object : longint) : longint;

function GDK_TYPE_WAYLAND_TOPLEVEL : longint; { return type might be wrong }

function GDK_WAYLAND_TOPLEVEL(object : longint) : longint;

function GDK_IS_WAYLAND_TOPLEVEL(object : longint) : longint;

function GDK_TYPE_WAYLAND_POPUP : longint; { return type might be wrong }

function GDK_WAYLAND_POPUP(object : longint) : longint;

function GDK_IS_WAYLAND_POPUP(object : longint) : longint;

function gdk_wayland_surface_get_type:TGType;cdecl;external;
function gdk_wayland_toplevel_get_type:TGType;cdecl;external;
function gdk_wayland_popup_get_type:TGType;cdecl;external;
function gdk_wayland_surface_get_wl_surface(surface:PTGdkSurface):^Twl_surface;cdecl;external;
type

  TGdkWaylandToplevelExported = procedure (toplevel:PTGdkToplevel; handle:Pchar; user_data:Tgpointer);cdecl;

function gdk_wayland_toplevel_export_handle(toplevel:PTGdkToplevel; callback:TGdkWaylandToplevelExported; user_data:Tgpointer; destroy_func:TGDestroyNotify):Tgboolean;cdecl;external;
procedure gdk_wayland_toplevel_unexport_handle(toplevel:PTGdkToplevel);cdecl;external;
function gdk_wayland_toplevel_set_transient_for_exported(toplevel:PTGdkToplevel; parent_handle_str:Pchar):Tgboolean;cdecl;external;
procedure gdk_wayland_toplevel_set_application_id(toplevel:PTGdkToplevel; application_id:Pchar);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/wayland/gdkwaylandglcontext.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/wayland/gdkwaylandglcontext.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/wayland/gdkwaylandglcontext.h
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



//// {$ifndef __GDK_WAYLAND_GL_CONTEXT_H__}
//// {$define __GDK_WAYLAND_GL_CONTEXT_H__}
//// {$if !defined (__GDKWAYLAND_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gdk/wayland/gdkwayland.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdk.h>}

function GDK_TYPE_WAYLAND_GL_CONTEXT : longint; { return type might be wrong }

function GDK_WAYLAND_GL_CONTEXT(obj : longint) : longint;

function GDK_WAYLAND_IS_GL_CONTEXT(obj : longint) : longint;

type
  T_GdkWaylandGLContext = TGdkWaylandGLContext;
  T_GdkWaylandGLContextClass = TGdkWaylandGLContextClass;

function gdk_wayland_gl_context_get_type:TGType;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/wayland/gdkwaylandmonitor.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/wayland/gdkwaylandmonitor.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/wayland/gdkwaylandmonitor.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGdkMonitor  = ^GdkMonitor;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GDK_WAYLAND_MONITOR_H__}
//// {$define __GDK_WAYLAND_MONITOR_H__}
//// {$if !defined (__GDKWAYLAND_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gdk/wayland/gdkwayland.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdkmonitor.h>}

function GDK_TYPE_WAYLAND_MONITOR : longint; { return type might be wrong }

function GDK_WAYLAND_MONITOR(object : longint) : longint;

function GDK_IS_WAYLAND_MONITOR(object : longint) : longint;

type
  T_GdkWaylandMonitor = TGdkWaylandMonitor;
  T_GdkWaylandMonitorClass = TGdkWaylandMonitorClass;

function gdk_wayland_monitor_get_type:TGType;cdecl;external;
function gdk_wayland_monitor_get_wl_output(monitor:PTGdkMonitor):^Twl_output;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/wayland/gdkwayland.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/wayland/gdkwayland.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/wayland/gdkwayland.h
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




//// {$ifndef __GDK_WAYLAND_H__}
//// {$define __GDK_WAYLAND_H__}
//// {$include <gdk/gdk.h>}
//// {$define __GDKWAYLAND_H_INSIDE__}
//// {$include <gdk/wayland/gdkwaylanddevice.h>}
//// {$include <gdk/wayland/gdkwaylanddisplay.h>}
//// {$include <gdk/wayland/gdkwaylandmonitor.h>}
//// {$include <gdk/wayland/gdkwaylandseat.h>}
//// {$include <gdk/wayland/gdkwaylandsurface.h>}
//// {$include <gdk/wayland/gdkwaylandglcontext.h>}
//// {$undef __GDKWAYLAND_H_INSIDE__}
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/wayland/gdkwaylandseat.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/wayland/gdkwaylandseat.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/wayland/gdkwaylandseat.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGdkSeat  = ^GdkSeat;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$if !defined (__GDKWAYLAND_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gdk/wayland/gdkwayland.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdk.h>}
//// {$include <wayland-client.h>}
//// {$ifdef GTK_COMPILATION}
type
  T_GdkWaylandSeat = TGdkWaylandSeat;
//// {$else}
type
  TGdkWaylandSeat = TGdkSeat;
//// {$endif}
type
  T_GdkWaylandSeatClass = TGdkWaylandSeatClass;

function GDK_TYPE_WAYLAND_SEAT : longint; { return type might be wrong }

function GDK_WAYLAND_SEAT(o : longint) : longint;

function GDK_IS_WAYLAND_SEAT(o : longint) : longint;

function gdk_wayland_seat_get_type:TGType;cdecl;external;
function gdk_wayland_seat_get_wl_seat(seat:PTGdkSeat):^Twl_seat;cdecl;external;

// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/wayland/gdkwaylanddisplay.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/wayland/gdkwaylanddisplay.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/wayland/gdkwaylanddisplay.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGdkDisplay  = ^GdkDisplay;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GDK_WAYLAND_DISPLAY_H__}
//// {$define __GDK_WAYLAND_DISPLAY_H__}
//// {$if !defined (__GDKWAYLAND_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gdk/wayland/gdkwayland.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdk.h>}
//// {$include <wayland-client.h>}
//// {$ifdef GTK_COMPILATION}
type
  T_GdkWaylandDisplay = TGdkWaylandDisplay;
//// {$else}
type
  TGdkWaylandDisplay = TGdkDisplay;
//// {$endif}
type
  T_GdkWaylandDisplayClass = TGdkWaylandDisplayClass;

function GDK_TYPE_WAYLAND_DISPLAY : longint; { return type might be wrong }

function GDK_WAYLAND_DISPLAY(object : longint) : longint;

function GDK_WAYLAND_DISPLAY_CLASS(klass : longint) : longint;

function GDK_IS_WAYLAND_DISPLAY(object : longint) : longint;

function GDK_IS_WAYLAND_DISPLAY_CLASS(klass : longint) : longint;

function GDK_WAYLAND_DISPLAY_GET_CLASS(obj : longint) : longint;

function gdk_wayland_display_get_type:TGType;cdecl;external;
function gdk_wayland_display_get_wl_display(display:PTGdkDisplay):^Twl_display;cdecl;external;
function gdk_wayland_display_get_wl_compositor(display:PTGdkDisplay):^Twl_compositor;cdecl;external;
procedure gdk_wayland_display_set_cursor_theme(display:PTGdkDisplay; name:Pchar; size:longint);cdecl;external;
function gdk_wayland_display_get_startup_notification_id(display:PTGdkDisplay):^char;cdecl;external;
procedure gdk_wayland_display_set_startup_notification_id(display:PTGdkDisplay; startup_id:Pchar);cdecl;external;
function gdk_wayland_display_query_registry(display:PTGdkDisplay; global:Pchar):Tgboolean;cdecl;external;
function gdk_wayland_display_get_egl_display(display:PTGdkDisplay):Tgpointer;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/wayland/gdkwaylanddevice.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/wayland/gdkwaylanddevice.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/wayland/gdkwaylanddevice.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGdkDevice  = ^GdkDevice;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GDK_WAYLAND_DEVICE_H__}
//// {$define __GDK_WAYLAND_DEVICE_H__}
//// {$if !defined (__GDKWAYLAND_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gdk/wayland/gdkwayland.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdk.h>}
//// {$include <wayland-client.h>}
//// {$ifdef GTK_COMPILATION}
type
  T_GdkWaylandDevice = TGdkWaylandDevice;
//// {$else}
type
  TGdkWaylandDevice = TGdkDevice;
//// {$endif}
type
  T_GdkWaylandDeviceClass = TGdkWaylandDeviceClass;

function GDK_TYPE_WAYLAND_DEVICE : longint; { return type might be wrong }

function GDK_WAYLAND_DEVICE(o : longint) : longint;

function GDK_WAYLAND_DEVICE_CLASS(c : longint) : longint;

function GDK_IS_WAYLAND_DEVICE(o : longint) : longint;

function GDK_IS_WAYLAND_DEVICE_CLASS(c : longint) : longint;

function GDK_WAYLAND_DEVICE_GET_CLASS(o : longint) : longint;

function gdk_wayland_device_get_type:TGType;cdecl;external;
function gdk_wayland_device_get_wl_seat(device:PTGdkDevice):^Twl_seat;cdecl;external;
function gdk_wayland_device_get_wl_pointer(device:PTGdkDevice):^Twl_pointer;cdecl;external;
function gdk_wayland_device_get_wl_keyboard(device:PTGdkDevice):^Twl_keyboard;cdecl;external;
function gdk_wayland_device_get_xkb_keymap(device:PTGdkDevice):^Txkb_keymap;cdecl;external;
function gdk_wayland_device_get_node_path(device:PTGdkDevice):^char;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/broadway/gdkbroadwaycursor.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/broadway/gdkbroadwaycursor.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/broadway/gdkbroadwaycursor.h
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




//// {$ifndef __GDK_BROADWAY_CURSOR_H__}
//// {$define __GDK_BROADWAY_CURSOR_H__}
//// {$if !defined (__GDKBROADWAY_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gdk/broadway/gdkbroadway.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdk.h>}

function GDK_TYPE_BROADWAY_CURSOR : longint; { return type might be wrong }

function GDK_BROADWAY_CURSOR(object : longint) : longint;

function GDK_BROADWAY_CURSOR_CLASS(klass : longint) : longint;

function GDK_IS_BROADWAY_CURSOR(object : longint) : longint;

function GDK_IS_BROADWAY_CURSOR_CLASS(klass : longint) : longint;

function GDK_BROADWAY_CURSOR_GET_CLASS(obj : longint) : longint;

//// {$ifdef GTK_COMPILATION}
type
  T_GdkBroadwayCursor = TGdkBroadwayCursor;
//// {$else}
type
  TGdkBroadwayCursor = TGdkCursor;
//// {$endif}
type
  T_GdkBroadwayCursorClass = TGdkBroadwayCursorClass;

function gdk_broadway_cursor_get_type:TGType;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/broadway/gdkbroadwaydisplay.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/broadway/gdkbroadwaydisplay.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/broadway/gdkbroadwaydisplay.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGdkBroadwayDisplay  = ^GdkBroadwayDisplay;
PGdkDisplay  = ^GdkDisplay;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GDK_BROADWAY_DISPLAY_H__}
//// {$define __GDK_BROADWAY_DISPLAY_H__}
//// {$if !defined (__GDKBROADWAY_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gdk/broadway/gdkbroadway.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdk.h>}
//// {$ifdef GTK_COMPILATION}
type
  T_GdkBroadwayDisplay = TGdkBroadwayDisplay;
//// {$else}
type
  TGdkBroadwayDisplay = TGdkDisplay;
//// {$endif}
type
  T_GdkBroadwayDisplayClass = TGdkBroadwayDisplayClass;

function GDK_TYPE_BROADWAY_DISPLAY : longint; { return type might be wrong }

function GDK_BROADWAY_DISPLAY(object : longint) : longint;

function GDK_BROADWAY_DISPLAY_CLASS(klass : longint) : longint;

function GDK_IS_BROADWAY_DISPLAY(object : longint) : longint;

function GDK_IS_BROADWAY_DISPLAY_CLASS(klass : longint) : longint;

function GDK_BROADWAY_DISPLAY_GET_CLASS(obj : longint) : longint;

function gdk_broadway_display_get_type:TGType;cdecl;external;
procedure gdk_broadway_display_show_keyboard(display:PTGdkBroadwayDisplay);cdecl;external;
procedure gdk_broadway_display_hide_keyboard(display:PTGdkBroadwayDisplay);cdecl;external;
function gdk_broadway_display_get_surface_scale(display:PTGdkDisplay):longint;cdecl;external;
procedure gdk_broadway_display_set_surface_scale(display:PTGdkDisplay; scale:longint);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/broadway/gdkbroadway.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/broadway/gdkbroadway.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/broadway/gdkbroadway.h
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




//// {$ifndef __GDK_BROADWAY_H__}
//// {$define __GDK_BROADWAY_H__}
//// {$include <gdk/gdk.h>}
//// {$define __GDKBROADWAY_H_INSIDE__}
//// {$include <gdk/broadway/gdkbroadwaydisplay.h>}
//// {$include <gdk/broadway/gdkbroadwaysurface.h>}
//// {$include <gdk/broadway/gdkbroadwaycursor.h>}
//// {$include <gdk/broadway/gdkbroadwaymonitor.h>}
//// {$undef __GDKBROADWAY_H_INSIDE__}
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/broadway/gdkbroadwaysurface.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/broadway/gdkbroadwaysurface.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/broadway/gdkbroadwaysurface.h
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




//// {$ifndef __GDK_BROADWAY_SURFACE_H__}
//// {$define __GDK_BROADWAY_SURFACE_H__}
//// {$include <gdk/gdk.h>}

function GDK_TYPE_BROADWAY_SURFACE : longint; { return type might be wrong }

function GDK_BROADWAY_SURFACE(object : longint) : longint;

function GDK_BROADWAY_SURFACE_CLASS(klass : longint) : longint;

function GDK_IS_BROADWAY_SURFACE(object : longint) : longint;

function GDK_IS_BROADWAY_SURFACE_CLASS(klass : longint) : longint;

function GDK_BROADWAY_SURFACE_GET_CLASS(obj : longint) : longint;

//// {$ifdef GTK_COMPILATION}
type
  T_GdkBroadwaySurface = TGdkBroadwaySurface;
//// {$else}
type
  TGdkBroadwaySurface = TGdkSurface;
//// {$endif}
type
  T_GdkBroadwaySurfaceClass = TGdkBroadwaySurfaceClass;

function gdk_broadway_surface_get_type:TGType;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/broadway/gdkbroadwaymonitor.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/broadway/gdkbroadwaymonitor.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/broadway/gdkbroadwaymonitor.h
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



//// {$ifndef __GDK_BROADWAY_MONITOR_H__}
//// {$define __GDK_BROADWAY_MONITOR_H__}
//// {$if !defined (__GDKBROADWAY_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gdk/broadway/gdkbroadway.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdkmonitor.h>}

function GDK_TYPE_BROADWAY_MONITOR : longint; { return type might be wrong }

function GDK_BROADWAY_MONITOR(object : longint) : longint;

function GDK_IS_BROADWAY_MONITOR(object : longint) : longint;

type
  T_GdkBroadwayMonitor = TGdkBroadwayMonitor;
  T_GdkBroadwayMonitorClass = TGdkBroadwayMonitorClass;

function gdk_broadway_monitor_get_type:TGType;cdecl;external;
//// {$endif}



implementation
// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gdksurface.pp
// -------------------------------------------------

function GDK_TYPE_SURFACE : longint; { return type might be wrong }
  begin
    GDK_TYPE_SURFACE:=gdk_surface_get_type;
  end;

function GDK_SURFACE(object : longint) : longint;
begin
  GDK_SURFACE:=G_TYPE_CHECK_INSTANCE_CAST(object,GDK_TYPE_SURFACE,GdkSurface);
end;

function GDK_SURFACE_CLASS(klass : longint) : longint;
begin
  GDK_SURFACE_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GDK_TYPE_SURFACE,GdkSurfaceClass);
end;

function GDK_IS_SURFACE(object : longint) : longint;
begin
  GDK_IS_SURFACE:=G_TYPE_CHECK_INSTANCE_TYPE(object,GDK_TYPE_SURFACE);
end;

function GDK_IS_SURFACE_CLASS(klass : longint) : longint;
begin
  GDK_IS_SURFACE_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GDK_TYPE_SURFACE);
end;

function GDK_SURFACE_GET_CLASS(obj : longint) : longint;
begin
  GDK_SURFACE_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GDK_TYPE_SURFACE,GdkSurfaceClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gdkvulkancontext.pp
// -------------------------------------------------

function GDK_TYPE_VULKAN_CONTEXT : longint; { return type might be wrong }
  begin
    GDK_TYPE_VULKAN_CONTEXT:=gdk_vulkan_context_get_type;
  end;

function GDK_VULKAN_CONTEXT(obj : longint) : longint;
begin
  GDK_VULKAN_CONTEXT:=G_TYPE_CHECK_INSTANCE_CAST(obj,GDK_TYPE_VULKAN_CONTEXT,GdkVulkanContext);
end;

function GDK_IS_VULKAN_CONTEXT(obj : longint) : longint;
begin
  GDK_IS_VULKAN_CONTEXT:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GDK_TYPE_VULKAN_CONTEXT);
end;

function GDK_VULKAN_ERROR : longint; { return type might be wrong }
  begin
    GDK_VULKAN_ERROR:=gdk_vulkan_error_quark;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gdkdevicepad.pp
// -------------------------------------------------

function GDK_TYPE_DEVICE_PAD : longint; { return type might be wrong }
  begin
    GDK_TYPE_DEVICE_PAD:=gdk_device_pad_get_type;
  end;

function GDK_DEVICE_PAD(o : longint) : longint;
begin
  GDK_DEVICE_PAD:=G_TYPE_CHECK_INSTANCE_CAST(o,GDK_TYPE_DEVICE_PAD,GdkDevicePad);
end;

function GDK_IS_DEVICE_PAD(o : longint) : longint;
begin
  GDK_IS_DEVICE_PAD:=G_TYPE_CHECK_INSTANCE_TYPE(o,GDK_TYPE_DEVICE_PAD);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gdktoplevelsize.pp
// -------------------------------------------------

function GDK_TYPE_TOPLEVEL_SIZE : longint; { return type might be wrong }
  begin
    GDK_TYPE_TOPLEVEL_SIZE:=gdk_toplevel_size_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gdkpango.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gdkenums.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gdkcontentdeserializer.pp
// -------------------------------------------------

function GDK_TYPE_CONTENT_DESERIALIZER : longint; { return type might be wrong }
  begin
    GDK_TYPE_CONTENT_DESERIALIZER:=gdk_content_deserializer_get_type;
  end;

function GDK_CONTENT_DESERIALIZER(o : longint) : longint;
begin
  GDK_CONTENT_DESERIALIZER:=G_TYPE_CHECK_INSTANCE_CAST(o,GDK_TYPE_CONTENT_DESERIALIZER,GdkContentDeserializer);
end;

function GDK_IS_CONTENT_DESERIALIZER(o : longint) : longint;
begin
  GDK_IS_CONTENT_DESERIALIZER:=G_TYPE_CHECK_INSTANCE_TYPE(o,GDK_TYPE_CONTENT_DESERIALIZER);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gdkdrawcontext.pp
// -------------------------------------------------

function GDK_TYPE_DRAW_CONTEXT : longint; { return type might be wrong }
  begin
    GDK_TYPE_DRAW_CONTEXT:=gdk_draw_context_get_type;
  end;

function GDK_DRAW_CONTEXT(obj : longint) : longint;
begin
  GDK_DRAW_CONTEXT:=G_TYPE_CHECK_INSTANCE_CAST(obj,GDK_TYPE_DRAW_CONTEXT,GdkDrawContext);
end;

function GDK_IS_DRAW_CONTEXT(obj : longint) : longint;
begin
  GDK_IS_DRAW_CONTEXT:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GDK_TYPE_DRAW_CONTEXT);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gdkpaintable.pp
// -------------------------------------------------

function GDK_TYPE_PAINTABLE : longint; { return type might be wrong }
  begin
    GDK_TYPE_PAINTABLE:=gdk_paintable_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gdkgltexture.pp
// -------------------------------------------------

function GDK_TYPE_GL_TEXTURE : longint; { return type might be wrong }
  begin
    GDK_TYPE_GL_TEXTURE:=gdk_gl_texture_get_type;
  end;

function GDK_GL_TEXTURE(obj : longint) : longint;
begin
  GDK_GL_TEXTURE:=G_TYPE_CHECK_INSTANCE_CAST(obj,GDK_TYPE_GL_TEXTURE,GdkGLTexture);
end;

function GDK_IS_GL_TEXTURE(obj : longint) : longint;
begin
  GDK_IS_GL_TEXTURE:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GDK_TYPE_GL_TEXTURE);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gdkcontentserializer.pp
// -------------------------------------------------

function GDK_TYPE_CONTENT_SERIALIZER : longint; { return type might be wrong }
  begin
    GDK_TYPE_CONTENT_SERIALIZER:=gdk_content_serializer_get_type;
  end;

function GDK_CONTENT_SERIALIZER(o : longint) : longint;
begin
  GDK_CONTENT_SERIALIZER:=G_TYPE_CHECK_INSTANCE_CAST(o,GDK_TYPE_CONTENT_SERIALIZER,GdkContentSerializer);
end;

function GDK_IS_CONTENT_SERIALIZER(o : longint) : longint;
begin
  GDK_IS_CONTENT_SERIALIZER:=G_TYPE_CHECK_INSTANCE_TYPE(o,GDK_TYPE_CONTENT_SERIALIZER);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gdkcursor.pp
// -------------------------------------------------

function GDK_TYPE_CURSOR : longint; { return type might be wrong }
  begin
    GDK_TYPE_CURSOR:=gdk_cursor_get_type;
  end;

function GDK_CURSOR(object : longint) : longint;
begin
  GDK_CURSOR:=G_TYPE_CHECK_INSTANCE_CAST(object,GDK_TYPE_CURSOR,GdkCursor);
end;

function GDK_IS_CURSOR(object : longint) : longint;
begin
  GDK_IS_CURSOR:=G_TYPE_CHECK_INSTANCE_TYPE(object,GDK_TYPE_CURSOR);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gdkrectangle.pp
// -------------------------------------------------

function GDK_TYPE_RECTANGLE : longint; { return type might be wrong }
  begin
    GDK_TYPE_RECTANGLE:=gdk_rectangle_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gdktoplevel.pp
// -------------------------------------------------

function GDK_TYPE_TOPLEVEL : longint; { return type might be wrong }
  begin
    GDK_TYPE_TOPLEVEL:=gdk_toplevel_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gdkrgba.pp
// -------------------------------------------------

function GDK_TYPE_RGBA : longint; { return type might be wrong }
  begin
    GDK_TYPE_RGBA:=gdk_rgba_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gdkkeys.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gdkevents.pp
// -------------------------------------------------

function GDK_TYPE_EVENT : longint; { return type might be wrong }
  begin
    GDK_TYPE_EVENT:=gdk_event_get_type;
  end;

function GDK_TYPE_EVENT_SEQUENCE : longint; { return type might be wrong }
  begin
    GDK_TYPE_EVENT_SEQUENCE:=gdk_event_sequence_get_type;
  end;

function GDK_IS_EVENT(obj : longint) : longint;
begin
  GDK_IS_EVENT:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GDK_TYPE_EVENT);
end;

function GDK_EVENT(obj : longint) : longint;
begin
  GDK_EVENT:=G_TYPE_CHECK_INSTANCE_CAST(obj,GDK_TYPE_EVENT,GdkEvent);
end;

function GDK_IS_EVENT_TYPE(event,_type : longint) : longint;
begin
  GDK_IS_EVENT_TYPE:=(gdk_event_get_event_type(event))=_type;
end;

function GDK_TYPE_BUTTON_EVENT : longint; { return type might be wrong }
  begin
    GDK_TYPE_BUTTON_EVENT:=gdk_button_event_get_type;
  end;

function GDK_TYPE_CROSSING_EVENT : longint; { return type might be wrong }
  begin
    GDK_TYPE_CROSSING_EVENT:=gdk_crossing_event_get_type;
  end;

function GDK_TYPE_DELETE_EVENT : longint; { return type might be wrong }
  begin
    GDK_TYPE_DELETE_EVENT:=gdk_delete_event_get_type;
  end;

function GDK_TYPE_DND_EVENT : longint; { return type might be wrong }
  begin
    GDK_TYPE_DND_EVENT:=gdk_dnd_event_get_type;
  end;

function GDK_TYPE_FOCUS_EVENT : longint; { return type might be wrong }
  begin
    GDK_TYPE_FOCUS_EVENT:=gdk_focus_event_get_type;
  end;

function GDK_TYPE_GRAB_BROKEN_EVENT : longint; { return type might be wrong }
  begin
    GDK_TYPE_GRAB_BROKEN_EVENT:=gdk_grab_broken_event_get_type;
  end;

function GDK_TYPE_KEY_EVENT : longint; { return type might be wrong }
  begin
    GDK_TYPE_KEY_EVENT:=gdk_key_event_get_type;
  end;

function GDK_TYPE_MOTION_EVENT : longint; { return type might be wrong }
  begin
    GDK_TYPE_MOTION_EVENT:=gdk_motion_event_get_type;
  end;

function GDK_TYPE_PAD_EVENT : longint; { return type might be wrong }
  begin
    GDK_TYPE_PAD_EVENT:=gdk_pad_event_get_type;
  end;

function GDK_TYPE_PROXIMITY_EVENT : longint; { return type might be wrong }
  begin
    GDK_TYPE_PROXIMITY_EVENT:=gdk_proximity_event_get_type;
  end;

function GDK_TYPE_SCROLL_EVENT : longint; { return type might be wrong }
  begin
    GDK_TYPE_SCROLL_EVENT:=gdk_scroll_event_get_type;
  end;

function GDK_TYPE_TOUCH_EVENT : longint; { return type might be wrong }
  begin
    GDK_TYPE_TOUCH_EVENT:=gdk_touch_event_get_type;
  end;

function GDK_TYPE_TOUCHPAD_EVENT : longint; { return type might be wrong }
  begin
    GDK_TYPE_TOUCHPAD_EVENT:=gdk_touchpad_event_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gdkdragsurface.pp
// -------------------------------------------------

function GDK_TYPE_DRAG_SURFACE : longint; { return type might be wrong }
  begin
    GDK_TYPE_DRAG_SURFACE:=gdk_drag_surface_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gdkkeysyms.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gdkpopuplayout.pp
// -------------------------------------------------

function GDK_TYPE_POPUP_LAYOUT : longint; { return type might be wrong }
  begin
    GDK_TYPE_POPUP_LAYOUT:=gdk_popup_layout_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gdkdisplaymanager.pp
// -------------------------------------------------

function GDK_TYPE_DISPLAY_MANAGER : longint; { return type might be wrong }
  begin
    GDK_TYPE_DISPLAY_MANAGER:=gdk_display_manager_get_type;
  end;

function GDK_DISPLAY_MANAGER(object : longint) : longint;
begin
  GDK_DISPLAY_MANAGER:=G_TYPE_CHECK_INSTANCE_CAST(object,GDK_TYPE_DISPLAY_MANAGER,GdkDisplayManager);
end;

function GDK_IS_DISPLAY_MANAGER(object : longint) : longint;
begin
  GDK_IS_DISPLAY_MANAGER:=G_TYPE_CHECK_INSTANCE_TYPE(object,GDK_TYPE_DISPLAY_MANAGER);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gdk.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gdkpopup.pp
// -------------------------------------------------

function GDK_TYPE_POPUP : longint; { return type might be wrong }
  begin
    GDK_TYPE_POPUP:=gdk_popup_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gdkseat.pp
// -------------------------------------------------

function GDK_TYPE_SEAT : longint; { return type might be wrong }
  begin
    GDK_TYPE_SEAT:=gdk_seat_get_type;
  end;

function GDK_SEAT(o : longint) : longint;
begin
  GDK_SEAT:=G_TYPE_CHECK_INSTANCE_CAST(o,GDK_TYPE_SEAT,GdkSeat);
end;

function GDK_IS_SEAT(o : longint) : longint;
begin
  GDK_IS_SEAT:=G_TYPE_CHECK_INSTANCE_TYPE(o,GDK_TYPE_SEAT);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gdkcontentprovider.pp
// -------------------------------------------------

function GDK_TYPE_CONTENT_PROVIDER : longint; { return type might be wrong }
  begin
    GDK_TYPE_CONTENT_PROVIDER:=gdk_content_provider_get_type;
  end;

function GDK_CONTENT_PROVIDER(obj : longint) : longint;
begin
  GDK_CONTENT_PROVIDER:=G_TYPE_CHECK_INSTANCE_CAST(obj,GDK_TYPE_CONTENT_PROVIDER,GdkContentProvider);
end;

function GDK_IS_CONTENT_PROVIDER(obj : longint) : longint;
begin
  GDK_IS_CONTENT_PROVIDER:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GDK_TYPE_CONTENT_PROVIDER);
end;

function GDK_CONTENT_PROVIDER_CLASS(klass : longint) : longint;
begin
  GDK_CONTENT_PROVIDER_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GDK_TYPE_CONTENT_PROVIDER,GdkContentProviderClass);
end;

function GDK_IS_CONTENT_PROVIDER_CLASS(klass : longint) : longint;
begin
  GDK_IS_CONTENT_PROVIDER_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GDK_TYPE_CONTENT_PROVIDER);
end;

function GDK_CONTENT_PROVIDER_GET_CLASS(obj : longint) : longint;
begin
  GDK_CONTENT_PROVIDER_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GDK_TYPE_CONTENT_PROVIDER,GdkContentProviderClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gdkpixbuf.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gdkdrag.pp
// -------------------------------------------------

function GDK_TYPE_DRAG : longint; { return type might be wrong }
  begin
    GDK_TYPE_DRAG:=gdk_drag_get_type;
  end;

function GDK_DRAG(object : longint) : longint;
begin
  GDK_DRAG:=G_TYPE_CHECK_INSTANCE_CAST(object,GDK_TYPE_DRAG,GdkDrag);
end;

function GDK_IS_DRAG(object : longint) : longint;
begin
  GDK_IS_DRAG:=G_TYPE_CHECK_INSTANCE_TYPE(object,GDK_TYPE_DRAG);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gdkframetimings.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gdkdevice.pp
// -------------------------------------------------

function GDK_TYPE_DEVICE : longint; { return type might be wrong }
  begin
    GDK_TYPE_DEVICE:=gdk_device_get_type;
  end;

function GDK_DEVICE(o : longint) : longint;
begin
  GDK_DEVICE:=G_TYPE_CHECK_INSTANCE_CAST(o,GDK_TYPE_DEVICE,GdkDevice);
end;

function GDK_IS_DEVICE(o : longint) : longint;
begin
  GDK_IS_DEVICE:=G_TYPE_CHECK_INSTANCE_TYPE(o,GDK_TYPE_DEVICE);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gdktexture.pp
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
// /tmp/GTK4-Konverter-header/gdkmemorytexture.pp
// -------------------------------------------------

function GDK_TYPE_MEMORY_TEXTURE : longint; { return type might be wrong }
  begin
    GDK_TYPE_MEMORY_TEXTURE:=gdk_memory_texture_get_type;
  end;

function GDK_MEMORY_TEXTURE(obj : longint) : longint;
begin
  GDK_MEMORY_TEXTURE:=G_TYPE_CHECK_INSTANCE_CAST(obj,GDK_TYPE_MEMORY_TEXTURE,GdkMemoryTexture);
end;

function GDK_IS_MEMORY_TEXTURE(obj : longint) : longint;
begin
  GDK_IS_MEMORY_TEXTURE:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GDK_TYPE_MEMORY_TEXTURE);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gdkcairocontext.pp
// -------------------------------------------------

function GDK_TYPE_CAIRO_CONTEXT : longint; { return type might be wrong }
  begin
    GDK_TYPE_CAIRO_CONTEXT:=gdk_cairo_context_get_type;
  end;

function GDK_CAIRO_CONTEXT(obj : longint) : longint;
begin
  GDK_CAIRO_CONTEXT:=G_TYPE_CHECK_INSTANCE_CAST(obj,GDK_TYPE_CAIRO_CONTEXT,GdkCairoContext);
end;

function GDK_IS_CAIRO_CONTEXT(obj : longint) : longint;
begin
  GDK_IS_CAIRO_CONTEXT:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GDK_TYPE_CAIRO_CONTEXT);
end;

function GDK_CAIRO_ERROR : longint; { return type might be wrong }
  begin
    GDK_CAIRO_ERROR:=gdk_cairo_error_quark;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gdkdevicetool.pp
// -------------------------------------------------

function GDK_TYPE_DEVICE_TOOL : longint; { return type might be wrong }
  begin
    GDK_TYPE_DEVICE_TOOL:=gdk_device_tool_get_type;
  end;

function GDK_DEVICE_TOOL(o : longint) : longint;
begin
  GDK_DEVICE_TOOL:=G_TYPE_CHECK_INSTANCE_CAST(o,GDK_TYPE_DEVICE_TOOL,GdkDeviceTool);
end;

function GDK_IS_DEVICE_TOOL(o : longint) : longint;
begin
  GDK_IS_DEVICE_TOOL:=G_TYPE_CHECK_INSTANCE_TYPE(o,GDK_TYPE_DEVICE_TOOL);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gdktypes.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gdkframeclock.pp
// -------------------------------------------------

function GDK_TYPE_FRAME_CLOCK : longint; { return type might be wrong }
  begin
    GDK_TYPE_FRAME_CLOCK:=gdk_frame_clock_get_type;
  end;

function GDK_FRAME_CLOCK(obj : longint) : longint;
begin
  GDK_FRAME_CLOCK:=G_TYPE_CHECK_INSTANCE_CAST(obj,GDK_TYPE_FRAME_CLOCK,GdkFrameClock);
end;

function GDK_FRAME_CLOCK_CLASS(klass : longint) : longint;
begin
  GDK_FRAME_CLOCK_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GDK_TYPE_FRAME_CLOCK,GdkFrameClockClass);
end;

function GDK_IS_FRAME_CLOCK(obj : longint) : longint;
begin
  GDK_IS_FRAME_CLOCK:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GDK_TYPE_FRAME_CLOCK);
end;

function GDK_IS_FRAME_CLOCK_CLASS(klass : longint) : longint;
begin
  GDK_IS_FRAME_CLOCK_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GDK_TYPE_FRAME_CLOCK);
end;

function GDK_FRAME_CLOCK_GET_CLASS(obj : longint) : longint;
begin
  GDK_FRAME_CLOCK_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GDK_TYPE_FRAME_CLOCK,GdkFrameClockClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gdkapplaunchcontext.pp
// -------------------------------------------------

function GDK_TYPE_APP_LAUNCH_CONTEXT : longint; { return type might be wrong }
  begin
    GDK_TYPE_APP_LAUNCH_CONTEXT:=gdk_app_launch_context_get_type;
  end;

function GDK_APP_LAUNCH_CONTEXT(o : longint) : longint;
begin
  GDK_APP_LAUNCH_CONTEXT:=G_TYPE_CHECK_INSTANCE_CAST(o,GDK_TYPE_APP_LAUNCH_CONTEXT,GdkAppLaunchContext);
end;

function GDK_IS_APP_LAUNCH_CONTEXT(o : longint) : longint;
begin
  GDK_IS_APP_LAUNCH_CONTEXT:=G_TYPE_CHECK_INSTANCE_TYPE(o,GDK_TYPE_APP_LAUNCH_CONTEXT);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gdkclipboard.pp
// -------------------------------------------------

function GDK_TYPE_CLIPBOARD : longint; { return type might be wrong }
  begin
    GDK_TYPE_CLIPBOARD:=gdk_clipboard_get_type;
  end;

function GDK_CLIPBOARD(obj : longint) : longint;
begin
  GDK_CLIPBOARD:=G_TYPE_CHECK_INSTANCE_CAST(obj,GDK_TYPE_CLIPBOARD,GdkClipboard);
end;

function GDK_IS_CLIPBOARD(obj : longint) : longint;
begin
  GDK_IS_CLIPBOARD:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GDK_TYPE_CLIPBOARD);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gdkenumtypes.pp
// -------------------------------------------------

function GDK_TYPE_INPUT_SOURCE : longint; { return type might be wrong }
  begin
    GDK_TYPE_INPUT_SOURCE:=gdk_input_source_get_type;
  end;

function GDK_TYPE_DEVICE_PAD_FEATURE : longint; { return type might be wrong }
  begin
    GDK_TYPE_DEVICE_PAD_FEATURE:=gdk_device_pad_feature_get_type;
  end;

function GDK_TYPE_DEVICE_TOOL_TYPE : longint; { return type might be wrong }
  begin
    GDK_TYPE_DEVICE_TOOL_TYPE:=gdk_device_tool_type_get_type;
  end;

function GDK_TYPE_DRAG_CANCEL_REASON : longint; { return type might be wrong }
  begin
    GDK_TYPE_DRAG_CANCEL_REASON:=gdk_drag_cancel_reason_get_type;
  end;

function GDK_TYPE_GRAVITY : longint; { return type might be wrong }
  begin
    GDK_TYPE_GRAVITY:=gdk_gravity_get_type;
  end;

function GDK_TYPE_MODIFIER_TYPE : longint; { return type might be wrong }
  begin
    GDK_TYPE_MODIFIER_TYPE:=gdk_modifier_type_get_type;
  end;

function GDK_TYPE_GL_ERROR : longint; { return type might be wrong }
  begin
    GDK_TYPE_GL_ERROR:=gdk_gl_error_get_type;
  end;

function GDK_TYPE_VULKAN_ERROR : longint; { return type might be wrong }
  begin
    GDK_TYPE_VULKAN_ERROR:=gdk_vulkan_error_get_type;
  end;

function GDK_TYPE_AXIS_USE : longint; { return type might be wrong }
  begin
    GDK_TYPE_AXIS_USE:=gdk_axis_use_get_type;
  end;

function GDK_TYPE_AXIS_FLAGS : longint; { return type might be wrong }
  begin
    GDK_TYPE_AXIS_FLAGS:=gdk_axis_flags_get_type;
  end;

function GDK_TYPE_DRAG_ACTION : longint; { return type might be wrong }
  begin
    GDK_TYPE_DRAG_ACTION:=gdk_drag_action_get_type;
  end;

function GDK_TYPE_MEMORY_FORMAT : longint; { return type might be wrong }
  begin
    GDK_TYPE_MEMORY_FORMAT:=gdk_memory_format_get_type;
  end;

function GDK_TYPE_EVENT_TYPE : longint; { return type might be wrong }
  begin
    GDK_TYPE_EVENT_TYPE:=gdk_event_type_get_type;
  end;

function GDK_TYPE_TOUCHPAD_GESTURE_PHASE : longint; { return type might be wrong }
  begin
    GDK_TYPE_TOUCHPAD_GESTURE_PHASE:=gdk_touchpad_gesture_phase_get_type;
  end;

function GDK_TYPE_SCROLL_DIRECTION : longint; { return type might be wrong }
  begin
    GDK_TYPE_SCROLL_DIRECTION:=gdk_scroll_direction_get_type;
  end;

function GDK_TYPE_SCROLL_UNIT : longint; { return type might be wrong }
  begin
    GDK_TYPE_SCROLL_UNIT:=gdk_scroll_unit_get_type;
  end;

function GDK_TYPE_NOTIFY_TYPE : longint; { return type might be wrong }
  begin
    GDK_TYPE_NOTIFY_TYPE:=gdk_notify_type_get_type;
  end;

function GDK_TYPE_CROSSING_MODE : longint; { return type might be wrong }
  begin
    GDK_TYPE_CROSSING_MODE:=gdk_crossing_mode_get_type;
  end;

function GDK_TYPE_KEY_MATCH : longint; { return type might be wrong }
  begin
    GDK_TYPE_KEY_MATCH:=gdk_key_match_get_type;
  end;

function GDK_TYPE_FRAME_CLOCK_PHASE : longint; { return type might be wrong }
  begin
    GDK_TYPE_FRAME_CLOCK_PHASE:=gdk_frame_clock_phase_get_type;
  end;

function GDK_TYPE_GL_API : longint; { return type might be wrong }
  begin
    GDK_TYPE_GL_API:=gdk_gl_api_get_type;
  end;

function GDK_TYPE_SUBPIXEL_LAYOUT : longint; { return type might be wrong }
  begin
    GDK_TYPE_SUBPIXEL_LAYOUT:=gdk_subpixel_layout_get_type;
  end;

function GDK_TYPE_PAINTABLE_FLAGS : longint; { return type might be wrong }
  begin
    GDK_TYPE_PAINTABLE_FLAGS:=gdk_paintable_flags_get_type;
  end;

function GDK_TYPE_ANCHOR_HINTS : longint; { return type might be wrong }
  begin
    GDK_TYPE_ANCHOR_HINTS:=gdk_anchor_hints_get_type;
  end;

function GDK_TYPE_SEAT_CAPABILITIES : longint; { return type might be wrong }
  begin
    GDK_TYPE_SEAT_CAPABILITIES:=gdk_seat_capabilities_get_type;
  end;

function GDK_TYPE_TEXTURE_ERROR : longint; { return type might be wrong }
  begin
    GDK_TYPE_TEXTURE_ERROR:=gdk_texture_error_get_type;
  end;

function GDK_TYPE_SURFACE_EDGE : longint; { return type might be wrong }
  begin
    GDK_TYPE_SURFACE_EDGE:=gdk_surface_edge_get_type;
  end;

function GDK_TYPE_FULLSCREEN_MODE : longint; { return type might be wrong }
  begin
    GDK_TYPE_FULLSCREEN_MODE:=gdk_fullscreen_mode_get_type;
  end;

function GDK_TYPE_TOPLEVEL_STATE : longint; { return type might be wrong }
  begin
    GDK_TYPE_TOPLEVEL_STATE:=gdk_toplevel_state_get_type;
  end;

function GDK_TYPE_TITLEBAR_GESTURE : longint; { return type might be wrong }
  begin
    GDK_TYPE_TITLEBAR_GESTURE:=gdk_titlebar_gesture_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gdkcontentproviderimpl.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gdksnapshot.pp
// -------------------------------------------------

function GDK_TYPE_SNAPSHOT : longint; { return type might be wrong }
  begin
    GDK_TYPE_SNAPSHOT:=gdk_snapshot_get_type;
  end;

function GDK_SNAPSHOT(obj : longint) : longint;
begin
  GDK_SNAPSHOT:=G_TYPE_CHECK_INSTANCE_CAST(obj,GDK_TYPE_SNAPSHOT,GdkSnapshot);
end;

function GDK_IS_SNAPSHOT(obj : longint) : longint;
begin
  GDK_IS_SNAPSHOT:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GDK_TYPE_SNAPSHOT);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gdkdrop.pp
// -------------------------------------------------

function GDK_TYPE_DROP : longint; { return type might be wrong }
  begin
    GDK_TYPE_DROP:=gdk_drop_get_type;
  end;

function GDK_DROP(object : longint) : longint;
begin
  GDK_DROP:=G_TYPE_CHECK_INSTANCE_CAST(object,GDK_TYPE_DROP,GdkDrop);
end;

function GDK_IS_DROP(object : longint) : longint;
begin
  GDK_IS_DROP:=G_TYPE_CHECK_INSTANCE_TYPE(object,GDK_TYPE_DROP);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gdkmonitor.pp
// -------------------------------------------------

function GDK_TYPE_MONITOR : longint; { return type might be wrong }
  begin
    GDK_TYPE_MONITOR:=gdk_monitor_get_type;
  end;

function GDK_MONITOR(object : longint) : longint;
begin
  GDK_MONITOR:=G_TYPE_CHECK_INSTANCE_CAST(object,GDK_TYPE_MONITOR,GdkMonitor);
end;

function GDK_IS_MONITOR(object : longint) : longint;
begin
  GDK_IS_MONITOR:=G_TYPE_CHECK_INSTANCE_TYPE(object,GDK_TYPE_MONITOR);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gdkglcontext.pp
// -------------------------------------------------

function GDK_TYPE_GL_CONTEXT : longint; { return type might be wrong }
  begin
    GDK_TYPE_GL_CONTEXT:=gdk_gl_context_get_type;
  end;

function GDK_GL_CONTEXT(obj : longint) : longint;
begin
  GDK_GL_CONTEXT:=G_TYPE_CHECK_INSTANCE_CAST(obj,GDK_TYPE_GL_CONTEXT,GdkGLContext);
end;

function GDK_IS_GL_CONTEXT(obj : longint) : longint;
begin
  GDK_IS_GL_CONTEXT:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GDK_TYPE_GL_CONTEXT);
end;

function GDK_GL_ERROR : longint; { return type might be wrong }
  begin
    GDK_GL_ERROR:=gdk_gl_error_quark;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gdkcontentformats.pp
// -------------------------------------------------

function GDK_TYPE_CONTENT_FORMATS : longint; { return type might be wrong }
  begin
    GDK_TYPE_CONTENT_FORMATS:=gdk_content_formats_get_type;
  end;

function GDK_TYPE_CONTENT_FORMATS_BUILDER : longint; { return type might be wrong }
  begin
    GDK_TYPE_CONTENT_FORMATS_BUILDER:=gdk_content_formats_builder_get_type;
  end;

function GDK_TYPE_FILE_LIST : longint; { return type might be wrong }
  begin
    GDK_TYPE_FILE_LIST:=gdk_file_list_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gdktoplevellayout.pp
// -------------------------------------------------

function GDK_TYPE_TOPLEVEL_LAYOUT : longint; { return type might be wrong }
  begin
    GDK_TYPE_TOPLEVEL_LAYOUT:=gdk_toplevel_layout_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gdkdisplay.pp
// -------------------------------------------------

function GDK_TYPE_DISPLAY : longint; { return type might be wrong }
  begin
    GDK_TYPE_DISPLAY:=gdk_display_get_type;
  end;

function GDK_DISPLAY(object : longint) : longint;
begin
  GDK_DISPLAY:=G_TYPE_CHECK_INSTANCE_CAST(object,GDK_TYPE_DISPLAY,GdkDisplay);
end;

function GDK_IS_DISPLAY(object : longint) : longint;
begin
  GDK_IS_DISPLAY:=G_TYPE_CHECK_INSTANCE_TYPE(object,GDK_TYPE_DISPLAY);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gdkcairo.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gdkconfig.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/x11/gdkx11device.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/x11/gdkx11utils.pp
// -------------------------------------------------

function GDK_XID_TO_POINTER(xid : longint) : longint;
begin
  GDK_XID_TO_POINTER:=GUINT_TO_POINTER(xid);
end;

function GDK_POINTER_TO_XID(pointer : longint) : longint;
begin
  GDK_POINTER_TO_XID:=GPOINTER_TO_UINT(pointer);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/x11/gdkx11dnd.pp
// -------------------------------------------------

function GDK_TYPE_X11_DRAG : longint; { return type might be wrong }
  begin
    GDK_TYPE_X11_DRAG:=gdk_x11_drag_get_type;
  end;

function GDK_X11_DRAG(object : longint) : longint;
begin
  GDK_X11_DRAG:=G_TYPE_CHECK_INSTANCE_CAST(object,GDK_TYPE_X11_DRAG,GdkX11Drag);
end;

function GDK_X11_DRAG_CLASS(klass : longint) : longint;
begin
  GDK_X11_DRAG_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GDK_TYPE_X11_DRAG,GdkX11DragClass);
end;

function GDK_IS_X11_DRAG(object : longint) : longint;
begin
  GDK_IS_X11_DRAG:=G_TYPE_CHECK_INSTANCE_TYPE(object,GDK_TYPE_X11_DRAG);
end;

function GDK_IS_X11_DRAG_CLASS(klass : longint) : longint;
begin
  GDK_IS_X11_DRAG_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GDK_TYPE_X11_DRAG);
end;

function GDK_X11_DRAG_GET_CLASS(obj : longint) : longint;
begin
  GDK_X11_DRAG_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GDK_TYPE_X11_DRAG,GdkX11DragClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/x11/gdkx11devicemanager-xi2.pp
// -------------------------------------------------

function GDK_TYPE_X11_DEVICE_MANAGER_XI2 : longint; { return type might be wrong }
  begin
    GDK_TYPE_X11_DEVICE_MANAGER_XI2:=gdk_x11_device_manager_xi2_get_type;
  end;

function GDK_X11_DEVICE_MANAGER_XI2(o : longint) : longint;
begin
  GDK_X11_DEVICE_MANAGER_XI2:=G_TYPE_CHECK_INSTANCE_CAST(o,GDK_TYPE_X11_DEVICE_MANAGER_XI2,GdkX11DeviceManagerXI2);
end;

function GDK_X11_DEVICE_MANAGER_XI2_CLASS(c : longint) : longint;
begin
  GDK_X11_DEVICE_MANAGER_XI2_CLASS:=G_TYPE_CHECK_CLASS_CAST(c,GDK_TYPE_X11_DEVICE_MANAGER_XI2,GdkX11DeviceManagerXI2Class);
end;

function GDK_IS_X11_DEVICE_MANAGER_XI2(o : longint) : longint;
begin
  GDK_IS_X11_DEVICE_MANAGER_XI2:=G_TYPE_CHECK_INSTANCE_TYPE(o,GDK_TYPE_X11_DEVICE_MANAGER_XI2);
end;

function GDK_IS_X11_DEVICE_MANAGER_XI2_CLASS(c : longint) : longint;
begin
  GDK_IS_X11_DEVICE_MANAGER_XI2_CLASS:=G_TYPE_CHECK_CLASS_TYPE(c,GDK_TYPE_X11_DEVICE_MANAGER_XI2);
end;

function GDK_X11_DEVICE_MANAGER_XI2_GET_CLASS(o : longint) : longint;
begin
  GDK_X11_DEVICE_MANAGER_XI2_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GDK_TYPE_X11_DEVICE_MANAGER_XI2,GdkX11DeviceManagerXI2Class);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/x11/gdkx11screen.pp
// -------------------------------------------------

function GDK_TYPE_X11_SCREEN : longint; { return type might be wrong }
  begin
    GDK_TYPE_X11_SCREEN:=gdk_x11_screen_get_type;
  end;

function GDK_X11_SCREEN(object : longint) : longint;
begin
  GDK_X11_SCREEN:=G_TYPE_CHECK_INSTANCE_CAST(object,GDK_TYPE_X11_SCREEN,GdkX11Screen);
end;

function GDK_X11_SCREEN_CLASS(klass : longint) : longint;
begin
  GDK_X11_SCREEN_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GDK_TYPE_X11_SCREEN,GdkX11ScreenClass);
end;

function GDK_IS_X11_SCREEN(object : longint) : longint;
begin
  GDK_IS_X11_SCREEN:=G_TYPE_CHECK_INSTANCE_TYPE(object,GDK_TYPE_X11_SCREEN);
end;

function GDK_IS_X11_SCREEN_CLASS(klass : longint) : longint;
begin
  GDK_IS_X11_SCREEN_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GDK_TYPE_X11_SCREEN);
end;

function GDK_X11_SCREEN_GET_CLASS(obj : longint) : longint;
begin
  GDK_X11_SCREEN_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GDK_TYPE_X11_SCREEN,GdkX11ScreenClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/x11/gdkx11display.pp
// -------------------------------------------------

function GDK_TYPE_X11_DISPLAY : longint; { return type might be wrong }
  begin
    GDK_TYPE_X11_DISPLAY:=gdk_x11_display_get_type;
  end;

function GDK_X11_DISPLAY(object : longint) : longint;
begin
  GDK_X11_DISPLAY:=G_TYPE_CHECK_INSTANCE_CAST(object,GDK_TYPE_X11_DISPLAY,GdkX11Display);
end;

function GDK_X11_DISPLAY_CLASS(klass : longint) : longint;
begin
  GDK_X11_DISPLAY_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GDK_TYPE_X11_DISPLAY,GdkX11DisplayClass);
end;

function GDK_IS_X11_DISPLAY(object : longint) : longint;
begin
  GDK_IS_X11_DISPLAY:=G_TYPE_CHECK_INSTANCE_TYPE(object,GDK_TYPE_X11_DISPLAY);
end;

function GDK_IS_X11_DISPLAY_CLASS(klass : longint) : longint;
begin
  GDK_IS_X11_DISPLAY_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GDK_TYPE_X11_DISPLAY);
end;

function GDK_X11_DISPLAY_GET_CLASS(obj : longint) : longint;
begin
  GDK_X11_DISPLAY_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GDK_TYPE_X11_DISPLAY,GdkX11DisplayClass);
end;

function GDK_DISPLAY_XDISPLAY(display : longint) : longint;
begin
  GDK_DISPLAY_XDISPLAY:=gdk_x11_display_get_xdisplay(display);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/x11/gdkx11applaunchcontext.pp
// -------------------------------------------------

function GDK_TYPE_X11_APP_LAUNCH_CONTEXT : longint; { return type might be wrong }
  begin
    GDK_TYPE_X11_APP_LAUNCH_CONTEXT:=gdk_x11_app_launch_context_get_type;
  end;

function GDK_X11_APP_LAUNCH_CONTEXT(object : longint) : longint;
begin
  GDK_X11_APP_LAUNCH_CONTEXT:=G_TYPE_CHECK_INSTANCE_CAST(object,GDK_TYPE_X11_APP_LAUNCH_CONTEXT,GdkX11AppLaunchContext);
end;

function GDK_X11_APP_LAUNCH_CONTEXT_CLASS(klass : longint) : longint;
begin
  GDK_X11_APP_LAUNCH_CONTEXT_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GDK_TYPE_X11_APP_LAUNCH_CONTEXT,GdkX11AppLaunchContextClass);
end;

function GDK_IS_X11_APP_LAUNCH_CONTEXT(object : longint) : longint;
begin
  GDK_IS_X11_APP_LAUNCH_CONTEXT:=G_TYPE_CHECK_INSTANCE_TYPE(object,GDK_TYPE_X11_APP_LAUNCH_CONTEXT);
end;

function GDK_IS_X11_APP_LAUNCH_CONTEXT_CLASS(klass : longint) : longint;
begin
  GDK_IS_X11_APP_LAUNCH_CONTEXT_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GDK_TYPE_X11_APP_LAUNCH_CONTEXT);
end;

function GDK_X11_APP_LAUNCH_CONTEXT_GET_CLASS(obj : longint) : longint;
begin
  GDK_X11_APP_LAUNCH_CONTEXT_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GDK_TYPE_X11_APP_LAUNCH_CONTEXT,GdkX11AppLaunchContextClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/x11/gdkx11device-xi2.pp
// -------------------------------------------------

function GDK_TYPE_X11_DEVICE_XI2 : longint; { return type might be wrong }
  begin
    GDK_TYPE_X11_DEVICE_XI2:=gdk_x11_device_xi2_get_type;
  end;

function GDK_X11_DEVICE_XI2(o : longint) : longint;
begin
  GDK_X11_DEVICE_XI2:=G_TYPE_CHECK_INSTANCE_CAST(o,GDK_TYPE_X11_DEVICE_XI2,GdkX11DeviceXI2);
end;

function GDK_X11_DEVICE_XI2_CLASS(c : longint) : longint;
begin
  GDK_X11_DEVICE_XI2_CLASS:=G_TYPE_CHECK_CLASS_CAST(c,GDK_TYPE_X11_DEVICE_XI2,GdkX11DeviceXI2Class);
end;

function GDK_IS_X11_DEVICE_XI2(o : longint) : longint;
begin
  GDK_IS_X11_DEVICE_XI2:=G_TYPE_CHECK_INSTANCE_TYPE(o,GDK_TYPE_X11_DEVICE_XI2);
end;

function GDK_IS_X11_DEVICE_XI2_CLASS(c : longint) : longint;
begin
  GDK_IS_X11_DEVICE_XI2_CLASS:=G_TYPE_CHECK_CLASS_TYPE(c,GDK_TYPE_X11_DEVICE_XI2);
end;

function GDK_X11_DEVICE_XI2_GET_CLASS(o : longint) : longint;
begin
  GDK_X11_DEVICE_XI2_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GDK_TYPE_X11_DEVICE_XI2,GdkX11DeviceXI2Class);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/x11/gdkx11glcontext.pp
// -------------------------------------------------

function GDK_TYPE_X11_GL_CONTEXT : longint; { return type might be wrong }
  begin
    GDK_TYPE_X11_GL_CONTEXT:=gdk_x11_gl_context_get_type;
  end;

function GDK_X11_GL_CONTEXT(obj : longint) : longint;
begin
  GDK_X11_GL_CONTEXT:=G_TYPE_CHECK_INSTANCE_CAST(obj,GDK_TYPE_X11_GL_CONTEXT,GdkX11GLContext);
end;

function GDK_X11_IS_GL_CONTEXT(obj : longint) : longint;
begin
  GDK_X11_IS_GL_CONTEXT:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GDK_TYPE_X11_GL_CONTEXT);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/x11/gdkx11selection.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/x11/gdkx11property.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/x11/gdkx.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/x11/gdkx11monitor.pp
// -------------------------------------------------

function GDK_TYPE_X11_MONITOR : longint; { return type might be wrong }
  begin
    GDK_TYPE_X11_MONITOR:=gdk_x11_monitor_get_type;
  end;

function GDK_X11_MONITOR(object : longint) : longint;
begin
  GDK_X11_MONITOR:=G_TYPE_CHECK_INSTANCE_CAST(object,GDK_TYPE_X11_MONITOR,GdkX11Monitor);
end;

function GDK_IS_X11_MONITOR(object : longint) : longint;
begin
  GDK_IS_X11_MONITOR:=G_TYPE_CHECK_INSTANCE_TYPE(object,GDK_TYPE_X11_MONITOR);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/x11/gdkx11devicemanager.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/x11/gdkx11surface.pp
// -------------------------------------------------

function GDK_TYPE_X11_SURFACE : longint; { return type might be wrong }
  begin
    GDK_TYPE_X11_SURFACE:=gdk_x11_surface_get_type;
  end;

function GDK_X11_SURFACE(object : longint) : longint;
begin
  GDK_X11_SURFACE:=G_TYPE_CHECK_INSTANCE_CAST(object,GDK_TYPE_X11_SURFACE,GdkX11Surface);
end;

function GDK_X11_SURFACE_CLASS(klass : longint) : longint;
begin
  GDK_X11_SURFACE_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GDK_TYPE_X11_SURFACE,GdkX11SurfaceClass);
end;

function GDK_IS_X11_SURFACE(object : longint) : longint;
begin
  GDK_IS_X11_SURFACE:=G_TYPE_CHECK_INSTANCE_TYPE(object,GDK_TYPE_X11_SURFACE);
end;

function GDK_IS_X11_SURFACE_CLASS(klass : longint) : longint;
begin
  GDK_IS_X11_SURFACE_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GDK_TYPE_X11_SURFACE);
end;

function GDK_X11_SURFACE_GET_CLASS(obj : longint) : longint;
begin
  GDK_X11_SURFACE_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GDK_TYPE_X11_SURFACE,GdkX11SurfaceClass);
end;

function GDK_SURFACE_XDISPLAY(win : longint) : longint;
begin
  GDK_SURFACE_XDISPLAY:=GDK_DISPLAY_XDISPLAY(gdk_surface_get_display(win));
end;

function GDK_SURFACE_XID(win : longint) : longint;
begin
  GDK_SURFACE_XID:=gdk_x11_surface_get_xid(win);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/wayland/gdkwaylandsurface.pp
// -------------------------------------------------

function GDK_TYPE_WAYLAND_SURFACE : longint; { return type might be wrong }
  begin
    GDK_TYPE_WAYLAND_SURFACE:=gdk_wayland_surface_get_type;
  end;

function GDK_WAYLAND_SURFACE(object : longint) : longint;
begin
  GDK_WAYLAND_SURFACE:=G_TYPE_CHECK_INSTANCE_CAST(object,GDK_TYPE_WAYLAND_SURFACE,GdkWaylandSurface);
end;

function GDK_IS_WAYLAND_SURFACE(object : longint) : longint;
begin
  GDK_IS_WAYLAND_SURFACE:=G_TYPE_CHECK_INSTANCE_TYPE(object,GDK_TYPE_WAYLAND_SURFACE);
end;

function GDK_TYPE_WAYLAND_TOPLEVEL : longint; { return type might be wrong }
  begin
    GDK_TYPE_WAYLAND_TOPLEVEL:=gdk_wayland_toplevel_get_type;
  end;

function GDK_WAYLAND_TOPLEVEL(object : longint) : longint;
begin
  GDK_WAYLAND_TOPLEVEL:=G_TYPE_CHECK_INSTANCE_CAST(object,GDK_TYPE_WAYLAND_TOPLEVEL,GdkWaylandToplevel);
end;

function GDK_IS_WAYLAND_TOPLEVEL(object : longint) : longint;
begin
  GDK_IS_WAYLAND_TOPLEVEL:=G_TYPE_CHECK_INSTANCE_TYPE(object,GDK_TYPE_WAYLAND_TOPLEVEL);
end;

function GDK_TYPE_WAYLAND_POPUP : longint; { return type might be wrong }
  begin
    GDK_TYPE_WAYLAND_POPUP:=gdk_wayland_popup_get_type;
  end;

function GDK_WAYLAND_POPUP(object : longint) : longint;
begin
  GDK_WAYLAND_POPUP:=G_TYPE_CHECK_INSTANCE_CAST(object,GDK_TYPE_WAYLAND_POPUP,GdkWaylandPopup);
end;

function GDK_IS_WAYLAND_POPUP(object : longint) : longint;
begin
  GDK_IS_WAYLAND_POPUP:=G_TYPE_CHECK_INSTANCE_TYPE(object,GDK_TYPE_WAYLAND_POPUP);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/wayland/gdkwaylandglcontext.pp
// -------------------------------------------------

function GDK_TYPE_WAYLAND_GL_CONTEXT : longint; { return type might be wrong }
  begin
    GDK_TYPE_WAYLAND_GL_CONTEXT:=gdk_wayland_gl_context_get_type;
  end;

function GDK_WAYLAND_GL_CONTEXT(obj : longint) : longint;
begin
  GDK_WAYLAND_GL_CONTEXT:=G_TYPE_CHECK_INSTANCE_CAST(obj,GDK_TYPE_WAYLAND_GL_CONTEXT,GdkWaylandGLContext);
end;

function GDK_WAYLAND_IS_GL_CONTEXT(obj : longint) : longint;
begin
  GDK_WAYLAND_IS_GL_CONTEXT:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GDK_TYPE_WAYLAND_GL_CONTEXT);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/wayland/gdkwaylandmonitor.pp
// -------------------------------------------------

function GDK_TYPE_WAYLAND_MONITOR : longint; { return type might be wrong }
  begin
    GDK_TYPE_WAYLAND_MONITOR:=gdk_wayland_monitor_get_type;
  end;

function GDK_WAYLAND_MONITOR(object : longint) : longint;
begin
  GDK_WAYLAND_MONITOR:=G_TYPE_CHECK_INSTANCE_CAST(object,GDK_TYPE_WAYLAND_MONITOR,GdkWaylandMonitor);
end;

function GDK_IS_WAYLAND_MONITOR(object : longint) : longint;
begin
  GDK_IS_WAYLAND_MONITOR:=G_TYPE_CHECK_INSTANCE_TYPE(object,GDK_TYPE_WAYLAND_MONITOR);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/wayland/gdkwayland.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/wayland/gdkwaylandseat.pp
// -------------------------------------------------

function GDK_TYPE_WAYLAND_SEAT : longint; { return type might be wrong }
  begin
    GDK_TYPE_WAYLAND_SEAT:=gdk_wayland_seat_get_type;
  end;

function GDK_WAYLAND_SEAT(o : longint) : longint;
begin
  GDK_WAYLAND_SEAT:=G_TYPE_CHECK_INSTANCE_CAST(o,GDK_TYPE_WAYLAND_SEAT,GdkWaylandSeat);
end;

function GDK_IS_WAYLAND_SEAT(o : longint) : longint;
begin
  GDK_IS_WAYLAND_SEAT:=G_TYPE_CHECK_INSTANCE_TYPE(o,GDK_TYPE_WAYLAND_SEAT);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/wayland/gdkwaylanddisplay.pp
// -------------------------------------------------

function GDK_TYPE_WAYLAND_DISPLAY : longint; { return type might be wrong }
  begin
    GDK_TYPE_WAYLAND_DISPLAY:=gdk_wayland_display_get_type;
  end;

function GDK_WAYLAND_DISPLAY(object : longint) : longint;
begin
  GDK_WAYLAND_DISPLAY:=G_TYPE_CHECK_INSTANCE_CAST(object,GDK_TYPE_WAYLAND_DISPLAY,GdkWaylandDisplay);
end;

function GDK_WAYLAND_DISPLAY_CLASS(klass : longint) : longint;
begin
  GDK_WAYLAND_DISPLAY_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GDK_TYPE_WAYLAND_DISPLAY,GdkWaylandDisplayClass);
end;

function GDK_IS_WAYLAND_DISPLAY(object : longint) : longint;
begin
  GDK_IS_WAYLAND_DISPLAY:=G_TYPE_CHECK_INSTANCE_TYPE(object,GDK_TYPE_WAYLAND_DISPLAY);
end;

function GDK_IS_WAYLAND_DISPLAY_CLASS(klass : longint) : longint;
begin
  GDK_IS_WAYLAND_DISPLAY_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GDK_TYPE_WAYLAND_DISPLAY);
end;

function GDK_WAYLAND_DISPLAY_GET_CLASS(obj : longint) : longint;
begin
  GDK_WAYLAND_DISPLAY_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GDK_TYPE_WAYLAND_DISPLAY,GdkWaylandDisplayClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/wayland/gdkwaylanddevice.pp
// -------------------------------------------------

function GDK_TYPE_WAYLAND_DEVICE : longint; { return type might be wrong }
  begin
    GDK_TYPE_WAYLAND_DEVICE:=gdk_wayland_device_get_type;
  end;

function GDK_WAYLAND_DEVICE(o : longint) : longint;
begin
  GDK_WAYLAND_DEVICE:=G_TYPE_CHECK_INSTANCE_CAST(o,GDK_TYPE_WAYLAND_DEVICE,GdkWaylandDevice);
end;

function GDK_WAYLAND_DEVICE_CLASS(c : longint) : longint;
begin
  GDK_WAYLAND_DEVICE_CLASS:=G_TYPE_CHECK_CLASS_CAST(c,GDK_TYPE_WAYLAND_DEVICE,GdkWaylandDeviceClass);
end;

function GDK_IS_WAYLAND_DEVICE(o : longint) : longint;
begin
  GDK_IS_WAYLAND_DEVICE:=G_TYPE_CHECK_INSTANCE_TYPE(o,GDK_TYPE_WAYLAND_DEVICE);
end;

function GDK_IS_WAYLAND_DEVICE_CLASS(c : longint) : longint;
begin
  GDK_IS_WAYLAND_DEVICE_CLASS:=G_TYPE_CHECK_CLASS_TYPE(c,GDK_TYPE_WAYLAND_DEVICE);
end;

function GDK_WAYLAND_DEVICE_GET_CLASS(o : longint) : longint;
begin
  GDK_WAYLAND_DEVICE_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GDK_TYPE_WAYLAND_DEVICE,GdkWaylandDeviceClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/broadway/gdkbroadwaycursor.pp
// -------------------------------------------------

function GDK_TYPE_BROADWAY_CURSOR : longint; { return type might be wrong }
  begin
    GDK_TYPE_BROADWAY_CURSOR:=gdk_broadway_cursor_get_type;
  end;

function GDK_BROADWAY_CURSOR(object : longint) : longint;
begin
  GDK_BROADWAY_CURSOR:=G_TYPE_CHECK_INSTANCE_CAST(object,GDK_TYPE_BROADWAY_CURSOR,GdkBroadwayCursor);
end;

function GDK_BROADWAY_CURSOR_CLASS(klass : longint) : longint;
begin
  GDK_BROADWAY_CURSOR_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GDK_TYPE_BROADWAY_CURSOR,GdkBroadwayCursorClass);
end;

function GDK_IS_BROADWAY_CURSOR(object : longint) : longint;
begin
  GDK_IS_BROADWAY_CURSOR:=G_TYPE_CHECK_INSTANCE_TYPE(object,GDK_TYPE_BROADWAY_CURSOR);
end;

function GDK_IS_BROADWAY_CURSOR_CLASS(klass : longint) : longint;
begin
  GDK_IS_BROADWAY_CURSOR_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GDK_TYPE_BROADWAY_CURSOR);
end;

function GDK_BROADWAY_CURSOR_GET_CLASS(obj : longint) : longint;
begin
  GDK_BROADWAY_CURSOR_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GDK_TYPE_BROADWAY_CURSOR,GdkBroadwayCursorClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/broadway/gdkbroadwaydisplay.pp
// -------------------------------------------------

function GDK_TYPE_BROADWAY_DISPLAY : longint; { return type might be wrong }
  begin
    GDK_TYPE_BROADWAY_DISPLAY:=gdk_broadway_display_get_type;
  end;

function GDK_BROADWAY_DISPLAY(object : longint) : longint;
begin
  GDK_BROADWAY_DISPLAY:=G_TYPE_CHECK_INSTANCE_CAST(object,GDK_TYPE_BROADWAY_DISPLAY,GdkBroadwayDisplay);
end;

function GDK_BROADWAY_DISPLAY_CLASS(klass : longint) : longint;
begin
  GDK_BROADWAY_DISPLAY_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GDK_TYPE_BROADWAY_DISPLAY,GdkBroadwayDisplayClass);
end;

function GDK_IS_BROADWAY_DISPLAY(object : longint) : longint;
begin
  GDK_IS_BROADWAY_DISPLAY:=G_TYPE_CHECK_INSTANCE_TYPE(object,GDK_TYPE_BROADWAY_DISPLAY);
end;

function GDK_IS_BROADWAY_DISPLAY_CLASS(klass : longint) : longint;
begin
  GDK_IS_BROADWAY_DISPLAY_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GDK_TYPE_BROADWAY_DISPLAY);
end;

function GDK_BROADWAY_DISPLAY_GET_CLASS(obj : longint) : longint;
begin
  GDK_BROADWAY_DISPLAY_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GDK_TYPE_BROADWAY_DISPLAY,GdkBroadwayDisplayClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/broadway/gdkbroadway.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/broadway/gdkbroadwaysurface.pp
// -------------------------------------------------

function GDK_TYPE_BROADWAY_SURFACE : longint; { return type might be wrong }
  begin
    GDK_TYPE_BROADWAY_SURFACE:=gdk_broadway_surface_get_type;
  end;

function GDK_BROADWAY_SURFACE(object : longint) : longint;
begin
  GDK_BROADWAY_SURFACE:=G_TYPE_CHECK_INSTANCE_CAST(object,GDK_TYPE_BROADWAY_SURFACE,GdkBroadwaySurface);
end;

function GDK_BROADWAY_SURFACE_CLASS(klass : longint) : longint;
begin
  GDK_BROADWAY_SURFACE_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GDK_TYPE_BROADWAY_SURFACE,GdkBroadwaySurfaceClass);
end;

function GDK_IS_BROADWAY_SURFACE(object : longint) : longint;
begin
  GDK_IS_BROADWAY_SURFACE:=G_TYPE_CHECK_INSTANCE_TYPE(object,GDK_TYPE_BROADWAY_SURFACE);
end;

function GDK_IS_BROADWAY_SURFACE_CLASS(klass : longint) : longint;
begin
  GDK_IS_BROADWAY_SURFACE_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GDK_TYPE_BROADWAY_SURFACE);
end;

function GDK_BROADWAY_SURFACE_GET_CLASS(obj : longint) : longint;
begin
  GDK_BROADWAY_SURFACE_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GDK_TYPE_BROADWAY_SURFACE,GdkBroadwaySurfaceClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/broadway/gdkbroadwaymonitor.pp
// -------------------------------------------------

function GDK_TYPE_BROADWAY_MONITOR : longint; { return type might be wrong }
  begin
    GDK_TYPE_BROADWAY_MONITOR:=gdk_broadway_monitor_get_type;
  end;

function GDK_BROADWAY_MONITOR(object : longint) : longint;
begin
  GDK_BROADWAY_MONITOR:=G_TYPE_CHECK_INSTANCE_CAST(object,GDK_TYPE_BROADWAY_MONITOR,GdkBroadwayMonitor);
end;

function GDK_IS_BROADWAY_MONITOR(object : longint) : longint;
begin
  GDK_IS_BROADWAY_MONITOR:=G_TYPE_CHECK_INSTANCE_TYPE(object,GDK_TYPE_BROADWAY_MONITOR);
end;




end.
