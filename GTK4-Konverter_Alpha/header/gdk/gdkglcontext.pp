
unit gdkglcontext;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdkglcontext.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdkglcontext.h
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
PGdkDisplay  = ^GdkDisplay;
PGdkGLAPI  = ^GdkGLAPI;
PGdkGLContext  = ^GdkGLContext;
PGdkSurface  = ^GdkSurface;
PGError  = ^GError;
Plongint  = ^longint;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GDK_GL_CONTEXT_H__}
{$define __GDK_GL_CONTEXT_H__}
{$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}
{$include <gdk/gdkversionmacros.h>}
{$include <gdk/gdktypes.h>}



type
  PGdkGLAPI = ^TGdkGLAPI;
  TGdkGLAPI = (GDK_GL_API_GL := 1 shl 0,GDK_GL_API_GLES := 1 shl 1
    );

function GDK_TYPE_GL_CONTEXT : longint; { return type might be wrong }

function GDK_GL_CONTEXT(obj : longint) : longint;

function GDK_IS_GL_CONTEXT(obj : longint) : longint;

function GDK_GL_ERROR : longint; { return type might be wrong }


function gdk_gl_error_quark:TGQuark;cdecl;external;

function gdk_gl_context_get_type:TGType;cdecl;external;

function gdk_gl_context_get_display(context:PGdkGLContext):PGdkDisplay;cdecl;external;

function gdk_gl_context_get_surface(context:PGdkGLContext):PGdkSurface;cdecl;external;
(* error 
GdkGLContext *          gdk_gl_context_get_shared_context       (GdkGLContext  *context);
 in declarator_list *)

procedure gdk_gl_context_get_version(context:PGdkGLContext; major:Plongint; minor:Plongint);cdecl;external;

function gdk_gl_context_is_legacy(context:PGdkGLContext):Tgboolean;cdecl;external;

function gdk_gl_context_is_shared(self:PGdkGLContext; other:PGdkGLContext):Tgboolean;cdecl;external;

procedure gdk_gl_context_set_required_version(context:PGdkGLContext; major:longint; minor:longint);cdecl;external;

procedure gdk_gl_context_get_required_version(context:PGdkGLContext; major:Plongint; minor:Plongint);cdecl;external;

procedure gdk_gl_context_set_debug_enabled(context:PGdkGLContext; enabled:Tgboolean);cdecl;external;

function gdk_gl_context_get_debug_enabled(context:PGdkGLContext):Tgboolean;cdecl;external;

procedure gdk_gl_context_set_forward_compatible(context:PGdkGLContext; compatible:Tgboolean);cdecl;external;

function gdk_gl_context_get_forward_compatible(context:PGdkGLContext):Tgboolean;cdecl;external;

procedure gdk_gl_context_set_allowed_apis(self:PGdkGLContext; apis:TGdkGLAPI);cdecl;external;

function gdk_gl_context_get_allowed_apis(self:PGdkGLContext):TGdkGLAPI;cdecl;external;

function gdk_gl_context_get_api(self:PGdkGLContext):TGdkGLAPI;cdecl;external;
(* error 
void                    gdk_gl_context_set_use_es               (GdkGLContext  *context,
(* error 
                                                                 int            use_es);
 in declarator_list *)
 in declarator_list *)

function gdk_gl_context_get_use_es(context:PGdkGLContext):Tgboolean;cdecl;external;

function gdk_gl_context_realize(context:PGdkGLContext; error:PPGError):Tgboolean;cdecl;external;

procedure gdk_gl_context_make_current(context:PGdkGLContext);cdecl;external;

function gdk_gl_context_get_current:PGdkGLContext;cdecl;external;

procedure gdk_gl_context_clear_current;cdecl;external;

{$endif}


implementation

function GDK_TYPE_GL_CONTEXT : longint; { return type might be wrong }
  begin
    GDK_TYPE_GL_CONTEXT:=gdk_gl_context_get_type;
  end;

function GDK_GL_CONTEXT(obj : longint) : longint;
begin
  GDK_GL_CONTEXT:=G_TYPE_CHECK_INSTANCE_CAST(obj,GDK_TYPE_GL_CONTEXT,GdkGLContext);
end;

function GDK_IS_GL_CONTEXT(obj : longint) : longint;
begin
  GDK_IS_GL_CONTEXT:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GDK_TYPE_GL_CONTEXT);
end;

function GDK_GL_ERROR : longint; { return type might be wrong }
  begin
    GDK_GL_ERROR:=gdk_gl_error_quark;
  end;


end.
