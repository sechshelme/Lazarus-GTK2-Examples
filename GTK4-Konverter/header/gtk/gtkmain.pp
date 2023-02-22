
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
{$ifndef __GTK_MAIN_H__}
{$define __GTK_MAIN_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}
{$include <gtk/gtkwidget.h>}
{$ifdef G_PLATFORM_WIN32}
{$include <gtk/gtkbox.h>}
{$include <gtk/gtkwindow.h>}
{$endif}
  {*
   * GTK_PRIORITY_RESIZE: (value 110)
   *
   * Use this priority for functionality related to size allocation.
   *
   * It is used internally by GTK+ to compute the sizes of widgets.
   * This priority is higher than %GDK_PRIORITY_REDRAW to avoid
   * resizing a widget which was just redrawn.
    }

  const
    GTK_PRIORITY_RESIZE = G_PRIORITY_HIGH_IDLE+10;    
  { Initialization, exit, mainloop and miscellaneous routines
    }

  procedure gtk_init;

  function gtk_init_check:gboolean;

  function gtk_is_initialized:gboolean;

{$ifdef G_OS_WIN32}
  { Variants that are used to check for correct struct packing
   * when building GTK+-using code.
    }
  procedure gtk_init_abi_check(num_checks:longint; sizeof_GtkWindow:size_t; sizeof_GtkBox:size_t);

  function gtk_init_check_abi_check(num_checks:longint; sizeof_GtkWindow:size_t; sizeof_GtkBox:size_t):gboolean;

  { was #define dname(params) para_def_expr }
  { return type might be wrong }   
  function gtk_init : longint;  

  { was #define dname(params) para_def_expr }
  { return type might be wrong }   
  function gtk_init_check : longint;  

{$endif}

  procedure gtk_disable_setlocale;

(* error 
PangoLanguage *   gtk_get_default_language (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : PangoLanguage;

  function gtk_get_locale_direction:GtkTextDirection;

{$endif}
  { __GTK_MAIN_H__  }
  procedure gtk_init;
  begin
    { You must implement this function }
  end;
  function gtk_init_check:gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_is_initialized:gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_init_abi_check(num_checks:longint; sizeof_GtkWindow:size_t; sizeof_GtkBox:size_t);
  begin
    { You must implement this function }
  end;
  function gtk_init_check_abi_check(num_checks:longint; sizeof_GtkWindow:size_t; sizeof_GtkBox:size_t):gboolean;
  begin
    { You must implement this function }
  end;
  { was #define dname(params) para_def_expr }
  { return type might be wrong }   
  function gtk_init : longint;
  begin
    gtk_init:=gtk_init_abi_check(2,sizeof(GtkWindow),sizeof(GtkBox));
  end;

  { was #define dname(params) para_def_expr }
  { return type might be wrong }   
  function gtk_init_check : longint;
  begin
    gtk_init_check:=gtk_init_check_abi_check(2,sizeof(GtkWindow),sizeof(GtkBox));
  end;

  procedure gtk_disable_setlocale;
  begin
    { You must implement this function }
  end;
  function gtk_get_locale_direction:GtkTextDirection;
  begin
    { You must implement this function }
  end;

