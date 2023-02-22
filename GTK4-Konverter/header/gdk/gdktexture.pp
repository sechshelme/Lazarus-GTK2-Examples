
  Type
  Pchar  = ^char;
  PGdkPixbuf  = ^GdkPixbuf;
  PGdkTexture  = ^GdkTexture;
  PGError  = ^GError;
  PGFile  = ^GFile;
  Pguchar  = ^guchar;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { gdktexture.h
   *
   * Copyright 2016  Benjamin Otte
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
{$ifndef __GDK_TEXTURE_H__}
{$define __GDK_TEXTURE_H__}  
{$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}
{$include <gdk/gdkversionmacros.h>}
{$include <gdk/gdktypes.h>}
{$include <gdk-pixbuf/gdk-pixbuf.h>}

  { was #define dname def_expr }
  function GDK_TYPE_TEXTURE : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_TEXTURE(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_TEXTURE(obj : longint) : longint;  

(* error 
G_DEFINE_AUTOPTR_CLEANUP_FUNC(GdkTexture, g_object_unref)
(* error 
G_DEFINE_AUTOPTR_CLEANUP_FUNC(GdkTexture, g_object_unref)
 in declarator_list *)
 in declarator_list *)
  { was #define dname def_expr }
  function GDK_TEXTURE_ERROR : longint; { return type might be wrong }

(* error 
GQuark gdk_texture_error_quark (void);
 in declarator_list *)
  {*
   * GdkTextureError:
   * @GDK_TEXTURE_ERROR_TOO_LARGE: Not enough memory to handle this image
   * @GDK_TEXTURE_ERROR_CORRUPT_IMAGE: The image data appears corrupted
   * @GDK_TEXTURE_ERROR_UNSUPPORTED_CONTENT: The image contains features
   *   that cannot be loaded
   * @GDK_TEXTURE_ERROR_UNSUPPORTED_FORMAT: The image format is not supported
   *
   * Possible errors that can be returned by `GdkTexture` constructors.
   *
   * Since: 4.6
    }

  type
    GdkTextureError = (GDK_TEXTURE_ERROR_TOO_LARGE,GDK_TEXTURE_ERROR_CORRUPT_IMAGE,
      GDK_TEXTURE_ERROR_UNSUPPORTED_CONTENT,
      GDK_TEXTURE_ERROR_UNSUPPORTED_FORMAT
      );
(* error 
GType                   gdk_texture_get_type                   (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;

  function gdk_texture_new_for_pixbuf(pixbuf:PGdkPixbuf):^GdkTexture;

(* Const before type ignored *)
  function gdk_texture_new_from_resource(resource_path:Pchar):^GdkTexture;

  function gdk_texture_new_from_file(file:PGFile; error:PPGError):^GdkTexture;

(* error 
GdkTexture *            gdk_texture_new_from_filename          (const char      *path,
(* error 
                                                                GError         **error);
 in declarator_list *)
 in declarator_list *)
(* error 
GdkTexture *            gdk_texture_new_from_bytes             (GBytes          *bytes,
(* error 
                                                                GError         **error);
 in declarator_list *)
 in declarator_list *)
(* error 
int                     gdk_texture_get_width                  (GdkTexture      *texture) G_GNUC_PURE;
 in declarator_list *)

    var
 : longint;
(* error 
int                     gdk_texture_get_height                 (GdkTexture      *texture) G_GNUC_PURE;
 in declarator_list *)
 : longint;

  procedure gdk_texture_download(texture:PGdkTexture; data:Pguchar; stride:gsize);

(* Const before type ignored *)
  function gdk_texture_save_to_png(texture:PGdkTexture; filename:Pchar):gboolean;

(* error 
GBytes *                gdk_texture_save_to_png_bytes          (GdkTexture      *texture);
 in declarator_list *)
(* error 
gboolean                gdk_texture_save_to_tiff               (GdkTexture      *texture,
(* error 
                                                                const char      *filename);
 in declarator_list *)
 in declarator_list *)
(* error 
GBytes *                gdk_texture_save_to_tiff_bytes         (GdkTexture      *texture);
 in declarator_list *)
{$endif}
  { __GDK_TEXTURE_H__  }
  { was #define dname def_expr }
  function GDK_TYPE_TEXTURE : longint; { return type might be wrong }
    begin
      GDK_TYPE_TEXTURE:=gdk_texture_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_TEXTURE(obj : longint) : longint;
  begin
    GDK_TEXTURE:=G_TYPE_CHECK_INSTANCE_CAST(obj,GDK_TYPE_TEXTURE,GdkTexture);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_TEXTURE(obj : longint) : longint;
  begin
    GDK_IS_TEXTURE:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GDK_TYPE_TEXTURE);
  end;

  { was #define dname def_expr }
  function GDK_TEXTURE_ERROR : longint; { return type might be wrong }
    begin
      GDK_TEXTURE_ERROR:=gdk_texture_error_quark;
    end;

  function gdk_texture_new_for_pixbuf(pixbuf:PGdkPixbuf):PGdkTexture;
  begin
    { You must implement this function }
  end;
  function gdk_texture_new_from_resource(resource_path:Pchar):PGdkTexture;
  begin
    { You must implement this function }
  end;
  function gdk_texture_new_from_file(file:PGFile; error:PPGError):PGdkTexture;
  begin
    { You must implement this function }
  end;
  procedure gdk_texture_download(texture:PGdkTexture; data:Pguchar; stride:gsize);
  begin
    { You must implement this function }
  end;
  function gdk_texture_save_to_png(texture:PGdkTexture; filename:Pchar):gboolean;
  begin
    { You must implement this function }
  end;

