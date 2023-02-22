
    Type
    Pgraphene_point_t  = ^graphene_point_t;
    Pgraphene_rect_t  = ^graphene_rect_t;
    Pgraphene_size_t  = ^graphene_size_t;
    PGskRoundedRect  = ^GskRoundedRect;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GSK - The GTK Scene Kit
   *
   * Copyright 2016  Endless
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
{$ifndef __GSK_ROUNDED_RECT_H__}
{$define __GSK_ROUNDED_RECT_H__}  
{$if !defined (__GSK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gsk/gsk.h> can be included directly."}
{$endif}
{$include <gsk/gsktypes.h>}
  { Zeile entfernt  }
  {*
   * GSK_ROUNDED_RECT_INIT:
   * @_x: the X coordinate of the origin
   * @_y: the Y coordinate of the origin
   * @_w: the width
   * @_h: the height
   *
   * Initializes a `GskRoundedRect` when declaring it.
   * All corner sizes will be initialized to 0.
    }
(* error 
#define GSK_ROUNDED_RECT_INIT(_x,_y,_w,_h)       (GskRoundedRect) { .bounds = GRAPHENE_RECT_INIT(_x,_y,_w,_h), \
in define line 46 *)

    type
      _GskRoundedRect = GskRoundedRect;
      _GskRoundedRect = record
          bounds : graphene_rect_t;
          corner : array[0..3] of graphene_size_t;
        end;

    { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)

    function gsk_rounded_rect_init(self:PGskRoundedRect; bounds:Pgraphene_rect_t; top_left:Pgraphene_size_t; top_right:Pgraphene_size_t; bottom_right:Pgraphene_size_t; 
               bottom_left:Pgraphene_size_t):^GskRoundedRect;

    { Zeile entfernt  }
(* Const before type ignored *)
    function gsk_rounded_rect_init_copy(self:PGskRoundedRect; src:PGskRoundedRect):^GskRoundedRect;

    { Zeile entfernt  }
(* Const before type ignored *)
    function gsk_rounded_rect_init_from_rect(self:PGskRoundedRect; bounds:Pgraphene_rect_t; radius:single):^GskRoundedRect;

    { Zeile entfernt  }
    function gsk_rounded_rect_normalize(self:PGskRoundedRect):^GskRoundedRect;

    { Zeile entfernt  }
    function gsk_rounded_rect_offset(self:PGskRoundedRect; dx:single; dy:single):^GskRoundedRect;

    { Zeile entfernt  }
    function gsk_rounded_rect_shrink(self:PGskRoundedRect; top:single; right:single; bottom:single; left:single):^GskRoundedRect;

    { Zeile entfernt  }
(* Const before type ignored *)
    function gsk_rounded_rect_is_rectilinear(self:PGskRoundedRect):gboolean;

    { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
    function gsk_rounded_rect_contains_point(self:PGskRoundedRect; point:Pgraphene_point_t):gboolean;

    { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
    function gsk_rounded_rect_contains_rect(self:PGskRoundedRect; rect:Pgraphene_rect_t):gboolean;

    { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
    function gsk_rounded_rect_intersects_rect(self:PGskRoundedRect; rect:Pgraphene_rect_t):gboolean;

    { Zeile entfernt  }
{$endif}
    { __GSK_ROUNDED_RECT_H__  }
    function gsk_rounded_rect_init(self:PGskRoundedRect; bounds:Pgraphene_rect_t; top_left:Pgraphene_size_t; top_right:Pgraphene_size_t; bottom_right:Pgraphene_size_t; 
               bottom_left:Pgraphene_size_t):PGskRoundedRect;
    begin
      { You must implement this function }
    end;
    function gsk_rounded_rect_init_copy(self:PGskRoundedRect; src:PGskRoundedRect):PGskRoundedRect;
    begin
      { You must implement this function }
    end;
    function gsk_rounded_rect_init_from_rect(self:PGskRoundedRect; bounds:Pgraphene_rect_t; radius:single):PGskRoundedRect;
    begin
      { You must implement this function }
    end;
    function gsk_rounded_rect_normalize(self:PGskRoundedRect):PGskRoundedRect;
    begin
      { You must implement this function }
    end;
    function gsk_rounded_rect_offset(self:PGskRoundedRect; dx:single; dy:single):PGskRoundedRect;
    begin
      { You must implement this function }
    end;
    function gsk_rounded_rect_shrink(self:PGskRoundedRect; top:single; right:single; bottom:single; left:single):PGskRoundedRect;
    begin
      { You must implement this function }
    end;
    function gsk_rounded_rect_is_rectilinear(self:PGskRoundedRect):gboolean;
    begin
      { You must implement this function }
    end;
    function gsk_rounded_rect_contains_point(self:PGskRoundedRect; point:Pgraphene_point_t):gboolean;
    begin
      { You must implement this function }
    end;
    function gsk_rounded_rect_contains_rect(self:PGskRoundedRect; rect:Pgraphene_rect_t):gboolean;
    begin
      { You must implement this function }
    end;
    function gsk_rounded_rect_intersects_rect(self:PGskRoundedRect; rect:Pgraphene_rect_t):gboolean;
    begin
      { You must implement this function }
    end;

