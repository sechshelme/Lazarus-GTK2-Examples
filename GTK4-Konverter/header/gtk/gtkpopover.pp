
  Type
  PGdkRectangle  = ^GdkRectangle;
  PGtkPopover  = ^GtkPopover;
  PGtkWidget  = ^GtkWidget;
  Plongint  = ^longint;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GTK - The GIMP Toolkit
   * Copyright (C) 2019 Red Hat, Inc.
   *
   * Authors:
   * - Matthias Clasen <mclasen@redhat.com>
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
{$ifndef __GTK_POPOVER_H__}
{$define __GTK_POPOVER_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}

  { was #define dname def_expr }
  function GTK_TYPE_POPOVER : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_POPOVER(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_POPOVER_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_POPOVER(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_POPOVER_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_POPOVER_GET_CLASS(obj : longint) : longint;  


  type
    _GtkPopover = GtkPopover;
    _GtkPopoverClass = GtkPopoverClass;
    _GtkPopover = record
        parent : GtkWidget;
      end;

  {< private > }
    _GtkPopoverClass = record
        parent_class : GtkWidgetClass;
        closed : procedure (popover:PGtkPopover);cdecl;
        activate_default : procedure (popover:PGtkPopover);cdecl;
        reserved : array[0..7] of gpointer;
      end;

(* error 
GType           gtk_popover_get_type (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;

  function gtk_popover_new:^GtkWidget;

  procedure gtk_popover_set_child(popover:PGtkPopover; child:PGtkWidget);

  function gtk_popover_get_child(popover:PGtkPopover):^GtkWidget;

(* Const before type ignored *)
  procedure gtk_popover_set_pointing_to(popover:PGtkPopover; rect:PGdkRectangle);

  function gtk_popover_get_pointing_to(popover:PGtkPopover; rect:PGdkRectangle):gboolean;

  procedure gtk_popover_set_position(popover:PGtkPopover; position:GtkPositionType);

  function gtk_popover_get_position(popover:PGtkPopover):GtkPositionType;

  procedure gtk_popover_set_autohide(popover:PGtkPopover; autohide:gboolean);

  function gtk_popover_get_autohide(popover:PGtkPopover):gboolean;

  procedure gtk_popover_set_has_arrow(popover:PGtkPopover; has_arrow:gboolean);

  function gtk_popover_get_has_arrow(popover:PGtkPopover):gboolean;

  procedure gtk_popover_set_mnemonics_visible(popover:PGtkPopover; mnemonics_visible:gboolean);

  function gtk_popover_get_mnemonics_visible(popover:PGtkPopover):gboolean;

  procedure gtk_popover_popup(popover:PGtkPopover);

  procedure gtk_popover_popdown(popover:PGtkPopover);

  procedure gtk_popover_set_offset(popover:PGtkPopover; x_offset:longint; y_offset:longint);

  procedure gtk_popover_get_offset(popover:PGtkPopover; x_offset:Plongint; y_offset:Plongint);

  procedure gtk_popover_set_cascade_popdown(popover:PGtkPopover; cascade_popdown:gboolean);

  function gtk_popover_get_cascade_popdown(popover:PGtkPopover):gboolean;

  procedure gtk_popover_set_default_widget(popover:PGtkPopover; widget:PGtkWidget);

  procedure gtk_popover_present(popover:PGtkPopover);

{$endif}
  { __GTK_POPOVER_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_POPOVER : longint; { return type might be wrong }
    begin
      GTK_TYPE_POPOVER:=gtk_popover_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_POPOVER(obj : longint) : longint;
  begin
    GTK_POPOVER:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_POPOVER,GtkPopover);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_POPOVER_CLASS(klass : longint) : longint;
  begin
    GTK_POPOVER_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_POPOVER,GtkPopoverClass);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_POPOVER(obj : longint) : longint;
  begin
    GTK_IS_POPOVER:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_POPOVER);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_POPOVER_CLASS(klass : longint) : longint;
  begin
    GTK_IS_POPOVER_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_POPOVER);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_POPOVER_GET_CLASS(obj : longint) : longint;
  begin
    GTK_POPOVER_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_POPOVER,GtkPopoverClass);
  end;

  function gtk_popover_new:PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_popover_set_child(popover:PGtkPopover; child:PGtkWidget);
  begin
    { You must implement this function }
  end;
  function gtk_popover_get_child(popover:PGtkPopover):PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_popover_set_pointing_to(popover:PGtkPopover; rect:PGdkRectangle);
  begin
    { You must implement this function }
  end;
  function gtk_popover_get_pointing_to(popover:PGtkPopover; rect:PGdkRectangle):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_popover_set_position(popover:PGtkPopover; position:GtkPositionType);
  begin
    { You must implement this function }
  end;
  function gtk_popover_get_position(popover:PGtkPopover):GtkPositionType;
  begin
    { You must implement this function }
  end;
  procedure gtk_popover_set_autohide(popover:PGtkPopover; autohide:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_popover_get_autohide(popover:PGtkPopover):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_popover_set_has_arrow(popover:PGtkPopover; has_arrow:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_popover_get_has_arrow(popover:PGtkPopover):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_popover_set_mnemonics_visible(popover:PGtkPopover; mnemonics_visible:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_popover_get_mnemonics_visible(popover:PGtkPopover):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_popover_popup(popover:PGtkPopover);
  begin
    { You must implement this function }
  end;
  procedure gtk_popover_popdown(popover:PGtkPopover);
  begin
    { You must implement this function }
  end;
  procedure gtk_popover_set_offset(popover:PGtkPopover; x_offset:longint; y_offset:longint);
  begin
    { You must implement this function }
  end;
  procedure gtk_popover_get_offset(popover:PGtkPopover; x_offset:Plongint; y_offset:Plongint);
  begin
    { You must implement this function }
  end;
  procedure gtk_popover_set_cascade_popdown(popover:PGtkPopover; cascade_popdown:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_popover_get_cascade_popdown(popover:PGtkPopover):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_popover_set_default_widget(popover:PGtkPopover; widget:PGtkWidget);
  begin
    { You must implement this function }
  end;
  procedure gtk_popover_present(popover:PGtkPopover);
  begin
    { You must implement this function }
  end;

