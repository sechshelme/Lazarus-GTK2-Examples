
  Type
  Pchar  = ^char;
  PGMenuModel  = ^GMenuModel;
  PGtkColumnView  = ^GtkColumnView;
  PGtkColumnViewColumn  = ^GtkColumnViewColumn;
  PGtkListItemFactory  = ^GtkListItemFactory;
  PGtkSorter  = ^GtkSorter;
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
{$ifndef __GTK_COLUMN_VIEW_COLUMN_H__}
{$define __GTK_COLUMN_VIEW_COLUMN_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkcolumnview.h>}
{$include <gtk/gtksorter.h>}

  { was #define dname def_expr }
  function GTK_TYPE_COLUMN_VIEW_COLUMN : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_COLUMN_VIEW_COLUMN(o : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_COLUMN_VIEW_COLUMN_CLASS(k : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_COLUMN_VIEW_COLUMN(o : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_COLUMN_VIEW_COLUMN_CLASS(k : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_COLUMN_VIEW_COLUMN_GET_CLASS(o : longint) : longint;  

(* error 
G_DEFINE_AUTOPTR_CLEANUP_FUNC(GtkColumnViewColumn, g_object_unref)
(* error 
G_DEFINE_AUTOPTR_CLEANUP_FUNC(GtkColumnViewColumn, g_object_unref)
 in declarator_list *)
 in declarator_list *)
(* error 
GType                   gtk_column_view_column_get_type                 (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;
(* Const before type ignored *)

  function gtk_column_view_column_new(title:Pchar; factory:PGtkListItemFactory):^GtkColumnViewColumn;

  function gtk_column_view_column_get_column_view(self:PGtkColumnViewColumn):^GtkColumnView;

  procedure gtk_column_view_column_set_factory(self:PGtkColumnViewColumn; factory:PGtkListItemFactory);

  function gtk_column_view_column_get_factory(self:PGtkColumnViewColumn):^GtkListItemFactory;

(* Const before type ignored *)
  procedure gtk_column_view_column_set_title(self:PGtkColumnViewColumn; title:Pchar);

(* Const before type ignored *)
  function gtk_column_view_column_get_title(self:PGtkColumnViewColumn):^char;

  procedure gtk_column_view_column_set_sorter(self:PGtkColumnViewColumn; sorter:PGtkSorter);

  function gtk_column_view_column_get_sorter(self:PGtkColumnViewColumn):^GtkSorter;

  procedure gtk_column_view_column_set_visible(self:PGtkColumnViewColumn; visible:gboolean);

  function gtk_column_view_column_get_visible(self:PGtkColumnViewColumn):gboolean;

  procedure gtk_column_view_column_set_header_menu(self:PGtkColumnViewColumn; menu:PGMenuModel);

  function gtk_column_view_column_get_header_menu(self:PGtkColumnViewColumn):^GMenuModel;

  procedure gtk_column_view_column_set_fixed_width(self:PGtkColumnViewColumn; fixed_width:longint);

  function gtk_column_view_column_get_fixed_width(self:PGtkColumnViewColumn):longint;

  procedure gtk_column_view_column_set_resizable(self:PGtkColumnViewColumn; resizable:gboolean);

  function gtk_column_view_column_get_resizable(self:PGtkColumnViewColumn):gboolean;

  procedure gtk_column_view_column_set_expand(self:PGtkColumnViewColumn; expand:gboolean);

  function gtk_column_view_column_get_expand(self:PGtkColumnViewColumn):gboolean;

{$endif}
  { __GTK_COLUMN_VIEW_COLUMN_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_COLUMN_VIEW_COLUMN : longint; { return type might be wrong }
    begin
      GTK_TYPE_COLUMN_VIEW_COLUMN:=gtk_column_view_column_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_COLUMN_VIEW_COLUMN(o : longint) : longint;
  begin
    GTK_COLUMN_VIEW_COLUMN:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_COLUMN_VIEW_COLUMN,GtkColumnViewColumn);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_COLUMN_VIEW_COLUMN_CLASS(k : longint) : longint;
  begin
    GTK_COLUMN_VIEW_COLUMN_CLASS:=G_TYPE_CHECK_CLASS_CAST(k,GTK_TYPE_COLUMN_VIEW_COLUMN,GtkColumnViewColumnClass);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_COLUMN_VIEW_COLUMN(o : longint) : longint;
  begin
    GTK_IS_COLUMN_VIEW_COLUMN:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_COLUMN_VIEW_COLUMN);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_COLUMN_VIEW_COLUMN_CLASS(k : longint) : longint;
  begin
    GTK_IS_COLUMN_VIEW_COLUMN_CLASS:=G_TYPE_CHECK_CLASS_TYPE(k,GTK_TYPE_COLUMN_VIEW_COLUMN);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_COLUMN_VIEW_COLUMN_GET_CLASS(o : longint) : longint;
  begin
    GTK_COLUMN_VIEW_COLUMN_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GTK_TYPE_COLUMN_VIEW_COLUMN,GtkColumnViewColumnClass);
  end;

  function gtk_column_view_column_new(title:Pchar; factory:PGtkListItemFactory):PGtkColumnViewColumn;
  begin
    { You must implement this function }
  end;
  function gtk_column_view_column_get_column_view(self:PGtkColumnViewColumn):PGtkColumnView;
  begin
    { You must implement this function }
  end;
  procedure gtk_column_view_column_set_factory(self:PGtkColumnViewColumn; factory:PGtkListItemFactory);
  begin
    { You must implement this function }
  end;
  function gtk_column_view_column_get_factory(self:PGtkColumnViewColumn):PGtkListItemFactory;
  begin
    { You must implement this function }
  end;
  procedure gtk_column_view_column_set_title(self:PGtkColumnViewColumn; title:Pchar);
  begin
    { You must implement this function }
  end;
  function gtk_column_view_column_get_title(self:PGtkColumnViewColumn):Pchar;
  begin
    { You must implement this function }
  end;
  procedure gtk_column_view_column_set_sorter(self:PGtkColumnViewColumn; sorter:PGtkSorter);
  begin
    { You must implement this function }
  end;
  function gtk_column_view_column_get_sorter(self:PGtkColumnViewColumn):PGtkSorter;
  begin
    { You must implement this function }
  end;
  procedure gtk_column_view_column_set_visible(self:PGtkColumnViewColumn; visible:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_column_view_column_get_visible(self:PGtkColumnViewColumn):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_column_view_column_set_header_menu(self:PGtkColumnViewColumn; menu:PGMenuModel);
  begin
    { You must implement this function }
  end;
  function gtk_column_view_column_get_header_menu(self:PGtkColumnViewColumn):PGMenuModel;
  begin
    { You must implement this function }
  end;
  procedure gtk_column_view_column_set_fixed_width(self:PGtkColumnViewColumn; fixed_width:longint);
  begin
    { You must implement this function }
  end;
  function gtk_column_view_column_get_fixed_width(self:PGtkColumnViewColumn):longint;
  begin
    { You must implement this function }
  end;
  procedure gtk_column_view_column_set_resizable(self:PGtkColumnViewColumn; resizable:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_column_view_column_get_resizable(self:PGtkColumnViewColumn):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_column_view_column_set_expand(self:PGtkColumnViewColumn; expand:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_column_view_column_get_expand(self:PGtkColumnViewColumn):gboolean;
  begin
    { You must implement this function }
  end;

