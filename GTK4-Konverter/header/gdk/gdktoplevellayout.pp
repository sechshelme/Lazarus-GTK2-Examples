
  Type
  Pgboolean  = ^gboolean;
  PGdkMonitor  = ^GdkMonitor;
  PGdkToplevelLayout  = ^GdkToplevelLayout;
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
{$ifndef __GDK_TOPLEVEL_LAYOUT_H__}
{$define __GDK_TOPLEVEL_LAYOUT_H__}  
{$if !defined(__GDK_H_INSIDE__) && !defined(GTK_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}
{$include <gdk/gdkmonitor.h>}
{$include <gdk/gdktypes.h>}
{$include <gdk/gdkversionmacros.h>}
  { Zeile entfernt  }

  type
    _GdkToplevelLayout = GdkToplevelLayout;

  { was #define dname def_expr }
  function GDK_TYPE_TOPLEVEL_LAYOUT : longint; { return type might be wrong }

  { Zeile entfernt  }
  function gdk_toplevel_layout_get_type:GType;

  { Zeile entfernt  }
  function gdk_toplevel_layout_new:^GdkToplevelLayout;

  { Zeile entfernt  }
  function gdk_toplevel_layout_ref(layout:PGdkToplevelLayout):^GdkToplevelLayout;

  { Zeile entfernt  }
  procedure gdk_toplevel_layout_unref(layout:PGdkToplevelLayout);

  { Zeile entfernt  }
  function gdk_toplevel_layout_copy(layout:PGdkToplevelLayout):^GdkToplevelLayout;

  { Zeile entfernt  }
  function gdk_toplevel_layout_equal(layout:PGdkToplevelLayout; other:PGdkToplevelLayout):gboolean;

  { Zeile entfernt  }
  procedure gdk_toplevel_layout_set_maximized(layout:PGdkToplevelLayout; maximized:gboolean);

  { Zeile entfernt  }
  procedure gdk_toplevel_layout_set_fullscreen(layout:PGdkToplevelLayout; fullscreen:gboolean; monitor:PGdkMonitor);

  { Zeile entfernt  }
  function gdk_toplevel_layout_get_maximized(layout:PGdkToplevelLayout; maximized:Pgboolean):gboolean;

  { Zeile entfernt  }
  function gdk_toplevel_layout_get_fullscreen(layout:PGdkToplevelLayout; fullscreen:Pgboolean):gboolean;

  { Zeile entfernt  }
  function gdk_toplevel_layout_get_fullscreen_monitor(layout:PGdkToplevelLayout):^GdkMonitor;

  { Zeile entfernt  }
  procedure gdk_toplevel_layout_set_resizable(layout:PGdkToplevelLayout; resizable:gboolean);

  { Zeile entfernt  }
  function gdk_toplevel_layout_get_resizable(layout:PGdkToplevelLayout):gboolean;

  { Zeile entfernt  }
{$endif}
  { __GDK_TOPLEVEL_LAYOUT_H__  }
  { was #define dname def_expr }
  function GDK_TYPE_TOPLEVEL_LAYOUT : longint; { return type might be wrong }
    begin
      GDK_TYPE_TOPLEVEL_LAYOUT:=gdk_toplevel_layout_get_type;
    end;

  function gdk_toplevel_layout_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gdk_toplevel_layout_new:PGdkToplevelLayout;
  begin
    { You must implement this function }
  end;
  function gdk_toplevel_layout_ref(layout:PGdkToplevelLayout):PGdkToplevelLayout;
  begin
    { You must implement this function }
  end;
  procedure gdk_toplevel_layout_unref(layout:PGdkToplevelLayout);
  begin
    { You must implement this function }
  end;
  function gdk_toplevel_layout_copy(layout:PGdkToplevelLayout):PGdkToplevelLayout;
  begin
    { You must implement this function }
  end;
  function gdk_toplevel_layout_equal(layout:PGdkToplevelLayout; other:PGdkToplevelLayout):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gdk_toplevel_layout_set_maximized(layout:PGdkToplevelLayout; maximized:gboolean);
  begin
    { You must implement this function }
  end;
  procedure gdk_toplevel_layout_set_fullscreen(layout:PGdkToplevelLayout; fullscreen:gboolean; monitor:PGdkMonitor);
  begin
    { You must implement this function }
  end;
  function gdk_toplevel_layout_get_maximized(layout:PGdkToplevelLayout; maximized:Pgboolean):gboolean;
  begin
    { You must implement this function }
  end;
  function gdk_toplevel_layout_get_fullscreen(layout:PGdkToplevelLayout; fullscreen:Pgboolean):gboolean;
  begin
    { You must implement this function }
  end;
  function gdk_toplevel_layout_get_fullscreen_monitor(layout:PGdkToplevelLayout):PGdkMonitor;
  begin
    { You must implement this function }
  end;
  procedure gdk_toplevel_layout_set_resizable(layout:PGdkToplevelLayout; resizable:gboolean);
  begin
    { You must implement this function }
  end;
  function gdk_toplevel_layout_get_resizable(layout:PGdkToplevelLayout):gboolean;
  begin
    { You must implement this function }
  end;

