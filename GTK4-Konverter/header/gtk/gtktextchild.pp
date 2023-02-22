
  Type
  PGtkTextChildAnchor  = ^GtkTextChildAnchor;
  PGtkWidget  = ^GtkWidget;
  Pguint  = ^guint;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GTK - The GIMP Toolkit
   * gtktextchild.h Copyright (C) 2000 Red Hat, Inc.
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
  {
   * Modified by the GTK+ Team and others 1997-2000.  See the AUTHORS
   * file for a list of people on the GTK+ Team.  See the ChangeLog
   * files for a list of changes.  These files are distributed with
   * GTK+ at ftp://ftp.gtk.org/pub/gtk/.
    }
{$ifndef __GTK_TEXT_CHILD_H__}
{$define __GTK_TEXT_CHILD_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}
{$include <glib-object.h>}
{$include <gtk/gtkwidget.h>}
  {*
   * GtkTextChildAnchor:
   *
   * A `GtkTextChildAnchor` is a spot in a `GtkTextBuffer` where child widgets can
   * be “anchored”.
   *
   * The anchor can have multiple widgets anchored, to allow for multiple views.
    }

  type
    _GtkTextChildAnchor = GtkTextChildAnchor;
    _GtkTextChildAnchorClass = GtkTextChildAnchorClass;

  { was #define dname def_expr }
  function GTK_TYPE_TEXT_CHILD_ANCHOR : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_TEXT_CHILD_ANCHOR(object : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_TEXT_CHILD_ANCHOR_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_TEXT_CHILD_ANCHOR(object : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_TEXT_CHILD_ANCHOR_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_TEXT_CHILD_ANCHOR_GET_CLASS(obj : longint) : longint;  

  {< private > }

  type
    _GtkTextChildAnchor = record
        parent_instance : GObject;
        segment : gpointer;
      end;

  { Padding for future expansion  }
    _GtkTextChildAnchorClass = record
        parent_class : GObjectClass;
        _gtk_reserved1 : procedure ;cdecl;
        _gtk_reserved2 : procedure ;cdecl;
        _gtk_reserved3 : procedure ;cdecl;
        _gtk_reserved4 : procedure ;cdecl;
      end;

(* error 
GType gtk_text_child_anchor_get_type (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;

  function gtk_text_child_anchor_new:^GtkTextChildAnchor;

(* error 
GtkTextChildAnchor *gtk_text_child_anchor_new_with_replacement (const char *character);
 in declarator_list *)
  function gtk_text_child_anchor_get_widgets(anchor:PGtkTextChildAnchor; out_len:Pguint):^^GtkWidget;

  function gtk_text_child_anchor_get_deleted(anchor:PGtkTextChildAnchor):gboolean;

{$endif}
  { was #define dname def_expr }
  function GTK_TYPE_TEXT_CHILD_ANCHOR : longint; { return type might be wrong }
    begin
      GTK_TYPE_TEXT_CHILD_ANCHOR:=gtk_text_child_anchor_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_TEXT_CHILD_ANCHOR(object : longint) : longint;
  begin
    GTK_TEXT_CHILD_ANCHOR:=G_TYPE_CHECK_INSTANCE_CAST(object,GTK_TYPE_TEXT_CHILD_ANCHOR,GtkTextChildAnchor);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_TEXT_CHILD_ANCHOR_CLASS(klass : longint) : longint;
  begin
    GTK_TEXT_CHILD_ANCHOR_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_TEXT_CHILD_ANCHOR,GtkTextChildAnchorClass);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_TEXT_CHILD_ANCHOR(object : longint) : longint;
  begin
    GTK_IS_TEXT_CHILD_ANCHOR:=G_TYPE_CHECK_INSTANCE_TYPE(object,GTK_TYPE_TEXT_CHILD_ANCHOR);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_TEXT_CHILD_ANCHOR_CLASS(klass : longint) : longint;
  begin
    GTK_IS_TEXT_CHILD_ANCHOR_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_TEXT_CHILD_ANCHOR);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_TEXT_CHILD_ANCHOR_GET_CLASS(obj : longint) : longint;
  begin
    GTK_TEXT_CHILD_ANCHOR_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_TEXT_CHILD_ANCHOR,GtkTextChildAnchorClass);
  end;

  function gtk_text_child_anchor_new:PGtkTextChildAnchor;
  begin
    { You must implement this function }
  end;
  function gtk_text_child_anchor_get_widgets(anchor:PGtkTextChildAnchor; out_len:Pguint):PPGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_text_child_anchor_get_deleted(anchor:PGtkTextChildAnchor):gboolean;
  begin
    { You must implement this function }
  end;

