
  Type
  Pchar  = ^char;
  Pguint  = ^guint;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GDK - The GIMP Drawing Kit
   * Copyright (C) 2000 Red Hat, Inc.
   *
   * This library is free software; you can redistribute it and/or
   * modify it under the terms of the GNU Lesser General Public
   * License as published by the Free Software Foundation; either
   * version 2 of the License, or (at your option) any later version.
   *
   * This library is distributed in the hope that it will be useful,
   * but WITHOUT ANY WARRANTY; without even the implied warranty of
   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the GNU
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
{$ifndef __GDK_KEYS_H__}
{$define __GDK_KEYS_H__}  
{$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}
{$include <gdk/gdkversionmacros.h>}
{$include <gdk/gdktypes.h>}
  { Zeile entfernt  }
  { Zeile entfernt  }
(* Const before type ignored *)

  function gdk_keyval_name(keyval:guint):^char;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gdk_keyval_from_name(keyval_name:Pchar):guint;

  { Zeile entfernt  }
  procedure gdk_keyval_convert_case(symbol:guint; lower:Pguint; upper:Pguint);

  { Zeile entfernt  }
  function gdk_keyval_to_upper(keyval:guint):guint;

  { Zeile entfernt  }
  function gdk_keyval_to_lower(keyval:guint):guint;

  { Zeile entfernt  }
  function gdk_keyval_is_upper(keyval:guint):gboolean;

  { Zeile entfernt  }
  function gdk_keyval_is_lower(keyval:guint):gboolean;

  { Zeile entfernt  }
  function gdk_keyval_to_unicode(keyval:guint):guint32;

  { Zeile entfernt  }
  function gdk_unicode_to_keyval(wc:guint32):guint;

  { Zeile entfernt  }
{$endif}
  { __GDK_KEYS_H__  }
  function gdk_keyval_name(keyval:guint):Pchar;
  begin
    { You must implement this function }
  end;
  function gdk_keyval_from_name(keyval_name:Pchar):guint;
  begin
    { You must implement this function }
  end;
  procedure gdk_keyval_convert_case(symbol:guint; lower:Pguint; upper:Pguint);
  begin
    { You must implement this function }
  end;
  function gdk_keyval_to_upper(keyval:guint):guint;
  begin
    { You must implement this function }
  end;
  function gdk_keyval_to_lower(keyval:guint):guint;
  begin
    { You must implement this function }
  end;
  function gdk_keyval_is_upper(keyval:guint):gboolean;
  begin
    { You must implement this function }
  end;
  function gdk_keyval_is_lower(keyval:guint):gboolean;
  begin
    { You must implement this function }
  end;
  function gdk_keyval_to_unicode(keyval:guint):guint32;
  begin
    { You must implement this function }
  end;
  function gdk_unicode_to_keyval(wc:guint32):guint;
  begin
    { You must implement this function }
  end;

