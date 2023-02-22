
  Type
  Pchar  = ^char;
  PGdkTexture  = ^GdkTexture;
  PGtkCellArea  = ^GtkCellArea;
  PGtkCellAreaContext  = ^GtkCellAreaContext;
  PGtkCellView  = ^GtkCellView;
  PGtkTreeModel  = ^GtkTreeModel;
  PGtkTreePath  = ^GtkTreePath;
  PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { gtkcellview.h
   * Copyright (C) 2002, 2003  Kristian Rietveld <kris@gtk.org>
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
{$ifndef __GTK_CELL_VIEW_H__}
{$define __GTK_CELL_VIEW_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}
{$include <gtk/gtkcellrenderer.h>}
{$include <gtk/gtkcellarea.h>}
{$include <gtk/gtkcellareacontext.h>}
{$include <gtk/gtktreemodel.h>}

  { was #define dname def_expr }
  function GTK_TYPE_CELL_VIEW : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_CELL_VIEW(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_CELL_VIEW(obj : longint) : longint;  


  type
    _GtkCellView = GtkCellView;
(* error 
GType             gtk_cell_view_get_type                (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;

  function gtk_cell_view_new:^GtkWidget;

  function gtk_cell_view_new_with_context(area:PGtkCellArea; context:PGtkCellAreaContext):^GtkWidget;

(* Const before type ignored *)
  function gtk_cell_view_new_with_text(text:Pchar):^GtkWidget;

(* Const before type ignored *)
  function gtk_cell_view_new_with_markup(markup:Pchar):^GtkWidget;

  function gtk_cell_view_new_with_texture(texture:PGdkTexture):^GtkWidget;

  procedure gtk_cell_view_set_model(cell_view:PGtkCellView; model:PGtkTreeModel);

  function gtk_cell_view_get_model(cell_view:PGtkCellView):^GtkTreeModel;

  procedure gtk_cell_view_set_displayed_row(cell_view:PGtkCellView; path:PGtkTreePath);

  function gtk_cell_view_get_displayed_row(cell_view:PGtkCellView):^GtkTreePath;

  function gtk_cell_view_get_draw_sensitive(cell_view:PGtkCellView):gboolean;

  procedure gtk_cell_view_set_draw_sensitive(cell_view:PGtkCellView; draw_sensitive:gboolean);

  function gtk_cell_view_get_fit_model(cell_view:PGtkCellView):gboolean;

  procedure gtk_cell_view_set_fit_model(cell_view:PGtkCellView; fit_model:gboolean);

{$endif}
  { __GTK_CELL_VIEW_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_CELL_VIEW : longint; { return type might be wrong }
    begin
      GTK_TYPE_CELL_VIEW:=gtk_cell_view_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_CELL_VIEW(obj : longint) : longint;
  begin
    GTK_CELL_VIEW:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_CELL_VIEW,GtkCellView);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_CELL_VIEW(obj : longint) : longint;
  begin
    GTK_IS_CELL_VIEW:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_CELL_VIEW);
  end;

  function gtk_cell_view_new:PGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_cell_view_new_with_context(area:PGtkCellArea; context:PGtkCellAreaContext):PGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_cell_view_new_with_text(text:Pchar):PGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_cell_view_new_with_markup(markup:Pchar):PGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_cell_view_new_with_texture(texture:PGdkTexture):PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_cell_view_set_model(cell_view:PGtkCellView; model:PGtkTreeModel);
  begin
    { You must implement this function }
  end;
  function gtk_cell_view_get_model(cell_view:PGtkCellView):PGtkTreeModel;
  begin
    { You must implement this function }
  end;
  procedure gtk_cell_view_set_displayed_row(cell_view:PGtkCellView; path:PGtkTreePath);
  begin
    { You must implement this function }
  end;
  function gtk_cell_view_get_displayed_row(cell_view:PGtkCellView):PGtkTreePath;
  begin
    { You must implement this function }
  end;
  function gtk_cell_view_get_draw_sensitive(cell_view:PGtkCellView):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_cell_view_set_draw_sensitive(cell_view:PGtkCellView; draw_sensitive:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_cell_view_get_fit_model(cell_view:PGtkCellView):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_cell_view_set_fit_model(cell_view:PGtkCellView; fit_model:gboolean);
  begin
    { You must implement this function }
  end;

