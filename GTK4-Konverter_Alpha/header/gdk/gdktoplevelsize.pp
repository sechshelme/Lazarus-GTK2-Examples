
unit gdktoplevelsize;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdktoplevelsize.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdktoplevelsize.h
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
PGdkToplevelSize  = ^GdkToplevelSize;
Plongint  = ^longint;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GDK_TOPLEVEL_SIZE_H__}
{$define __GDK_TOPLEVEL_SIZE_H__}
{$if !defined(__GDK_H_INSIDE__) && !defined(GTK_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}
{$include <gdk/gdktypes.h>}
{$include <gdk/gdkversionmacros.h>}

type

function GDK_TYPE_TOPLEVEL_SIZE : longint; { return type might be wrong }


function gdk_toplevel_size_get_type:TGType;cdecl;external;

procedure gdk_toplevel_size_get_bounds(size:PGdkToplevelSize; bounds_width:Plongint; bounds_height:Plongint);cdecl;external;

procedure gdk_toplevel_size_set_size(size:PGdkToplevelSize; width:longint; height:longint);cdecl;external;

procedure gdk_toplevel_size_set_min_size(size:PGdkToplevelSize; min_width:longint; min_height:longint);cdecl;external;

procedure gdk_toplevel_size_set_shadow_width(size:PGdkToplevelSize; left:longint; right:longint; top:longint; bottom:longint);cdecl;external;

{$endif}


implementation

function GDK_TYPE_TOPLEVEL_SIZE : longint; { return type might be wrong }
  begin
    GDK_TYPE_TOPLEVEL_SIZE:=gdk_toplevel_size_get_type;
  end;


end.
