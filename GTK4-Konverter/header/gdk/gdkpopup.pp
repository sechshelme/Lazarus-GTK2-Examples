
  Type
  PGdkPopup  = ^GdkPopup;
  PGdkPopupLayout  = ^GdkPopupLayout;
  PGdkSurface  = ^GdkSurface;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  {
   * Copyright © 2020 Red Hat, Inc.
   *
   * This library is free software; you can redistribute it and/or
   * modify it under the terms of the GNU Lesser General Public
   * License as published by the Free Software Foundation; either
   * version 2.1 of the License, or (at your option) any later version.
   *
   * This library is distributed in the hope that it will be useful,
   * but WITHOUT ANY WARRANTY; without even the implied warranty of
   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   * Lesser General Public License for more details.
   *
   * You should have received a copy of the GNU Lesser General Public
   * License along with this library. If not, see <http://www.gnu.org/licenses/>.
   *
   * Authors: Matthias Clasen <mclasen@redhat.com>
    }
{$ifndef __GDK_POPUP_H__}
{$define __GDK_POPUP_H__}  
{$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}
{$include <gdk/gdkpopuplayout.h>}
{$include <gdk/gdksurface.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GDK_TYPE_POPUP : longint; { return type might be wrong }

  { Zeile entfernt  }
  { Zeile entfernt  }
  { Zeile entfernt  }
  function gdk_popup_present(popup:PGdkPopup; width:longint; height:longint; layout:PGdkPopupLayout):gboolean;

  { Zeile entfernt  }
  function gdk_popup_get_surface_anchor(popup:PGdkPopup):GdkGravity;

  { Zeile entfernt  }
  function gdk_popup_get_rect_anchor(popup:PGdkPopup):GdkGravity;

  { Zeile entfernt  }
  function gdk_popup_get_parent(popup:PGdkPopup):^GdkSurface;

  { Zeile entfernt  }
  function gdk_popup_get_position_x(popup:PGdkPopup):longint;

  { Zeile entfernt  }
  function gdk_popup_get_position_y(popup:PGdkPopup):longint;

  { Zeile entfernt  }
  function gdk_popup_get_autohide(popup:PGdkPopup):gboolean;

  { Zeile entfernt  }
{$endif}
  { __GDK_POPUP_H__  }
  { was #define dname def_expr }
  function GDK_TYPE_POPUP : longint; { return type might be wrong }
    begin
      GDK_TYPE_POPUP:=gdk_popup_get_type;
    end;

  function gdk_popup_present(popup:PGdkPopup; width:longint; height:longint; layout:PGdkPopupLayout):gboolean;
  begin
    { You must implement this function }
  end;
  function gdk_popup_get_surface_anchor(popup:PGdkPopup):GdkGravity;
  begin
    { You must implement this function }
  end;
  function gdk_popup_get_rect_anchor(popup:PGdkPopup):GdkGravity;
  begin
    { You must implement this function }
  end;
  function gdk_popup_get_parent(popup:PGdkPopup):PGdkSurface;
  begin
    { You must implement this function }
  end;
  function gdk_popup_get_position_x(popup:PGdkPopup):longint;
  begin
    { You must implement this function }
  end;
  function gdk_popup_get_position_y(popup:PGdkPopup):longint;
  begin
    { You must implement this function }
  end;
  function gdk_popup_get_autohide(popup:PGdkPopup):gboolean;
  begin
    { You must implement this function }
  end;

