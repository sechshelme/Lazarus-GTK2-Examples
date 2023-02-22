
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { gtkshortcutswindow.h
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
{$ifndef __GTK_SHORTCUTS_WINDOW_H__}
{$define __GTK_SHORTCUTS_WINDOW_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwindow.h>}

  { was #define dname def_expr }
  function GTK_TYPE_SHORTCUTS_WINDOW : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_SHORTCUTS_WINDOW(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_SHORTCUTS_WINDOW(obj : longint) : longint;  


  type
    _GtkShortcutsWindow = GtkShortcutsWindow;
(* error 
GType gtk_shortcuts_window_get_type (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;
(* error 
G_DEFINE_AUTOPTR_CLEANUP_FUNC(GtkShortcutsWindow, g_object_unref)
(* error 
G_DEFINE_AUTOPTR_CLEANUP_FUNC(GtkShortcutsWindow, g_object_unref)
{$endif}
  { GTK_SHORTCUTS_WINDOW _H  }
  { was #define dname def_expr }
  function GTK_TYPE_SHORTCUTS_WINDOW : longint; { return type might be wrong }
    begin
      GTK_TYPE_SHORTCUTS_WINDOW:=gtk_shortcuts_window_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_SHORTCUTS_WINDOW(obj : longint) : longint;
  begin
    GTK_SHORTCUTS_WINDOW:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_SHORTCUTS_WINDOW,GtkShortcutsWindow);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_SHORTCUTS_WINDOW(obj : longint) : longint;
  begin
    GTK_IS_SHORTCUTS_WINDOW:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_SHORTCUTS_WINDOW);
  end;


