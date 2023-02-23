
unit gdkpopuplayout;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdkpopuplayout.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdkpopuplayout.h
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
PGdkAnchorHints  = ^GdkAnchorHints;
PGdkPopupLayout  = ^GdkPopupLayout;
PGdkRectangle  = ^GdkRectangle;
Plongint  = ^longint;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GDK_POPUP_LAYOUT_H__}
{$define __GDK_POPUP_LAYOUT_H__}
{$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}
{$include <gdk/gdkenums.h>}
{$include <gdk/gdktypes.h>}
{$include <gdk/gdkversionmacros.h>}


type
  PGdkAnchorHints = ^TGdkAnchorHints;
  TGdkAnchorHints = (GDK_ANCHOR_FLIP_X := 1 shl 0,GDK_ANCHOR_FLIP_Y := 1 shl 1,
    GDK_ANCHOR_SLIDE_X := 1 shl 2,GDK_ANCHOR_SLIDE_Y := 1 shl 3,
    GDK_ANCHOR_RESIZE_X := 1 shl 4,GDK_ANCHOR_RESIZE_Y := 1 shl 5,
    GDK_ANCHOR_FLIP := GDK_ANCHOR_FLIP_X or GDK_ANCHOR_FLIP_Y,GDK_ANCHOR_SLIDE := GDK_ANCHOR_SLIDE_X or GDK_ANCHOR_SLIDE_Y,
    GDK_ANCHOR_RESIZE := GDK_ANCHOR_RESIZE_X or GDK_ANCHOR_RESIZE_Y);

function GDK_TYPE_POPUP_LAYOUT : longint; { return type might be wrong }


function gdk_popup_layout_get_type:TGType;cdecl;external;

function gdk_popup_layout_new(anchor_rect:PGdkRectangle; rect_anchor:TGdkGravity; surface_anchor:TGdkGravity):PGdkPopupLayout;cdecl;external;

function gdk_popup_layout_ref(layout:PGdkPopupLayout):PGdkPopupLayout;cdecl;external;

procedure gdk_popup_layout_unref(layout:PGdkPopupLayout);cdecl;external;

function gdk_popup_layout_copy(layout:PGdkPopupLayout):PGdkPopupLayout;cdecl;external;

function gdk_popup_layout_equal(layout:PGdkPopupLayout; other:PGdkPopupLayout):Tgboolean;cdecl;external;

procedure gdk_popup_layout_set_anchor_rect(layout:PGdkPopupLayout; anchor_rect:PGdkRectangle);cdecl;external;

function gdk_popup_layout_get_anchor_rect(layout:PGdkPopupLayout):PGdkRectangle;cdecl;external;

procedure gdk_popup_layout_set_rect_anchor(layout:PGdkPopupLayout; anchor:TGdkGravity);cdecl;external;

function gdk_popup_layout_get_rect_anchor(layout:PGdkPopupLayout):TGdkGravity;cdecl;external;

procedure gdk_popup_layout_set_surface_anchor(layout:PGdkPopupLayout; anchor:TGdkGravity);cdecl;external;

function gdk_popup_layout_get_surface_anchor(layout:PGdkPopupLayout):TGdkGravity;cdecl;external;

procedure gdk_popup_layout_set_anchor_hints(layout:PGdkPopupLayout; anchor_hints:TGdkAnchorHints);cdecl;external;

function gdk_popup_layout_get_anchor_hints(layout:PGdkPopupLayout):TGdkAnchorHints;cdecl;external;

procedure gdk_popup_layout_set_offset(layout:PGdkPopupLayout; dx:longint; dy:longint);cdecl;external;

procedure gdk_popup_layout_get_offset(layout:PGdkPopupLayout; dx:Plongint; dy:Plongint);cdecl;external;

procedure gdk_popup_layout_set_shadow_width(layout:PGdkPopupLayout; left:longint; right:longint; top:longint; bottom:longint);cdecl;external;

procedure gdk_popup_layout_get_shadow_width(layout:PGdkPopupLayout; left:Plongint; right:Plongint; top:Plongint; bottom:Plongint);cdecl;external;

{$endif}


implementation

function GDK_TYPE_POPUP_LAYOUT : longint; { return type might be wrong }
  begin
    GDK_TYPE_POPUP_LAYOUT:=gdk_popup_layout_get_type;
  end;


end.
