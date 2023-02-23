
unit gdkcontentproviderimpl;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdkcontentproviderimpl.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdkcontentproviderimpl.h
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
PGdkContentProvider  = ^GdkContentProvider;
PGValue  = ^GValue;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GDK_CONTENT_PROVIDER_IMPL_H__}
{$define __GDK_CONTENT_PROVIDER_IMPL_H__}
{$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}
{$include <gdk/gdkversionmacros.h>}
{$include <gdk/gdktypes.h>}



function gdk_content_provider_new_for_value(value:PGValue):PGdkContentProvider;cdecl;external;

function gdk_content_provider_new_typed(_type:TGType; args:array of const):PGdkContentProvider;cdecl;external;
function gdk_content_provider_new_typed(_type:TGType):PGdkContentProvider;cdecl;external;

function gdk_content_provider_new_union(providers:PPGdkContentProvider; n_providers:Tgsize):PGdkContentProvider;cdecl;external;

function gdk_content_provider_new_for_bytes(mime_type:Pchar; bytes:PGBytes):PGdkContentProvider;cdecl;external;

{$endif}


implementation


end.
