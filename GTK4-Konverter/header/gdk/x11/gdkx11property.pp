
  Type
  Pchar  = ^char;
  PGdkDisplay  = ^GdkDisplay;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GDK - The GIMP Drawing Kit
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
{$ifndef __GDK_X11_PROPERTY_H__}
{$define __GDK_X11_PROPERTY_H__}  
{$if !defined (__GDKX_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/x11/gdkx.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}
{$include <X11/Xlib.h>}
{$include <X11/Xutil.h>}
  { Zeile entfernt  }
  { Zeile entfernt  }
(* Const before type ignored *)

  function gdk_x11_get_xatom_by_name_for_display(display:PGdkDisplay; atom_name:Pchar):Atom;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gdk_x11_get_xatom_name_for_display(display:PGdkDisplay; xatom:Atom):^char;

  { Zeile entfernt  }
{$endif}
  { __GDK_X11_PROPERTY_H__  }
  function gdk_x11_get_xatom_by_name_for_display(display:PGdkDisplay; atom_name:Pchar):Atom;
  begin
    { You must implement this function }
  end;
  function gdk_x11_get_xatom_name_for_display(display:PGdkDisplay; xatom:Atom):Pchar;
  begin
    { You must implement this function }
  end;

