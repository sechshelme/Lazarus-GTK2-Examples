
  Type
  Pchar  = ^char;
  PGtkEditableLabel  = ^GtkEditableLabel;
  PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GTK - The GIMP Toolkit
   * Copyright (C) 2020 Red Hat, Inc.
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
{$ifndef __GTK_EDITABLE_LABEL_H__}
{$define __GTK_EDITABLE_LABEL_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_EDITABLE_LABEL : longint; { return type might be wrong }

  { Zeile entfernt  }
  { Zeile entfernt  }
  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_editable_label_new(str:Pchar):^GtkWidget;

  { Zeile entfernt  }
  function gtk_editable_label_get_editing(self:PGtkEditableLabel):gboolean;

  { Zeile entfernt  }
  procedure gtk_editable_label_start_editing(self:PGtkEditableLabel);

  { Zeile entfernt  }
  procedure gtk_editable_label_stop_editing(self:PGtkEditableLabel; commit:gboolean);

  { Zeile entfernt  }
{$endif}
  { __GTK_EDITABLE_LABEL_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_EDITABLE_LABEL : longint; { return type might be wrong }
    begin
      GTK_TYPE_EDITABLE_LABEL:=gtk_editable_label_get_type;
    end;

  function gtk_editable_label_new(str:Pchar):PGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_editable_label_get_editing(self:PGtkEditableLabel):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_editable_label_start_editing(self:PGtkEditableLabel);
  begin
    { You must implement this function }
  end;
  procedure gtk_editable_label_stop_editing(self:PGtkEditableLabel; commit:gboolean);
  begin
    { You must implement this function }
  end;

