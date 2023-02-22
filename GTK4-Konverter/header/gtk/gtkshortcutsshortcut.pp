
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { gtkshortcutsshortcutprivate.h
   *
   * Copyright (C) 2015 Christian Hergert <christian@hergert.me>
   *
   *  This library is free software; you can redistribute it and/or
   *  modify it under the terms of the GNU Library General Public License as
   *  published by the Free Software Foundation; either version 2 of the
   *  License, or (at your option) any later version.
   *
   *  This library is distributed in the hope that it will be useful,
   *  but WITHOUT ANY WARRANTY; without even the implied warranty of
   *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   *  Library General Public License for more details.
   *
   *  You should have received a copy of the GNU Library General Public
   *  License along with this library. If not, see <http://www.gnu.org/licenses/>.
    }
{$ifndef GTK_SHORTCUTS_SHORTCUT_H}
{$define GTK_SHORTCUTS_SHORTCUT_H}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_SHORTCUTS_SHORTCUT : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_SHORTCUTS_SHORTCUT(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_SHORTCUTS_SHORTCUT(obj : longint) : longint;  


  type
    _GtkShortcutsShortcut = GtkShortcutsShortcut;
    _GtkShortcutsShortcutClass = GtkShortcutsShortcutClass;
  {*
   * GtkShortcutType:
   * @GTK_SHORTCUT_ACCELERATOR:
   *   The shortcut is a keyboard accelerator. The GtkShortcutsShortcut:accelerator
   *   property will be used.
   * @GTK_SHORTCUT_GESTURE_PINCH:
   *   The shortcut is a pinch gesture. GTK provides an icon and subtitle.
   * @GTK_SHORTCUT_GESTURE_STRETCH:
   *   The shortcut is a stretch gesture. GTK provides an icon and subtitle.
   * @GTK_SHORTCUT_GESTURE_ROTATE_CLOCKWISE:
   *   The shortcut is a clockwise rotation gesture. GTK provides an icon and subtitle.
   * @GTK_SHORTCUT_GESTURE_ROTATE_COUNTERCLOCKWISE:
   *   The shortcut is a counterclockwise rotation gesture. GTK provides an icon and subtitle.
   * @GTK_SHORTCUT_GESTURE_TWO_FINGER_SWIPE_LEFT:
   *   The shortcut is a two-finger swipe gesture. GTK provides an icon and subtitle.
   * @GTK_SHORTCUT_GESTURE_TWO_FINGER_SWIPE_RIGHT:
   *   The shortcut is a two-finger swipe gesture. GTK provides an icon and subtitle.
   * @GTK_SHORTCUT_GESTURE:
   *   The shortcut is a gesture. The GtkShortcutsShortcut:icon property will be
   *   used.
   * @GTK_SHORTCUT_GESTURE_SWIPE_LEFT:
   *   The shortcut is a swipe gesture. GTK provides an icon and subtitle.
   * @GTK_SHORTCUT_GESTURE_SWIPE_RIGHT:
   *   The shortcut is a swipe gesture. GTK provides an icon and subtitle.
   *
   * GtkShortcutType specifies the kind of shortcut that is being described.
   *
   * More values may be added to this enumeration over time.
    }

    GtkShortcutType = (GTK_SHORTCUT_ACCELERATOR,GTK_SHORTCUT_GESTURE_PINCH,
      GTK_SHORTCUT_GESTURE_STRETCH,GTK_SHORTCUT_GESTURE_ROTATE_CLOCKWISE,
      GTK_SHORTCUT_GESTURE_ROTATE_COUNTERCLOCKWISE,
      GTK_SHORTCUT_GESTURE_TWO_FINGER_SWIPE_LEFT,
      GTK_SHORTCUT_GESTURE_TWO_FINGER_SWIPE_RIGHT,
      GTK_SHORTCUT_GESTURE,GTK_SHORTCUT_GESTURE_SWIPE_LEFT,
      GTK_SHORTCUT_GESTURE_SWIPE_RIGHT);
  { Zeile entfernt  }

  function gtk_shortcuts_shortcut_get_type:GType;

  { Zeile entfernt  }
{$endif}
  { GTK_SHORTCUTS_SHORTCUT_H  }
  { was #define dname def_expr }
  function GTK_TYPE_SHORTCUTS_SHORTCUT : longint; { return type might be wrong }
    begin
      GTK_TYPE_SHORTCUTS_SHORTCUT:=gtk_shortcuts_shortcut_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_SHORTCUTS_SHORTCUT(obj : longint) : longint;
  begin
    GTK_SHORTCUTS_SHORTCUT:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_SHORTCUTS_SHORTCUT,GtkShortcutsShortcut);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_SHORTCUTS_SHORTCUT(obj : longint) : longint;
  begin
    GTK_IS_SHORTCUTS_SHORTCUT:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_SHORTCUTS_SHORTCUT);
  end;

  function gtk_shortcuts_shortcut_get_type:GType;
  begin
    { You must implement this function }
  end;

