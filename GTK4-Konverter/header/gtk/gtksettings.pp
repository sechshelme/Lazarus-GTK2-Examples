
  Type
  Pchar  = ^char;
  PGdkDisplay  = ^GdkDisplay;
  PGtkSettings  = ^GtkSettings;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GTK - The GIMP Toolkit
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
{$ifndef __GTK_SETTINGS_H__}
{$define __GTK_SETTINGS_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}
{$include <gtk/gtktypes.h>}
  { -- type macros ---  }

  { was #define dname def_expr }
  function GTK_TYPE_SETTINGS : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_SETTINGS(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_SETTINGS(obj : longint) : longint;  

  { --- functions ---  }
(* error 
GType           gtk_settings_get_type                (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;

  function gtk_settings_get_default:^GtkSettings;

  function gtk_settings_get_for_display(display:PGdkDisplay):^GtkSettings;

(* Const before type ignored *)
  procedure gtk_settings_reset_property(settings:PGtkSettings; name:Pchar);

{$endif}
  { __GTK_SETTINGS_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_SETTINGS : longint; { return type might be wrong }
    begin
      GTK_TYPE_SETTINGS:=gtk_settings_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_SETTINGS(obj : longint) : longint;
  begin
    GTK_SETTINGS:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_SETTINGS,GtkSettings);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_SETTINGS(obj : longint) : longint;
  begin
    GTK_IS_SETTINGS:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_SETTINGS);
  end;

  function gtk_settings_get_default:PGtkSettings;
  begin
    { You must implement this function }
  end;
  function gtk_settings_get_for_display(display:PGdkDisplay):PGtkSettings;
  begin
    { You must implement this function }
  end;
  procedure gtk_settings_reset_property(settings:PGtkSettings; name:Pchar);
  begin
    { You must implement this function }
  end;

