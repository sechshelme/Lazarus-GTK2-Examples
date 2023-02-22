
    Type
    Pchar  = ^char;
    PGMenuModel  = ^GMenuModel;
    PGtkLabel  = ^GtkLabel;
    PGtkWidget  = ^GtkWidget;
    Plongint  = ^longint;
    PPangoAttrList  = ^PangoAttrList;
    PPangoLayout  = ^PangoLayout;
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
{$ifndef __GTK_LABEL_H__}
{$define __GTK_LABEL_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_LABEL : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_LABEL(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_LABEL(obj : longint) : longint;  


  type
    _GtkLabel = GtkLabel;
  { Zeile entfernt  }

  function gtk_label_get_type:GType;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_label_new(str:Pchar):^GtkWidget;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_label_new_with_mnemonic(str:Pchar):^GtkWidget;

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_label_set_text(self:PGtkLabel; str:Pchar);

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_label_get_text(self:PGtkLabel):^char;

  { Zeile entfernt  }
  procedure gtk_label_set_attributes(self:PGtkLabel; attrs:PPangoAttrList);

  { Zeile entfernt  }
  function gtk_label_get_attributes(self:PGtkLabel):^PangoAttrList;

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_label_set_label(self:PGtkLabel; str:Pchar);

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_label_get_label(self:PGtkLabel):^char;

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_label_set_markup(self:PGtkLabel; str:Pchar);

  { Zeile entfernt  }
  procedure gtk_label_set_use_markup(self:PGtkLabel; setting:gboolean);

  { Zeile entfernt  }
  function gtk_label_get_use_markup(self:PGtkLabel):gboolean;

  { Zeile entfernt  }
  procedure gtk_label_set_use_underline(self:PGtkLabel; setting:gboolean);

  { Zeile entfernt  }
  function gtk_label_get_use_underline(self:PGtkLabel):gboolean;

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_label_set_markup_with_mnemonic(self:PGtkLabel; str:Pchar);

  { Zeile entfernt  }
  function gtk_label_get_mnemonic_keyval(self:PGtkLabel):guint;

  { Zeile entfernt  }
  procedure gtk_label_set_mnemonic_widget(self:PGtkLabel; widget:PGtkWidget);

  { Zeile entfernt  }
  function gtk_label_get_mnemonic_widget(self:PGtkLabel):^GtkWidget;

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_label_set_text_with_mnemonic(self:PGtkLabel; str:Pchar);

  { Zeile entfernt  }
  procedure gtk_label_set_justify(self:PGtkLabel; jtype:GtkJustification);

  { Zeile entfernt  }
  function gtk_label_get_justify(self:PGtkLabel):GtkJustification;

  { Zeile entfernt  }
  procedure gtk_label_set_ellipsize(self:PGtkLabel; mode:PangoEllipsizeMode);

  { Zeile entfernt  }
  function gtk_label_get_ellipsize(self:PGtkLabel):PangoEllipsizeMode;

  { Zeile entfernt  }
  procedure gtk_label_set_width_chars(self:PGtkLabel; n_chars:longint);

  { Zeile entfernt  }
  function gtk_label_get_width_chars(self:PGtkLabel):longint;

  { Zeile entfernt  }
  procedure gtk_label_set_max_width_chars(self:PGtkLabel; n_chars:longint);

  { Zeile entfernt  }
  function gtk_label_get_max_width_chars(self:PGtkLabel):longint;

  { Zeile entfernt  }
  procedure gtk_label_set_lines(self:PGtkLabel; lines:longint);

  { Zeile entfernt  }
  function gtk_label_get_lines(self:PGtkLabel):longint;

  { Zeile entfernt  }
  procedure gtk_label_set_wrap(self:PGtkLabel; wrap:gboolean);

  { Zeile entfernt  }
  function gtk_label_get_wrap(self:PGtkLabel):gboolean;

  { Zeile entfernt  }
  procedure gtk_label_set_wrap_mode(self:PGtkLabel; wrap_mode:PangoWrapMode);

  { Zeile entfernt  }
  function gtk_label_get_wrap_mode(self:PGtkLabel):PangoWrapMode;

  { Zeile entfernt  }
  procedure gtk_label_set_natural_wrap_mode(self:PGtkLabel; wrap_mode:GtkNaturalWrapMode);

  { Zeile entfernt  }
  function gtk_label_get_natural_wrap_mode(self:PGtkLabel):GtkNaturalWrapMode;

  { Zeile entfernt  }
  procedure gtk_label_set_selectable(self:PGtkLabel; setting:gboolean);

  { Zeile entfernt  }
  function gtk_label_get_selectable(self:PGtkLabel):gboolean;

  { Zeile entfernt  }
  procedure gtk_label_select_region(self:PGtkLabel; start_offset:longint; end_offset:longint);

  { Zeile entfernt  }
  function gtk_label_get_selection_bounds(self:PGtkLabel; start:Plongint; end:Plongint):gboolean;

  { Zeile entfernt  }
  function gtk_label_get_layout(self:PGtkLabel):^PangoLayout;

  { Zeile entfernt  }
  procedure gtk_label_get_layout_offsets(self:PGtkLabel; x:Plongint; y:Plongint);

  { Zeile entfernt  }
  procedure gtk_label_set_single_line_mode(self:PGtkLabel; single_line_mode:gboolean);

  { Zeile entfernt  }
  function gtk_label_get_single_line_mode(self:PGtkLabel):gboolean;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_label_get_current_uri(self:PGtkLabel):^char;

  { Zeile entfernt  }
  procedure gtk_label_set_xalign(self:PGtkLabel; xalign:single);

  { Zeile entfernt  }
  function gtk_label_get_xalign(self:PGtkLabel):single;

  { Zeile entfernt  }
  procedure gtk_label_set_yalign(self:PGtkLabel; yalign:single);

  { Zeile entfernt  }
  function gtk_label_get_yalign(self:PGtkLabel):single;

  { Zeile entfernt  }
  procedure gtk_label_set_extra_menu(self:PGtkLabel; model:PGMenuModel);

  { Zeile entfernt  }
  function gtk_label_get_extra_menu(self:PGtkLabel):^GMenuModel;

(* error 
void             gtk_label_set_tabs (GtkLabel      *self,
in declaration at line 182 *)
(* error 
PangoTabArray * gtk_label_get_tabs  (GtkLabel      *self);
 in declarator_list *)
    { Zeile entfernt  }
    { Zeile entfernt  }
{$endif}
    { __GTK_LABEL_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_LABEL : longint; { return type might be wrong }
    begin
      GTK_TYPE_LABEL:=gtk_label_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_LABEL(obj : longint) : longint;
  begin
    GTK_LABEL:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_LABEL,GtkLabel);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_LABEL(obj : longint) : longint;
  begin
    GTK_IS_LABEL:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_LABEL);
  end;

  function gtk_label_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gtk_label_new(str:Pchar):PGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_label_new_with_mnemonic(str:Pchar):PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_label_set_text(self:PGtkLabel; str:Pchar);
  begin
    { You must implement this function }
  end;
  function gtk_label_get_text(self:PGtkLabel):Pchar;
  begin
    { You must implement this function }
  end;
  procedure gtk_label_set_attributes(self:PGtkLabel; attrs:PPangoAttrList);
  begin
    { You must implement this function }
  end;
  function gtk_label_get_attributes(self:PGtkLabel):PPangoAttrList;
  begin
    { You must implement this function }
  end;
  procedure gtk_label_set_label(self:PGtkLabel; str:Pchar);
  begin
    { You must implement this function }
  end;
  function gtk_label_get_label(self:PGtkLabel):Pchar;
  begin
    { You must implement this function }
  end;
  procedure gtk_label_set_markup(self:PGtkLabel; str:Pchar);
  begin
    { You must implement this function }
  end;
  procedure gtk_label_set_use_markup(self:PGtkLabel; setting:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_label_get_use_markup(self:PGtkLabel):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_label_set_use_underline(self:PGtkLabel; setting:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_label_get_use_underline(self:PGtkLabel):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_label_set_markup_with_mnemonic(self:PGtkLabel; str:Pchar);
  begin
    { You must implement this function }
  end;
  function gtk_label_get_mnemonic_keyval(self:PGtkLabel):guint;
  begin
    { You must implement this function }
  end;
  procedure gtk_label_set_mnemonic_widget(self:PGtkLabel; widget:PGtkWidget);
  begin
    { You must implement this function }
  end;
  function gtk_label_get_mnemonic_widget(self:PGtkLabel):PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_label_set_text_with_mnemonic(self:PGtkLabel; str:Pchar);
  begin
    { You must implement this function }
  end;
  procedure gtk_label_set_justify(self:PGtkLabel; jtype:GtkJustification);
  begin
    { You must implement this function }
  end;
  function gtk_label_get_justify(self:PGtkLabel):GtkJustification;
  begin
    { You must implement this function }
  end;
  procedure gtk_label_set_ellipsize(self:PGtkLabel; mode:PangoEllipsizeMode);
  begin
    { You must implement this function }
  end;
  function gtk_label_get_ellipsize(self:PGtkLabel):PangoEllipsizeMode;
  begin
    { You must implement this function }
  end;
  procedure gtk_label_set_width_chars(self:PGtkLabel; n_chars:longint);
  begin
    { You must implement this function }
  end;
  function gtk_label_get_width_chars(self:PGtkLabel):longint;
  begin
    { You must implement this function }
  end;
  procedure gtk_label_set_max_width_chars(self:PGtkLabel; n_chars:longint);
  begin
    { You must implement this function }
  end;
  function gtk_label_get_max_width_chars(self:PGtkLabel):longint;
  begin
    { You must implement this function }
  end;
  procedure gtk_label_set_lines(self:PGtkLabel; lines:longint);
  begin
    { You must implement this function }
  end;
  function gtk_label_get_lines(self:PGtkLabel):longint;
  begin
    { You must implement this function }
  end;
  procedure gtk_label_set_wrap(self:PGtkLabel; wrap:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_label_get_wrap(self:PGtkLabel):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_label_set_wrap_mode(self:PGtkLabel; wrap_mode:PangoWrapMode);
  begin
    { You must implement this function }
  end;
  function gtk_label_get_wrap_mode(self:PGtkLabel):PangoWrapMode;
  begin
    { You must implement this function }
  end;
  procedure gtk_label_set_natural_wrap_mode(self:PGtkLabel; wrap_mode:GtkNaturalWrapMode);
  begin
    { You must implement this function }
  end;
  function gtk_label_get_natural_wrap_mode(self:PGtkLabel):GtkNaturalWrapMode;
  begin
    { You must implement this function }
  end;
  procedure gtk_label_set_selectable(self:PGtkLabel; setting:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_label_get_selectable(self:PGtkLabel):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_label_select_region(self:PGtkLabel; start_offset:longint; end_offset:longint);
  begin
    { You must implement this function }
  end;
  function gtk_label_get_selection_bounds(self:PGtkLabel; start:Plongint; end:Plongint):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_label_get_layout(self:PGtkLabel):PPangoLayout;
  begin
    { You must implement this function }
  end;
  procedure gtk_label_get_layout_offsets(self:PGtkLabel; x:Plongint; y:Plongint);
  begin
    { You must implement this function }
  end;
  procedure gtk_label_set_single_line_mode(self:PGtkLabel; single_line_mode:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_label_get_single_line_mode(self:PGtkLabel):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_label_get_current_uri(self:PGtkLabel):Pchar;
  begin
    { You must implement this function }
  end;
  procedure gtk_label_set_xalign(self:PGtkLabel; xalign:single);
  begin
    { You must implement this function }
  end;
  function gtk_label_get_xalign(self:PGtkLabel):single;
  begin
    { You must implement this function }
  end;
  procedure gtk_label_set_yalign(self:PGtkLabel; yalign:single);
  begin
    { You must implement this function }
  end;
  function gtk_label_get_yalign(self:PGtkLabel):single;
  begin
    { You must implement this function }
  end;
  procedure gtk_label_set_extra_menu(self:PGtkLabel; model:PGMenuModel);
  begin
    { You must implement this function }
  end;
  function gtk_label_get_extra_menu(self:PGtkLabel):PGMenuModel;
  begin
    { You must implement this function }
  end;

