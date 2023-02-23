
unit gdkgltexture;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdkgltexture.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdkgltexture.h
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
PGdkGLContext  = ^GdkGLContext;
PGdkGLTexture  = ^GdkGLTexture;
PGdkTexture  = ^GdkTexture;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GDK_GL_TEXTURE_H__}
{$define __GDK_GL_TEXTURE_H__}
{$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}
{$include <gdk/gdkglcontext.h>}
{$include <gdk/gdktexture.h>}


function GDK_TYPE_GL_TEXTURE : longint; { return type might be wrong }

function GDK_GL_TEXTURE(obj : longint) : longint;

function GDK_IS_GL_TEXTURE(obj : longint) : longint;

type



function gdk_gl_texture_get_type:TGType;cdecl;external;

function gdk_gl_texture_new(context:PGdkGLContext; id:Tguint; width:longint; height:longint; destroy:TGDestroyNotify; 
           data:Tgpointer):PGdkTexture;cdecl;external;

procedure gdk_gl_texture_release(self:PGdkGLTexture);cdecl;external;

{$endif}


implementation

function GDK_TYPE_GL_TEXTURE : longint; { return type might be wrong }
  begin
    GDK_TYPE_GL_TEXTURE:=gdk_gl_texture_get_type;
  end;

function GDK_GL_TEXTURE(obj : longint) : longint;
begin
  GDK_GL_TEXTURE:=G_TYPE_CHECK_INSTANCE_CAST(obj,GDK_TYPE_GL_TEXTURE,GdkGLTexture);
end;

function GDK_IS_GL_TEXTURE(obj : longint) : longint;
begin
  GDK_IS_GL_TEXTURE:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GDK_TYPE_GL_TEXTURE);
end;


end.
