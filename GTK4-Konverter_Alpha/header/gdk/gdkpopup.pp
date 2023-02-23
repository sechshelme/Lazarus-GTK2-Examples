
unit gdkpopup;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdkpopup.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdkpopup.h
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
PGdkPopup  = ^GdkPopup;
PGdkPopupLayout  = ^GdkPopupLayout;
PGdkSurface  = ^GdkSurface;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GDK_POPUP_H__}
{$define __GDK_POPUP_H__}
{$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}
{$include <gdk/gdkpopuplayout.h>}
{$include <gdk/gdksurface.h>}


function GDK_TYPE_POPUP : longint; { return type might be wrong }




function gdk_popup_present(popup:PGdkPopup; width:longint; height:longint; layout:PGdkPopupLayout):Tgboolean;cdecl;external;

function gdk_popup_get_surface_anchor(popup:PGdkPopup):TGdkGravity;cdecl;external;

function gdk_popup_get_rect_anchor(popup:PGdkPopup):TGdkGravity;cdecl;external;

function gdk_popup_get_parent(popup:PGdkPopup):PGdkSurface;cdecl;external;

function gdk_popup_get_position_x(popup:PGdkPopup):longint;cdecl;external;

function gdk_popup_get_position_y(popup:PGdkPopup):longint;cdecl;external;

function gdk_popup_get_autohide(popup:PGdkPopup):Tgboolean;cdecl;external;

{$endif}


implementation

function GDK_TYPE_POPUP : longint; { return type might be wrong }
  begin
    GDK_TYPE_POPUP:=gdk_popup_get_type;
  end;


end.
