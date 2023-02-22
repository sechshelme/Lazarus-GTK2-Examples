
    Type
    Pchar  = ^char;
    PGMenuModel  = ^GMenuModel;
    PGtkEntryBuffer  = ^GtkEntryBuffer;
    PGtkText  = ^GtkText;
    PGtkWidget  = ^GtkWidget;
    PPangoAttrList  = ^PangoAttrList;
    PPangoTabArray  = ^PangoTabArray;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GTK - The GIMP Toolkit
   * Copyright (C) 1995-1997 Peter Mattis, Spencer Kimball and Josh MacDonald
   *
   * Copyright (C) 2004-2006 Christian Hammond
   * Copyright (C) 2008 Cody Russell
   * Copyright (C) 2008 Red Hat, Inc.
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
{$ifndef __GTK_TEXT_H__}
{$define __GTK_TEXT_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkeditable.h>}
{$include <gtk/gtkentrybuffer.h>}

  { was #define dname def_expr }
  function GTK_TYPE_TEXT : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_TEXT(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_TEXT(obj : longint) : longint;  


  type
    _GtkText = GtkText;
  {< private > }
    _GtkText = record
        parent_instance : GtkWidget;
      end;

(* error 
GType           gtk_text_get_type                       (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;

  function gtk_text_new:^GtkWidget;

  function gtk_text_new_with_buffer(buffer:PGtkEntryBuffer):^GtkWidget;

  function gtk_text_get_buffer(self:PGtkText):^GtkEntryBuffer;

  procedure gtk_text_set_buffer(self:PGtkText; buffer:PGtkEntryBuffer);

  procedure gtk_text_set_visibility(self:PGtkText; visible:gboolean);

  function gtk_text_get_visibility(self:PGtkText):gboolean;

  procedure gtk_text_set_invisible_char(self:PGtkText; ch:gunichar);

  function gtk_text_get_invisible_char(self:PGtkText):gunichar;

  procedure gtk_text_unset_invisible_char(self:PGtkText);

  procedure gtk_text_set_overwrite_mode(self:PGtkText; overwrite:gboolean);

  function gtk_text_get_overwrite_mode(self:PGtkText):gboolean;

  procedure gtk_text_set_max_length(self:PGtkText; length:longint);

  function gtk_text_get_max_length(self:PGtkText):longint;

  function gtk_text_get_text_length(self:PGtkText):guint16;

  procedure gtk_text_set_activates_default(self:PGtkText; activates:gboolean);

  function gtk_text_get_activates_default(self:PGtkText):gboolean;

(* Const before type ignored *)
  function gtk_text_get_placeholder_text(self:PGtkText):^char;

(* Const before type ignored *)
  procedure gtk_text_set_placeholder_text(self:PGtkText; text:Pchar);

  procedure gtk_text_set_input_purpose(self:PGtkText; purpose:GtkInputPurpose);

  function gtk_text_get_input_purpose(self:PGtkText):GtkInputPurpose;

  procedure gtk_text_set_input_hints(self:PGtkText; hints:GtkInputHints);

  function gtk_text_get_input_hints(self:PGtkText):GtkInputHints;

  procedure gtk_text_set_attributes(self:PGtkText; attrs:PPangoAttrList);

  function gtk_text_get_attributes(self:PGtkText):^PangoAttrList;

  procedure gtk_text_set_tabs(self:PGtkText; tabs:PPangoTabArray);

  function gtk_text_get_tabs(self:PGtkText):^PangoTabArray;

  function gtk_text_grab_focus_without_selecting(self:PGtkText):gboolean;

  procedure gtk_text_set_extra_menu(self:PGtkText; model:PGMenuModel);

  function gtk_text_get_extra_menu(self:PGtkText):^GMenuModel;

  procedure gtk_text_set_enable_emoji_completion(self:PGtkText; enable_emoji_completion:gboolean);

  function gtk_text_get_enable_emoji_completion(self:PGtkText):gboolean;

  procedure gtk_text_set_propagate_text_width(self:PGtkText; propagate_text_width:gboolean);

  function gtk_text_get_propagate_text_width(self:PGtkText):gboolean;

  procedure gtk_text_set_truncate_multiline(self:PGtkText; truncate_multiline:gboolean);

  function gtk_text_get_truncate_multiline(self:PGtkText):gboolean;

(* error 
void            gtk_text_compute_cursor_extents         (GtkText         *self,
in declaration at line 166 *)
{$endif}
    { __GTK_TEXT_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_TEXT : longint; { return type might be wrong }
    begin
      GTK_TYPE_TEXT:=gtk_text_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_TEXT(obj : longint) : longint;
  begin
    GTK_TEXT:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_TEXT,GtkText);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_TEXT(obj : longint) : longint;
  begin
    GTK_IS_TEXT:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_TEXT);
  end;

  function gtk_text_new:PGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_text_new_with_buffer(buffer:PGtkEntryBuffer):PGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_text_get_buffer(self:PGtkText):PGtkEntryBuffer;
  begin
    { You must implement this function }
  end;
  procedure gtk_text_set_buffer(self:PGtkText; buffer:PGtkEntryBuffer);
  begin
    { You must implement this function }
  end;
  procedure gtk_text_set_visibility(self:PGtkText; visible:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_text_get_visibility(self:PGtkText):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_text_set_invisible_char(self:PGtkText; ch:gunichar);
  begin
    { You must implement this function }
  end;
  function gtk_text_get_invisible_char(self:PGtkText):gunichar;
  begin
    { You must implement this function }
  end;
  procedure gtk_text_unset_invisible_char(self:PGtkText);
  begin
    { You must implement this function }
  end;
  procedure gtk_text_set_overwrite_mode(self:PGtkText; overwrite:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_text_get_overwrite_mode(self:PGtkText):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_text_set_max_length(self:PGtkText; length:longint);
  begin
    { You must implement this function }
  end;
  function gtk_text_get_max_length(self:PGtkText):longint;
  begin
    { You must implement this function }
  end;
  function gtk_text_get_text_length(self:PGtkText):guint16;
  begin
    { You must implement this function }
  end;
  procedure gtk_text_set_activates_default(self:PGtkText; activates:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_text_get_activates_default(self:PGtkText):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_text_get_placeholder_text(self:PGtkText):Pchar;
  begin
    { You must implement this function }
  end;
  procedure gtk_text_set_placeholder_text(self:PGtkText; text:Pchar);
  begin
    { You must implement this function }
  end;
  procedure gtk_text_set_input_purpose(self:PGtkText; purpose:GtkInputPurpose);
  begin
    { You must implement this function }
  end;
  function gtk_text_get_input_purpose(self:PGtkText):GtkInputPurpose;
  begin
    { You must implement this function }
  end;
  procedure gtk_text_set_input_hints(self:PGtkText; hints:GtkInputHints);
  begin
    { You must implement this function }
  end;
  function gtk_text_get_input_hints(self:PGtkText):GtkInputHints;
  begin
    { You must implement this function }
  end;
  procedure gtk_text_set_attributes(self:PGtkText; attrs:PPangoAttrList);
  begin
    { You must implement this function }
  end;
  function gtk_text_get_attributes(self:PGtkText):PPangoAttrList;
  begin
    { You must implement this function }
  end;
  procedure gtk_text_set_tabs(self:PGtkText; tabs:PPangoTabArray);
  begin
    { You must implement this function }
  end;
  function gtk_text_get_tabs(self:PGtkText):PPangoTabArray;
  begin
    { You must implement this function }
  end;
  function gtk_text_grab_focus_without_selecting(self:PGtkText):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_text_set_extra_menu(self:PGtkText; model:PGMenuModel);
  begin
    { You must implement this function }
  end;
  function gtk_text_get_extra_menu(self:PGtkText):PGMenuModel;
  begin
    { You must implement this function }
  end;
  procedure gtk_text_set_enable_emoji_completion(self:PGtkText; enable_emoji_completion:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_text_get_enable_emoji_completion(self:PGtkText):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_text_set_propagate_text_width(self:PGtkText; propagate_text_width:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_text_get_propagate_text_width(self:PGtkText):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_text_set_truncate_multiline(self:PGtkText; truncate_multiline:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_text_get_truncate_multiline(self:PGtkText):gboolean;
  begin
    { You must implement this function }
  end;

