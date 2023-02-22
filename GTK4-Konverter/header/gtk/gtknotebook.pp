
  Type
  Pchar  = ^char;
  PGListModel  = ^GListModel;
  PGtkNotebook  = ^GtkNotebook;
  PGtkNotebookPage  = ^GtkNotebookPage;
  PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { -*- Mode: C; c-file-style: "gnu"; tab-width: 8 -*-  }
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
{$ifndef __GTK_NOTEBOOK_H__}
{$define __GTK_NOTEBOOK_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}

  { was #define dname def_expr }
  function GTK_TYPE_NOTEBOOK : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_NOTEBOOK(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_NOTEBOOK(obj : longint) : longint;  

  { was #define dname def_expr }
  function GTK_TYPE_NOTEBOOK_PAGE : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_NOTEBOOK_PAGE(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_NOTEBOOK_PAGE(obj : longint) : longint;  


  type
    _GtkNotebookPage = GtkNotebookPage;
  {*
   * GtkNotebookTab:
   * @GTK_NOTEBOOK_TAB_FIRST: the first tab in the notebook
   * @GTK_NOTEBOOK_TAB_LAST: the last tab in the notebook
   *
   * The parameter used in the action signals of `GtkNotebook`.
    }

    GtkNotebookTab = (GTK_NOTEBOOK_TAB_FIRST,GTK_NOTEBOOK_TAB_LAST
      );
    _GtkNotebook = GtkNotebook;
  {**********************************************************
   *           Creation, insertion, deletion                 *
   ********************************************************** }
(* error 
GType   gtk_notebook_get_type       (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;

  function gtk_notebook_new:^GtkWidget;

  function gtk_notebook_append_page(notebook:PGtkNotebook; child:PGtkWidget; tab_label:PGtkWidget):longint;

  function gtk_notebook_append_page_menu(notebook:PGtkNotebook; child:PGtkWidget; tab_label:PGtkWidget; menu_label:PGtkWidget):longint;

  function gtk_notebook_prepend_page(notebook:PGtkNotebook; child:PGtkWidget; tab_label:PGtkWidget):longint;

  function gtk_notebook_prepend_page_menu(notebook:PGtkNotebook; child:PGtkWidget; tab_label:PGtkWidget; menu_label:PGtkWidget):longint;

  function gtk_notebook_insert_page(notebook:PGtkNotebook; child:PGtkWidget; tab_label:PGtkWidget; position:longint):longint;

  function gtk_notebook_insert_page_menu(notebook:PGtkNotebook; child:PGtkWidget; tab_label:PGtkWidget; menu_label:PGtkWidget; position:longint):longint;

  procedure gtk_notebook_remove_page(notebook:PGtkNotebook; page_num:longint);

  {**********************************************************
   *           Tabs drag and drop                            *
   ********************************************************** }
(* Const before type ignored *)
  procedure gtk_notebook_set_group_name(notebook:PGtkNotebook; group_name:Pchar);

(* Const before type ignored *)
  function gtk_notebook_get_group_name(notebook:PGtkNotebook):^char;

  {**********************************************************
   *            query, set current NotebookPage              *
   ********************************************************** }
  function gtk_notebook_get_current_page(notebook:PGtkNotebook):longint;

  function gtk_notebook_get_nth_page(notebook:PGtkNotebook; page_num:longint):^GtkWidget;

  function gtk_notebook_get_n_pages(notebook:PGtkNotebook):longint;

  function gtk_notebook_page_num(notebook:PGtkNotebook; child:PGtkWidget):longint;

  procedure gtk_notebook_set_current_page(notebook:PGtkNotebook; page_num:longint);

  procedure gtk_notebook_next_page(notebook:PGtkNotebook);

  procedure gtk_notebook_prev_page(notebook:PGtkNotebook);

  {**********************************************************
   *            set Notebook, NotebookTab style              *
   ********************************************************** }
  procedure gtk_notebook_set_show_border(notebook:PGtkNotebook; show_border:gboolean);

  function gtk_notebook_get_show_border(notebook:PGtkNotebook):gboolean;

  procedure gtk_notebook_set_show_tabs(notebook:PGtkNotebook; show_tabs:gboolean);

  function gtk_notebook_get_show_tabs(notebook:PGtkNotebook):gboolean;

  procedure gtk_notebook_set_tab_pos(notebook:PGtkNotebook; pos:GtkPositionType);

  function gtk_notebook_get_tab_pos(notebook:PGtkNotebook):GtkPositionType;

  procedure gtk_notebook_set_scrollable(notebook:PGtkNotebook; scrollable:gboolean);

  function gtk_notebook_get_scrollable(notebook:PGtkNotebook):gboolean;

  {**********************************************************
   *               enable/disable PopupMenu                  *
   ********************************************************** }
  procedure gtk_notebook_popup_enable(notebook:PGtkNotebook);

  procedure gtk_notebook_popup_disable(notebook:PGtkNotebook);

  {**********************************************************
   *             query/set NotebookPage Properties           *
   ********************************************************** }
  function gtk_notebook_get_tab_label(notebook:PGtkNotebook; child:PGtkWidget):^GtkWidget;

  procedure gtk_notebook_set_tab_label(notebook:PGtkNotebook; child:PGtkWidget; tab_label:PGtkWidget);

(* Const before type ignored *)
  procedure gtk_notebook_set_tab_label_text(notebook:PGtkNotebook; child:PGtkWidget; tab_text:Pchar);

(* Const before type ignored *)
  function gtk_notebook_get_tab_label_text(notebook:PGtkNotebook; child:PGtkWidget):^char;

  function gtk_notebook_get_menu_label(notebook:PGtkNotebook; child:PGtkWidget):^GtkWidget;

  procedure gtk_notebook_set_menu_label(notebook:PGtkNotebook; child:PGtkWidget; menu_label:PGtkWidget);

(* Const before type ignored *)
  procedure gtk_notebook_set_menu_label_text(notebook:PGtkNotebook; child:PGtkWidget; menu_text:Pchar);

(* Const before type ignored *)
  function gtk_notebook_get_menu_label_text(notebook:PGtkNotebook; child:PGtkWidget):^char;

  procedure gtk_notebook_reorder_child(notebook:PGtkNotebook; child:PGtkWidget; position:longint);

  function gtk_notebook_get_tab_reorderable(notebook:PGtkNotebook; child:PGtkWidget):gboolean;

  procedure gtk_notebook_set_tab_reorderable(notebook:PGtkNotebook; child:PGtkWidget; reorderable:gboolean);

  function gtk_notebook_get_tab_detachable(notebook:PGtkNotebook; child:PGtkWidget):gboolean;

  procedure gtk_notebook_set_tab_detachable(notebook:PGtkNotebook; child:PGtkWidget; detachable:gboolean);

  procedure gtk_notebook_detach_tab(notebook:PGtkNotebook; child:PGtkWidget);

  function gtk_notebook_get_action_widget(notebook:PGtkNotebook; pack_type:GtkPackType):^GtkWidget;

  procedure gtk_notebook_set_action_widget(notebook:PGtkNotebook; widget:PGtkWidget; pack_type:GtkPackType);

(* error 
GType   gtk_notebook_page_get_type  (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;

  function gtk_notebook_get_page(notebook:PGtkNotebook; child:PGtkWidget):^GtkNotebookPage;

  function gtk_notebook_page_get_child(page:PGtkNotebookPage):^GtkWidget;

  function gtk_notebook_get_pages(notebook:PGtkNotebook):^GListModel;

{$endif}
  { __GTK_NOTEBOOK_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_NOTEBOOK : longint; { return type might be wrong }
    begin
      GTK_TYPE_NOTEBOOK:=gtk_notebook_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_NOTEBOOK(obj : longint) : longint;
  begin
    GTK_NOTEBOOK:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_NOTEBOOK,GtkNotebook);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_NOTEBOOK(obj : longint) : longint;
  begin
    GTK_IS_NOTEBOOK:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_NOTEBOOK);
  end;

  { was #define dname def_expr }
  function GTK_TYPE_NOTEBOOK_PAGE : longint; { return type might be wrong }
    begin
      GTK_TYPE_NOTEBOOK_PAGE:=gtk_notebook_page_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_NOTEBOOK_PAGE(obj : longint) : longint;
  begin
    GTK_NOTEBOOK_PAGE:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_NOTEBOOK_PAGE,GtkNotebookPage);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_NOTEBOOK_PAGE(obj : longint) : longint;
  begin
    GTK_IS_NOTEBOOK_PAGE:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_NOTEBOOK_PAGE);
  end;

  function gtk_notebook_new:PGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_notebook_append_page(notebook:PGtkNotebook; child:PGtkWidget; tab_label:PGtkWidget):longint;
  begin
    { You must implement this function }
  end;
  function gtk_notebook_append_page_menu(notebook:PGtkNotebook; child:PGtkWidget; tab_label:PGtkWidget; menu_label:PGtkWidget):longint;
  begin
    { You must implement this function }
  end;
  function gtk_notebook_prepend_page(notebook:PGtkNotebook; child:PGtkWidget; tab_label:PGtkWidget):longint;
  begin
    { You must implement this function }
  end;
  function gtk_notebook_prepend_page_menu(notebook:PGtkNotebook; child:PGtkWidget; tab_label:PGtkWidget; menu_label:PGtkWidget):longint;
  begin
    { You must implement this function }
  end;
  function gtk_notebook_insert_page(notebook:PGtkNotebook; child:PGtkWidget; tab_label:PGtkWidget; position:longint):longint;
  begin
    { You must implement this function }
  end;
  function gtk_notebook_insert_page_menu(notebook:PGtkNotebook; child:PGtkWidget; tab_label:PGtkWidget; menu_label:PGtkWidget; position:longint):longint;
  begin
    { You must implement this function }
  end;
  procedure gtk_notebook_remove_page(notebook:PGtkNotebook; page_num:longint);
  begin
    { You must implement this function }
  end;
  procedure gtk_notebook_set_group_name(notebook:PGtkNotebook; group_name:Pchar);
  begin
    { You must implement this function }
  end;
  function gtk_notebook_get_group_name(notebook:PGtkNotebook):Pchar;
  begin
    { You must implement this function }
  end;
  function gtk_notebook_get_current_page(notebook:PGtkNotebook):longint;
  begin
    { You must implement this function }
  end;
  function gtk_notebook_get_nth_page(notebook:PGtkNotebook; page_num:longint):PGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_notebook_get_n_pages(notebook:PGtkNotebook):longint;
  begin
    { You must implement this function }
  end;
  function gtk_notebook_page_num(notebook:PGtkNotebook; child:PGtkWidget):longint;
  begin
    { You must implement this function }
  end;
  procedure gtk_notebook_set_current_page(notebook:PGtkNotebook; page_num:longint);
  begin
    { You must implement this function }
  end;
  procedure gtk_notebook_next_page(notebook:PGtkNotebook);
  begin
    { You must implement this function }
  end;
  procedure gtk_notebook_prev_page(notebook:PGtkNotebook);
  begin
    { You must implement this function }
  end;
  procedure gtk_notebook_set_show_border(notebook:PGtkNotebook; show_border:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_notebook_get_show_border(notebook:PGtkNotebook):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_notebook_set_show_tabs(notebook:PGtkNotebook; show_tabs:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_notebook_get_show_tabs(notebook:PGtkNotebook):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_notebook_set_tab_pos(notebook:PGtkNotebook; pos:GtkPositionType);
  begin
    { You must implement this function }
  end;
  function gtk_notebook_get_tab_pos(notebook:PGtkNotebook):GtkPositionType;
  begin
    { You must implement this function }
  end;
  procedure gtk_notebook_set_scrollable(notebook:PGtkNotebook; scrollable:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_notebook_get_scrollable(notebook:PGtkNotebook):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_notebook_popup_enable(notebook:PGtkNotebook);
  begin
    { You must implement this function }
  end;
  procedure gtk_notebook_popup_disable(notebook:PGtkNotebook);
  begin
    { You must implement this function }
  end;
  function gtk_notebook_get_tab_label(notebook:PGtkNotebook; child:PGtkWidget):PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_notebook_set_tab_label(notebook:PGtkNotebook; child:PGtkWidget; tab_label:PGtkWidget);
  begin
    { You must implement this function }
  end;
  procedure gtk_notebook_set_tab_label_text(notebook:PGtkNotebook; child:PGtkWidget; tab_text:Pchar);
  begin
    { You must implement this function }
  end;
  function gtk_notebook_get_tab_label_text(notebook:PGtkNotebook; child:PGtkWidget):Pchar;
  begin
    { You must implement this function }
  end;
  function gtk_notebook_get_menu_label(notebook:PGtkNotebook; child:PGtkWidget):PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_notebook_set_menu_label(notebook:PGtkNotebook; child:PGtkWidget; menu_label:PGtkWidget);
  begin
    { You must implement this function }
  end;
  procedure gtk_notebook_set_menu_label_text(notebook:PGtkNotebook; child:PGtkWidget; menu_text:Pchar);
  begin
    { You must implement this function }
  end;
  function gtk_notebook_get_menu_label_text(notebook:PGtkNotebook; child:PGtkWidget):Pchar;
  begin
    { You must implement this function }
  end;
  procedure gtk_notebook_reorder_child(notebook:PGtkNotebook; child:PGtkWidget; position:longint);
  begin
    { You must implement this function }
  end;
  function gtk_notebook_get_tab_reorderable(notebook:PGtkNotebook; child:PGtkWidget):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_notebook_set_tab_reorderable(notebook:PGtkNotebook; child:PGtkWidget; reorderable:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_notebook_get_tab_detachable(notebook:PGtkNotebook; child:PGtkWidget):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_notebook_set_tab_detachable(notebook:PGtkNotebook; child:PGtkWidget; detachable:gboolean);
  begin
    { You must implement this function }
  end;
  procedure gtk_notebook_detach_tab(notebook:PGtkNotebook; child:PGtkWidget);
  begin
    { You must implement this function }
  end;
  function gtk_notebook_get_action_widget(notebook:PGtkNotebook; pack_type:GtkPackType):PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_notebook_set_action_widget(notebook:PGtkNotebook; widget:PGtkWidget; pack_type:GtkPackType);
  begin
    { You must implement this function }
  end;
  function gtk_notebook_get_page(notebook:PGtkNotebook; child:PGtkWidget):PGtkNotebookPage;
  begin
    { You must implement this function }
  end;
  function gtk_notebook_page_get_child(page:PGtkNotebookPage):PGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_notebook_get_pages(notebook:PGtkNotebook):PGListModel;
  begin
    { You must implement this function }
  end;

