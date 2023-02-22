
  Type
  PGtkBorder  = ^GtkBorder;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GTK - The GIMP Toolkit
   * Copyright (C) 1995-1997 Peter Mattis, Spencer Kimball and Josh MacDonald
   *
   * This library is free software; you can redistribute it and/or
   * modify it under the terms of the GNU Lesser General Public
   * License as published by the Free Software Foundation; either
   * version 2 of the License, or (at your option) any later version.
   *
   * This library is distributed in the hope that it will be useful,
   * but WITHOUT ANY WARRANTY; without even the implied warranty of
   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the GNU
   * Lesser General Public License for more details.
   *
   * You should have received a copy of the GNU Lesser General Public
   * License along with this library. If not, see <http://www.gnu.org/licenses/>.
    }
  {
   * Modified by the GTK+ Team and others 1997-2000.  See the AUTHORS
   * file for a list of people on the GTK+ Team.  See the ChangeLog
   * files for a list of changes.  These files are distributed with
   * GTK+ at ftp://ftp.gtk.org/pub/gtk/.
    }
{$ifndef __GTK_BORDER_H__}
{$define __GTK_BORDER_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <glib-object.h>}
{$include <gdk/gdk.h>}

  type
    _GtkBorder = GtkBorder;

  { was #define dname def_expr }
  function GTK_TYPE_BORDER : longint; { return type might be wrong }

  {*
   * GtkBorder:
   * @left: The width of the left border
   * @right: The width of the right border
   * @top: The width of the top border
   * @bottom: The width of the bottom border
   *
   * A struct that specifies a border around a rectangular area.
   *
   * Each side can have different width.
    }

  type
    _GtkBorder = record
        left : gint16;
        right : gint16;
        top : gint16;
        bottom : gint16;
      end;

(* error 
GType      gtk_border_get_type (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;
(* error 
GtkBorder *gtk_border_new      (void) G_GNUC_MALLOC;
 in declarator_list *)
 : GtkBorder;
(* Const before type ignored *)

  function gtk_border_copy(border_:PGtkBorder):^GtkBorder;

  procedure gtk_border_free(border_:PGtkBorder);

(* error 
G_DEFINE_AUTOPTR_CLEANUP_FUNC(GtkBorder, gtk_border_free)
(* error 
G_DEFINE_AUTOPTR_CLEANUP_FUNC(GtkBorder, gtk_border_free)
{$endif}
  { __GTK_BORDER_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_BORDER : longint; { return type might be wrong }
    begin
      GTK_TYPE_BORDER:=gtk_border_get_type;
    end;

  function gtk_border_copy(border_:PGtkBorder):PGtkBorder;
  begin
    { You must implement this function }
  end;
  procedure gtk_border_free(border_:PGtkBorder);
  begin
    { You must implement this function }
  end;

