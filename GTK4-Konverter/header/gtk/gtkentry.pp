
  Type
  Pchar  = ^char;
  PGdkContentProvider  = ^GdkContentProvider;
  PGdkPaintable  = ^GdkPaintable;
  PGdkRectangle  = ^GdkRectangle;
  PGIcon  = ^GIcon;
  PGMenuModel  = ^GMenuModel;
  PGtkEntry  = ^GtkEntry;
  PGtkEntryBuffer  = ^GtkEntryBuffer;
  PGtkEntryCompletion  = ^GtkEntryCompletion;
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
{$ifndef __GTK_ENTRY_H__}
{$define __GTK_ENTRY_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkeditable.h>}
{$include <gtk/gtkimcontext.h>}
{$include <gtk/gtkentrybuffer.h>}
{$include <gtk/gtkentrycompletion.h>}
{$include <gtk/gtkimage.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_ENTRY : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_ENTRY(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_ENTRY_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_ENTRY(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_ENTRY_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_ENTRY_GET_CLASS(obj : longint) : longint;  

  {*
   * GtkEntryIconPosition:
   * @GTK_ENTRY_ICON_PRIMARY: At the beginning of the entry (depending on the text direction).
   * @GTK_ENTRY_ICON_SECONDARY: At the end of the entry (depending on the text direction).
   *
   * Specifies the side of the entry at which an icon is placed.
    }

  type
    GtkEntryIconPosition = (GTK_ENTRY_ICON_PRIMARY,GTK_ENTRY_ICON_SECONDARY
      );
    _GtkEntry = GtkEntry;
    _GtkEntryClass = GtkEntryClass;
  {< private > }
    _GtkEntry = record
        parent_instance : GtkWidget;
      end;

  {*
   * GtkEntryClass:
   * @parent_class: The parent class.
   * @activate: Class handler for the `GtkEntry::activate` signal. The default
   *   implementation activates the gtk.activate-default action.
   *
   * Class structure for `GtkEntry`. All virtual functions have a default
   * implementation. Derived classes may set the virtual function pointers for the
   * signal handlers to %NULL, but must keep @get_text_area_size and
   * @get_frame_size non-%NULL; either use the default implementation, or provide
   * a custom one.
    }
  { Action signals
      }
  {< private > }
    _GtkEntryClass = record
        parent_class : GtkWidgetClass;
        activate : procedure (entry:PGtkEntry);cdecl;
        padding : array[0..7] of gpointer;
      end;

  { Zeile entfernt  }

  function gtk_entry_get_type:GType;

  { Zeile entfernt  }
  function gtk_entry_new:^GtkWidget;

  { Zeile entfernt  }
  function gtk_entry_new_with_buffer(buffer:PGtkEntryBuffer):^GtkWidget;

  { Zeile entfernt  }
  function gtk_entry_get_buffer(entry:PGtkEntry):^GtkEntryBuffer;

  { Zeile entfernt  }
  procedure gtk_entry_set_buffer(entry:PGtkEntry; buffer:PGtkEntryBuffer);

  { Zeile entfernt  }
  procedure gtk_entry_set_visibility(entry:PGtkEntry; visible:gboolean);

  { Zeile entfernt  }
  function gtk_entry_get_visibility(entry:PGtkEntry):gboolean;

  { Zeile entfernt  }
  procedure gtk_entry_set_invisible_char(entry:PGtkEntry; ch:gunichar);

  { Zeile entfernt  }
  function gtk_entry_get_invisible_char(entry:PGtkEntry):gunichar;

  { Zeile entfernt  }
  procedure gtk_entry_unset_invisible_char(entry:PGtkEntry);

  { Zeile entfernt  }
  procedure gtk_entry_set_has_frame(entry:PGtkEntry; setting:gboolean);

  { Zeile entfernt  }
  function gtk_entry_get_has_frame(entry:PGtkEntry):gboolean;

  { Zeile entfernt  }
  procedure gtk_entry_set_overwrite_mode(entry:PGtkEntry; overwrite:gboolean);

  { Zeile entfernt  }
  function gtk_entry_get_overwrite_mode(entry:PGtkEntry):gboolean;

  { text is truncated if needed  }
  { Zeile entfernt  }
  procedure gtk_entry_set_max_length(entry:PGtkEntry; max:longint);

  { Zeile entfernt  }
  function gtk_entry_get_max_length(entry:PGtkEntry):longint;

  { Zeile entfernt  }
  function gtk_entry_get_text_length(entry:PGtkEntry):guint16;

  { Zeile entfernt  }
  procedure gtk_entry_set_activates_default(entry:PGtkEntry; setting:gboolean);

  { Zeile entfernt  }
  function gtk_entry_get_activates_default(entry:PGtkEntry):gboolean;

  { Zeile entfernt  }
  procedure gtk_entry_set_alignment(entry:PGtkEntry; xalign:single);

  { Zeile entfernt  }
  function gtk_entry_get_alignment(entry:PGtkEntry):single;

  { Zeile entfernt  }
  procedure gtk_entry_set_completion(entry:PGtkEntry; completion:PGtkEntryCompletion);

  { Zeile entfernt  }
  function gtk_entry_get_completion(entry:PGtkEntry):^GtkEntryCompletion;

  { Progress API
    }
  { Zeile entfernt  }
  procedure gtk_entry_set_progress_fraction(entry:PGtkEntry; fraction:double);

  { Zeile entfernt  }
  function gtk_entry_get_progress_fraction(entry:PGtkEntry):double;

  { Zeile entfernt  }
  procedure gtk_entry_set_progress_pulse_step(entry:PGtkEntry; fraction:double);

  { Zeile entfernt  }
  function gtk_entry_get_progress_pulse_step(entry:PGtkEntry):double;

  { Zeile entfernt  }
  procedure gtk_entry_progress_pulse(entry:PGtkEntry);

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_entry_get_placeholder_text(entry:PGtkEntry):^char;

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_entry_set_placeholder_text(entry:PGtkEntry; text:Pchar);

  { Setting and managing icons
    }
  { Zeile entfernt  }
  procedure gtk_entry_set_icon_from_paintable(entry:PGtkEntry; icon_pos:GtkEntryIconPosition; paintable:PGdkPaintable);

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_entry_set_icon_from_icon_name(entry:PGtkEntry; icon_pos:GtkEntryIconPosition; icon_name:Pchar);

  { Zeile entfernt  }
  procedure gtk_entry_set_icon_from_gicon(entry:PGtkEntry; icon_pos:GtkEntryIconPosition; icon:PGIcon);

  { Zeile entfernt  }
  function gtk_entry_get_icon_storage_type(entry:PGtkEntry; icon_pos:GtkEntryIconPosition):GtkImageType;

  { Zeile entfernt  }
  function gtk_entry_get_icon_paintable(entry:PGtkEntry; icon_pos:GtkEntryIconPosition):^GdkPaintable;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_entry_get_icon_name(entry:PGtkEntry; icon_pos:GtkEntryIconPosition):^char;

  { Zeile entfernt  }
  function gtk_entry_get_icon_gicon(entry:PGtkEntry; icon_pos:GtkEntryIconPosition):^GIcon;

  { Zeile entfernt  }
  procedure gtk_entry_set_icon_activatable(entry:PGtkEntry; icon_pos:GtkEntryIconPosition; activatable:gboolean);

  { Zeile entfernt  }
  function gtk_entry_get_icon_activatable(entry:PGtkEntry; icon_pos:GtkEntryIconPosition):gboolean;

  { Zeile entfernt  }
  procedure gtk_entry_set_icon_sensitive(entry:PGtkEntry; icon_pos:GtkEntryIconPosition; sensitive:gboolean);

  { Zeile entfernt  }
  function gtk_entry_get_icon_sensitive(entry:PGtkEntry; icon_pos:GtkEntryIconPosition):gboolean;

  { Zeile entfernt  }
  function gtk_entry_get_icon_at_pos(entry:PGtkEntry; x:longint; y:longint):longint;

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_entry_set_icon_tooltip_text(entry:PGtkEntry; icon_pos:GtkEntryIconPosition; tooltip:Pchar);

  { Zeile entfernt  }
  function gtk_entry_get_icon_tooltip_text(entry:PGtkEntry; icon_pos:GtkEntryIconPosition):^char;

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_entry_set_icon_tooltip_markup(entry:PGtkEntry; icon_pos:GtkEntryIconPosition; tooltip:Pchar);

  { Zeile entfernt  }
  function gtk_entry_get_icon_tooltip_markup(entry:PGtkEntry; icon_pos:GtkEntryIconPosition):^char;

  { Zeile entfernt  }
  procedure gtk_entry_set_icon_drag_source(entry:PGtkEntry; icon_pos:GtkEntryIconPosition; provider:PGdkContentProvider; actions:GdkDragAction);

  { Zeile entfernt  }
  function gtk_entry_get_current_icon_drag_source(entry:PGtkEntry):longint;

  { Zeile entfernt  }
  procedure gtk_entry_get_icon_area(entry:PGtkEntry; icon_pos:GtkEntryIconPosition; icon_area:PGdkRectangle);

  { Zeile entfernt  }
  procedure gtk_entry_reset_im_context(entry:PGtkEntry);

  { Zeile entfernt  }
  procedure gtk_entry_set_input_purpose(entry:PGtkEntry; purpose:GtkInputPurpose);

  { Zeile entfernt  }
  function gtk_entry_get_input_purpose(entry:PGtkEntry):GtkInputPurpose;

  { Zeile entfernt  }
  procedure gtk_entry_set_input_hints(entry:PGtkEntry; hints:GtkInputHints);

  { Zeile entfernt  }
  function gtk_entry_get_input_hints(entry:PGtkEntry):GtkInputHints;

  { Zeile entfernt  }
  procedure gtk_entry_set_attributes(entry:PGtkEntry; attrs:PPangoAttrList);

  { Zeile entfernt  }
  function gtk_entry_get_attributes(entry:PGtkEntry):^PangoAttrList;

  { Zeile entfernt  }
  procedure gtk_entry_set_tabs(entry:PGtkEntry; tabs:PPangoTabArray);

  { Zeile entfernt  }
  function gtk_entry_get_tabs(entry:PGtkEntry):^PangoTabArray;

  { Zeile entfernt  }
  function gtk_entry_grab_focus_without_selecting(entry:PGtkEntry):gboolean;

  { Zeile entfernt  }
  procedure gtk_entry_set_extra_menu(entry:PGtkEntry; model:PGMenuModel);

  { Zeile entfernt  }
  function gtk_entry_get_extra_menu(entry:PGtkEntry):^GMenuModel;

  { Zeile entfernt  }
{$endif}
  { __GTK_ENTRY_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_ENTRY : longint; { return type might be wrong }
    begin
      GTK_TYPE_ENTRY:=gtk_entry_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_ENTRY(obj : longint) : longint;
  begin
    GTK_ENTRY:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_ENTRY,GtkEntry);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_ENTRY_CLASS(klass : longint) : longint;
  begin
    GTK_ENTRY_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_ENTRY,GtkEntryClass);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_ENTRY(obj : longint) : longint;
  begin
    GTK_IS_ENTRY:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_ENTRY);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_ENTRY_CLASS(klass : longint) : longint;
  begin
    GTK_IS_ENTRY_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_ENTRY);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_ENTRY_GET_CLASS(obj : longint) : longint;
  begin
    GTK_ENTRY_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_ENTRY,GtkEntryClass);
  end;

  function gtk_entry_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gtk_entry_new:PGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_entry_new_with_buffer(buffer:PGtkEntryBuffer):PGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_entry_get_buffer(entry:PGtkEntry):PGtkEntryBuffer;
  begin
    { You must implement this function }
  end;
  procedure gtk_entry_set_buffer(entry:PGtkEntry; buffer:PGtkEntryBuffer);
  begin
    { You must implement this function }
  end;
  procedure gtk_entry_set_visibility(entry:PGtkEntry; visible:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_entry_get_visibility(entry:PGtkEntry):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_entry_set_invisible_char(entry:PGtkEntry; ch:gunichar);
  begin
    { You must implement this function }
  end;
  function gtk_entry_get_invisible_char(entry:PGtkEntry):gunichar;
  begin
    { You must implement this function }
  end;
  procedure gtk_entry_unset_invisible_char(entry:PGtkEntry);
  begin
    { You must implement this function }
  end;
  procedure gtk_entry_set_has_frame(entry:PGtkEntry; setting:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_entry_get_has_frame(entry:PGtkEntry):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_entry_set_overwrite_mode(entry:PGtkEntry; overwrite:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_entry_get_overwrite_mode(entry:PGtkEntry):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_entry_set_max_length(entry:PGtkEntry; max:longint);
  begin
    { You must implement this function }
  end;
  function gtk_entry_get_max_length(entry:PGtkEntry):longint;
  begin
    { You must implement this function }
  end;
  function gtk_entry_get_text_length(entry:PGtkEntry):guint16;
  begin
    { You must implement this function }
  end;
  procedure gtk_entry_set_activates_default(entry:PGtkEntry; setting:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_entry_get_activates_default(entry:PGtkEntry):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_entry_set_alignment(entry:PGtkEntry; xalign:single);
  begin
    { You must implement this function }
  end;
  function gtk_entry_get_alignment(entry:PGtkEntry):single;
  begin
    { You must implement this function }
  end;
  procedure gtk_entry_set_completion(entry:PGtkEntry; completion:PGtkEntryCompletion);
  begin
    { You must implement this function }
  end;
  function gtk_entry_get_completion(entry:PGtkEntry):PGtkEntryCompletion;
  begin
    { You must implement this function }
  end;
  procedure gtk_entry_set_progress_fraction(entry:PGtkEntry; fraction:double);
  begin
    { You must implement this function }
  end;
  function gtk_entry_get_progress_fraction(entry:PGtkEntry):double;
  begin
    { You must implement this function }
  end;
  procedure gtk_entry_set_progress_pulse_step(entry:PGtkEntry; fraction:double);
  begin
    { You must implement this function }
  end;
  function gtk_entry_get_progress_pulse_step(entry:PGtkEntry):double;
  begin
    { You must implement this function }
  end;
  procedure gtk_entry_progress_pulse(entry:PGtkEntry);
  begin
    { You must implement this function }
  end;
  function gtk_entry_get_placeholder_text(entry:PGtkEntry):Pchar;
  begin
    { You must implement this function }
  end;
  procedure gtk_entry_set_placeholder_text(entry:PGtkEntry; text:Pchar);
  begin
    { You must implement this function }
  end;
  procedure gtk_entry_set_icon_from_paintable(entry:PGtkEntry; icon_pos:GtkEntryIconPosition; paintable:PGdkPaintable);
  begin
    { You must implement this function }
  end;
  procedure gtk_entry_set_icon_from_icon_name(entry:PGtkEntry; icon_pos:GtkEntryIconPosition; icon_name:Pchar);
  begin
    { You must implement this function }
  end;
  procedure gtk_entry_set_icon_from_gicon(entry:PGtkEntry; icon_pos:GtkEntryIconPosition; icon:PGIcon);
  begin
    { You must implement this function }
  end;
  function gtk_entry_get_icon_storage_type(entry:PGtkEntry; icon_pos:GtkEntryIconPosition):GtkImageType;
  begin
    { You must implement this function }
  end;
  function gtk_entry_get_icon_paintable(entry:PGtkEntry; icon_pos:GtkEntryIconPosition):PGdkPaintable;
  begin
    { You must implement this function }
  end;
  function gtk_entry_get_icon_name(entry:PGtkEntry; icon_pos:GtkEntryIconPosition):Pchar;
  begin
    { You must implement this function }
  end;
  function gtk_entry_get_icon_gicon(entry:PGtkEntry; icon_pos:GtkEntryIconPosition):PGIcon;
  begin
    { You must implement this function }
  end;
  procedure gtk_entry_set_icon_activatable(entry:PGtkEntry; icon_pos:GtkEntryIconPosition; activatable:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_entry_get_icon_activatable(entry:PGtkEntry; icon_pos:GtkEntryIconPosition):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_entry_set_icon_sensitive(entry:PGtkEntry; icon_pos:GtkEntryIconPosition; sensitive:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_entry_get_icon_sensitive(entry:PGtkEntry; icon_pos:GtkEntryIconPosition):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_entry_get_icon_at_pos(entry:PGtkEntry; x:longint; y:longint):longint;
  begin
    { You must implement this function }
  end;
  procedure gtk_entry_set_icon_tooltip_text(entry:PGtkEntry; icon_pos:GtkEntryIconPosition; tooltip:Pchar);
  begin
    { You must implement this function }
  end;
  function gtk_entry_get_icon_tooltip_text(entry:PGtkEntry; icon_pos:GtkEntryIconPosition):Pchar;
  begin
    { You must implement this function }
  end;
  procedure gtk_entry_set_icon_tooltip_markup(entry:PGtkEntry; icon_pos:GtkEntryIconPosition; tooltip:Pchar);
  begin
    { You must implement this function }
  end;
  function gtk_entry_get_icon_tooltip_markup(entry:PGtkEntry; icon_pos:GtkEntryIconPosition):Pchar;
  begin
    { You must implement this function }
  end;
  procedure gtk_entry_set_icon_drag_source(entry:PGtkEntry; icon_pos:GtkEntryIconPosition; provider:PGdkContentProvider; actions:GdkDragAction);
  begin
    { You must implement this function }
  end;
  function gtk_entry_get_current_icon_drag_source(entry:PGtkEntry):longint;
  begin
    { You must implement this function }
  end;
  procedure gtk_entry_get_icon_area(entry:PGtkEntry; icon_pos:GtkEntryIconPosition; icon_area:PGdkRectangle);
  begin
    { You must implement this function }
  end;
  procedure gtk_entry_reset_im_context(entry:PGtkEntry);
  begin
    { You must implement this function }
  end;
  procedure gtk_entry_set_input_purpose(entry:PGtkEntry; purpose:GtkInputPurpose);
  begin
    { You must implement this function }
  end;
  function gtk_entry_get_input_purpose(entry:PGtkEntry):GtkInputPurpose;
  begin
    { You must implement this function }
  end;
  procedure gtk_entry_set_input_hints(entry:PGtkEntry; hints:GtkInputHints);
  begin
    { You must implement this function }
  end;
  function gtk_entry_get_input_hints(entry:PGtkEntry):GtkInputHints;
  begin
    { You must implement this function }
  end;
  procedure gtk_entry_set_attributes(entry:PGtkEntry; attrs:PPangoAttrList);
  begin
    { You must implement this function }
  end;
  function gtk_entry_get_attributes(entry:PGtkEntry):PPangoAttrList;
  begin
    { You must implement this function }
  end;
  procedure gtk_entry_set_tabs(entry:PGtkEntry; tabs:PPangoTabArray);
  begin
    { You must implement this function }
  end;
  function gtk_entry_get_tabs(entry:PGtkEntry):PPangoTabArray;
  begin
    { You must implement this function }
  end;
  function gtk_entry_grab_focus_without_selecting(entry:PGtkEntry):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_entry_set_extra_menu(entry:PGtkEntry; model:PGMenuModel);
  begin
    { You must implement this function }
  end;
  function gtk_entry_get_extra_menu(entry:PGtkEntry):PGMenuModel;
  begin
    { You must implement this function }
  end;

