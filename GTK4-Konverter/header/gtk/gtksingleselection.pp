
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
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_SINGLE_SELECTION : longint; { return type might be wrong }

  { Zeile entfernt  }
  { Zeile entfernt  }
  { Zeile entfernt  }
  function gtk_single_selection_new(model:PGListModel):^GtkSingleSelection;

  { Zeile entfernt  }
  function gtk_single_selection_get_model(self:PGtkSingleSelection):^GListModel;

  { Zeile entfernt  }
  procedure gtk_single_selection_set_model(self:PGtkSingleSelection; model:PGListModel);

  { Zeile entfernt  }
  function gtk_single_selection_get_selected(self:PGtkSingleSelection):guint;

  { Zeile entfernt  }
  procedure gtk_single_selection_set_selected(self:PGtkSingleSelection; position:guint);

  { Zeile entfernt  }
  function gtk_single_selection_get_selected_item(self:PGtkSingleSelection):gpointer;

  { Zeile entfernt  }
  function gtk_single_selection_get_autoselect(self:PGtkSingleSelection):gboolean;

  { Zeile entfernt  }
  procedure gtk_single_selection_set_autoselect(self:PGtkSingleSelection; autoselect:gboolean);

  { Zeile entfernt  }
  function gtk_single_selection_get_can_unselect(self:PGtkSingleSelection):gboolean;

  { Zeile entfernt  }
  procedure gtk_single_selection_set_can_unselect(self:PGtkSingleSelection; can_unselect:gboolean);

  { Zeile entfernt  }
{$endif}
  { __GTK_SINGLE_SELECTION_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_SINGLE_SELECTION : longint; { return type might be wrong }
    begin
      GTK_TYPE_SINGLE_SELECTION:=gtk_single_selection_get_type;
    end;

  function gtk_single_selection_new(model:PGListModel):PGtkSingleSelection;
  begin
    { You must implement this function }
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

