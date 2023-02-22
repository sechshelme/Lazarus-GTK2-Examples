
  Type
  PGListModel  = ^GListModel;
  PGtkColumnView  = ^GtkColumnView;
  PGtkColumnViewColumn  = ^GtkColumnViewColumn;
  PGtkSelectionModel  = ^GtkSelectionModel;
  PGtkSorter  = ^GtkSorter;
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
{$ifndef __GTK_COLUMN_VIEW_H__}
{$define __GTK_COLUMN_VIEW_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtktypes.h>}
{$include <gtk/gtksortlistmodel.h>}
{$include <gtk/gtkselectionmodel.h>}
{$include <gtk/gtksorter.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_COLUMN_VIEW : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_COLUMN_VIEW(o : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_COLUMN_VIEW_CLASS(k : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_COLUMN_VIEW(o : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_COLUMN_VIEW_CLASS(k : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_COLUMN_VIEW_GET_CLASS(o : longint) : longint;  


  type
    _GtkColumnView = GtkColumnView;
    _GtkColumnViewClass = GtkColumnViewClass;
  { forward declaration  }
    _GtkColumnViewColumn = GtkColumnViewColumn;
  { Zeile entfernt  }

  function gtk_column_view_get_type:GType;

  { Zeile entfernt  }
  function gtk_column_view_new(model:PGtkSelectionModel):^GtkWidget;

  { Zeile entfernt  }
  function gtk_column_view_get_columns(self:PGtkColumnView):^GListModel;

  { Zeile entfernt  }
  procedure gtk_column_view_append_column(self:PGtkColumnView; column:PGtkColumnViewColumn);

  { Zeile entfernt  }
  procedure gtk_column_view_remove_column(self:PGtkColumnView; column:PGtkColumnViewColumn);

  { Zeile entfernt  }
  procedure gtk_column_view_insert_column(self:PGtkColumnView; position:guint; column:PGtkColumnViewColumn);

  { Zeile entfernt  }
  function gtk_column_view_get_model(self:PGtkColumnView):^GtkSelectionModel;

  { Zeile entfernt  }
  procedure gtk_column_view_set_model(self:PGtkColumnView; model:PGtkSelectionModel);

  { Zeile entfernt  }
  function gtk_column_view_get_show_row_separators(self:PGtkColumnView):gboolean;

  { Zeile entfernt  }
  procedure gtk_column_view_set_show_row_separators(self:PGtkColumnView; show_row_separators:gboolean);

  { Zeile entfernt  }
  function gtk_column_view_get_show_column_separators(self:PGtkColumnView):gboolean;

  { Zeile entfernt  }
  procedure gtk_column_view_set_show_column_separators(self:PGtkColumnView; show_column_separators:gboolean);

  { Zeile entfernt  }
  function gtk_column_view_get_sorter(self:PGtkColumnView):^GtkSorter;

  { Zeile entfernt  }
  procedure gtk_column_view_sort_by_column(self:PGtkColumnView; column:PGtkColumnViewColumn; direction:GtkSortType);

  { Zeile entfernt  }
  procedure gtk_column_view_set_single_click_activate(self:PGtkColumnView; single_click_activate:gboolean);

  { Zeile entfernt  }
  function gtk_column_view_get_single_click_activate(self:PGtkColumnView):gboolean;

  { Zeile entfernt  }
  procedure gtk_column_view_set_reorderable(self:PGtkColumnView; reorderable:gboolean);

  { Zeile entfernt  }
  function gtk_column_view_get_reorderable(self:PGtkColumnView):gboolean;

  { Zeile entfernt  }
  procedure gtk_column_view_set_enable_rubberband(self:PGtkColumnView; enable_rubberband:gboolean);

  { Zeile entfernt  }
  function gtk_column_view_get_enable_rubberband(self:PGtkColumnView):gboolean;

  { Zeile entfernt  }
{$endif}
  { __GTK_COLUMN_VIEW_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_COLUMN_VIEW : longint; { return type might be wrong }
    begin
      GTK_TYPE_COLUMN_VIEW:=gtk_column_view_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_COLUMN_VIEW(o : longint) : longint;
  begin
    GTK_COLUMN_VIEW:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_COLUMN_VIEW,GtkColumnView);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_COLUMN_VIEW_CLASS(k : longint) : longint;
  begin
    GTK_COLUMN_VIEW_CLASS:=G_TYPE_CHECK_CLASS_CAST(k,GTK_TYPE_COLUMN_VIEW,GtkColumnViewClass);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_COLUMN_VIEW(o : longint) : longint;
  begin
    GTK_IS_COLUMN_VIEW:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_COLUMN_VIEW);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_COLUMN_VIEW_CLASS(k : longint) : longint;
  begin
    GTK_IS_COLUMN_VIEW_CLASS:=G_TYPE_CHECK_CLASS_TYPE(k,GTK_TYPE_COLUMN_VIEW);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_COLUMN_VIEW_GET_CLASS(o : longint) : longint;
  begin
    GTK_COLUMN_VIEW_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GTK_TYPE_COLUMN_VIEW,GtkColumnViewClass);
  end;

  function gtk_column_view_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gtk_column_view_new(model:PGtkSelectionModel):PGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_column_view_get_columns(self:PGtkColumnView):PGListModel;
  begin
    { You must implement this function }
  end;
  procedure gtk_column_view_append_column(self:PGtkColumnView; column:PGtkColumnViewColumn);
  begin
    { You must implement this function }
  end;
  procedure gtk_column_view_remove_column(self:PGtkColumnView; column:PGtkColumnViewColumn);
  begin
    { You must implement this function }
  end;
  procedure gtk_column_view_insert_column(self:PGtkColumnView; position:guint; column:PGtkColumnViewColumn);
  begin
    { You must implement this function }
  end;
  function gtk_column_view_get_model(self:PGtkColumnView):PGtkSelectionModel;
  begin
    { You must implement this function }
  end;
  procedure gtk_column_view_set_model(self:PGtkColumnView; model:PGtkSelectionModel);
  begin
    { You must implement this function }
  end;
  function gtk_column_view_get_show_row_separators(self:PGtkColumnView):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_column_view_set_show_row_separators(self:PGtkColumnView; show_row_separators:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_column_view_get_show_column_separators(self:PGtkColumnView):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_column_view_set_show_column_separators(self:PGtkColumnView; show_column_separators:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_column_view_get_sorter(self:PGtkColumnView):PGtkSorter;
  begin
    { You must implement this function }
  end;
  procedure gtk_column_view_sort_by_column(self:PGtkColumnView; column:PGtkColumnViewColumn; direction:GtkSortType);
  begin
    { You must implement this function }
  end;
  procedure gtk_column_view_set_single_click_activate(self:PGtkColumnView; single_click_activate:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_column_view_get_single_click_activate(self:PGtkColumnView):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_column_view_set_reorderable(self:PGtkColumnView; reorderable:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_column_view_get_reorderable(self:PGtkColumnView):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_column_view_set_enable_rubberband(self:PGtkColumnView; enable_rubberband:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_column_view_get_enable_rubberband(self:PGtkColumnView):gboolean;
  begin
    { You must implement this function }
  end;

