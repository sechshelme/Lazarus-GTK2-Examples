
unit gskroundedrect;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gsk/gskroundedrect.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gsk/gskroundedrect.h
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
    Pgraphene_point_t  = ^graphene_point_t;
    Pgraphene_rect_t  = ^graphene_rect_t;
    Pgraphene_size_t  = ^graphene_size_t;
    PGskRoundedRect  = ^GskRoundedRect;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GSK_ROUNDED_RECT_H__}
{$define __GSK_ROUNDED_RECT_H__}
{$if !defined (__GSK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gsk/gsk.h> can be included directly."}
{$endif}
{$include <gsk/gsktypes.h>}


(* error 
#define GSK_ROUNDED_RECT_INIT(_x,_y,_w,_h)       (GskRoundedRect) { .bounds = GRAPHENE_RECT_INIT(_x,_y,_w,_h), \
in define line 46 *)
    type
      PGskRoundedRect = ^TGskRoundedRect;
      TGskRoundedRect = record
          bounds : Tgraphene_rect_t;
          corner : array[0..3] of Tgraphene_size_t;
        end;



function gsk_rounded_rect_init(self:PGskRoundedRect; bounds:Pgraphene_rect_t; top_left:Pgraphene_size_t; top_right:Pgraphene_size_t; bottom_right:Pgraphene_size_t; 
               bottom_left:Pgraphene_size_t):PGskRoundedRect;cdecl;external;

function gsk_rounded_rect_init_copy(self:PGskRoundedRect; src:PGskRoundedRect):PGskRoundedRect;cdecl;external;

function gsk_rounded_rect_init_from_rect(self:PGskRoundedRect; bounds:Pgraphene_rect_t; radius:single):PGskRoundedRect;cdecl;external;

function gsk_rounded_rect_normalize(self:PGskRoundedRect):PGskRoundedRect;cdecl;external;

function gsk_rounded_rect_offset(self:PGskRoundedRect; dx:single; dy:single):PGskRoundedRect;cdecl;external;

function gsk_rounded_rect_shrink(self:PGskRoundedRect; top:single; right:single; bottom:single; left:single):PGskRoundedRect;cdecl;external;

function gsk_rounded_rect_is_rectilinear(self:PGskRoundedRect):Tgboolean;cdecl;external;

function gsk_rounded_rect_contains_point(self:PGskRoundedRect; point:Pgraphene_point_t):Tgboolean;cdecl;external;

function gsk_rounded_rect_contains_rect(self:PGskRoundedRect; rect:Pgraphene_rect_t):Tgboolean;cdecl;external;

function gsk_rounded_rect_intersects_rect(self:PGskRoundedRect; rect:Pgraphene_rect_t):Tgboolean;cdecl;external;

{$endif}


implementation


end.
