
  Type
  PGListModel  = ^GListModel;
  PGtkSingleSelection  = ^GtkSingleSelection;
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
{$ifndef __GTK_SINGLE_SELECTION_H__}
{$define __GTK_SINGLE_SELECTION_H__}  
{$include <gtk/gtktypes.h>}

  { was #define dname def_expr }
  function GTK_TYPE_SINGLE_SELECTION : longint; { return type might be wrong }

(* error 
G_DECLARE_FINAL_TYPE (GtkSingleSelection, gtk_single_selection, GTK, SINGLE_SELECTION, GObject)
 in declarator_list *)
(* error 
G_DECLARE_FINAL_TYPE (GtkSingleSelection, gtk_single_selection, GTK, SINGLE_SELECTION, GObject)
 in declarator_list *)
  function gtk_single_selection_get_model(self:PGtkSingleSelection):^GListModel;

  procedure gtk_single_selection_set_model(self:PGtkSingleSelection; model:PGListModel);

  function gtk_single_selection_get_selected(self:PGtkSingleSelection):guint;

  procedure gtk_single_selection_set_selected(self:PGtkSingleSelection; position:guint);

  function gtk_single_selection_get_selected_item(self:PGtkSingleSelection):gpointer;

  function gtk_single_selection_get_autoselect(self:PGtkSingleSelection):gboolean;

  procedure gtk_single_selection_set_autoselect(self:PGtkSingleSelection; autoselect:gboolean);

  function gtk_single_selection_get_can_unselect(self:PGtkSingleSelection):gboolean;

  procedure gtk_single_selection_set_can_unselect(self:PGtkSingleSelection; can_unselect:gboolean);

{$endif}
  { __GTK_SINGLE_SELECTION_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_SINGLE_SELECTION : longint; { return type might be wrong }
    begin
      GTK_TYPE_SINGLE_SELECTION:=gtk_single_selection_get_type;
    end;

  function gtk_single_selection_get_model(self:PGtkSingleSelection):PGListModel;
  begin
    { You must implement this function }
  end;
  procedure gtk_single_selection_set_model(self:PGtkSingleSelection; model:PGListModel);
  begin
    { You must implement this function }
  end;
  function gtk_single_selection_get_selected(self:PGtkSingleSelection):guint;
  begin
    { You must implement this function }
  end;
  procedure gtk_single_selection_set_selected(self:PGtkSingleSelection; position:guint);
  begin
    { You must implement this function }
  end;
  function gtk_single_selection_get_selected_item(self:PGtkSingleSelection):gpointer;
  begin
    { You must implement this function }
  end;
  function gtk_single_selection_get_autoselect(self:PGtkSingleSelection):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_single_selection_set_autoselect(self:PGtkSingleSelection; autoselect:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_single_selection_get_can_unselect(self:PGtkSingleSelection):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_single_selection_set_can_unselect(self:PGtkSingleSelection; can_unselect:gboolean);
  begin
    { You must implement this function }
  end;

