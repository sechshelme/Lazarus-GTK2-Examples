
  Type
  Pchar  = ^char;
  PGdkPaintable  = ^GdkPaintable;
  PGdkRectangle  = ^GdkRectangle;
  PGIcon  = ^GIcon;
  PGtkTooltip  = ^GtkTooltip;
  PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { gtktooltip.h
   *
   * Copyright (C) 2006-2007 Imendio AB
   * Contact: Kristian Rietveld <kris@imendio.com>
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
{$ifndef __GTK_TOOLTIP_H__}
{$define __GTK_TOOLTIP_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwindow.h>}

  { was #define dname def_expr }
  function GTK_TYPE_TOOLTIP : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_TOOLTIP(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_TOOLTIP(obj : longint) : longint;  

  function gtk_tooltip_get_type:GType;

(* Const before type ignored *)
  procedure gtk_tooltip_set_markup(tooltip:PGtkTooltip; markup:Pchar);

(* Const before type ignored *)
  procedure gtk_tooltip_set_text(tooltip:PGtkTooltip; text:Pchar);

  procedure gtk_tooltip_set_icon(tooltip:PGtkTooltip; paintable:PGdkPaintable);

(* Const before type ignored *)
  procedure gtk_tooltip_set_icon_from_icon_name(tooltip:PGtkTooltip; icon_name:Pchar);

  procedure gtk_tooltip_set_icon_from_gicon(tooltip:PGtkTooltip; gicon:PGIcon);

  procedure gtk_tooltip_set_custom(tooltip:PGtkTooltip; custom_widget:PGtkWidget);

(* Const before type ignored *)
  procedure gtk_tooltip_set_tip_area(tooltip:PGtkTooltip; rect:PGdkRectangle);

{$endif}
  { __GTK_TOOLTIP_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_TOOLTIP : longint; { return type might be wrong }
    begin
      GTK_TYPE_TOOLTIP:=gtk_tooltip_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_TOOLTIP(obj : longint) : longint;
  begin
    GTK_TOOLTIP:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_TOOLTIP,GtkTooltip);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_TOOLTIP(obj : longint) : longint;
  begin
    GTK_IS_TOOLTIP:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_TOOLTIP);
  end;

  function gtk_tooltip_get_type:GType;
  begin
    { You must implement this function }
  end;
  procedure gtk_tooltip_set_markup(tooltip:PGtkTooltip; markup:Pchar);
  begin
    { You must implement this function }
  end;
  procedure gtk_tooltip_set_text(tooltip:PGtkTooltip; text:Pchar);
  begin
    { You must implement this function }
  end;
  procedure gtk_tooltip_set_icon(tooltip:PGtkTooltip; paintable:PGdkPaintable);
  begin
    { You must implement this function }
  end;
  procedure gtk_tooltip_set_icon_from_icon_name(tooltip:PGtkTooltip; icon_name:Pchar);
  begin
    { You must implement this function }
  end;
  procedure gtk_tooltip_set_icon_from_gicon(tooltip:PGtkTooltip; gicon:PGIcon);
  begin
    { You must implement this function }
  end;
  procedure gtk_tooltip_set_custom(tooltip:PGtkTooltip; custom_widget:PGtkWidget);
  begin
    { You must implement this function }
  end;
  procedure gtk_tooltip_set_tip_area(tooltip:PGtkTooltip; rect:PGdkRectangle);
  begin
    { You must implement this function }
  end;

