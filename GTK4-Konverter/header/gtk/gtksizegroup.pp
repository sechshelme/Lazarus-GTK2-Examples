
  Type
  PGSList  = ^GSList;
  PGtkSizeGroup  = ^GtkSizeGroup;
  PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GTK - The GIMP Toolkit
   * gtksizegroup.h:
   * Copyright (C) 2000 Red Hat Software
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
{$ifndef __GTK_SIZE_GROUP_H__}
{$define __GTK_SIZE_GROUP_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}

  { was #define dname def_expr }
  function GTK_TYPE_SIZE_GROUP : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_SIZE_GROUP(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_SIZE_GROUP(obj : longint) : longint;  


  type
    _GtkSizeGroup = GtkSizeGroup;
    _GtkSizeGroup = record
        parent_instance : GObject;
      end;

(* error 
GType            gtk_size_group_get_type      (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;

  function gtk_size_group_new(mode:GtkSizeGroupMode):^GtkSizeGroup;

  procedure gtk_size_group_set_mode(size_group:PGtkSizeGroup; mode:GtkSizeGroupMode);

  function gtk_size_group_get_mode(size_group:PGtkSizeGroup):GtkSizeGroupMode;

  procedure gtk_size_group_add_widget(size_group:PGtkSizeGroup; widget:PGtkWidget);

  procedure gtk_size_group_remove_widget(size_group:PGtkSizeGroup; widget:PGtkWidget);

  function gtk_size_group_get_widgets(size_group:PGtkSizeGroup):^GSList;

{$endif}
  { __GTK_SIZE_GROUP_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_SIZE_GROUP : longint; { return type might be wrong }
    begin
      GTK_TYPE_SIZE_GROUP:=gtk_size_group_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_SIZE_GROUP(obj : longint) : longint;
  begin
    GTK_SIZE_GROUP:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_SIZE_GROUP,GtkSizeGroup);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_SIZE_GROUP(obj : longint) : longint;
  begin
    GTK_IS_SIZE_GROUP:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_SIZE_GROUP);
  end;

  function gtk_size_group_new(mode:GtkSizeGroupMode):PGtkSizeGroup;
  begin
    { You must implement this function }
  end;
  procedure gtk_size_group_set_mode(size_group:PGtkSizeGroup; mode:GtkSizeGroupMode);
  begin
    { You must implement this function }
  end;
  function gtk_size_group_get_mode(size_group:PGtkSizeGroup):GtkSizeGroupMode;
  begin
    { You must implement this function }
  end;
  procedure gtk_size_group_add_widget(size_group:PGtkSizeGroup; widget:PGtkWidget);
  begin
    { You must implement this function }
  end;
  procedure gtk_size_group_remove_widget(size_group:PGtkSizeGroup; widget:PGtkWidget);
  begin
    { You must implement this function }
  end;
  function gtk_size_group_get_widgets(size_group:PGtkSizeGroup):PGSList;
  begin
    { You must implement this function }
  end;

