
  Type
  Pchar  = ^char;
  PGtkStringList  = ^GtkStringList;
  PGtkStringObject  = ^GtkStringObject;
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
   * Authors: Matthias Clasen <mclasen@redhat.com>
    }
{$ifndef __GTK_STRING_LIST_H__}
{$define __GTK_STRING_LIST_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gio/gio.h>}
  { Zeile entfernt  }
{$include <gdk/gdk.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_STRING_OBJECT : longint; { return type might be wrong }

  { Zeile entfernt  }
  { Zeile entfernt  }
  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_string_object_new(_string:Pchar):^GtkStringObject;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_string_object_get_string(self:PGtkStringObject):^char;

  { was #define dname def_expr }
  function GTK_TYPE_STRING_LIST : longint; { return type might be wrong }

  { Zeile entfernt  }
  { Zeile entfernt  }
  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before declarator ignored *)
  function gtk_string_list_new(strings:PPchar):^GtkStringList;

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_string_list_append(self:PGtkStringList; _string:Pchar);

  { Zeile entfernt  }
  procedure gtk_string_list_take(self:PGtkStringList; _string:Pchar);

  { Zeile entfernt  }
  procedure gtk_string_list_remove(self:PGtkStringList; position:guint);

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before declarator ignored *)
  procedure gtk_string_list_splice(self:PGtkStringList; position:guint; n_removals:guint; additions:PPchar);

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_string_list_get_string(self:PGtkStringList; position:guint):^char;

  { Zeile entfernt  }
{$endif}
  { __GTK_STRING_LIST_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_STRING_OBJECT : longint; { return type might be wrong }
    begin
      GTK_TYPE_STRING_OBJECT:=gtk_string_object_get_type;
    end;

  function gtk_string_object_new(_string:Pchar):PGtkStringObject;
  begin
    { You must implement this function }
  end;
  function gtk_string_object_get_string(self:PGtkStringObject):Pchar;
  begin
    { You must implement this function }
  end;
  { was #define dname def_expr }
  function GTK_TYPE_STRING_LIST : longint; { return type might be wrong }
    begin
      GTK_TYPE_STRING_LIST:=gtk_string_list_get_type;
    end;

  function gtk_string_list_new(strings:PPchar):PGtkStringList;
  begin
    { You must implement this function }
  end;
  procedure gtk_string_list_append(self:PGtkStringList; _string:Pchar);
  begin
    { You must implement this function }
  end;
  procedure gtk_string_list_take(self:PGtkStringList; _string:Pchar);
  begin
    { You must implement this function }
  end;
  procedure gtk_string_list_remove(self:PGtkStringList; position:guint);
  begin
    { You must implement this function }
  end;
  procedure gtk_string_list_splice(self:PGtkStringList; position:guint; n_removals:guint; additions:PPchar);
  begin
    { You must implement this function }
  end;
  function gtk_string_list_get_string(self:PGtkStringList; position:guint):Pchar;
  begin
    { You must implement this function }
  end;

