
  Type
  PGtkSelectionFilterModel  = ^GtkSelectionFilterModel;
  PGtkSelectionModel  = ^GtkSelectionModel;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  {
   * Copyright © 2020 Red Hat, Inc.
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
   * Authors: Matthias Clasen
    }
{$ifndef __GTK_SELECTION_FILTER_MODEL_H__}
{$define __GTK_SELECTION_FILTER_MODEL_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gio/gio.h>}
{$include <gtk/gtkselectionmodel.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_SELECTION_FILTER_MODEL : longint; { return type might be wrong }

  { Zeile entfernt  }
  { Zeile entfernt  }
  { Zeile entfernt  }
  function gtk_selection_filter_model_new(model:PGtkSelectionModel):^GtkSelectionFilterModel;

  { Zeile entfernt  }
  procedure gtk_selection_filter_model_set_model(self:PGtkSelectionFilterModel; model:PGtkSelectionModel);

  { Zeile entfernt  }
  function gtk_selection_filter_model_get_model(self:PGtkSelectionFilterModel):^GtkSelectionModel;

  { Zeile entfernt  }
{$endif}
  { __GTK_SELECTION_FILTER_MODEL_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_SELECTION_FILTER_MODEL : longint; { return type might be wrong }
    begin
      GTK_TYPE_SELECTION_FILTER_MODEL:=gtk_selection_filter_model_get_type;
    end;

  function gtk_selection_filter_model_new(model:PGtkSelectionModel):PGtkSelectionFilterModel;
  begin
    { You must implement this function }
  end;
  procedure gtk_selection_filter_model_set_model(self:PGtkSelectionFilterModel; model:PGtkSelectionModel);
  begin
    { You must implement this function }
  end;
  function gtk_selection_filter_model_get_model(self:PGtkSelectionFilterModel):PGtkSelectionModel;
  begin
    { You must implement this function }
  end;

