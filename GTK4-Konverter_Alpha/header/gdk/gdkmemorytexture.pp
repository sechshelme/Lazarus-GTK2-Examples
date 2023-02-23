
unit gdkmemorytexture;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdkmemorytexture.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdkmemorytexture.h
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
PGBytes  = ^GBytes;
PGdkTexture  = ^GdkTexture;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GDK_MEMORY_TEXTURE__H__}
{$define __GDK_MEMORY_TEXTURE__H__}
{$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}
{$include <gdk/gdkenums.h>}
{$include <gdk/gdktexture.h>}


{$if G_BYTE_ORDER == G_LITTLE_ENDIAN}

const
  GDK_MEMORY_DEFAULT = GDK_MEMORY_B8G8R8A8_PREMULTIPLIED;  
{$else G_BYTE_ORDER == G_BIG_ENDIAN}

const
  GDK_MEMORY_DEFAULT = GDK_MEMORY_A8R8G8B8_PREMULTIPLIED;  
{$else}
{$error "Unknown byte order for GDK_MEMORY_DEFAULT"}
{$endif}

function GDK_TYPE_MEMORY_TEXTURE : longint; { return type might be wrong }

function GDK_MEMORY_TEXTURE(obj : longint) : longint;

function GDK_IS_MEMORY_TEXTURE(obj : longint) : longint;

type



function gdk_memory_texture_get_type:TGType;cdecl;external;

function gdk_memory_texture_new(width:longint; height:longint; format:TGdkMemoryFormat; bytes:PGBytes; stride:Tgsize):PGdkTexture;cdecl;external;

{$endif}


implementation

function GDK_TYPE_MEMORY_TEXTURE : longint; { return type might be wrong }
  begin
    GDK_TYPE_MEMORY_TEXTURE:=gdk_memory_texture_get_type;
  end;

function GDK_MEMORY_TEXTURE(obj : longint) : longint;
begin
  GDK_MEMORY_TEXTURE:=G_TYPE_CHECK_INSTANCE_CAST(obj,GDK_TYPE_MEMORY_TEXTURE,GdkMemoryTexture);
end;

function GDK_IS_MEMORY_TEXTURE(obj : longint) : longint;
begin
  GDK_IS_MEMORY_TEXTURE:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GDK_TYPE_MEMORY_TEXTURE);
end;


end.
