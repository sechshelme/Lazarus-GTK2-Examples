
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GDK - The GIMP Drawing Kit
   * Copyright (C) 1995-1997 Peter Mattis, Spencer Kimball and Josh MacDonald
   *
   * This library is free software; you can redistribute it and/or
   * modify it under the terms of the GNU Lesser General Public
   * License as published by the Free Software Foundation; either
   * version 2 of the License, or (at your option) any later version.
   *
   * This library is distributed in the hope that it will be useful,
   * but WITHOUT ANY WARRANTY; without even the implied warranty of
   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   * Lesser General Public License for more details.
   *
   * You should have received a copy of the GNU Lesser General Public
   * License along with this library. If not, see <http://www.gnu.org/licenses/>.
    }
  {
   * Modified by the GTK+ Team and others 1997-2000.  See the AUTHORS
   * file for a list of people on the GTK+ Team.  See the ChangeLog
   * files for a list of changes.  These files are distributed with
   * GTK+ at ftp://ftp.gtk.org/pub/gtk/.
    }
{$ifndef __GDK_TYPES_H__}
{$define __GDK_TYPES_H__}  
{$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}
  { GDK uses "glib". (And so does GTK).
    }
{$include <glib.h>}
{$include <glib-object.h>}
{$include <gio/gio.h>}
{$include <cairo.h>}
{$include <pango/pango.h>}
  { The system specific file gdkconfig.h contains such configuration
   * settings that are needed not only when compiling GDK (or GTK)
   * itself, but also occasionally when compiling programs that use GDK
   * (or GTK). One such setting is what windowing API backend is in use.
    }
{$include <gdk/gdkconfig.h>}
  { Zeile entfernt  }
  {*
   * GDK_CURRENT_TIME:
   *
   * Represents the current time, and can be used anywhere a time is expected.
    }

  const
    GDK_CURRENT_TIME = 0;    
{$ifdef __GI_SCANNER__}
  { The introspection scanner is currently unable to lookup how
   * cairo_rectangle_int_t is actually defined. This prevents
   * introspection data for the GdkRectangle type to include fields
   * descriptions. To workaround this issue, we define it with the same
   * content as cairo_rectangle_int_t, but only under the introspection
   * define.
    }

  type
    _GdkRectangle = record
        x : longint;
        y : longint;
        width : longint;
        height : longint;
      end;

    _GdkRectangle = GdkRectangle;
{$else}

  type
    GdkRectangle = cairo_rectangle_int_t;
{$endif}
  { Forward declarations of commonly used types  }

  type
    _GdkRGBA = GdkRGBA;
    _GdkContentFormats = GdkContentFormats;
    _GdkContentProvider = GdkContentProvider;
    _GdkCursor = GdkCursor;
    _GdkTexture = GdkTexture;
    _GdkDevice = GdkDevice;
    _GdkDrag = GdkDrag;
    _GdkDrop = GdkDrop;
    _GdkClipboard = GdkClipboard;
    _GdkDisplayManager = GdkDisplayManager;
    _GdkDisplay = GdkDisplay;
    _GdkSurface = GdkSurface;
    _GdkAppLaunchContext = GdkAppLaunchContext;
    _GdkSeat = GdkSeat;
    _GdkSnapshot = GdkSnapshot;
    _GdkDrawContext = GdkDrawContext;
    _GdkCairoContext = GdkCairoContext;
    _GdkGLContext = GdkGLContext;
    _GdkVulkanContext = GdkVulkanContext;
  {
  /* Zeile entfernt  }
(* error 
 * @ModuleObjName: The name of the new type, in camel case (like GtkWidget)
  { Zeile entfernt  }
in declaration at line 113 *)
(* error 
 * structures; external users will not be able to subclass this type.
    { Zeile entfernt  }
 in declarator_list *)
(* error 
  GType module_obj_name##_get_type (void);                                                               \
(* error 
  G_GNUC_BEGIN_IGNORE_DEPRECATIONS                                                                       \
in declaration at line 118 *)
(* error 
  typedef struct _##ModuleObjName ModuleObjName;                                                         \
(* error 
  typedef struct _##ModuleObjName##Class ModuleObjName##Class;                                           \
in declaration at line 119 *)
(* error 
  typedef struct _##ModuleObjName##Class ModuleObjName##Class;                                           \
(* error 
                                                                                                         \
in declaration at line 125 *)
(* error 
    return G_TYPE_CHECK_INSTANCE_CAST (ptr, module_obj_name##_get_type (), ModuleObjName); }             \
in declaration at line 127 *)
(* error 
    return G_TYPE_CHECK_CLASS_CAST (ptr, module_obj_name##_get_type (), ModuleObjName##Class); }         \
in declaration at line 129 *)
(* error 
    return G_TYPE_CHECK_INSTANCE_TYPE (ptr, module_obj_name##_get_type ()); }                            \
in declaration at line 131 *)
(* error 
    return G_TYPE_CHECK_CLASS_TYPE (ptr, module_obj_name##_get_type ()); }                               \
in declaration at line 133 *)
(* error 
    return G_TYPE_INSTANCE_GET_CLASS (ptr, module_obj_name##_get_type (), ModuleObjName##Class); }       \
in declaration at line 136 *)
    {*
     * GdkKeymapKey:
     * @keycode: the hardware keycode. This is an identifying number for a
     *   physical key.
     * @group: indicates movement in a horizontal direction. Usually groups are used
     *   for two different languages. In group 0, a key might have two English
     *   characters, and in group 1 it might have two Hebrew characters. The Hebrew
     *   characters will be printed on the key next to the English characters.
     * @level: indicates which symbol on the key will be used, in a vertical direction.
     *   So on a standard US keyboard, the key with the number “1” on it also has the
     *   exclamation point ("!") character on it. The level indicates whether to use
     *   the “1” or the “!” symbol. The letter keys are considered to have a lowercase
     *   letter at level 0, and an uppercase letter at level 1, though only the
     *   uppercase letter is printed.
     *
     * A `GdkKeymapKey` is a hardware key that can be mapped to a keyval.
      }
      _GdkKeymapKey = record
          keycode : guint;
          group : longint;
          level : longint;
        end;

    { Zeile entfernt  }
{$endif}
    { __GDK_TYPES_H__  }

