
  Type
  PGdkRGBA  = ^GdkRGBA;
  PGdkSnapshot  = ^GdkSnapshot;
  PGtkSymbolicPaintable  = ^GtkSymbolicPaintable;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  {
   * Copyright © 2021 Benjamin Otte
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
   * Authors: Benjamin Otte <otte@gnome.org>
    }
{$ifndef __GTK_SYMBOLIC_PAINTABLE_H__}
{$define __GTK_SYMBOLIC_PAINTABLE_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtktypes.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_SYMBOLIC_PAINTABLE : longint; { return type might be wrong }

  { Zeile entfernt  }
  { Zeile entfernt  }
  {*
   * GtkSymbolicPaintableInterface:
   * @snapshot_symbolic: Snapshot the paintable using the given colors. 
   *   See `GtkSymbolicPaintable::snapshot_symbolic()` for details.
   *   If this function is not implemented, [vfunc@Gdk.Paintable.snapshot]
   *   will be called.
   *
   * The list of virtual functions for the `GtkSymbolicPaintable` interface.
   * No function must be implemented, default implementations exist for each one.
    }
  {< private > }
  {< public > }
(* Const before type ignored *)

  type
    _GtkSymbolicPaintableInterface = record
        g_iface : GTypeInterface;
        snapshot_symbolic : procedure (paintable:PGtkSymbolicPaintable; snapshot:PGdkSnapshot; width:double; height:double; colors:PGdkRGBA; 
                      n_colors:gsize);cdecl;
      end;

  { Zeile entfernt  }
(* Const before type ignored *)

  procedure gtk_symbolic_paintable_snapshot_symbolic(paintable:PGtkSymbolicPaintable; snapshot:PGdkSnapshot; width:double; height:double; colors:PGdkRGBA; 
              n_colors:gsize);

  { Zeile entfernt  }
{$endif}
  { __GTK_SYMBOLIC_PAINTABLE_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_SYMBOLIC_PAINTABLE : longint; { return type might be wrong }
    begin
      GTK_TYPE_SYMBOLIC_PAINTABLE:=gtk_symbolic_paintable_get_type;
    end;

  procedure gtk_symbolic_paintable_snapshot_symbolic(paintable:PGtkSymbolicPaintable; snapshot:PGdkSnapshot; width:double; height:double; colors:PGdkRGBA; 
              n_colors:gsize);
  begin
    { You must implement this function }
  end;

