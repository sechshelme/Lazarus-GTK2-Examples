
  Type
  PGtkSwitch  = ^GtkSwitch;
  PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GTK - The GIMP Toolkit
   *
   * Copyright (C) 2010  Intel Corporation
   * Copyright (C) 2010  RedHat, Inc.
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
   *
   * Author:
   *      Emmanuele Bassi <ebassi@linux.intel.com>
   *      Matthias Clasen <mclasen@redhat.com>
   *
   * Based on similar code from Mx.
    }
{$ifndef __GTK_SWITCH_H__}
{$define __GTK_SWITCH_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}

  { was #define dname def_expr }
  function GTK_TYPE_SWITCH : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_SWITCH(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_SWITCH(obj : longint) : longint;  


  type
    _GtkSwitch = GtkSwitch;
(* error 
GType gtk_switch_get_type (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;

  function gtk_switch_new:^GtkWidget;

  procedure gtk_switch_set_active(self:PGtkSwitch; is_active:gboolean);

  function gtk_switch_get_active(self:PGtkSwitch):gboolean;

  procedure gtk_switch_set_state(self:PGtkSwitch; state:gboolean);

  function gtk_switch_get_state(self:PGtkSwitch):gboolean;

{$endif}
  { __GTK_SWITCH_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_SWITCH : longint; { return type might be wrong }
    begin
      GTK_TYPE_SWITCH:=gtk_switch_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_SWITCH(obj : longint) : longint;
  begin
    GTK_SWITCH:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_SWITCH,GtkSwitch);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_SWITCH(obj : longint) : longint;
  begin
    GTK_IS_SWITCH:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_SWITCH);
  end;

  function gtk_switch_new:PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_switch_set_active(self:PGtkSwitch; is_active:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_switch_get_active(self:PGtkSwitch):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_switch_set_state(self:PGtkSwitch; state:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_switch_get_state(self:PGtkSwitch):gboolean;
  begin
    { You must implement this function }
  end;

