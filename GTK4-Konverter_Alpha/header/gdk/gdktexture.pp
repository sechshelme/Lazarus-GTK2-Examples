
unit gdktexture;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdktexture.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdktexture.h
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
Pchar  = ^char;
PGBytes  = ^GBytes;
PGdkPixbuf  = ^GdkPixbuf;
PGdkTexture  = ^GdkTexture;
PGdkTextureError  = ^GdkTextureError;
PGError  = ^GError;
PGFile  = ^GFile;
Pguchar  = ^guchar;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GDK_TEXTURE_H__}
{$define __GDK_TEXTURE_H__}
{$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}
{$include <gdk/gdkversionmacros.h>}
{$include <gdk/gdktypes.h>}
{$include <gdk-pixbuf/gdk-pixbuf.h>}


function GDK_TYPE_TEXTURE : longint; { return type might be wrong }

function GDK_TEXTURE(obj : longint) : longint;

function GDK_IS_TEXTURE(obj : longint) : longint;


type

function GDK_TEXTURE_ERROR : longint; { return type might be wrong }


function gdk_texture_error_quark:TGQuark;cdecl;external;

type
  PGdkTextureError = ^TGdkTextureError;
  TGdkTextureError = (GDK_TEXTURE_ERROR_TOO_LARGE,GDK_TEXTURE_ERROR_CORRUPT_IMAGE,
    GDK_TEXTURE_ERROR_UNSUPPORTED_CONTENT,
    GDK_TEXTURE_ERROR_UNSUPPORTED_FORMAT);


function gdk_texture_get_type:TGType;cdecl;external;

function gdk_texture_new_for_pixbuf(pixbuf:PGdkPixbuf):PGdkTexture;cdecl;external;

function gdk_texture_new_from_resource(resource_path:Pchar):PGdkTexture;cdecl;external;

function gdk_texture_new_from_file(file:PGFile; error:PPGError):PGdkTexture;cdecl;external;

function gdk_texture_new_from_filename(path:Pchar; error:PPGError):PGdkTexture;cdecl;external;

function gdk_texture_new_from_bytes(bytes:PGBytes; error:PPGError):PGdkTexture;cdecl;external;

function gdk_texture_get_width(texture:PGdkTexture):longint;cdecl;external;

function gdk_texture_get_height(texture:PGdkTexture):longint;cdecl;external;

procedure gdk_texture_download(texture:PGdkTexture; data:Pguchar; stride:Tgsize);cdecl;external;

function gdk_texture_save_to_png(texture:PGdkTexture; filename:Pchar):Tgboolean;cdecl;external;

function gdk_texture_save_to_png_bytes(texture:PGdkTexture):PGBytes;cdecl;external;

function gdk_texture_save_to_tiff(texture:PGdkTexture; filename:Pchar):Tgboolean;cdecl;external;

function gdk_texture_save_to_tiff_bytes(texture:PGdkTexture):PGBytes;cdecl;external;

{$endif}


implementation

function GDK_TYPE_TEXTURE : longint; { return type might be wrong }
  begin
    GDK_TYPE_TEXTURE:=gdk_texture_get_type;
  end;

function GDK_TEXTURE(obj : longint) : longint;
begin
  GDK_TEXTURE:=G_TYPE_CHECK_INSTANCE_CAST(obj,GDK_TYPE_TEXTURE,GdkTexture);
end;

function GDK_IS_TEXTURE(obj : longint) : longint;
begin
  GDK_IS_TEXTURE:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GDK_TYPE_TEXTURE);
end;

function GDK_TEXTURE_ERROR : longint; { return type might be wrong }
  begin
    GDK_TEXTURE_ERROR:=gdk_texture_error_quark;
  end;


end.
