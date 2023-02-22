
  Type
  Pchar  = ^char;
  PGBytes  = ^GBytes;
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
  { Zeile entfernt  }

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

  { Zeile entfernt  }

  type
    _GdkTextureClass = GdkTextureClass;

  { was #define dname def_expr }
  function GDK_TEXTURE_ERROR : longint; { return type might be wrong }

  { Zeile entfernt  }
  function gdk_texture_error_quark:GQuark;

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
  { Zeile entfernt  }

  function gdk_texture_get_type:GType;

  { Zeile entfernt  }
  function gdk_texture_new_for_pixbuf(pixbuf:PGdkPixbuf):^GdkTexture;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gdk_texture_new_from_resource(resource_path:Pchar):^GdkTexture;

  { Zeile entfernt  }
  function gdk_texture_new_from_file(file:PGFile; error:PPGError):^GdkTexture;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gdk_texture_new_from_filename(path:Pchar; error:PPGError):^GdkTexture;

  { Zeile entfernt  }
  function gdk_texture_new_from_bytes(bytes:PGBytes; error:PPGError):^GdkTexture;

  { Zeile entfernt  }
  function gdk_texture_get_width(texture:PGdkTexture):longint;

  { Zeile entfernt  }
  function gdk_texture_get_height(texture:PGdkTexture):longint;

  { Zeile entfernt  }
  procedure gdk_texture_download(texture:PGdkTexture; data:Pguchar; stride:gsize);

  { Zeile entfernt  }
(* Const before type ignored *)
  function gdk_texture_save_to_png(texture:PGdkTexture; filename:Pchar):gboolean;

  { Zeile entfernt  }
  function gdk_texture_save_to_png_bytes(texture:PGdkTexture):^GBytes;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gdk_texture_save_to_tiff(texture:PGdkTexture; filename:Pchar):gboolean;

  { Zeile entfernt  }
  function gdk_texture_save_to_tiff_bytes(texture:PGdkTexture):^GBytes;

  { Zeile entfernt  }
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

  function gdk_texture_error_quark:GQuark;
  begin
    { You must implement this function }
  end;
  function gdk_texture_get_type:GType;
  begin
    { You must implement this function }
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
  function gdk_texture_new_from_filename(path:Pchar; error:PPGError):PGdkTexture;
  begin
    { You must implement this function }
  end;
  function gdk_texture_new_from_bytes(bytes:PGBytes; error:PPGError):PGdkTexture;
  begin
    { You must implement this function }
  end;
  function gdk_texture_get_width(texture:PGdkTexture):longint;
  begin
    { You must implement this function }
  end;
  function gdk_texture_get_height(texture:PGdkTexture):longint;
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
  function gdk_texture_save_to_png_bytes(texture:PGdkTexture):PGBytes;
  begin
    { You must implement this function }
  end;
  function gdk_texture_save_to_tiff(texture:PGdkTexture; filename:Pchar):gboolean;
  begin
    { You must implement this function }
  end;
  function gdk_texture_save_to_tiff_bytes(texture:PGdkTexture):PGBytes;
  begin
    { You must implement this function }
  end;

