
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

  { was #define dname def_expr }
  function GTK_TYPE_NATIVE_DIALOG : longint; { return type might be wrong }

(* error 
G_DECLARE_DERIVABLE_TYPE (GtkNativeDialog, gtk_native_dialog, GTK, NATIVE_DIALOG, GObject)
 in declarator_list *)
(* error 
G_DECLARE_DERIVABLE_TYPE (GtkNativeDialog, gtk_native_dialog, GTK, NATIVE_DIALOG, GObject)
  {*
   * GtkNativeDialogClass:
   * @response: class handler for the `GtkNativeDialog::response` signal
   *
   * Class structure for `GtkNativeDialog`.
    }
 in declarator_list *)
  {< private > }
(* error 
  GObjectClass parent_class;
 in declarator_list *)
  {< public > }

    var
      response : procedure (self:PGtkNativeDialog; response_id:longint);cvar;public;
  { <private>  }
      show : procedure (self:PGtkNativeDialog);cvar;public;
      hide : procedure (self:PGtkNativeDialog);cvar;public;
  { Padding for future expansion  }
      _gtk_reserved1 : procedure ;cvar;public;
      _gtk_reserved2 : procedure ;cvar;public;
      _gtk_reserved3 : procedure ;cvar;public;
      _gtk_reserved4 : procedure ;cvar;public;
(* error 
};
in declaration at line 58 *)

    procedure gtk_native_dialog_show(self:PGtkNativeDialog);

    procedure gtk_native_dialog_hide(self:PGtkNativeDialog);

    procedure gtk_native_dialog_destroy(self:PGtkNativeDialog);

    function gtk_native_dialog_get_visible(self:PGtkNativeDialog):gboolean;

    procedure gtk_native_dialog_set_modal(self:PGtkNativeDialog; modal:gboolean);

    function gtk_native_dialog_get_modal(self:PGtkNativeDialog):gboolean;

(* Const before type ignored *)
    procedure gtk_native_dialog_set_title(self:PGtkNativeDialog; title:Pchar);

(* Const before type ignored *)
    function gtk_native_dialog_get_title(self:PGtkNativeDialog):^char;

    procedure gtk_native_dialog_set_transient_for(self:PGtkNativeDialog; parent:PGtkWindow);

    function gtk_native_dialog_get_transient_for(self:PGtkNativeDialog):^GtkWindow;

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

