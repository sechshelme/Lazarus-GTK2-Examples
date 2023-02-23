
unit gdkrgba;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdkrgba.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdkrgba.h
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
PGdkRGBA  = ^GdkRGBA;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef __GDK_RGBA_H__}
{$define __GDK_RGBA_H__}
{$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}
{$include <gdk/gdktypes.h>}
{$include <gdk/gdkversionmacros.h>}

type
  PGdkRGBA = ^TGdkRGBA;
  TGdkRGBA = record
      red : single;
      green : single;
      blue : single;
      alpha : single;
    end;


function GDK_TYPE_RGBA : longint; { return type might be wrong }


function gdk_rgba_get_type:TGType;cdecl;external;

function gdk_rgba_copy(rgba:PGdkRGBA):PGdkRGBA;cdecl;external;

procedure gdk_rgba_free(rgba:PGdkRGBA);cdecl;external;

function gdk_rgba_is_clear(rgba:PGdkRGBA):Tgboolean;cdecl;external;

function gdk_rgba_is_opaque(rgba:PGdkRGBA):Tgboolean;cdecl;external;

function gdk_rgba_hash(p:Tgconstpointer):Tguint;cdecl;external;

function gdk_rgba_equal(p1:Tgconstpointer; p2:Tgconstpointer):Tgboolean;cdecl;external;

function gdk_rgba_parse(rgba:PGdkRGBA; spec:Pchar):Tgboolean;cdecl;external;

(* error 
char *   gdk_rgba_to_string (const GdkRGBA *rgba) G_GNUC_MALLOC;
 in declarator_list *)
  var
 : char;

{$endif}


implementation

function GDK_TYPE_RGBA : longint; { return type might be wrong }
  begin
    GDK_TYPE_RGBA:=gdk_rgba_get_type;
  end;


end.
