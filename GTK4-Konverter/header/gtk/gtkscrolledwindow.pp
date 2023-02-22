
  Type
  PGtkAdjustment  = ^GtkAdjustment;
  PGtkPolicyType  = ^GtkPolicyType;
  PGtkScrolledWindow  = ^GtkScrolledWindow;
  PGtkWidget  = ^GtkWidget;
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
{$ifndef __GTK_SCROLLED_WINDOW_H__}
{$define __GTK_SCROLLED_WINDOW_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}

  { was #define dname def_expr }
  function GTK_TYPE_SCROLLED_WINDOW : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_SCROLLED_WINDOW(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_SCROLLED_WINDOW(obj : longint) : longint;  


  type
    _GtkScrolledWindow = GtkScrolledWindow;
  {*
   * GtkCornerType:
   * @GTK_CORNER_TOP_LEFT: Place the scrollbars on the right and bottom of the
   *   widget (default behaviour).
   * @GTK_CORNER_BOTTOM_LEFT: Place the scrollbars on the top and right of the
   *   widget.
   * @GTK_CORNER_TOP_RIGHT: Place the scrollbars on the left and bottom of the
   *   widget.
   * @GTK_CORNER_BOTTOM_RIGHT: Place the scrollbars on the top and left of the
   *   widget.
   *
   * Specifies which corner a child widget should be placed in when packed into
   * a `GtkScrolledWindow.`
   *
   * This is effectively the opposite of where the scroll bars are placed.
    }

    GtkCornerType = (GTK_CORNER_TOP_LEFT,GTK_CORNER_BOTTOM_LEFT,
      GTK_CORNER_TOP_RIGHT,GTK_CORNER_BOTTOM_RIGHT
      );
  {*
   * GtkPolicyType:
   * @GTK_POLICY_ALWAYS: The scrollbar is always visible. The view size is
   *   independent of the content.
   * @GTK_POLICY_AUTOMATIC: The scrollbar will appear and disappear as necessary.
   *   For example, when all of a `GtkTreeView` can not be seen.
   * @GTK_POLICY_NEVER: The scrollbar should never appear. In this mode the
   *   content determines the size.
   * @GTK_POLICY_EXTERNAL: Don't show a scrollbar, but don't force the
   *   size to follow the content. This can be used e.g. to make multiple
   *   scrolled windows share a scrollbar.
   *
   * Determines how the size should be computed to achieve the one of the
   * visibility mode for the scrollbars.
    }

    GtkPolicyType = (GTK_POLICY_ALWAYS,GTK_POLICY_AUTOMATIC,
      GTK_POLICY_NEVER,GTK_POLICY_EXTERNAL
      );
(* error 
GType          gtk_scrolled_window_get_type          (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;

  function gtk_scrolled_window_new:^GtkWidget;

  procedure gtk_scrolled_window_set_hadjustment(scrolled_window:PGtkScrolledWindow; hadjustment:PGtkAdjustment);

  procedure gtk_scrolled_window_set_vadjustment(scrolled_window:PGtkScrolledWindow; vadjustment:PGtkAdjustment);

  function gtk_scrolled_window_get_hadjustment(scrolled_window:PGtkScrolledWindow):^GtkAdjustment;

  function gtk_scrolled_window_get_vadjustment(scrolled_window:PGtkScrolledWindow):^GtkAdjustment;

  function gtk_scrolled_window_get_hscrollbar(scrolled_window:PGtkScrolledWindow):^GtkWidget;

  function gtk_scrolled_window_get_vscrollbar(scrolled_window:PGtkScrolledWindow):^GtkWidget;

  procedure gtk_scrolled_window_set_policy(scrolled_window:PGtkScrolledWindow; hscrollbar_policy:GtkPolicyType; vscrollbar_policy:GtkPolicyType);

  procedure gtk_scrolled_window_get_policy(scrolled_window:PGtkScrolledWindow; hscrollbar_policy:PGtkPolicyType; vscrollbar_policy:PGtkPolicyType);

  procedure gtk_scrolled_window_set_placement(scrolled_window:PGtkScrolledWindow; window_placement:GtkCornerType);

  procedure gtk_scrolled_window_unset_placement(scrolled_window:PGtkScrolledWindow);

  function gtk_scrolled_window_get_placement(scrolled_window:PGtkScrolledWindow):GtkCornerType;

  procedure gtk_scrolled_window_set_has_frame(scrolled_window:PGtkScrolledWindow; has_frame:gboolean);

  function gtk_scrolled_window_get_has_frame(scrolled_window:PGtkScrolledWindow):gboolean;

  function gtk_scrolled_window_get_min_content_width(scrolled_window:PGtkScrolledWindow):longint;

  procedure gtk_scrolled_window_set_min_content_width(scrolled_window:PGtkScrolledWindow; width:longint);

  function gtk_scrolled_window_get_min_content_height(scrolled_window:PGtkScrolledWindow):longint;

  procedure gtk_scrolled_window_set_min_content_height(scrolled_window:PGtkScrolledWindow; height:longint);

  procedure gtk_scrolled_window_set_kinetic_scrolling(scrolled_window:PGtkScrolledWindow; kinetic_scrolling:gboolean);

  function gtk_scrolled_window_get_kinetic_scrolling(scrolled_window:PGtkScrolledWindow):gboolean;

  procedure gtk_scrolled_window_set_overlay_scrolling(scrolled_window:PGtkScrolledWindow; overlay_scrolling:gboolean);

  function gtk_scrolled_window_get_overlay_scrolling(scrolled_window:PGtkScrolledWindow):gboolean;

  procedure gtk_scrolled_window_set_max_content_width(scrolled_window:PGtkScrolledWindow; width:longint);

  function gtk_scrolled_window_get_max_content_width(scrolled_window:PGtkScrolledWindow):longint;

  procedure gtk_scrolled_window_set_max_content_height(scrolled_window:PGtkScrolledWindow; height:longint);

  function gtk_scrolled_window_get_max_content_height(scrolled_window:PGtkScrolledWindow):longint;

  procedure gtk_scrolled_window_set_propagate_natural_width(scrolled_window:PGtkScrolledWindow; propagate:gboolean);

  function gtk_scrolled_window_get_propagate_natural_width(scrolled_window:PGtkScrolledWindow):gboolean;

  procedure gtk_scrolled_window_set_propagate_natural_height(scrolled_window:PGtkScrolledWindow; propagate:gboolean);

  function gtk_scrolled_window_get_propagate_natural_height(scrolled_window:PGtkScrolledWindow):gboolean;

  procedure gtk_scrolled_window_set_child(scrolled_window:PGtkScrolledWindow; child:PGtkWidget);

  function gtk_scrolled_window_get_child(scrolled_window:PGtkScrolledWindow):^GtkWidget;

{$endif}
  { __GTK_SCROLLED_WINDOW_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_SCROLLED_WINDOW : longint; { return type might be wrong }
    begin
      GTK_TYPE_SCROLLED_WINDOW:=gtk_scrolled_window_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_SCROLLED_WINDOW(obj : longint) : longint;
  begin
    GTK_SCROLLED_WINDOW:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_SCROLLED_WINDOW,GtkScrolledWindow);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_SCROLLED_WINDOW(obj : longint) : longint;
  begin
    GTK_IS_SCROLLED_WINDOW:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_SCROLLED_WINDOW);
  end;

  function gtk_scrolled_window_new:PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_scrolled_window_set_hadjustment(scrolled_window:PGtkScrolledWindow; hadjustment:PGtkAdjustment);
  begin
    { You must implement this function }
  end;
  procedure gtk_scrolled_window_set_vadjustment(scrolled_window:PGtkScrolledWindow; vadjustment:PGtkAdjustment);
  begin
    { You must implement this function }
  end;
  function gtk_scrolled_window_get_hadjustment(scrolled_window:PGtkScrolledWindow):PGtkAdjustment;
  begin
    { You must implement this function }
  end;
  function gtk_scrolled_window_get_vadjustment(scrolled_window:PGtkScrolledWindow):PGtkAdjustment;
  begin
    { You must implement this function }
  end;
  function gtk_scrolled_window_get_hscrollbar(scrolled_window:PGtkScrolledWindow):PGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_scrolled_window_get_vscrollbar(scrolled_window:PGtkScrolledWindow):PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_scrolled_window_set_policy(scrolled_window:PGtkScrolledWindow; hscrollbar_policy:GtkPolicyType; vscrollbar_policy:GtkPolicyType);
  begin
    { You must implement this function }
  end;
  procedure gtk_scrolled_window_get_policy(scrolled_window:PGtkScrolledWindow; hscrollbar_policy:PGtkPolicyType; vscrollbar_policy:PGtkPolicyType);
  begin
    { You must implement this function }
  end;
  procedure gtk_scrolled_window_set_placement(scrolled_window:PGtkScrolledWindow; window_placement:GtkCornerType);
  begin
    { You must implement this function }
  end;
  procedure gtk_scrolled_window_unset_placement(scrolled_window:PGtkScrolledWindow);
  begin
    { You must implement this function }
  end;
  function gtk_scrolled_window_get_placement(scrolled_window:PGtkScrolledWindow):GtkCornerType;
  begin
    { You must implement this function }
  end;
  procedure gtk_scrolled_window_set_has_frame(scrolled_window:PGtkScrolledWindow; has_frame:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_scrolled_window_get_has_frame(scrolled_window:PGtkScrolledWindow):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_scrolled_window_get_min_content_width(scrolled_window:PGtkScrolledWindow):longint;
  begin
    { You must implement this function }
  end;
  procedure gtk_scrolled_window_set_min_content_width(scrolled_window:PGtkScrolledWindow; width:longint);
  begin
    { You must implement this function }
  end;
  function gtk_scrolled_window_get_min_content_height(scrolled_window:PGtkScrolledWindow):longint;
  begin
    { You must implement this function }
  end;
  procedure gtk_scrolled_window_set_min_content_height(scrolled_window:PGtkScrolledWindow; height:longint);
  begin
    { You must implement this function }
  end;
  procedure gtk_scrolled_window_set_kinetic_scrolling(scrolled_window:PGtkScrolledWindow; kinetic_scrolling:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_scrolled_window_get_kinetic_scrolling(scrolled_window:PGtkScrolledWindow):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_scrolled_window_set_overlay_scrolling(scrolled_window:PGtkScrolledWindow; overlay_scrolling:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_scrolled_window_get_overlay_scrolling(scrolled_window:PGtkScrolledWindow):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_scrolled_window_set_max_content_width(scrolled_window:PGtkScrolledWindow; width:longint);
  begin
    { You must implement this function }
  end;
  function gtk_scrolled_window_get_max_content_width(scrolled_window:PGtkScrolledWindow):longint;
  begin
    { You must implement this function }
  end;
  procedure gtk_scrolled_window_set_max_content_height(scrolled_window:PGtkScrolledWindow; height:longint);
  begin
    { You must implement this function }
  end;
  function gtk_scrolled_window_get_max_content_height(scrolled_window:PGtkScrolledWindow):longint;
  begin
    { You must implement this function }
  end;
  procedure gtk_scrolled_window_set_propagate_natural_width(scrolled_window:PGtkScrolledWindow; propagate:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_scrolled_window_get_propagate_natural_width(scrolled_window:PGtkScrolledWindow):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_scrolled_window_set_propagate_natural_height(scrolled_window:PGtkScrolledWindow; propagate:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_scrolled_window_get_propagate_natural_height(scrolled_window:PGtkScrolledWindow):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_scrolled_window_set_child(scrolled_window:PGtkScrolledWindow; child:PGtkWidget);
  begin
    { You must implement this function }
  end;
  function gtk_scrolled_window_get_child(scrolled_window:PGtkScrolledWindow):PGtkWidget;
  begin
    { You must implement this function }
  end;

