
  Type
  PGdkGLContext  = ^GdkGLContext;
  PGError  = ^GError;
  PGtkGLArea  = ^GtkGLArea;
  PGtkWidget  = ^GtkWidget;
  Plongint  = ^longint;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GTK - The GIMP Toolkit
   *
   * gtkglarea.h: A GL drawing area
   *
   * Copyright © 2014  Emmanuele Bassi
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
{$ifndef __GTK_GL_AREA_H__}
{$define __GTK_GL_AREA_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}

  { was #define dname def_expr }
  function GTK_TYPE_GL_AREA : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_GL_AREA(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_GL_AREA(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_GL_AREA_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_GL_AREA_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_GL_AREA_GET_CLASS(obj : longint) : longint;  


  type
    _GtkGLArea = GtkGLArea;
    _GtkGLAreaClass = GtkGLAreaClass;
  {< private > }
    _GtkGLArea = record
        parent_instance : GtkWidget;
      end;

  {*
   * GtkGLAreaClass:
   * @render: class closure for the `GtkGLArea::render` signal
   * @resize: class closeure for the `GtkGLArea::resize` signal
   * @create_context: class closure for the `GtkGLArea::create-context` signal
   *
   * The `GtkGLAreaClass` structure contains only private data.
    }
  {< private > }
  {< public > }
  {< private > }
    _GtkGLAreaClass = record
        parent_class : GtkWidgetClass;
        render : function (area:PGtkGLArea; context:PGdkGLContext):gboolean;cdecl;
        resize : procedure (area:PGtkGLArea; width:longint; height:longint);cdecl;
        create_context : function (area:PGtkGLArea):PGdkGLContext;cdecl;
        _padding : array[0..7] of gpointer;
      end;

(* error 
GType gtk_gl_area_get_type (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;

  function gtk_gl_area_new:^GtkWidget;

  procedure gtk_gl_area_set_use_es(area:PGtkGLArea; use_es:gboolean);

  function gtk_gl_area_get_use_es(area:PGtkGLArea):gboolean;

  procedure gtk_gl_area_set_required_version(area:PGtkGLArea; major:longint; minor:longint);

  procedure gtk_gl_area_get_required_version(area:PGtkGLArea; major:Plongint; minor:Plongint);

  function gtk_gl_area_get_has_depth_buffer(area:PGtkGLArea):gboolean;

  procedure gtk_gl_area_set_has_depth_buffer(area:PGtkGLArea; has_depth_buffer:gboolean);

  function gtk_gl_area_get_has_stencil_buffer(area:PGtkGLArea):gboolean;

  procedure gtk_gl_area_set_has_stencil_buffer(area:PGtkGLArea; has_stencil_buffer:gboolean);

  function gtk_gl_area_get_auto_render(area:PGtkGLArea):gboolean;

  procedure gtk_gl_area_set_auto_render(area:PGtkGLArea; auto_render:gboolean);

  procedure gtk_gl_area_queue_render(area:PGtkGLArea);

  function gtk_gl_area_get_context(area:PGtkGLArea):^GdkGLContext;

  procedure gtk_gl_area_make_current(area:PGtkGLArea);

  procedure gtk_gl_area_attach_buffers(area:PGtkGLArea);

(* Const before type ignored *)
  procedure gtk_gl_area_set_error(area:PGtkGLArea; error:PGError);

  function gtk_gl_area_get_error(area:PGtkGLArea):^GError;

{$endif}
  { __GTK_GL_AREA_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_GL_AREA : longint; { return type might be wrong }
    begin
      GTK_TYPE_GL_AREA:=gtk_gl_area_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_GL_AREA(obj : longint) : longint;
  begin
    GTK_GL_AREA:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_GL_AREA,GtkGLArea);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_GL_AREA(obj : longint) : longint;
  begin
    GTK_IS_GL_AREA:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_GL_AREA);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_GL_AREA_CLASS(klass : longint) : longint;
  begin
    GTK_GL_AREA_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_GL_AREA,GtkGLAreaClass);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_GL_AREA_CLASS(klass : longint) : longint;
  begin
    GTK_IS_GL_AREA_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_GL_AREA);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_GL_AREA_GET_CLASS(obj : longint) : longint;
  begin
    GTK_GL_AREA_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_GL_AREA,GtkGLAreaClass);
  end;

  function gtk_gl_area_new:PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_gl_area_set_use_es(area:PGtkGLArea; use_es:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_gl_area_get_use_es(area:PGtkGLArea):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_gl_area_set_required_version(area:PGtkGLArea; major:longint; minor:longint);
  begin
    { You must implement this function }
  end;
  procedure gtk_gl_area_get_required_version(area:PGtkGLArea; major:Plongint; minor:Plongint);
  begin
    { You must implement this function }
  end;
  function gtk_gl_area_get_has_depth_buffer(area:PGtkGLArea):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_gl_area_set_has_depth_buffer(area:PGtkGLArea; has_depth_buffer:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_gl_area_get_has_stencil_buffer(area:PGtkGLArea):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_gl_area_set_has_stencil_buffer(area:PGtkGLArea; has_stencil_buffer:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_gl_area_get_auto_render(area:PGtkGLArea):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_gl_area_set_auto_render(area:PGtkGLArea; auto_render:gboolean);
  begin
    { You must implement this function }
  end;
  procedure gtk_gl_area_queue_render(area:PGtkGLArea);
  begin
    { You must implement this function }
  end;
  function gtk_gl_area_get_context(area:PGtkGLArea):PGdkGLContext;
  begin
    { You must implement this function }
  end;
  procedure gtk_gl_area_make_current(area:PGtkGLArea);
  begin
    { You must implement this function }
  end;
  procedure gtk_gl_area_attach_buffers(area:PGtkGLArea);
  begin
    { You must implement this function }
  end;
  procedure gtk_gl_area_set_error(area:PGtkGLArea; error:PGError);
  begin
    { You must implement this function }
  end;
  function gtk_gl_area_get_error(area:PGtkGLArea):PGError;
  begin
    { You must implement this function }
  end;

