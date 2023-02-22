
  Type
  PGListModel  = ^GListModel;
  PGtkMultiSelection  = ^GtkMultiSelection;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  {
   * Copyright © 2019 Red Hat, Inc.
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
   * Authors: Matthias Clasen <mclasen@redhat.com>
    }
{$ifndef __GTK_MULTI_SELECTION_H__}
{$define __GTK_MULTI_SELECTION_H__}  
{$include <gtk/gtktypes.h>}
{$include <gtk/gtkselectionmodel.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_MULTI_SELECTION : longint; { return type might be wrong }

  { Zeile entfernt  }
  { Zeile entfernt  }
  { Zeile entfernt  }
  function gtk_multi_selection_new(model:PGListModel):^GtkMultiSelection;

  { Zeile entfernt  }
  function gtk_multi_selection_get_model(self:PGtkMultiSelection):^GListModel;

  { Zeile entfernt  }
  procedure gtk_multi_selection_set_model(self:PGtkMultiSelection; model:PGListModel);

  { Zeile entfernt  }
{$endif}
  { __GTK_MULTI_SELECTION_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_MULTI_SELECTION : longint; { return type might be wrong }
    begin
      GTK_TYPE_MULTI_SELECTION:=gtk_multi_selection_get_type;
    end;

  function gtk_multi_selection_new(model:PGListModel):PGtkMultiSelection;
  begin
    { You must implement this function }
  end;
  function gtk_multi_selection_get_model(self:PGtkMultiSelection):PGListModel;
  begin
    { You must implement this function }
  end;
  procedure gtk_multi_selection_set_model(self:PGtkMultiSelection; model:PGListModel);
  begin
    { You must implement this function }
  end;

