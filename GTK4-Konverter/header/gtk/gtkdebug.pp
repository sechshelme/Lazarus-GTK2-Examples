
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GTK - The GIMP Toolkit
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
{$ifndef __GTK_DEBUG_H__}
{$define __GTK_DEBUG_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <glib.h>}
{$include <gdk/gdk.h>}
  { Zeile entfernt  }
  {*
   * GtkDebugFlags:
   * @GTK_DEBUG_TEXT: Information about GtkTextView
   * @GTK_DEBUG_TREE: Information about GtkTreeView
   * @GTK_DEBUG_KEYBINDINGS: Information about keyboard shortcuts
   * @GTK_DEBUG_MODULES: Information about modules and extensions
   * @GTK_DEBUG_GEOMETRY: Information about size allocation
   * @GTK_DEBUG_ICONTHEME: Information about icon themes
   * @GTK_DEBUG_PRINTING: Information about printing
   * @GTK_DEBUG_BUILDER: Trace GtkBuilder operation
   * @GTK_DEBUG_SIZE_REQUEST: Information about size requests
   * @GTK_DEBUG_NO_CSS_CACHE: Disable the style property cache
   * @GTK_DEBUG_INTERACTIVE: Open the GTK inspector
   * @GTK_DEBUG_TOUCHSCREEN: Pretend the pointer is a touchscreen
   * @GTK_DEBUG_ACTIONS: Information about actions and menu models
   * @GTK_DEBUG_LAYOUT: Information from layout managers
   * @GTK_DEBUG_SNAPSHOT: Include debug render nodes in the generated snapshots
   * @GTK_DEBUG_CONSTRAINTS: Information from the constraints solver
   * @GTK_DEBUG_BUILDER_OBJECTS: Log unused GtkBuilder objects
   * @GTK_DEBUG_A11Y: Information about accessibility state changes
   * @GTK_DEBUG_ICONFALLBACK: Information about icon fallback. Since: 4.2
   *
   * Flags to use with gtk_set_debug_flags().
   *
   * Settings these flags causes GTK to print out different
   * types of debugging information. Some of these flags are
   * only available when GTK has been configured with `-Ddebug=true`.
    }

  type
    GtkDebugFlags = (GTK_DEBUG_TEXT := 1 shl 0,GTK_DEBUG_TREE := 1 shl 1,
      GTK_DEBUG_KEYBINDINGS := 1 shl 2,GTK_DEBUG_MODULES := 1 shl 3,
      GTK_DEBUG_GEOMETRY := 1 shl 4,GTK_DEBUG_ICONTHEME := 1 shl 5,
      GTK_DEBUG_PRINTING := 1 shl 6,GTK_DEBUG_BUILDER := 1 shl 7,
      GTK_DEBUG_SIZE_REQUEST := 1 shl 8,GTK_DEBUG_NO_CSS_CACHE := 1 shl 9,
      GTK_DEBUG_INTERACTIVE := 1 shl 10,GTK_DEBUG_TOUCHSCREEN := 1 shl 11,
      GTK_DEBUG_ACTIONS := 1 shl 12,GTK_DEBUG_LAYOUT := 1 shl 13,
      GTK_DEBUG_SNAPSHOT := 1 shl 14,GTK_DEBUG_CONSTRAINTS := 1 shl 15,
      GTK_DEBUG_BUILDER_OBJECTS := 1 shl 16,GTK_DEBUG_A11Y := 1 shl 17,
      GTK_DEBUG_ICONFALLBACK := 1 shl 18,GTK_DEBUG_INVERT_TEXT_DIR := 1 shl 19
      );
{$ifdef G_ENABLE_DEBUG}
(* error 
#define GTK_DEBUG_CHECK(type)  (gtk_get_debug_flags () & GTK_DEBUG_##type)
in define line 90 *)
(* error 
#define GTK_NOTE(type,action)                 {     \
in declaration at line 94 *)
(* error 
       { action; };                          } 
in declaration at line 94 *)
(* error 
       { action; };                          } 
{$else}
    { !G_ENABLE_DEBUG  }
in define line 98 *)
(* error 
#define GTK_NOTE(type, action)
in define line 99 *)
{$endif}
    { G_ENABLE_DEBUG  }
    { Zeile entfernt  }

    function gtk_get_debug_flags:GtkDebugFlags;

    { Zeile entfernt  }
    procedure gtk_set_debug_flags(flags:GtkDebugFlags);

    { Zeile entfernt  }
{$endif}
    { __GTK_DEBUG_H__  }
    function gtk_get_debug_flags:GtkDebugFlags;
    begin
      { You must implement this function }
    end;
    procedure gtk_set_debug_flags(flags:GtkDebugFlags);
    begin
      { You must implement this function }
    end;

