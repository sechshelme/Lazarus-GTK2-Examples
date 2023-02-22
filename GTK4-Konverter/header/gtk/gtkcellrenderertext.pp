
  Type
  Pchar  = ^char;
  PGtkCellRenderer  = ^GtkCellRenderer;
  PGtkCellRendererText  = ^GtkCellRendererText;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { gtkcellrenderertext.h
   * Copyright (C) 2000  Red Hat, Inc.,  Jonathan Blandford <jrb@redhat.com>
   *
   * This library is free software; you can redistribute it and/or
   * modify it under the terms of the GNU Library General Public
   * License as published by the Free Software Foundation; either
   * version 2 of the License, or (at your option) any later version.
   *
   * This library is distributed in the hope that it will be useful,
   * but WITHOUT ANY WARRANTY; without even the implied warranty of
   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   * Library General Public License for more details.
   *
   * You should have received a copy of the GNU Library General Public
   * License along with this library. If not, see <http://www.gnu.org/licenses/>.
    }
{$ifndef __GTK_CELL_RENDERER_TEXT_H__}
{$define __GTK_CELL_RENDERER_TEXT_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkcellrenderer.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_CELL_RENDERER_TEXT : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_CELL_RENDERER_TEXT(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_CELL_RENDERER_TEXT_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_CELL_RENDERER_TEXT(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_CELL_RENDERER_TEXT_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_CELL_RENDERER_TEXT_GET_CLASS(obj : longint) : longint;  


  type
    _GtkCellRendererText = GtkCellRendererText;
    _GtkCellRendererTextClass = GtkCellRendererTextClass;
    _GtkCellRendererText = record
        parent : GtkCellRenderer;
      end;

(* Const before type ignored *)
(* Const before type ignored *)
  {< private > }
    _GtkCellRendererTextClass = record
        parent_class : GtkCellRendererClass;
        edited : procedure (cell_renderer_text:PGtkCellRendererText; path:Pchar; new_text:Pchar);cdecl;
        padding : array[0..7] of gpointer;
      end;

  { Zeile entfernt  }

  function gtk_cell_renderer_text_get_type:GType;

  { Zeile entfernt  }
  function gtk_cell_renderer_text_new:^GtkCellRenderer;

  { Zeile entfernt  }
  procedure gtk_cell_renderer_text_set_fixed_height_from_font(renderer:PGtkCellRendererText; number_of_rows:longint);

  { Zeile entfernt  }
{$endif}
  { __GTK_CELL_RENDERER_TEXT_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_CELL_RENDERER_TEXT : longint; { return type might be wrong }
    begin
      GTK_TYPE_CELL_RENDERER_TEXT:=gtk_cell_renderer_text_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_CELL_RENDERER_TEXT(obj : longint) : longint;
  begin
    GTK_CELL_RENDERER_TEXT:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_CELL_RENDERER_TEXT,GtkCellRendererText);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_CELL_RENDERER_TEXT_CLASS(klass : longint) : longint;
  begin
    GTK_CELL_RENDERER_TEXT_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_CELL_RENDERER_TEXT,GtkCellRendererTextClass);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_CELL_RENDERER_TEXT(obj : longint) : longint;
  begin
    GTK_IS_CELL_RENDERER_TEXT:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_CELL_RENDERER_TEXT);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_CELL_RENDERER_TEXT_CLASS(klass : longint) : longint;
  begin
    GTK_IS_CELL_RENDERER_TEXT_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_CELL_RENDERER_TEXT);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_CELL_RENDERER_TEXT_GET_CLASS(obj : longint) : longint;
  begin
    GTK_CELL_RENDERER_TEXT_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_CELL_RENDERER_TEXT,GtkCellRendererTextClass);
  end;

  function gtk_cell_renderer_text_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gtk_cell_renderer_text_new:PGtkCellRenderer;
  begin
    { You must implement this function }
  end;
  procedure gtk_cell_renderer_text_set_fixed_height_from_font(renderer:PGtkCellRendererText; number_of_rows:longint);
  begin
    { You must implement this function }
  end;

