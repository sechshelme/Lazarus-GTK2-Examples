
unit gdkrectangle;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdkrectangle.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdkrectangle.h
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
PGdkRectangle  = ^GdkRectangle;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef __GDK_RECTANGLE_H__}
{$define __GDK_RECTANGLE_H__}
{$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}
{$include <gdk/gdktypes.h>}
{$include <gdk/gdkversionmacros.h>}




function gdk_rectangle_intersect(src1:PGdkRectangle; src2:PGdkRectangle; dest:PGdkRectangle):Tgboolean;cdecl;external;

procedure gdk_rectangle_union(src1:PGdkRectangle; src2:PGdkRectangle; dest:PGdkRectangle);cdecl;external;

function gdk_rectangle_equal(rect1:PGdkRectangle; rect2:PGdkRectangle):Tgboolean;cdecl;external;

function gdk_rectangle_contains_point(rect:PGdkRectangle; x:longint; y:longint):Tgboolean;cdecl;external;

function gdk_rectangle_get_type:TGType;cdecl;external;
function GDK_TYPE_RECTANGLE : longint; { return type might be wrong }


{$endif}


implementation

function GDK_TYPE_RECTANGLE : longint; { return type might be wrong }
  begin
    GDK_TYPE_RECTANGLE:=gdk_rectangle_get_type;
  end;


end.
