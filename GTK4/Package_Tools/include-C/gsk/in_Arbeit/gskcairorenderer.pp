
unit gskcairorenderer;
interface

{
  Automatically converted by H2Pas 1.0.0 from gskcairorenderer.h
  The following command line parameters were used:
    -p
    -T
    -d
    -c
    -e
    gskcairorenderer.h
}

{ Pointers to basic pascal types, inserted by h2pas conversion program.}
Type
  PLongint  = ^Longint;
  PSmallInt = ^SmallInt;
  PByte     = ^Byte;
  PWord     = ^Word;
  PDWord    = ^DWord;
  PDouble   = ^Double;

Type
PGskRenderer  = ^GskRenderer;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


{
 * Copyright © 2016  Endless 
 *             2018  Benjamin Otte
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
(** unsupported pragma#pragma once*)
{$if !defined (__GSK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gsk/gsk.h> can be included directly."}
{$endif}
{$include <cairo.h>}
{$include <gsk/gskrenderer.h>}

{ was #define dname def_expr }
function GSK_TYPE_CAIRO_RENDERER : longint; { return type might be wrong }

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GSK_CAIRO_RENDERER(obj : longint) : longint;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GSK_CAIRO_RENDERER_CLASS(klass : longint) : longint;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GSK_IS_CAIRO_RENDERER(obj : longint) : longint;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GSK_IS_CAIRO_RENDERER_CLASS(klass : longint) : longint;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GSK_CAIRO_RENDERER_GET_CLASS(obj : longint) : longint;

{*
 * GskCairoRenderer:
 *
 * A GSK renderer that is using cairo.
 *
 * Since it is using cairo, this renderer cannot support
 * 3D transformations.
  }
type

function gsk_cairo_renderer_get_type:TGType;cdecl;external;
function gsk_cairo_renderer_new:PGskRenderer;cdecl;external;

implementation

{ was #define dname def_expr }
function GSK_TYPE_CAIRO_RENDERER : longint; { return type might be wrong }
  begin
    GSK_TYPE_CAIRO_RENDERER:=gsk_cairo_renderer_get_type;
  end;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GSK_CAIRO_RENDERER(obj : longint) : longint;
begin
  GSK_CAIRO_RENDERER:=G_TYPE_CHECK_INSTANCE_CAST(obj,GSK_TYPE_CAIRO_RENDERER,GskCairoRenderer);
end;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GSK_CAIRO_RENDERER_CLASS(klass : longint) : longint;
begin
  GSK_CAIRO_RENDERER_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GSK_TYPE_CAIRO_RENDERER,GskCairoRendererClass);
end;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GSK_IS_CAIRO_RENDERER(obj : longint) : longint;
begin
  GSK_IS_CAIRO_RENDERER:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GSK_TYPE_CAIRO_RENDERER);
end;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GSK_IS_CAIRO_RENDERER_CLASS(klass : longint) : longint;
begin
  GSK_IS_CAIRO_RENDERER_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GSK_TYPE_CAIRO_RENDERER);
end;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GSK_CAIRO_RENDERER_GET_CLASS(obj : longint) : longint;
begin
  GSK_CAIRO_RENDERER_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GSK_TYPE_CAIRO_RENDERER,GskCairoRendererClass);
end;


end.
