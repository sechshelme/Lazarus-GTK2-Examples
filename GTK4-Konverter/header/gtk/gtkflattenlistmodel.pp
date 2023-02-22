
  Type
  PGListModel  = ^GListModel;
  PGtkFlattenListModel  = ^GtkFlattenListModel;
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
{$ifndef __GTK_FLATTEN_LIST_MODEL_H__}
{$define __GTK_FLATTEN_LIST_MODEL_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_FLATTEN_LIST_MODEL : longint; { return type might be wrong }

  { Zeile entfernt  }
  { Zeile entfernt  }
  { Zeile entfernt  }
  function gtk_flatten_list_model_new(model:PGListModel):^GtkFlattenListModel;

  { Zeile entfernt  }
  procedure gtk_flatten_list_model_set_model(self:PGtkFlattenListModel; model:PGListModel);

  { Zeile entfernt  }
  function gtk_flatten_list_model_get_model(self:PGtkFlattenListModel):^GListModel;

  { Zeile entfernt  }
  function gtk_flatten_list_model_get_model_for_item(self:PGtkFlattenListModel; position:guint):^GListModel;

  { Zeile entfernt  }
{$endif}
  { __GTK_FLATTEN_LIST_MODEL_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_FLATTEN_LIST_MODEL : longint; { return type might be wrong }
    begin
      GTK_TYPE_FLATTEN_LIST_MODEL:=gtk_flatten_list_model_get_type;
    end;

  function gtk_flatten_list_model_new(model:PGListModel):PGtkFlattenListModel;
  begin
    { You must implement this function }
  end;
  procedure gtk_flatten_list_model_set_model(self:PGtkFlattenListModel; model:PGListModel);
  begin
    { You must implement this function }
  end;
  function gtk_flatten_list_model_get_model(self:PGtkFlattenListModel):PGListModel;
  begin
    { You must implement this function }
  end;
  function gtk_flatten_list_model_get_model_for_item(self:PGtkFlattenListModel; position:guint):PGListModel;
  begin
    { You must implement this function }
  end;

