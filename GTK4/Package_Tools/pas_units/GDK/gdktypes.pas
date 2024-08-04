unit gdktypes;

interface

uses
  ctypes, glib2, Cairo, common_GTK;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

  // ====  _ Typen
type
  //TGdkDmabufFormats = record
  //end;
  //PGdkDmabufFormats = ^TGdkDmabufFormats;

  //TGdkCairoContext = record
  //end;
  //PGdkCairoContext = ^TGdkCairoContext;

  //TGdkAppLaunchContext = record
  //end;
  //PGdkAppLaunchContext = ^TGdkAppLaunchContext;

  //TGdkVulkanContext = record
  //end;
  //PGdkVulkanContext = ^TGdkVulkanContext;


  // ==== ausgelagertes
  TGdkDevice = record
  end;
  PGdkDevice = ^TGdkDevice;

  TGdkDisplay = record
  end;
  PGdkDisplay = ^TGdkDisplay;

  TGdkEvent = record
  end;
  PGdkEvent = ^TGdkEvent;

  TGdkSurface = record
  end;
  PGdkSurface = ^TGdkSurface;

  TGdkContentProvider = record
    parent: TGObject;
  end;
  PGdkContentProvider = ^TGdkContentProvider;
  PPGdkContentProvider = ^PGdkContentProvider;

  // ====

const
  GDK_CURRENT_TIME = 0;

//type
//  TGdkRectangle = cairo_rectangle_int_t;
//
//  //TGdkRectangle = record
//  //  x: cint;
//  //  y: cint;
//  //  Width: cint;
//  //  Height: cint;
//  //end;
//  PGdkRectangle = ^TGdkRectangle;

{
#define GDK_DECLARE_INTERNAL_TYPE(ModuleObjName, module_obj_name, MODULE, OBJ_NAME, ParentName) \
  GType module_obj_name##_get_type (void);                                                               \
  G_GNUC_BEGIN_IGNORE_DEPRECATIONS                                                                       \
  typedef struct _##ModuleObjName ModuleObjName;                                                         \
  typedef struct _##ModuleObjName##Class ModuleObjName##Class;                                           \
                                                                                                         \
  _GLIB_DEFINE_AUTOPTR_CHAINUP (ModuleObjName, ParentName)                                               \
  G_DEFINE_AUTOPTR_CLEANUP_FUNC (ModuleObjName##Class, g_type_class_unref)                               \
                                                                                                         \
  G_GNUC_UNUSED static inline ModuleObjName * MODULE##_##OBJ_NAME (gpointer ptr)                        \
    return G_TYPE_CHECK_INSTANCE_CAST (ptr, module_obj_name##_get_type (), ModuleObjName);              \
  G_GNUC_UNUSED static inline ModuleObjName##Class * MODULE##_##OBJ_NAME##_CLASS (gpointer ptr)         \
    return G_TYPE_CHECK_CLASS_CAST (ptr, module_obj_name##_get_type (), ModuleObjName##Class);          \
  G_GNUC_UNUSED static inline gboolean MODULE##_IS_##OBJ_NAME (gpointer ptr)                            \
    return G_TYPE_CHECK_INSTANCE_TYPE (ptr, module_obj_name##_get_type ());                             \
  G_GNUC_UNUSED static inline gboolean MODULE##_IS_##OBJ_NAME##_CLASS (gpointer ptr)                    \
    return G_TYPE_CHECK_CLASS_TYPE (ptr, module_obj_name##_get_type ());                                \
  G_GNUC_UNUSED static inline ModuleObjName##Class * MODULE##_##OBJ_NAME##_GET_CLASS (gpointer ptr)     \
    return G_TYPE_INSTANCE_GET_CLASS (ptr, module_obj_name##_get_type (), ModuleObjName##Class);        \
  G_GNUC_END_IGNORE_DEPRECATIONS
 }
type
  TGdkKeymapKey = record
    keycode: Tguint;
    group: cint;
    level: cint;
  end;
  PGdkKeymapKey = ^TGdkKeymapKey;
  PPGdkKeymapKey = ^PGdkKeymapKey;


implementation


end.
