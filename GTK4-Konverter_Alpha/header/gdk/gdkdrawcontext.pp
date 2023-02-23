
unit gdkdrawcontext;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdkdrawcontext.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdkdrawcontext.h
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
Pcairo_region_t  = ^cairo_region_t;
PGdkDisplay  = ^GdkDisplay;
PGdkDrawContext  = ^GdkDrawContext;
PGdkSurface  = ^GdkSurface;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GDK_DRAW_CONTEXT__}
{$define __GDK_DRAW_CONTEXT__}
{$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}
{$include <gdk/gdkversionmacros.h>}
{$include <gdk/gdktypes.h>}


function GDK_TYPE_DRAW_CONTEXT : longint; { return type might be wrong }

function GDK_DRAW_CONTEXT(obj : longint) : longint;

function GDK_IS_DRAW_CONTEXT(obj : longint) : longint;


function gdk_draw_context_get_type:TGType;cdecl;external;

function gdk_draw_context_get_display(context:PGdkDrawContext):PGdkDisplay;cdecl;external;

function gdk_draw_context_get_surface(context:PGdkDrawContext):PGdkSurface;cdecl;external;

procedure gdk_draw_context_begin_frame(context:PGdkDrawContext; region:Pcairo_region_t);cdecl;external;

procedure gdk_draw_context_end_frame(context:PGdkDrawContext);cdecl;external;

function gdk_draw_context_is_in_frame(context:PGdkDrawContext):Tgboolean;cdecl;external;

function gdk_draw_context_get_frame_region(context:PGdkDrawContext):Pcairo_region_t;cdecl;external;

{$endif}


implementation

function GDK_TYPE_DRAW_CONTEXT : longint; { return type might be wrong }
  begin
    GDK_TYPE_DRAW_CONTEXT:=gdk_draw_context_get_type;
  end;

function GDK_DRAW_CONTEXT(obj : longint) : longint;
begin
  GDK_DRAW_CONTEXT:=G_TYPE_CHECK_INSTANCE_CAST(obj,GDK_TYPE_DRAW_CONTEXT,GdkDrawContext);
end;

function GDK_IS_DRAW_CONTEXT(obj : longint) : longint;
begin
  GDK_IS_DRAW_CONTEXT:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GDK_TYPE_DRAW_CONTEXT);
end;


end.
