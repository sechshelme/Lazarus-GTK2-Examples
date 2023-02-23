
unit gdkpaintable;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdkpaintable.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdkpaintable.h
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
Pdouble  = ^double;
PGdkPaintable  = ^GdkPaintable;
PGdkPaintableFlags  = ^GdkPaintableFlags;
PGdkPaintableInterface  = ^GdkPaintableInterface;
PGdkSnapshot  = ^GdkSnapshot;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GDK_PAINTABLE_H__}
{$define __GDK_PAINTABLE_H__}
{$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}
{$include <gdk/gdktypes.h>}
{$include <gdk/gdkversionmacros.h>}


function GDK_TYPE_PAINTABLE : longint; { return type might be wrong }




type
  PGdkPaintableFlags = ^TGdkPaintableFlags;
  TGdkPaintableFlags = (GDK_PAINTABLE_STATIC_SIZE := 1 shl 0,GDK_PAINTABLE_STATIC_CONTENTS := 1 shl 1
    );









  PGdkPaintableInterface = ^TGdkPaintableInterface;
  TGdkPaintableInterface = record
      g_iface : TGTypeInterface;
      snapshot : procedure (paintable:PGdkPaintable; snapshot:PGdkSnapshot; width:Tdouble; height:Tdouble);cdecl;
      get_current_image : function (paintable:PGdkPaintable):PGdkPaintable;cdecl;
      get_flags : function (paintable:PGdkPaintable):TGdkPaintableFlags;cdecl;
      get_intrinsic_width : function (paintable:PGdkPaintable):longint;cdecl;
      get_intrinsic_height : function (paintable:PGdkPaintable):longint;cdecl;
      get_intrinsic_aspect_ratio : function (paintable:PGdkPaintable):Tdouble;cdecl;
    end;



procedure gdk_paintable_snapshot(paintable:PGdkPaintable; snapshot:PGdkSnapshot; width:Tdouble; height:Tdouble);cdecl;external;

function gdk_paintable_get_current_image(paintable:PGdkPaintable):PGdkPaintable;cdecl;external;

function gdk_paintable_get_flags(paintable:PGdkPaintable):TGdkPaintableFlags;cdecl;external;

function gdk_paintable_get_intrinsic_width(paintable:PGdkPaintable):longint;cdecl;external;

function gdk_paintable_get_intrinsic_height(paintable:PGdkPaintable):longint;cdecl;external;

function gdk_paintable_get_intrinsic_aspect_ratio(paintable:PGdkPaintable):Tdouble;cdecl;external;

procedure gdk_paintable_compute_concrete_size(paintable:PGdkPaintable; specified_width:Tdouble; specified_height:Tdouble; default_width:Tdouble; default_height:Tdouble; 
            concrete_width:Pdouble; concrete_height:Pdouble);cdecl;external;


procedure gdk_paintable_invalidate_contents(paintable:PGdkPaintable);cdecl;external;

procedure gdk_paintable_invalidate_size(paintable:PGdkPaintable);cdecl;external;

function gdk_paintable_new_empty(intrinsic_width:longint; intrinsic_height:longint):PGdkPaintable;cdecl;external;

{$endif}


implementation

function GDK_TYPE_PAINTABLE : longint; { return type might be wrong }
  begin
    GDK_TYPE_PAINTABLE:=gdk_paintable_get_type;
  end;


end.
