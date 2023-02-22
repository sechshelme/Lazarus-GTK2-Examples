
  Type
  Pchar  = ^char;
  PGdkDisplay  = ^GdkDisplay;
  Pguchar  = ^guchar;
  Plongint  = ^longint;
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
{$ifndef __GDK_X11_SELECTION_H__}
{$define __GDK_X11_SELECTION_H__}  
{$if !defined (__GDKX_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/x11/gdkx.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}
{$include <X11/Xlib.h>}
{$include <X11/Xutil.h>}
  { Zeile entfernt  }
  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)

  function gdk_x11_display_text_property_to_text_list(display:PGdkDisplay; encoding:Pchar; format:longint; text:Pguchar; length:longint; 
             list:PPPchar):longint;

  { Zeile entfernt  }
  procedure gdk_x11_free_text_list(list:PPchar);

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
  function gdk_x11_display_string_to_compound_text(display:PGdkDisplay; str:Pchar; encoding:PPchar; format:Plongint; ctext:PPguchar; 
             length:Plongint):longint;

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
  function gdk_x11_display_utf8_to_compound_text(display:PGdkDisplay; str:Pchar; encoding:PPchar; format:Plongint; ctext:PPguchar; 
             length:Plongint):gboolean;

  { Zeile entfernt  }
  procedure gdk_x11_free_compound_text(ctext:Pguchar);

  { Zeile entfernt  }
{$endif}
  { __GDK_X11_SELECTION_H__  }
  function gdk_x11_display_text_property_to_text_list(display:PGdkDisplay; encoding:Pchar; format:longint; text:Pguchar; length:longint; 
             list:PPPchar):longint;
  begin
    { You must implement this function }
  end;
  procedure gdk_x11_free_text_list(list:PPchar);
  begin
    { You must implement this function }
  end;
  function gdk_x11_display_string_to_compound_text(display:PGdkDisplay; str:Pchar; encoding:PPchar; format:Plongint; ctext:PPguchar; 
             length:Plongint):longint;
  begin
    { You must implement this function }
  end;
  function gdk_x11_display_utf8_to_compound_text(display:PGdkDisplay; str:Pchar; encoding:PPchar; format:Plongint; ctext:PPguchar; 
             length:Plongint):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gdk_x11_free_compound_text(ctext:Pguchar);
  begin
    { You must implement this function }
  end;

