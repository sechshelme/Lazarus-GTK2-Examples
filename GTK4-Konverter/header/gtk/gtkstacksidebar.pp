
  Type
  PGtkStack  = ^GtkStack;
  PGtkStackSidebar  = ^GtkStackSidebar;
  PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  {
   * Copyright (c) 2014 Intel Corporation
   *
   * This program is free software; you can redistribute it and/or modify
   * it under the terms of the GNU Lesser General Public License as published by
   * the Free Software Foundation; either version 2 of the License, or (at your
   * option) any later version.
   *
   * This program is distributed in the hope that it will be useful, but
   * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
   * or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public
   * License for more details.
   *
   * You should have received a copy of the GNU Lesser General Public License
   * along with this program; if not, write to the Free Software Foundation,
   * Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
   *
   * Author:
   *      Ikey Doherty <michael.i.doherty@intel.com>
    }
{$ifndef __GTK_STACK_SIDEBAR_H__}
{$define __GTK_STACK_SIDEBAR_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkstack.h>}

  { was #define dname def_expr }
  function GTK_TYPE_STACK_SIDEBAR : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_STACK_SIDEBAR(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_STACK_SIDEBAR(obj : longint) : longint;  


  type
    _GtkStackSidebar = GtkStackSidebar;
(* error 
GType       gtk_stack_sidebar_get_type  (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;

  function gtk_stack_sidebar_new:^GtkWidget;

  procedure gtk_stack_sidebar_set_stack(self:PGtkStackSidebar; stack:PGtkStack);

  function gtk_stack_sidebar_get_stack(self:PGtkStackSidebar):^GtkStack;

{$endif}
  { __GTK_STACK_SIDEBAR_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_STACK_SIDEBAR : longint; { return type might be wrong }
    begin
      GTK_TYPE_STACK_SIDEBAR:=gtk_stack_sidebar_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_STACK_SIDEBAR(obj : longint) : longint;
  begin
    GTK_STACK_SIDEBAR:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_STACK_SIDEBAR,GtkStackSidebar);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_STACK_SIDEBAR(obj : longint) : longint;
  begin
    GTK_IS_STACK_SIDEBAR:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_STACK_SIDEBAR);
  end;

  function gtk_stack_sidebar_new:PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_stack_sidebar_set_stack(self:PGtkStackSidebar; stack:PGtkStack);
  begin
    { You must implement this function }
  end;
  function gtk_stack_sidebar_get_stack(self:PGtkStackSidebar):PGtkStack;
  begin
    { You must implement this function }
  end;

