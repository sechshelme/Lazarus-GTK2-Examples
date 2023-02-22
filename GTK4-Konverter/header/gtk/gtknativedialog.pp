
  Type
  Pchar  = ^char;
  PGtkNativeDialog  = ^GtkNativeDialog;
  PGtkWindow  = ^GtkWindow;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GTK - The GIMP Toolkit
   * gtknativedialog.h: Native dialog
   * Copyright (C) 2015, Red Hat, Inc.
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
{$ifndef __GTK_NATIVE_DIALOG_H__}
{$define __GTK_NATIVE_DIALOG_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwindow.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_NATIVE_DIALOG : longint; { return type might be wrong }

  { Zeile entfernt  }
  { Zeile entfernt  }
  {*
   * GtkNativeDialogClass:
   * @response: class handler for the `GtkNativeDialog::response` signal
   *
   * Class structure for `GtkNativeDialog`.
    }
  {< private > }
  {< public > }
  { <private>  }
  { Padding for future expansion  }

  type
    _GtkNativeDialogClass = record
        parent_class : GObjectClass;
        response : procedure (self:PGtkNativeDialog; response_id:longint);cdecl;
        show : procedure (self:PGtkNativeDialog);cdecl;
        hide : procedure (self:PGtkNativeDialog);cdecl;
        _gtk_reserved1 : procedure ;cdecl;
        _gtk_reserved2 : procedure ;cdecl;
        _gtk_reserved3 : procedure ;cdecl;
        _gtk_reserved4 : procedure ;cdecl;
      end;

  { Zeile entfernt  }

  procedure gtk_native_dialog_show(self:PGtkNativeDialog);

  { Zeile entfernt  }
  procedure gtk_native_dialog_hide(self:PGtkNativeDialog);

  { Zeile entfernt  }
  procedure gtk_native_dialog_destroy(self:PGtkNativeDialog);

  { Zeile entfernt  }
  function gtk_native_dialog_get_visible(self:PGtkNativeDialog):gboolean;

  { Zeile entfernt  }
  procedure gtk_native_dialog_set_modal(self:PGtkNativeDialog; modal:gboolean);

  { Zeile entfernt  }
  function gtk_native_dialog_get_modal(self:PGtkNativeDialog):gboolean;

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_native_dialog_set_title(self:PGtkNativeDialog; title:Pchar);

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_native_dialog_get_title(self:PGtkNativeDialog):^char;

  { Zeile entfernt  }
  procedure gtk_native_dialog_set_transient_for(self:PGtkNativeDialog; parent:PGtkWindow);

  { Zeile entfernt  }
  function gtk_native_dialog_get_transient_for(self:PGtkNativeDialog):^GtkWindow;

  { Zeile entfernt  }
{$endif}
  { __GTK_NATIVE_DIALOG_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_NATIVE_DIALOG : longint; { return type might be wrong }
    begin
      GTK_TYPE_NATIVE_DIALOG:=gtk_native_dialog_get_type;
    end;

  procedure gtk_native_dialog_show(self:PGtkNativeDialog);
  begin
    { You must implement this function }
  end;
  procedure gtk_native_dialog_hide(self:PGtkNativeDialog);
  begin
    { You must implement this function }
  end;
  procedure gtk_native_dialog_destroy(self:PGtkNativeDialog);
  begin
    { You must implement this function }
  end;
  function gtk_native_dialog_get_visible(self:PGtkNativeDialog):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_native_dialog_set_modal(self:PGtkNativeDialog; modal:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_native_dialog_get_modal(self:PGtkNativeDialog):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_native_dialog_set_title(self:PGtkNativeDialog; title:Pchar);
  begin
    { You must implement this function }
  end;
  function gtk_native_dialog_get_title(self:PGtkNativeDialog):Pchar;
  begin
    { You must implement this function }
  end;
  procedure gtk_native_dialog_set_transient_for(self:PGtkNativeDialog; parent:PGtkWindow);
  begin
    { You must implement this function }
  end;
  function gtk_native_dialog_get_transient_for(self:PGtkNativeDialog):PGtkWindow;
  begin
    { You must implement this function }
  end;

