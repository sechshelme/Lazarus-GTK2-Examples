
  Type
  PGtkListItem  = ^GtkListItem;
  PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  {
   * Copyright © 2018 Benjamin Otte
   *
   * This library is free software; you can redistribute it and/or
   * modify it under the terms of the GNU Lesser General Public
   * License as published by the Free Software Foundation; either
   * version 2.1 of the License, or (at your option) any later version.
   *
   * This library is distributed in the hope that it will be useful,
   * but WITHOUT ANY WARRANTY; without even the implied warranty of
   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   * Lesser General Public License for more details.
   *
   * You should have received a copy of the GNU Lesser General Public
   * License along with this library. If not, see <http://www.gnu.org/licenses/>.
   *
   * Authors: Benjamin Otte <otte@gnome.org>
    }
{$ifndef __GTK_LIST_ITEM_H__}
{$define __GTK_LIST_ITEM_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtktypes.h>}

  { was #define dname def_expr }
  function GTK_TYPE_LIST_ITEM : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_LIST_ITEM(o : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_LIST_ITEM_CLASS(k : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_LIST_ITEM(o : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_LIST_ITEM_CLASS(k : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_LIST_ITEM_GET_CLASS(o : longint) : longint;  


  type
    _GtkListItem = GtkListItem;
    _GtkListItemClass = GtkListItemClass;
(* error 
GType           gtk_list_item_get_type                          (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;

  function gtk_list_item_get_item(self:PGtkListItem):gpointer;

(* error 
guint           gtk_list_item_get_position                      (GtkListItem            *self) G_GNUC_PURE;
 in declarator_list *)

    var
 : guint;
(* error 
gboolean        gtk_list_item_get_selected                      (GtkListItem            *self) G_GNUC_PURE;
 in declarator_list *)
 : gboolean;
(* error 
gboolean        gtk_list_item_get_selectable                    (GtkListItem            *self) G_GNUC_PURE;
 in declarator_list *)
 : gboolean;

  procedure gtk_list_item_set_selectable(self:PGtkListItem; selectable:gboolean);

(* error 
gboolean        gtk_list_item_get_activatable                   (GtkListItem            *self) G_GNUC_PURE;
 in declarator_list *)

    var
 : gboolean;

  procedure gtk_list_item_set_activatable(self:PGtkListItem; activatable:gboolean);

  procedure gtk_list_item_set_child(self:PGtkListItem; child:PGtkWidget);

  function gtk_list_item_get_child(self:PGtkListItem):^GtkWidget;

{$endif}
  { __GTK_LIST_ITEM_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_LIST_ITEM : longint; { return type might be wrong }
    begin
      GTK_TYPE_LIST_ITEM:=gtk_list_item_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_LIST_ITEM(o : longint) : longint;
  begin
    GTK_LIST_ITEM:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_LIST_ITEM,GtkListItem);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_LIST_ITEM_CLASS(k : longint) : longint;
  begin
    GTK_LIST_ITEM_CLASS:=G_TYPE_CHECK_CLASS_CAST(k,GTK_TYPE_LIST_ITEM,GtkListItemClass);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_LIST_ITEM(o : longint) : longint;
  begin
    GTK_IS_LIST_ITEM:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_LIST_ITEM);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_LIST_ITEM_CLASS(k : longint) : longint;
  begin
    GTK_IS_LIST_ITEM_CLASS:=G_TYPE_CHECK_CLASS_TYPE(k,GTK_TYPE_LIST_ITEM);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_LIST_ITEM_GET_CLASS(o : longint) : longint;
  begin
    GTK_LIST_ITEM_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GTK_TYPE_LIST_ITEM,GtkListItemClass);
  end;

  function gtk_list_item_get_item(self:PGtkListItem):gpointer;
  begin
    { You must implement this function }
  end;
  procedure gtk_list_item_set_selectable(self:PGtkListItem; selectable:gboolean);
  begin
    { You must implement this function }
  end;
  procedure gtk_list_item_set_activatable(self:PGtkListItem; activatable:gboolean);
  begin
    { You must implement this function }
  end;
  procedure gtk_list_item_set_child(self:PGtkListItem; child:PGtkWidget);
  begin
    { You must implement this function }
  end;
  function gtk_list_item_get_child(self:PGtkListItem):PGtkWidget;
  begin
    { You must implement this function }
  end;

