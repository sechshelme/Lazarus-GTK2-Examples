
  Type
  PGListModel  = ^GListModel;
  PGtkMapListModel  = ^GtkMapListModel;
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
{$ifndef __GTK_MAP_LIST_MODEL_H__}
{$define __GTK_MAP_LIST_MODEL_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gio/gio.h>}
{$include <gtk/gtkwidget.h>}

  { was #define dname def_expr }
  function GTK_TYPE_MAP_LIST_MODEL : longint; { return type might be wrong }

(* error 
G_DECLARE_FINAL_TYPE (GtkMapListModel, gtk_map_list_model, GTK, MAP_LIST_MODEL, GObject)
 in declarator_list *)
(* error 
G_DECLARE_FINAL_TYPE (GtkMapListModel, gtk_map_list_model, GTK, MAP_LIST_MODEL, GObject)
  {*
   * GtkMapListModelMapFunc:
   * @item: (type GObject) (transfer full): The item to map
   * @user_data: user data
   *
   * User function that is called to map an @item of the original model to
   * an item expected by the map model.
   *
   * The returned items must conform to the item type of the model they are
   * used with.
   *
   * Returns: (type GObject) (transfer full): The item to map to
    }
(* error 
typedef gpointer (* GtkMapListModelMapFunc) (gpointer item, gpointer user_data);
 in declarator_list *)
 in declarator_list *)
  function gtk_map_list_model_new(model:PGListModel; map_func:GtkMapListModelMapFunc; user_data:gpointer; user_destroy:GDestroyNotify):^GtkMapListModel;

  procedure gtk_map_list_model_set_map_func(self:PGtkMapListModel; map_func:GtkMapListModelMapFunc; user_data:gpointer; user_destroy:GDestroyNotify);

  procedure gtk_map_list_model_set_model(self:PGtkMapListModel; model:PGListModel);

  function gtk_map_list_model_get_model(self:PGtkMapListModel):^GListModel;

  function gtk_map_list_model_has_map(self:PGtkMapListModel):gboolean;

{$endif}
  { __GTK_MAP_LIST_MODEL_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_MAP_LIST_MODEL : longint; { return type might be wrong }
    begin
      GTK_TYPE_MAP_LIST_MODEL:=gtk_map_list_model_get_type;
    end;

  function gtk_map_list_model_new(model:PGListModel; map_func:GtkMapListModelMapFunc; user_data:gpointer; user_destroy:GDestroyNotify):PGtkMapListModel;
  begin
    { You must implement this function }
  end;
  procedure gtk_map_list_model_set_map_func(self:PGtkMapListModel; map_func:GtkMapListModelMapFunc; user_data:gpointer; user_destroy:GDestroyNotify);
  begin
    { You must implement this function }
  end;
  procedure gtk_map_list_model_set_model(self:PGtkMapListModel; model:PGListModel);
  begin
    { You must implement this function }
  end;
  function gtk_map_list_model_get_model(self:PGtkMapListModel):PGListModel;
  begin
    { You must implement this function }
  end;
  function gtk_map_list_model_has_map(self:PGtkMapListModel):gboolean;
  begin
    { You must implement this function }
  end;

