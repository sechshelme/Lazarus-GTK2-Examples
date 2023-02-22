
  Type
  PGListModel  = ^GListModel;
  PGtkSorter  = ^GtkSorter;
  PGtkSortListModel  = ^GtkSortListModel;
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
{$ifndef __GTK_SORT_LIST_MODEL_H__}
{$define __GTK_SORT_LIST_MODEL_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gio/gio.h>}
{$include <gtk/gtkwidget.h>}
{$include <gtk/gtksorter.h>}

  { was #define dname def_expr }
  function GTK_TYPE_SORT_LIST_MODEL : longint; { return type might be wrong }

(* error 
G_DECLARE_FINAL_TYPE (GtkSortListModel, gtk_sort_list_model, GTK, SORT_LIST_MODEL, GObject)
 in declarator_list *)
(* error 
G_DECLARE_FINAL_TYPE (GtkSortListModel, gtk_sort_list_model, GTK, SORT_LIST_MODEL, GObject)
(* error 
                                                                 GtkSorter             *sorter);
 in declarator_list *)
 in declarator_list *)
  procedure gtk_sort_list_model_set_sorter(self:PGtkSortListModel; sorter:PGtkSorter);

  function gtk_sort_list_model_get_sorter(self:PGtkSortListModel):^GtkSorter;

  procedure gtk_sort_list_model_set_model(self:PGtkSortListModel; model:PGListModel);

  function gtk_sort_list_model_get_model(self:PGtkSortListModel):^GListModel;

  procedure gtk_sort_list_model_set_incremental(self:PGtkSortListModel; incremental:gboolean);

  function gtk_sort_list_model_get_incremental(self:PGtkSortListModel):gboolean;

  function gtk_sort_list_model_get_pending(self:PGtkSortListModel):guint;

{$endif}
  { __GTK_SORT_LIST_MODEL_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_SORT_LIST_MODEL : longint; { return type might be wrong }
    begin
      GTK_TYPE_SORT_LIST_MODEL:=gtk_sort_list_model_get_type;
    end;

  procedure gtk_sort_list_model_set_sorter(self:PGtkSortListModel; sorter:PGtkSorter);
  begin
    { You must implement this function }
  end;
  function gtk_sort_list_model_get_sorter(self:PGtkSortListModel):PGtkSorter;
  begin
    { You must implement this function }
  end;
  procedure gtk_sort_list_model_set_model(self:PGtkSortListModel; model:PGListModel);
  begin
    { You must implement this function }
  end;
  function gtk_sort_list_model_get_model(self:PGtkSortListModel):PGListModel;
  begin
    { You must implement this function }
  end;
  procedure gtk_sort_list_model_set_incremental(self:PGtkSortListModel; incremental:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_sort_list_model_get_incremental(self:PGtkSortListModel):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_sort_list_model_get_pending(self:PGtkSortListModel):guint;
  begin
    { You must implement this function }
  end;

