
  Type
  Pchar  = ^char;
  PGdkDisplay  = ^GdkDisplay;
  PGdkDisplayManager  = ^GdkDisplayManager;
  PGSList  = ^GSList;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GDK - The GIMP Drawing Kit
   * Copyright (C) 2000 Red Hat, Inc.
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
{$ifndef __GDK_DISPLAY_MANAGER_H__}
{$define __GDK_DISPLAY_MANAGER_H__}  
{$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}
{$include <gdk/gdktypes.h>}
{$include <gdk/gdkdisplay.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GDK_TYPE_DISPLAY_MANAGER : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_DISPLAY_MANAGER(object : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_DISPLAY_MANAGER(object : longint) : longint;  

  { Zeile entfernt  }
  function gdk_display_manager_get_type:GType;

  { Zeile entfernt  }
  function gdk_display_manager_get:^GdkDisplayManager;

  { Zeile entfernt  }
  function gdk_display_manager_get_default_display(manager:PGdkDisplayManager):^GdkDisplay;

  { Zeile entfernt  }
  procedure gdk_display_manager_set_default_display(manager:PGdkDisplayManager; display:PGdkDisplay);

  { Zeile entfernt  }
  function gdk_display_manager_list_displays(manager:PGdkDisplayManager):^GSList;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gdk_display_manager_open_display(manager:PGdkDisplayManager; name:Pchar):^GdkDisplay;

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gdk_set_allowed_backends(backends:Pchar);

  { Zeile entfernt  }
{$endif}
  { __GDK_DISPLAY_MANAGER_H__  }
  { was #define dname def_expr }
  function GDK_TYPE_DISPLAY_MANAGER : longint; { return type might be wrong }
    begin
      GDK_TYPE_DISPLAY_MANAGER:=gdk_display_manager_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_DISPLAY_MANAGER(object : longint) : longint;
  begin
    GDK_DISPLAY_MANAGER:=G_TYPE_CHECK_INSTANCE_CAST(object,GDK_TYPE_DISPLAY_MANAGER,GdkDisplayManager);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_DISPLAY_MANAGER(object : longint) : longint;
  begin
    GDK_IS_DISPLAY_MANAGER:=G_TYPE_CHECK_INSTANCE_TYPE(object,GDK_TYPE_DISPLAY_MANAGER);
  end;

  function gdk_display_manager_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gdk_display_manager_get:PGdkDisplayManager;
  begin
    { You must implement this function }
  end;
  function gdk_display_manager_get_default_display(manager:PGdkDisplayManager):PGdkDisplay;
  begin
    { You must implement this function }
  end;
  procedure gdk_display_manager_set_default_display(manager:PGdkDisplayManager; display:PGdkDisplay);
  begin
    { You must implement this function }
  end;
  function gdk_display_manager_list_displays(manager:PGdkDisplayManager):PGSList;
  begin
    { You must implement this function }
  end;
  function gdk_display_manager_open_display(manager:PGdkDisplayManager; name:Pchar):PGdkDisplay;
  begin
    { You must implement this function }
  end;
  procedure gdk_set_allowed_backends(backends:Pchar);
  begin
    { You must implement this function }
  end;

