
  Type
  PGdkPopupLayout  = ^GdkPopupLayout;
  PGdkRectangle  = ^GdkRectangle;
  Plongint  = ^longint;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GDK - The GIMP Drawing Kit
   * Copyright (C) 2020 Red Hat
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
   *
    }
{$ifndef __GDK_POPUP_LAYOUT_H__}
{$define __GDK_POPUP_LAYOUT_H__}  
{$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}
{$include <gdk/gdkenums.h>}
{$include <gdk/gdktypes.h>}
{$include <gdk/gdkversionmacros.h>}
  { Zeile entfernt  }
  {*
   * GdkAnchorHints:
   * @GDK_ANCHOR_FLIP_X: allow flipping anchors horizontally
   * @GDK_ANCHOR_FLIP_Y: allow flipping anchors vertically
   * @GDK_ANCHOR_SLIDE_X: allow sliding surface horizontally
   * @GDK_ANCHOR_SLIDE_Y: allow sliding surface vertically
   * @GDK_ANCHOR_RESIZE_X: allow resizing surface horizontally
   * @GDK_ANCHOR_RESIZE_Y: allow resizing surface vertically
   * @GDK_ANCHOR_FLIP: allow flipping anchors on both axes
   * @GDK_ANCHOR_SLIDE: allow sliding surface on both axes
   * @GDK_ANCHOR_RESIZE: allow resizing surface on both axes
   *
   * Positioning hints for aligning a surface relative to a rectangle.
   *
   * These hints determine how the surface should be positioned in the case that
   * the surface would fall off-screen if placed in its ideal position.
   *
   * For example, %GDK_ANCHOR_FLIP_X will replace %GDK_GRAVITY_NORTH_WEST with
   * %GDK_GRAVITY_NORTH_EAST and vice versa if the surface extends beyond the left
   * or right edges of the monitor.
   *
   * If %GDK_ANCHOR_SLIDE_X is set, the surface can be shifted horizontally to fit
   * on-screen. If %GDK_ANCHOR_RESIZE_X is set, the surface can be shrunken
   * horizontally to fit.
   *
   * In general, when multiple flags are set, flipping should take precedence over
   * sliding, which should take precedence over resizing.
    }

  type
    GdkAnchorHints = (GDK_ANCHOR_FLIP_X := 1 shl 0,GDK_ANCHOR_FLIP_Y := 1 shl 1,
      GDK_ANCHOR_SLIDE_X := 1 shl 2,GDK_ANCHOR_SLIDE_Y := 1 shl 3,
      GDK_ANCHOR_RESIZE_X := 1 shl 4,GDK_ANCHOR_RESIZE_Y := 1 shl 5,
      GDK_ANCHOR_FLIP := GDK_ANCHOR_FLIP_X or GDK_ANCHOR_FLIP_Y,GDK_ANCHOR_SLIDE := GDK_ANCHOR_SLIDE_X or GDK_ANCHOR_SLIDE_Y,
      GDK_ANCHOR_RESIZE := GDK_ANCHOR_RESIZE_X or GDK_ANCHOR_RESIZE_Y);
    _GdkPopupLayout = GdkPopupLayout;

  { was #define dname def_expr }
  function GDK_TYPE_POPUP_LAYOUT : longint; { return type might be wrong }

  { Zeile entfernt  }
  function gdk_popup_layout_get_type:GType;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gdk_popup_layout_new(anchor_rect:PGdkRectangle; rect_anchor:GdkGravity; surface_anchor:GdkGravity):^GdkPopupLayout;

  { Zeile entfernt  }
  function gdk_popup_layout_ref(layout:PGdkPopupLayout):^GdkPopupLayout;

  { Zeile entfernt  }
  procedure gdk_popup_layout_unref(layout:PGdkPopupLayout);

  { Zeile entfernt  }
  function gdk_popup_layout_copy(layout:PGdkPopupLayout):^GdkPopupLayout;

  { Zeile entfernt  }
  function gdk_popup_layout_equal(layout:PGdkPopupLayout; other:PGdkPopupLayout):gboolean;

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gdk_popup_layout_set_anchor_rect(layout:PGdkPopupLayout; anchor_rect:PGdkRectangle);

  { Zeile entfernt  }
(* Const before type ignored *)
  function gdk_popup_layout_get_anchor_rect(layout:PGdkPopupLayout):^GdkRectangle;

  { Zeile entfernt  }
  procedure gdk_popup_layout_set_rect_anchor(layout:PGdkPopupLayout; anchor:GdkGravity);

  { Zeile entfernt  }
  function gdk_popup_layout_get_rect_anchor(layout:PGdkPopupLayout):GdkGravity;

  { Zeile entfernt  }
  procedure gdk_popup_layout_set_surface_anchor(layout:PGdkPopupLayout; anchor:GdkGravity);

  { Zeile entfernt  }
  function gdk_popup_layout_get_surface_anchor(layout:PGdkPopupLayout):GdkGravity;

  { Zeile entfernt  }
  procedure gdk_popup_layout_set_anchor_hints(layout:PGdkPopupLayout; anchor_hints:GdkAnchorHints);

  { Zeile entfernt  }
  function gdk_popup_layout_get_anchor_hints(layout:PGdkPopupLayout):GdkAnchorHints;

  { Zeile entfernt  }
  procedure gdk_popup_layout_set_offset(layout:PGdkPopupLayout; dx:longint; dy:longint);

  { Zeile entfernt  }
  procedure gdk_popup_layout_get_offset(layout:PGdkPopupLayout; dx:Plongint; dy:Plongint);

  { Zeile entfernt  }
  procedure gdk_popup_layout_set_shadow_width(layout:PGdkPopupLayout; left:longint; right:longint; top:longint; bottom:longint);

  { Zeile entfernt  }
  procedure gdk_popup_layout_get_shadow_width(layout:PGdkPopupLayout; left:Plongint; right:Plongint; top:Plongint; bottom:Plongint);

  { Zeile entfernt  }
{$endif}
  { __GDK_POPUP_LAYOUT_H__  }
  { was #define dname def_expr }
  function GDK_TYPE_POPUP_LAYOUT : longint; { return type might be wrong }
    begin
      GDK_TYPE_POPUP_LAYOUT:=gdk_popup_layout_get_type;
    end;

  function gdk_popup_layout_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gdk_popup_layout_new(anchor_rect:PGdkRectangle; rect_anchor:GdkGravity; surface_anchor:GdkGravity):PGdkPopupLayout;
  begin
    { You must implement this function }
  end;
  function gdk_popup_layout_ref(layout:PGdkPopupLayout):PGdkPopupLayout;
  begin
    { You must implement this function }
  end;
  procedure gdk_popup_layout_unref(layout:PGdkPopupLayout);
  begin
    { You must implement this function }
  end;
  function gdk_popup_layout_copy(layout:PGdkPopupLayout):PGdkPopupLayout;
  begin
    { You must implement this function }
  end;
  function gdk_popup_layout_equal(layout:PGdkPopupLayout; other:PGdkPopupLayout):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gdk_popup_layout_set_anchor_rect(layout:PGdkPopupLayout; anchor_rect:PGdkRectangle);
  begin
    { You must implement this function }
  end;
  function gdk_popup_layout_get_anchor_rect(layout:PGdkPopupLayout):PGdkRectangle;
  begin
    { You must implement this function }
  end;
  procedure gdk_popup_layout_set_rect_anchor(layout:PGdkPopupLayout; anchor:GdkGravity);
  begin
    { You must implement this function }
  end;
  function gdk_popup_layout_get_rect_anchor(layout:PGdkPopupLayout):GdkGravity;
  begin
    { You must implement this function }
  end;
  procedure gdk_popup_layout_set_surface_anchor(layout:PGdkPopupLayout; anchor:GdkGravity);
  begin
    { You must implement this function }
  end;
  function gdk_popup_layout_get_surface_anchor(layout:PGdkPopupLayout):GdkGravity;
  begin
    { You must implement this function }
  end;
  procedure gdk_popup_layout_set_anchor_hints(layout:PGdkPopupLayout; anchor_hints:GdkAnchorHints);
  begin
    { You must implement this function }
  end;
  function gdk_popup_layout_get_anchor_hints(layout:PGdkPopupLayout):GdkAnchorHints;
  begin
    { You must implement this function }
  end;
  procedure gdk_popup_layout_set_offset(layout:PGdkPopupLayout; dx:longint; dy:longint);
  begin
    { You must implement this function }
  end;
  procedure gdk_popup_layout_get_offset(layout:PGdkPopupLayout; dx:Plongint; dy:Plongint);
  begin
    { You must implement this function }
  end;
  procedure gdk_popup_layout_set_shadow_width(layout:PGdkPopupLayout; left:longint; right:longint; top:longint; bottom:longint);
  begin
    { You must implement this function }
  end;
  procedure gdk_popup_layout_get_shadow_width(layout:PGdkPopupLayout; left:Plongint; right:Plongint; top:Plongint; bottom:Plongint);
  begin
    { You must implement this function }
  end;

