
unit gskbroadwayrenderer;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gsk/broadway/gskbroadwayrenderer.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gsk/broadway/gskbroadwayrenderer.h
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



{$ifndef __GSK_BROADWAY_RENDERER_H__}
{$define __GSK_BROADWAY_RENDERER_H__}
{$include <gdk/gdk.h>}
{$include <gsk/gskrenderer.h>}
{$ifdef GDK_WINDOWING_BROADWAY}
{$include <gdk/broadway/gdkbroadway.h>}


function GSK_TYPE_BROADWAY_RENDERER : longint; { return type might be wrong }

function GSK_BROADWAY_RENDERER(obj : longint) : longint;

function GSK_IS_BROADWAY_RENDERER(obj : longint) : longint;

function GSK_BROADWAY_RENDERER_CLASS(klass : longint) : longint;

function GSK_IS_BROADWAY_RENDERER_CLASS(klass : longint) : longint;

function GSK_BROADWAY_RENDERER_GET_CLASS(obj : longint) : longint;

type


function gsk_broadway_renderer_get_type:TGType;cdecl;external;

function gsk_broadway_renderer_new:PGskRenderer;cdecl;external;

{$endif}

{$endif}


implementation

function GSK_TYPE_BROADWAY_RENDERER : longint; { return type might be wrong }
  begin
    GSK_TYPE_BROADWAY_RENDERER:=gsk_broadway_renderer_get_type;
  end;

function GSK_BROADWAY_RENDERER(obj : longint) : longint;
begin
  GSK_BROADWAY_RENDERER:=G_TYPE_CHECK_INSTANCE_CAST(obj,GSK_TYPE_BROADWAY_RENDERER,GskBroadwayRenderer);
end;

function GSK_IS_BROADWAY_RENDERER(obj : longint) : longint;
begin
  GSK_IS_BROADWAY_RENDERER:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GSK_TYPE_BROADWAY_RENDERER);
end;

function GSK_BROADWAY_RENDERER_CLASS(klass : longint) : longint;
begin
  GSK_BROADWAY_RENDERER_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GSK_TYPE_BROADWAY_RENDERER,GskBroadwayRendererClass);
end;

function GSK_IS_BROADWAY_RENDERER_CLASS(klass : longint) : longint;
begin
  GSK_IS_BROADWAY_RENDERER_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GSK_TYPE_BROADWAY_RENDERER);
end;

function GSK_BROADWAY_RENDERER_GET_CLASS(obj : longint) : longint;
begin
  GSK_BROADWAY_RENDERER_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GSK_TYPE_BROADWAY_RENDERER,GskBroadwayRendererClass);
end;


end.
