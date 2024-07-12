
unit gtkrange;
interface

{
  Automatically converted by H2Pas 1.0.0 from gtkrange.h
  The following command line parameters were used:
    -p
    -T
    -d
    -c
    -e
    gtkrange.h
}

{ Pointers to basic pascal types, inserted by h2pas conversion program.}
Type
  PLongint  = ^Longint;
  PSmallInt = ^SmallInt;
  PByte     = ^Byte;
  PWord     = ^Word;
  PDWord    = ^DWord;
  PDouble   = ^Double;

Type
PGdkRectangle  = ^GdkRectangle;
PGtkAdjustment  = ^GtkAdjustment;
PGtkBorder  = ^GtkBorder;
PGtkRange  = ^GtkRange;
PGtkRangeClass  = ^GtkRangeClass;
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
(** unsupported pragma#pragma once*)
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkborder.h>}
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
  PGtkRange = ^TGtkRange;
  TGtkRange = record
      parent_instance : TGtkWidget;
    end;

{ action signals for keybindings  }
{ Virtual functions  }
{< private >  }
  PGtkRangeClass = ^TGtkRangeClass;
  TGtkRangeClass = record
      parent_class : TGtkWidgetClass;
      value_changed : procedure (range:PGtkRange);cdecl;
      adjust_bounds : procedure (range:PGtkRange; new_value:Tdouble);cdecl;
      move_slider : procedure (range:PGtkRange; scroll:TGtkScrollType);cdecl;
      get_range_border : procedure (range:PGtkRange; border_:PGtkBorder);cdecl;
      change_value : function (range:PGtkRange; scroll:TGtkScrollType; new_value:Tdouble):Tgboolean;cdecl;
      padding : array[0..7] of Tgpointer;
    end;


function gtk_range_get_type:TGType;cdecl;external;
procedure gtk_range_set_adjustment(range:PGtkRange; adjustment:PGtkAdjustment);cdecl;external;
function gtk_range_get_adjustment(range:PGtkRange):PGtkAdjustment;cdecl;external;
procedure gtk_range_set_inverted(range:PGtkRange; setting:Tgboolean);cdecl;external;
function gtk_range_get_inverted(range:PGtkRange):Tgboolean;cdecl;external;
procedure gtk_range_set_flippable(range:PGtkRange; flippable:Tgboolean);cdecl;external;
function gtk_range_get_flippable(range:PGtkRange):Tgboolean;cdecl;external;
procedure gtk_range_set_slider_size_fixed(range:PGtkRange; size_fixed:Tgboolean);cdecl;external;
function gtk_range_get_slider_size_fixed(range:PGtkRange):Tgboolean;cdecl;external;
procedure gtk_range_get_range_rect(range:PGtkRange; range_rect:PGdkRectangle);cdecl;external;
procedure gtk_range_get_slider_range(range:PGtkRange; slider_start:Plongint; slider_end:Plongint);cdecl;external;
procedure gtk_range_set_increments(range:PGtkRange; step:Tdouble; page:Tdouble);cdecl;external;
procedure gtk_range_set_range(range:PGtkRange; min:Tdouble; max:Tdouble);cdecl;external;
procedure gtk_range_set_value(range:PGtkRange; value:Tdouble);cdecl;external;
function gtk_range_get_value(range:PGtkRange):Tdouble;cdecl;external;
procedure gtk_range_set_show_fill_level(range:PGtkRange; show_fill_level:Tgboolean);cdecl;external;
function gtk_range_get_show_fill_level(range:PGtkRange):Tgboolean;cdecl;external;
procedure gtk_range_set_restrict_to_fill_level(range:PGtkRange; restrict_to_fill_level:Tgboolean);cdecl;external;
function gtk_range_get_restrict_to_fill_level(range:PGtkRange):Tgboolean;cdecl;external;
procedure gtk_range_set_fill_level(range:PGtkRange; fill_level:Tdouble);cdecl;external;
function gtk_range_get_fill_level(range:PGtkRange):Tdouble;cdecl;external;
procedure gtk_range_set_round_digits(range:PGtkRange; round_digits:longint);cdecl;external;
function gtk_range_get_round_digits(range:PGtkRange):longint;cdecl;external;

implementation

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


end.
