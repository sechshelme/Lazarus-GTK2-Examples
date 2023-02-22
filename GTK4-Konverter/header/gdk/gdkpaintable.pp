
  Type
  Pdouble  = ^double;
  PGdkPaintable  = ^GdkPaintable;
  PGdkSnapshot  = ^GdkSnapshot;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  {
   * Copyright © 2018 Benjamin Otte
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
{$ifndef __GDK_PAINTABLE_H__}
{$define __GDK_PAINTABLE_H__}  
{$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}
{$include <gdk/gdktypes.h>}
{$include <gdk/gdkversionmacros.h>}

  { was #define dname def_expr }
  function GDK_TYPE_PAINTABLE : longint; { return type might be wrong }

(* error 
G_DECLARE_INTERFACE (GdkPaintable, gdk_paintable, GDK, PAINTABLE, GObject)
 in declarator_list *)
(* error 
G_DECLARE_INTERFACE (GdkPaintable, gdk_paintable, GDK, PAINTABLE, GObject)
  {*
   * GdkPaintableFlags:
   * @GDK_PAINTABLE_STATIC_SIZE: The size is immutable.
   *   The [signal@GdkPaintable::invalidate-size] signal will never be
   *   emitted.
   * @GDK_PAINTABLE_STATIC_CONTENTS: The content is immutable.
   *   The [signal@GdkPaintable::invalidate-contents] signal will never be
   *   emitted.
   *
   * Flags about a paintable object.
   *
   * Implementations use these for optimizations such as caching.
    }
 in declarator_list *)
(* error 
  GDK_PAINTABLE_STATIC_SIZE = 1 << 0,
(* error 
  GDK_PAINTABLE_STATIC_CONTENTS = 1 << 1
 in declarator_list *)
 in declarator_list *)
  {*
   * GdkPaintableInterface:
   * @snapshot: Snapshot the paintable. The given @width and @height are
   *   guaranteed to be larger than 0.0. The resulting snapshot must modify
   *   only the area in the rectangle from (0,0) to (width, height).
   *   This is the only function that must be implemented for this interface.
   * @get_current_image: return a `GdkPaintable` that does not change over
   *   time. This means the `GDK_PAINTABLE_STATIC_SIZE` and
   *   `GDK_PAINTABLE_STATIC_CONTENTS` flag are set.
   * @get_flags: Get the flags for this instance. See [enum@Gdk.PaintableFlags]
   *   for details.
   * @get_intrinsic_width: The preferred width for this object to be
   *   snapshot at or 0 if none. This is purely a hint. The object must still
   *   be able to render at any size.
   * @get_intrinsic_height: The preferred height for this object to be
   *   snapshot at or 0 if none. This is purely a hint. The object must still
   *   be able to render at any size.
   * @get_intrinsic_aspect_ratio: The preferred aspect ratio for this object
   *   or 0 if none. If both [vfunc@Gdk.Paintable.get_intrinsic_width]
   *   and [vfunc@Gdk.Paintable.get_intrinsic_height] return non-zero
   *   values, this function should return the aspect ratio computed from those.
   *
   * The list of functions that can be implemented for the `GdkPaintable`
   * interface.
   *
   * Note that apart from the [vfunc@Gdk.Paintable.snapshot] function,
   * no virtual function of this interface is mandatory to implement, though it
   * is a good idea to implement [vfunc@Gdk.Paintable.get_current_image]
   * for non-static paintables and [vfunc@Gdk.Paintable.get_flags] if the
   * image is not dynamic as the default implementation returns no flags and
   * that will make the implementation likely quite slow.
    }
  {< private > }
  {< public > }
  { draw to 0,0 with the given width and height  }
  { get the current contents in an immutable form (optional)  }
  { get flags for potential optimizations (optional)  }
  { preferred width of paintable or 0 if it has no width (optional)  }
  { preferred height of paintable or 0 if it has no height (optional)  }
  { aspect ratio (width / height) of paintable or 0 if it has no aspect ratio (optional)  }

  type
    _GdkPaintableInterface = record
        g_iface : GTypeInterface;
        snapshot : procedure (paintable:PGdkPaintable; snapshot:PGdkSnapshot; width:double; height:double);cdecl;
        get_current_image : function (paintable:PGdkPaintable):PGdkPaintable;cdecl;
        get_flags : function (paintable:PGdkPaintable):GdkPaintableFlags;cdecl;
        get_intrinsic_width : function (paintable:PGdkPaintable):longint;cdecl;
        get_intrinsic_height : function (paintable:PGdkPaintable):longint;cdecl;
        get_intrinsic_aspect_ratio : function (paintable:PGdkPaintable):double;cdecl;
      end;


  procedure gdk_paintable_snapshot(paintable:PGdkPaintable; snapshot:PGdkSnapshot; width:double; height:double);

  function gdk_paintable_get_current_image(paintable:PGdkPaintable):^GdkPaintable;

  function gdk_paintable_get_flags(paintable:PGdkPaintable):GdkPaintableFlags;

  function gdk_paintable_get_intrinsic_width(paintable:PGdkPaintable):longint;

  function gdk_paintable_get_intrinsic_height(paintable:PGdkPaintable):longint;

  function gdk_paintable_get_intrinsic_aspect_ratio(paintable:PGdkPaintable):double;

  procedure gdk_paintable_compute_concrete_size(paintable:PGdkPaintable; specified_width:double; specified_height:double; default_width:double; default_height:double; 
              concrete_width:Pdouble; concrete_height:Pdouble);

  { for implementations only  }
  procedure gdk_paintable_invalidate_contents(paintable:PGdkPaintable);

  procedure gdk_paintable_invalidate_size(paintable:PGdkPaintable);

  function gdk_paintable_new_empty(intrinsic_width:longint; intrinsic_height:longint):^GdkPaintable;

{$endif}
  { __GDK_PAINTABLE_H__  }
  { was #define dname def_expr }
  function GDK_TYPE_PAINTABLE : longint; { return type might be wrong }
    begin
      GDK_TYPE_PAINTABLE:=gdk_paintable_get_type;
    end;

  procedure gdk_paintable_snapshot(paintable:PGdkPaintable; snapshot:PGdkSnapshot; width:double; height:double);
  begin
    { You must implement this function }
  end;
  function gdk_paintable_get_current_image(paintable:PGdkPaintable):PGdkPaintable;
  begin
    { You must implement this function }
  end;
  function gdk_paintable_get_flags(paintable:PGdkPaintable):GdkPaintableFlags;
  begin
    { You must implement this function }
  end;
  function gdk_paintable_get_intrinsic_width(paintable:PGdkPaintable):longint;
  begin
    { You must implement this function }
  end;
  function gdk_paintable_get_intrinsic_height(paintable:PGdkPaintable):longint;
  begin
    { You must implement this function }
  end;
  function gdk_paintable_get_intrinsic_aspect_ratio(paintable:PGdkPaintable):double;
  begin
    { You must implement this function }
  end;
  procedure gdk_paintable_compute_concrete_size(paintable:PGdkPaintable; specified_width:double; specified_height:double; default_width:double; default_height:double; 
              concrete_width:Pdouble; concrete_height:Pdouble);
  begin
    { You must implement this function }
  end;
  procedure gdk_paintable_invalidate_contents(paintable:PGdkPaintable);
  begin
    { You must implement this function }
  end;
  procedure gdk_paintable_invalidate_size(paintable:PGdkPaintable);
  begin
    { You must implement this function }
  end;
  function gdk_paintable_new_empty(intrinsic_width:longint; intrinsic_height:longint):PGdkPaintable;
  begin
    { You must implement this function }
  end;

