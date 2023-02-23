
unit gskglrenderer;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gsk/gl/gskglrenderer.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gsk/gl/gskglrenderer.h
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



{$ifndef __GSK_GL_RENDERER_H__}
{$define __GSK_GL_RENDERER_H__}
{$include <gsk/gskrenderer.h>}


function GSK_TYPE_GL_RENDERER : longint; { return type might be wrong }

function GSK_GL_RENDERER(obj : longint) : longint;

function GSK_IS_GL_RENDERER(obj : longint) : longint;

function GSK_GL_RENDERER_CLASS(klass : longint) : longint;

function GSK_IS_GL_RENDERER_CLASS(klass : longint) : longint;

function GSK_GL_RENDERER_GET_CLASS(obj : longint) : longint;

type


function gsk_gl_renderer_get_type:TGType;cdecl;external;

function gsk_gl_renderer_new:PGskRenderer;cdecl;external;
(* error 
GType        gsk_ngl_renderer_get_type (void) ;
 in declarator_list *)
(* error 
GskRenderer *gsk_ngl_renderer_new      (void);
 in declarator_list *)

{$endif}


implementation

function GSK_TYPE_GL_RENDERER : longint; { return type might be wrong }
  begin
    GSK_TYPE_GL_RENDERER:=gsk_gl_renderer_get_type;
  end;

function GSK_GL_RENDERER(obj : longint) : longint;
begin
  GSK_GL_RENDERER:=G_TYPE_CHECK_INSTANCE_CAST(obj,GSK_TYPE_GL_RENDERER,GskGLRenderer);
end;

function GSK_IS_GL_RENDERER(obj : longint) : longint;
begin
  GSK_IS_GL_RENDERER:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GSK_TYPE_GL_RENDERER);
end;

function GSK_GL_RENDERER_CLASS(klass : longint) : longint;
begin
  GSK_GL_RENDERER_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GSK_TYPE_GL_RENDERER,GskGLRendererClass);
end;

function GSK_IS_GL_RENDERER_CLASS(klass : longint) : longint;
begin
  GSK_IS_GL_RENDERER_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GSK_TYPE_GL_RENDERER);
end;

function GSK_GL_RENDERER_GET_CLASS(obj : longint) : longint;
begin
  GSK_GL_RENDERER_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GSK_TYPE_GL_RENDERER,GskGLRendererClass);
end;


end.
