
  Type
  PGdkRectangle  = ^GdkRectangle;
  PGtkAdjustment  = ^GtkAdjustment;
  PGtkBorder  = ^GtkBorder;
  PGtkRange  = ^GtkRange;
  Plongint  = ^longint;
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
{$ifndef __GTK_RANGE_H__}
{$define __GTK_RANGE_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}

  { was #define dname def_expr }
  function GTK_TYPE_RANGE : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_RANGE(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_RANGE_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_RANGE(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_RANGE_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_RANGE_GET_CLASS(obj : longint) : longint;  


  type
    _GtkRange = GtkRange;
    _GtkRangeClass = GtkRangeClass;
    _GtkRange = record
        parent_instance : GtkWidget;
      end;

  { action signals for keybindings  }
  { Virtual functions  }
  {< private >  }
    _GtkRangeClass = record
        parent_class : GtkWidgetClass;
        value_changed : procedure (range:PGtkRange);cdecl;
        adjust_bounds : procedure (range:PGtkRange; new_value:double);cdecl;
        move_slider : procedure (range:PGtkRange; scroll:GtkScrollType);cdecl;
        get_range_border : procedure (range:PGtkRange; border_:PGtkBorder);cdecl;
        change_value : function (range:PGtkRange; scroll:GtkScrollType; new_value:double):gboolean;cdecl;
        padding : array[0..7] of gpointer;
      end;

(* error 
GType              gtk_range_get_type                      (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;

  procedure gtk_range_set_adjustment(range:PGtkRange; adjustment:PGtkAdjustment);

  function gtk_range_get_adjustment(range:PGtkRange):^GtkAdjustment;

  procedure gtk_range_set_inverted(range:PGtkRange; setting:gboolean);

  function gtk_range_get_inverted(range:PGtkRange):gboolean;

  procedure gtk_range_set_flippable(range:PGtkRange; flippable:gboolean);

  function gtk_range_get_flippable(range:PGtkRange):gboolean;

  procedure gtk_range_set_slider_size_fixed(range:PGtkRange; size_fixed:gboolean);

  function gtk_range_get_slider_size_fixed(range:PGtkRange):gboolean;

  procedure gtk_range_get_range_rect(range:PGtkRange; range_rect:PGdkRectangle);

  procedure gtk_range_get_slider_range(range:PGtkRange; slider_start:Plongint; slider_end:Plongint);

  procedure gtk_range_set_increments(range:PGtkRange; step:double; page:double);

  procedure gtk_range_set_range(range:PGtkRange; min:double; max:double);

  procedure gtk_range_set_value(range:PGtkRange; value:double);

  function gtk_range_get_value(range:PGtkRange):double;

  procedure gtk_range_set_show_fill_level(range:PGtkRange; show_fill_level:gboolean);

  function gtk_range_get_show_fill_level(range:PGtkRange):gboolean;

  procedure gtk_range_set_restrict_to_fill_level(range:PGtkRange; restrict_to_fill_level:gboolean);

  function gtk_range_get_restrict_to_fill_level(range:PGtkRange):gboolean;

  procedure gtk_range_set_fill_level(range:PGtkRange; fill_level:double);

  function gtk_range_get_fill_level(range:PGtkRange):double;

  procedure gtk_range_set_round_digits(range:PGtkRange; round_digits:longint);

  function gtk_range_get_round_digits(range:PGtkRange):longint;

{$endif}
  { __GTK_RANGE_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_RANGE : longint; { return type might be wrong }
    begin
      GTK_TYPE_RANGE:=gtk_range_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_RANGE(obj : longint) : longint;
  begin
    GTK_RANGE:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_RANGE,GtkRange);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_RANGE_CLASS(klass : longint) : longint;
  begin
    GTK_RANGE_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_RANGE,GtkRangeClass);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_RANGE(obj : longint) : longint;
  begin
    GTK_IS_RANGE:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_RANGE);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_RANGE_CLASS(klass : longint) : longint;
  begin
    GTK_IS_RANGE_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_RANGE);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_RANGE_GET_CLASS(obj : longint) : longint;
  begin
    GTK_RANGE_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_RANGE,GtkRangeClass);
  end;

  procedure gtk_range_set_adjustment(range:PGtkRange; adjustment:PGtkAdjustment);
  begin
    { You must implement this function }
  end;
  function gtk_range_get_adjustment(range:PGtkRange):PGtkAdjustment;
  begin
    { You must implement this function }
  end;
  procedure gtk_range_set_inverted(range:PGtkRange; setting:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_range_get_inverted(range:PGtkRange):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_range_set_flippable(range:PGtkRange; flippable:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_range_get_flippable(range:PGtkRange):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_range_set_slider_size_fixed(range:PGtkRange; size_fixed:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_range_get_slider_size_fixed(range:PGtkRange):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_range_get_range_rect(range:PGtkRange; range_rect:PGdkRectangle);
  begin
    { You must implement this function }
  end;
  procedure gtk_range_get_slider_range(range:PGtkRange; slider_start:Plongint; slider_end:Plongint);
  begin
    { You must implement this function }
  end;
  procedure gtk_range_set_increments(range:PGtkRange; step:double; page:double);
  begin
    { You must implement this function }
  end;
  procedure gtk_range_set_range(range:PGtkRange; min:double; max:double);
  begin
    { You must implement this function }
  end;
  procedure gtk_range_set_value(range:PGtkRange; value:double);
  begin
    { You must implement this function }
  end;
  function gtk_range_get_value(range:PGtkRange):double;
  begin
    { You must implement this function }
  end;
  procedure gtk_range_set_show_fill_level(range:PGtkRange; show_fill_level:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_range_get_show_fill_level(range:PGtkRange):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_range_set_restrict_to_fill_level(range:PGtkRange; restrict_to_fill_level:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_range_get_restrict_to_fill_level(range:PGtkRange):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_range_set_fill_level(range:PGtkRange; fill_level:double);
  begin
    { You must implement this function }
  end;
  function gtk_range_get_fill_level(range:PGtkRange):double;
  begin
    { You must implement this function }
  end;
  procedure gtk_range_set_round_digits(range:PGtkRange; round_digits:longint);
  begin
    { You must implement this function }
  end;
  function gtk_range_get_round_digits(range:PGtkRange):longint;
  begin
    { You must implement this function }
  end;

