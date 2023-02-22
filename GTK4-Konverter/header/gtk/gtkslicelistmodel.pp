
  Type
  PGListModel  = ^GListModel;
  PGtkSliceListModel  = ^GtkSliceListModel;
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
{$ifndef __GTK_SLICE_LIST_MODEL_H__}
{$define __GTK_SLICE_LIST_MODEL_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gio/gio.h>}
{$include <gtk/gtkwidget.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_SLICE_LIST_MODEL : longint; { return type might be wrong }

  { Zeile entfernt  }
  { Zeile entfernt  }
  { Zeile entfernt  }
  function gtk_slice_list_model_new(model:PGListModel; offset:guint; size:guint):^GtkSliceListModel;

  { Zeile entfernt  }
  procedure gtk_slice_list_model_set_model(self:PGtkSliceListModel; model:PGListModel);

  { Zeile entfernt  }
  function gtk_slice_list_model_get_model(self:PGtkSliceListModel):^GListModel;

  { Zeile entfernt  }
  procedure gtk_slice_list_model_set_offset(self:PGtkSliceListModel; offset:guint);

  { Zeile entfernt  }
  function gtk_slice_list_model_get_offset(self:PGtkSliceListModel):guint;

  { Zeile entfernt  }
  procedure gtk_slice_list_model_set_size(self:PGtkSliceListModel; size:guint);

  { Zeile entfernt  }
  function gtk_slice_list_model_get_size(self:PGtkSliceListModel):guint;

  { Zeile entfernt  }
{$endif}
  { __GTK_SLICE_LIST_MODEL_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_SLICE_LIST_MODEL : longint; { return type might be wrong }
    begin
      GTK_TYPE_SLICE_LIST_MODEL:=gtk_slice_list_model_get_type;
    end;

  function gtk_slice_list_model_new(model:PGListModel; offset:guint; size:guint):PGtkSliceListModel;
  begin
    { You must implement this function }
  end;
  procedure gtk_slice_list_model_set_model(self:PGtkSliceListModel; model:PGListModel);
  begin
    { You must implement this function }
  end;
  function gtk_slice_list_model_get_model(self:PGtkSliceListModel):PGListModel;
  begin
    { You must implement this function }
  end;
  procedure gtk_slice_list_model_set_offset(self:PGtkSliceListModel; offset:guint);
  begin
    { You must implement this function }
  end;
  function gtk_slice_list_model_get_offset(self:PGtkSliceListModel):guint;
  begin
    { You must implement this function }
  end;
  procedure gtk_slice_list_model_set_size(self:PGtkSliceListModel; size:guint);
  begin
    { You must implement this function }
  end;
  function gtk_slice_list_model_get_size(self:PGtkSliceListModel):guint;
  begin
    { You must implement this function }
  end;

