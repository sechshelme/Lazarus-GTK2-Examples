
unit gskcairorenderer;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gsk/gskcairorenderer.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gsk/gskcairorenderer.h
    -p
    -T
    -S
    -d
    -c
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



{$ifndef __GSK_CAIRO_RENDERER_H__}
{$define __GSK_CAIRO_RENDERER_H__}
{$include <cairo.h>}
{$include <gsk/gskrenderer.h>}


function GSK_TYPE_CAIRO_RENDERER : longint; { return type might be wrong }

function GSK_CAIRO_RENDERER(obj : longint) : longint;

function GSK_IS_CAIRO_RENDERER(obj : longint) : longint;

function GSK_CAIRO_RENDERER_CLASS(klass : longint) : longint;

function GSK_IS_CAIRO_RENDERER_CLASS(klass : longint) : longint;

function GSK_CAIRO_RENDERER_GET_CLASS(obj : longint) : longint;


type


function gsk_cairo_renderer_get_type:TGType;cdecl;external;

function gsk_cairo_renderer_new:PGskRenderer;cdecl;external;

{$endif}


implementation

function GSK_TYPE_CAIRO_RENDERER : longint; { return type might be wrong }
  begin
    GSK_TYPE_CAIRO_RENDERER:=gsk_cairo_renderer_get_type;
  end;

function GSK_CAIRO_RENDERER(obj : longint) : longint;
begin
  GSK_CAIRO_RENDERER:=G_TYPE_CHECK_INSTANCE_CAST(obj,GSK_TYPE_CAIRO_RENDERER,GskCairoRenderer);
end;

function GSK_IS_CAIRO_RENDERER(obj : longint) : longint;
begin
  GSK_IS_CAIRO_RENDERER:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GSK_TYPE_CAIRO_RENDERER);
end;

function GSK_CAIRO_RENDERER_CLASS(klass : longint) : longint;
begin
  GSK_CAIRO_RENDERER_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GSK_TYPE_CAIRO_RENDERER,GskCairoRendererClass);
end;

function GSK_IS_CAIRO_RENDERER_CLASS(klass : longint) : longint;
begin
  GSK_IS_CAIRO_RENDERER_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GSK_TYPE_CAIRO_RENDERER);
end;

function GSK_CAIRO_RENDERER_GET_CLASS(obj : longint) : longint;
begin
  GSK_CAIRO_RENDERER_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GSK_TYPE_CAIRO_RENDERER,GskCairoRendererClass);
end;


end.
