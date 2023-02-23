
unit gskrenderer;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gsk/gskrenderer.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gsk/gskrenderer.h
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
Pcairo_region_t  = ^cairo_region_t;
PGdkSurface  = ^GdkSurface;
PGdkTexture  = ^GdkTexture;
PGError  = ^GError;
Pgraphene_rect_t  = ^graphene_rect_t;
PGskRenderer  = ^GskRenderer;
PGskRenderNode  = ^GskRenderNode;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GSK_RENDERER_H__}
{$define __GSK_RENDERER_H__}
{$if !defined (__GSK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gsk/gsk.h> can be included directly."}
{$endif}
{$include <gsk/gsktypes.h>}
{$include <gsk/gskrendernode.h>}


function GSK_TYPE_RENDERER : longint; { return type might be wrong }

function GSK_RENDERER(obj : longint) : longint;

function GSK_IS_RENDERER(obj : longint) : longint;

type


function gsk_renderer_get_type:TGType;cdecl;external;

function gsk_renderer_new_for_surface(surface:PGdkSurface):PGskRenderer;cdecl;external;

function gsk_renderer_get_surface(renderer:PGskRenderer):PGdkSurface;cdecl;external;

function gsk_renderer_realize(renderer:PGskRenderer; surface:PGdkSurface; error:PPGError):Tgboolean;cdecl;external;

procedure gsk_renderer_unrealize(renderer:PGskRenderer);cdecl;external;

function gsk_renderer_is_realized(renderer:PGskRenderer):Tgboolean;cdecl;external;

function gsk_renderer_render_texture(renderer:PGskRenderer; root:PGskRenderNode; viewport:Pgraphene_rect_t):PGdkTexture;cdecl;external;

procedure gsk_renderer_render(renderer:PGskRenderer; root:PGskRenderNode; region:Pcairo_region_t);cdecl;external;

{$endif}


implementation

function GSK_TYPE_RENDERER : longint; { return type might be wrong }
  begin
    GSK_TYPE_RENDERER:=gsk_renderer_get_type;
  end;

function GSK_RENDERER(obj : longint) : longint;
begin
  GSK_RENDERER:=G_TYPE_CHECK_INSTANCE_CAST(obj,GSK_TYPE_RENDERER,GskRenderer);
end;

function GSK_IS_RENDERER(obj : longint) : longint;
begin
  GSK_IS_RENDERER:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GSK_TYPE_RENDERER);
end;


end.
