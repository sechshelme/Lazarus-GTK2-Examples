
unit gtkglarea;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkglarea.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkglarea.h
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
PGError  = ^GError;
PGtkGLArea  = ^GtkGLArea;
PGtkGLAreaClass  = ^GtkGLAreaClass;
PGtkWidget  = ^GtkWidget;
Plongint  = ^longint;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_GL_AREA_H__}
{$define __GTK_GL_AREA_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}


function GTK_TYPE_GL_AREA : longint; { return type might be wrong }

function GTK_GL_AREA(obj : longint) : longint;

function GTK_IS_GL_AREA(obj : longint) : longint;

function GTK_GL_AREA_CLASS(klass : longint) : longint;

function GTK_IS_GL_AREA_CLASS(klass : longint) : longint;

function GTK_GL_AREA_GET_CLASS(obj : longint) : longint;

type

  PGtkGLArea = ^TGtkGLArea;
  TGtkGLArea = record
      parent_instance : TGtkWidget;
    end;





  PGtkGLAreaClass = ^TGtkGLAreaClass;
  TGtkGLAreaClass = record
      parent_class : TGtkWidgetClass;
      render : function (area:PGtkGLArea; context:PGdkGLContext):Tgboolean;cdecl;
      resize : procedure (area:PGtkGLArea; width:longint; height:longint);cdecl;
      create_context : function (area:PGtkGLArea):PGdkGLContext;cdecl;
      _padding : array[0..7] of Tgpointer;
    end;



function gtk_gl_area_get_type:TGType;cdecl;external;

function gtk_gl_area_new:PGtkWidget;cdecl;external;

procedure gtk_gl_area_set_use_es(area:PGtkGLArea; use_es:Tgboolean);cdecl;external;

function gtk_gl_area_get_use_es(area:PGtkGLArea):Tgboolean;cdecl;external;

procedure gtk_gl_area_set_required_version(area:PGtkGLArea; major:longint; minor:longint);cdecl;external;

procedure gtk_gl_area_get_required_version(area:PGtkGLArea; major:Plongint; minor:Plongint);cdecl;external;

function gtk_gl_area_get_has_depth_buffer(area:PGtkGLArea):Tgboolean;cdecl;external;

procedure gtk_gl_area_set_has_depth_buffer(area:PGtkGLArea; has_depth_buffer:Tgboolean);cdecl;external;

function gtk_gl_area_get_has_stencil_buffer(area:PGtkGLArea):Tgboolean;cdecl;external;

procedure gtk_gl_area_set_has_stencil_buffer(area:PGtkGLArea; has_stencil_buffer:Tgboolean);cdecl;external;

function gtk_gl_area_get_auto_render(area:PGtkGLArea):Tgboolean;cdecl;external;

procedure gtk_gl_area_set_auto_render(area:PGtkGLArea; auto_render:Tgboolean);cdecl;external;

procedure gtk_gl_area_queue_render(area:PGtkGLArea);cdecl;external;

function gtk_gl_area_get_context(area:PGtkGLArea):PGdkGLContext;cdecl;external;

procedure gtk_gl_area_make_current(area:PGtkGLArea);cdecl;external;

procedure gtk_gl_area_attach_buffers(area:PGtkGLArea);cdecl;external;

procedure gtk_gl_area_set_error(area:PGtkGLArea; error:PGError);cdecl;external;

function gtk_gl_area_get_error(area:PGtkGLArea):PGError;cdecl;external;

{$endif}


implementation

function GTK_TYPE_GL_AREA : longint; { return type might be wrong }
  begin
    GTK_TYPE_GL_AREA:=gtk_gl_area_get_type;
  end;

function GTK_GL_AREA(obj : longint) : longint;
begin
  GTK_GL_AREA:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_GL_AREA,GtkGLArea);
end;

function GTK_IS_GL_AREA(obj : longint) : longint;
begin
  GTK_IS_GL_AREA:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_GL_AREA);
end;

function GTK_GL_AREA_CLASS(klass : longint) : longint;
begin
  GTK_GL_AREA_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_GL_AREA,GtkGLAreaClass);
end;

function GTK_IS_GL_AREA_CLASS(klass : longint) : longint;
begin
  GTK_IS_GL_AREA_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_GL_AREA);
end;

function GTK_GL_AREA_GET_CLASS(obj : longint) : longint;
begin
  GTK_GL_AREA_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_GL_AREA,GtkGLAreaClass);
end;


end.
