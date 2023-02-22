
  Type
  Pchar  = ^char;
  PGtkCellArea  = ^GtkCellArea;
  PGtkEntryCompletion  = ^GtkEntryCompletion;
  PGtkTreeIter  = ^GtkTreeIter;
  PGtkTreeModel  = ^GtkTreeModel;
  PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { gtkentrycompletion.h
   * Copyright (C) 2003  Kristian Rietveld  <kris@gtk.org>
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
{$ifndef __GTK_ENTRY_COMPLETION_H__}
{$define __GTK_ENTRY_COMPLETION_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}
{$include <gtk/gtktreemodel.h>}
{$include <gtk/gtkliststore.h>}
{$include <gtk/gtkcellarea.h>}
{$include <gtk/gtktreeviewcolumn.h>}
{$include <gtk/gtktreemodelfilter.h>}

  { was #define dname def_expr }
  function GTK_TYPE_ENTRY_COMPLETION : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_ENTRY_COMPLETION(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_ENTRY_COMPLETION(obj : longint) : longint;  


  type
    _GtkEntryCompletion = GtkEntryCompletion;
  {*
   * GtkEntryCompletionMatchFunc:
   * @completion: the `GtkEntryCompletion`
   * @key: the string to match, normalized and case-folded
   * @iter: a `GtkTreeIter` indicating the row to match
   * @user_data: user data given to gtk_entry_completion_set_match_func()
   *
   * A function which decides whether the row indicated by @iter matches
   * a given @key, and should be displayed as a possible completion for @key.
   *
   * Note that @key is normalized and case-folded (see g_utf8_normalize()
   * and g_utf8_casefold()). If this is not appropriate, match functions
   * have access to the unmodified key via
   * `gtk_editable_get_text (GTK_EDITABLE (gtk_entry_completion_get_entry ()))`.
   *
   * Returns: %TRUE if @iter should be displayed as a possible completion
   *   for @key
    }
(* Const before type ignored *)

    GtkEntryCompletionMatchFunc = function (completion:PGtkEntryCompletion; key:Pchar; iter:PGtkTreeIter; user_data:gpointer):gboolean;cdecl;
(* error 
GType               gtk_entry_completion_get_type               (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;

  function gtk_entry_completion_new:^GtkEntryCompletion;

  function gtk_entry_completion_new_with_area(area:PGtkCellArea):^GtkEntryCompletion;

  function gtk_entry_completion_get_entry(completion:PGtkEntryCompletion):^GtkWidget;

  procedure gtk_entry_completion_set_model(completion:PGtkEntryCompletion; model:PGtkTreeModel);

  function gtk_entry_completion_get_model(completion:PGtkEntryCompletion):^GtkTreeModel;

  procedure gtk_entry_completion_set_match_func(completion:PGtkEntryCompletion; func:GtkEntryCompletionMatchFunc; func_data:gpointer; func_notify:GDestroyNotify);

  procedure gtk_entry_completion_set_minimum_key_length(completion:PGtkEntryCompletion; length:longint);

  function gtk_entry_completion_get_minimum_key_length(completion:PGtkEntryCompletion):longint;

(* Const before type ignored *)
  function gtk_entry_completion_compute_prefix(completion:PGtkEntryCompletion; key:Pchar):^char;

  procedure gtk_entry_completion_complete(completion:PGtkEntryCompletion);

  procedure gtk_entry_completion_insert_prefix(completion:PGtkEntryCompletion);

  procedure gtk_entry_completion_set_inline_completion(completion:PGtkEntryCompletion; inline_completion:gboolean);

  function gtk_entry_completion_get_inline_completion(completion:PGtkEntryCompletion):gboolean;

  procedure gtk_entry_completion_set_inline_selection(completion:PGtkEntryCompletion; inline_selection:gboolean);

  function gtk_entry_completion_get_inline_selection(completion:PGtkEntryCompletion):gboolean;

  procedure gtk_entry_completion_set_popup_completion(completion:PGtkEntryCompletion; popup_completion:gboolean);

  function gtk_entry_completion_get_popup_completion(completion:PGtkEntryCompletion):gboolean;

  procedure gtk_entry_completion_set_popup_set_width(completion:PGtkEntryCompletion; popup_set_width:gboolean);

  function gtk_entry_completion_get_popup_set_width(completion:PGtkEntryCompletion):gboolean;

  procedure gtk_entry_completion_set_popup_single_match(completion:PGtkEntryCompletion; popup_single_match:gboolean);

  function gtk_entry_completion_get_popup_single_match(completion:PGtkEntryCompletion):gboolean;

(* Const before type ignored *)
  function gtk_entry_completion_get_completion_prefix(completion:PGtkEntryCompletion):^char;

  { convenience  }
  procedure gtk_entry_completion_set_text_column(completion:PGtkEntryCompletion; column:longint);

  function gtk_entry_completion_get_text_column(completion:PGtkEntryCompletion):longint;

{$endif}
  { __GTK_ENTRY_COMPLETION_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_ENTRY_COMPLETION : longint; { return type might be wrong }
    begin
      GTK_TYPE_ENTRY_COMPLETION:=gtk_entry_completion_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_ENTRY_COMPLETION(obj : longint) : longint;
  begin
    GTK_ENTRY_COMPLETION:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_ENTRY_COMPLETION,GtkEntryCompletion);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_ENTRY_COMPLETION(obj : longint) : longint;
  begin
    GTK_IS_ENTRY_COMPLETION:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_ENTRY_COMPLETION);
  end;

  function gtk_entry_completion_new:PGtkEntryCompletion;
  begin
    { You must implement this function }
  end;
  function gtk_entry_completion_new_with_area(area:PGtkCellArea):PGtkEntryCompletion;
  begin
    { You must implement this function }
  end;
  function gtk_entry_completion_get_entry(completion:PGtkEntryCompletion):PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_entry_completion_set_model(completion:PGtkEntryCompletion; model:PGtkTreeModel);
  begin
    { You must implement this function }
  end;
  function gtk_entry_completion_get_model(completion:PGtkEntryCompletion):PGtkTreeModel;
  begin
    { You must implement this function }
  end;
  procedure gtk_entry_completion_set_match_func(completion:PGtkEntryCompletion; func:GtkEntryCompletionMatchFunc; func_data:gpointer; func_notify:GDestroyNotify);
  begin
    { You must implement this function }
  end;
  procedure gtk_entry_completion_set_minimum_key_length(completion:PGtkEntryCompletion; length:longint);
  begin
    { You must implement this function }
  end;
  function gtk_entry_completion_get_minimum_key_length(completion:PGtkEntryCompletion):longint;
  begin
    { You must implement this function }
  end;
  function gtk_entry_completion_compute_prefix(completion:PGtkEntryCompletion; key:Pchar):Pchar;
  begin
    { You must implement this function }
  end;
  procedure gtk_entry_completion_complete(completion:PGtkEntryCompletion);
  begin
    { You must implement this function }
  end;
  procedure gtk_entry_completion_insert_prefix(completion:PGtkEntryCompletion);
  begin
    { You must implement this function }
  end;
  procedure gtk_entry_completion_set_inline_completion(completion:PGtkEntryCompletion; inline_completion:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_entry_completion_get_inline_completion(completion:PGtkEntryCompletion):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_entry_completion_set_inline_selection(completion:PGtkEntryCompletion; inline_selection:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_entry_completion_get_inline_selection(completion:PGtkEntryCompletion):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_entry_completion_set_popup_completion(completion:PGtkEntryCompletion; popup_completion:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_entry_completion_get_popup_completion(completion:PGtkEntryCompletion):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_entry_completion_set_popup_set_width(completion:PGtkEntryCompletion; popup_set_width:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_entry_completion_get_popup_set_width(completion:PGtkEntryCompletion):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_entry_completion_set_popup_single_match(completion:PGtkEntryCompletion; popup_single_match:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_entry_completion_get_popup_single_match(completion:PGtkEntryCompletion):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_entry_completion_get_completion_prefix(completion:PGtkEntryCompletion):Pchar;
  begin
    { You must implement this function }
  end;
  procedure gtk_entry_completion_set_text_column(completion:PGtkEntryCompletion; column:longint);
  begin
    { You must implement this function }
  end;
  function gtk_entry_completion_get_text_column(completion:PGtkEntryCompletion):longint;
  begin
    { You must implement this function }
  end;

