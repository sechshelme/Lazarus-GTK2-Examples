
  Type
  Pchar  = ^char;
  PGtkAdjustment  = ^GtkAdjustment;
  PGtkScale  = ^GtkScale;
  PGtkWidget  = ^GtkWidget;
  Plongint  = ^longint;
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
{$ifndef __GTK_SCALE_H__}
{$define __GTK_SCALE_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkrange.h>}

  { was #define dname def_expr }
  function GTK_TYPE_SCALE : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_SCALE(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_SCALE_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_SCALE(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_SCALE_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_SCALE_GET_CLASS(obj : longint) : longint;  


  type
    _GtkScale = GtkScale;
    _GtkScaleClass = GtkScaleClass;
    _GtkScale = record
        parent_instance : GtkRange;
      end;

  {< private > }
    _GtkScaleClass = record
        parent_class : GtkRangeClass;
        get_layout_offsets : procedure (scale:PGtkScale; x:Plongint; y:Plongint);cdecl;
        padding : array[0..7] of gpointer;
      end;

  {*
   * GtkScaleFormatValueFunc:
   * @scale: The `GtkScale`
   * @value: The numeric value to format
   * @user_data: (closure): user data
   *
   * Returns: (not nullable): A newly allocated string describing a textual representation
   *   of the given numerical value.
    }

    GtkScaleFormatValueFunc = function (scale:PGtkScale; value:double; user_data:gpointer):Pchar;cdecl;
(* error 
GType             gtk_scale_get_type           (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;

  function gtk_scale_new(orientation:GtkOrientation; adjustment:PGtkAdjustment):^GtkWidget;

  function gtk_scale_new_with_range(orientation:GtkOrientation; min:double; max:double; step:double):^GtkWidget;

  procedure gtk_scale_set_digits(scale:PGtkScale; digits:longint);

  function gtk_scale_get_digits(scale:PGtkScale):longint;

  procedure gtk_scale_set_draw_value(scale:PGtkScale; draw_value:gboolean);

  function gtk_scale_get_draw_value(scale:PGtkScale):gboolean;

  procedure gtk_scale_set_has_origin(scale:PGtkScale; has_origin:gboolean);

  function gtk_scale_get_has_origin(scale:PGtkScale):gboolean;

  procedure gtk_scale_set_value_pos(scale:PGtkScale; pos:GtkPositionType);

  function gtk_scale_get_value_pos(scale:PGtkScale):GtkPositionType;

  function gtk_scale_get_layout(scale:PGtkScale):^PangoLayout;

  procedure gtk_scale_get_layout_offsets(scale:PGtkScale; x:Plongint; y:Plongint);

(* Const before type ignored *)
  procedure gtk_scale_add_mark(scale:PGtkScale; value:double; position:GtkPositionType; markup:Pchar);

  procedure gtk_scale_clear_marks(scale:PGtkScale);

  procedure gtk_scale_set_format_value_func(scale:PGtkScale; func:GtkScaleFormatValueFunc; user_data:gpointer; destroy_notify:GDestroyNotify);

{$endif}
  { __GTK_SCALE_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_SCALE : longint; { return type might be wrong }
    begin
      GTK_TYPE_SCALE:=gtk_scale_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_SCALE(obj : longint) : longint;
  begin
    GTK_SCALE:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_SCALE,GtkScale);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_SCALE_CLASS(klass : longint) : longint;
  begin
    GTK_SCALE_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_SCALE,GtkScaleClass);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_SCALE(obj : longint) : longint;
  begin
    GTK_IS_SCALE:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_SCALE);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_SCALE_CLASS(klass : longint) : longint;
  begin
    GTK_IS_SCALE_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_SCALE);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_SCALE_GET_CLASS(obj : longint) : longint;
  begin
    GTK_SCALE_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_SCALE,GtkScaleClass);
  end;

  function gtk_scale_new(orientation:GtkOrientation; adjustment:PGtkAdjustment):PGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_scale_new_with_range(orientation:GtkOrientation; min:double; max:double; step:double):PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_scale_set_digits(scale:PGtkScale; digits:longint);
  begin
    { You must implement this function }
  end;
  function gtk_scale_get_digits(scale:PGtkScale):longint;
  begin
    { You must implement this function }
  end;
  procedure gtk_scale_set_draw_value(scale:PGtkScale; draw_value:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_scale_get_draw_value(scale:PGtkScale):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_scale_set_has_origin(scale:PGtkScale; has_origin:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_scale_get_has_origin(scale:PGtkScale):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_scale_set_value_pos(scale:PGtkScale; pos:GtkPositionType);
  begin
    { You must implement this function }
  end;
  function gtk_scale_get_value_pos(scale:PGtkScale):GtkPositionType;
  begin
    { You must implement this function }
  end;
  function gtk_scale_get_layout(scale:PGtkScale):PPangoLayout;
  begin
    { You must implement this function }
  end;
  procedure gtk_scale_get_layout_offsets(scale:PGtkScale; x:Plongint; y:Plongint);
  begin
    { You must implement this function }
  end;
  procedure gtk_scale_add_mark(scale:PGtkScale; value:double; position:GtkPositionType; markup:Pchar);
  begin
    { You must implement this function }
  end;
  procedure gtk_scale_clear_marks(scale:PGtkScale);
  begin
    { You must implement this function }
  end;
  procedure gtk_scale_set_format_value_func(scale:PGtkScale; func:GtkScaleFormatValueFunc; user_data:gpointer; destroy_notify:GDestroyNotify);
  begin
    { You must implement this function }
  end;

