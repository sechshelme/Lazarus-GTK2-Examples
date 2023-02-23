
unit gdkdragsurface;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdkdragsurface.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdkdragsurface.h
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
PGdkDragSurface  = ^GdkDragSurface;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GDK_DRAG_SURFACE_H__}
{$define __GDK_DRAG_SURFACE_H__}
{$if !defined(__GDK_H_INSIDE__) && !defined(GTK_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}
{$include <gdk/gdksurface.h>}


function GDK_TYPE_DRAG_SURFACE : longint; { return type might be wrong }




function gdk_drag_surface_present(drag_surface:PGdkDragSurface; width:longint; height:longint):Tgboolean;cdecl;external;

{$endif}


implementation

function GDK_TYPE_DRAG_SURFACE : longint; { return type might be wrong }
  begin
    GDK_TYPE_DRAG_SURFACE:=gdk_drag_surface_get_type;
  end;


end.
