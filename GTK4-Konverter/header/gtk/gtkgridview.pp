
  Type
  PGtkGridView  = ^GtkGridView;
  PGtkListItemFactory  = ^GtkListItemFactory;
  PGtkSelectionModel  = ^GtkSelectionModel;
  PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  {
   * Copyright © 2019 Benjamin Otte
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
{$ifndef __GTK_GRID_VIEW_H__}
{$define __GTK_GRID_VIEW_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtklistbase.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_GRID_VIEW : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_GRID_VIEW(o : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_GRID_VIEW_CLASS(k : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_GRID_VIEW(o : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_GRID_VIEW_CLASS(k : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_GRID_VIEW_GET_CLASS(o : longint) : longint;  


  type
    _GtkGridView = GtkGridView;
    _GtkGridViewClass = GtkGridViewClass;
  { Zeile entfernt  }

  function gtk_grid_view_get_type:GType;

  { Zeile entfernt  }
  function gtk_grid_view_new(model:PGtkSelectionModel; factory:PGtkListItemFactory):^GtkWidget;

  { Zeile entfernt  }
  function gtk_grid_view_get_model(self:PGtkGridView):^GtkSelectionModel;

  { Zeile entfernt  }
  procedure gtk_grid_view_set_model(self:PGtkGridView; model:PGtkSelectionModel);

  { Zeile entfernt  }
  procedure gtk_grid_view_set_factory(self:PGtkGridView; factory:PGtkListItemFactory);

  { Zeile entfernt  }
  function gtk_grid_view_get_factory(self:PGtkGridView):^GtkListItemFactory;

  { Zeile entfernt  }
  function gtk_grid_view_get_min_columns(self:PGtkGridView):guint;

  { Zeile entfernt  }
  procedure gtk_grid_view_set_min_columns(self:PGtkGridView; min_columns:guint);

  { Zeile entfernt  }
  function gtk_grid_view_get_max_columns(self:PGtkGridView):guint;

  { Zeile entfernt  }
  procedure gtk_grid_view_set_max_columns(self:PGtkGridView; max_columns:guint);

  { Zeile entfernt  }
  procedure gtk_grid_view_set_enable_rubberband(self:PGtkGridView; enable_rubberband:gboolean);

  { Zeile entfernt  }
  function gtk_grid_view_get_enable_rubberband(self:PGtkGridView):gboolean;

  { Zeile entfernt  }
  procedure gtk_grid_view_set_single_click_activate(self:PGtkGridView; single_click_activate:gboolean);

  { Zeile entfernt  }
  function gtk_grid_view_get_single_click_activate(self:PGtkGridView):gboolean;

  { Zeile entfernt  }
{$endif}
  { __GTK_GRID_VIEW_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_GRID_VIEW : longint; { return type might be wrong }
    begin
      GTK_TYPE_GRID_VIEW:=gtk_grid_view_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_GRID_VIEW(o : longint) : longint;
  begin
    GTK_GRID_VIEW:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_GRID_VIEW,GtkGridView);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_GRID_VIEW_CLASS(k : longint) : longint;
  begin
    GTK_GRID_VIEW_CLASS:=G_TYPE_CHECK_CLASS_CAST(k,GTK_TYPE_GRID_VIEW,GtkGridViewClass);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_GRID_VIEW(o : longint) : longint;
  begin
    GTK_IS_GRID_VIEW:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_GRID_VIEW);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_GRID_VIEW_CLASS(k : longint) : longint;
  begin
    GTK_IS_GRID_VIEW_CLASS:=G_TYPE_CHECK_CLASS_TYPE(k,GTK_TYPE_GRID_VIEW);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_GRID_VIEW_GET_CLASS(o : longint) : longint;
  begin
    GTK_GRID_VIEW_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GTK_TYPE_GRID_VIEW,GtkGridViewClass);
  end;

  function gtk_grid_view_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gtk_grid_view_new(model:PGtkSelectionModel; factory:PGtkListItemFactory):PGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_grid_view_get_model(self:PGtkGridView):PGtkSelectionModel;
  begin
    { You must implement this function }
  end;
  procedure gtk_grid_view_set_model(self:PGtkGridView; model:PGtkSelectionModel);
  begin
    { You must implement this function }
  end;
  procedure gtk_grid_view_set_factory(self:PGtkGridView; factory:PGtkListItemFactory);
  begin
    { You must implement this function }
  end;
  function gtk_grid_view_get_factory(self:PGtkGridView):PGtkListItemFactory;
  begin
    { You must implement this function }
  end;
  function gtk_grid_view_get_min_columns(self:PGtkGridView):guint;
  begin
    { You must implement this function }
  end;
  procedure gtk_grid_view_set_min_columns(self:PGtkGridView; min_columns:guint);
  begin
    { You must implement this function }
  end;
  function gtk_grid_view_get_max_columns(self:PGtkGridView):guint;
  begin
    { You must implement this function }
  end;
  procedure gtk_grid_view_set_max_columns(self:PGtkGridView; max_columns:guint);
  begin
    { You must implement this function }
  end;
  procedure gtk_grid_view_set_enable_rubberband(self:PGtkGridView; enable_rubberband:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_grid_view_get_enable_rubberband(self:PGtkGridView):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_grid_view_set_single_click_activate(self:PGtkGridView; single_click_activate:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_grid_view_get_single_click_activate(self:PGtkGridView):gboolean;
  begin
    { You must implement this function }
  end;

