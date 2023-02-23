
unit gdkcairocontext;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdkcairocontext.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdkcairocontext.h
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
Pcairo_t  = ^cairo_t;
PGdkCairoContext  = ^GdkCairoContext;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GDK_CAIRO_CONTEXT__}
{$define __GDK_CAIRO_CONTEXT__}
{$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}
{$include <gdk/gdkversionmacros.h>}
{$include <gdk/gdktypes.h>}
{$include <cairo.h>}


function GDK_TYPE_CAIRO_CONTEXT : longint; { return type might be wrong }

function GDK_CAIRO_CONTEXT(obj : longint) : longint;

function GDK_IS_CAIRO_CONTEXT(obj : longint) : longint;

function GDK_CAIRO_ERROR : longint; { return type might be wrong }


function gdk_cairo_context_get_type:TGType;cdecl;external;

function gdk_cairo_context_cairo_create(self:PGdkCairoContext):Pcairo_t;cdecl;external;

{$endif}


implementation

function GDK_TYPE_CAIRO_CONTEXT : longint; { return type might be wrong }
  begin
    GDK_TYPE_CAIRO_CONTEXT:=gdk_cairo_context_get_type;
  end;

function GDK_CAIRO_CONTEXT(obj : longint) : longint;
begin
  GDK_CAIRO_CONTEXT:=G_TYPE_CHECK_INSTANCE_CAST(obj,GDK_TYPE_CAIRO_CONTEXT,GdkCairoContext);
end;

function GDK_IS_CAIRO_CONTEXT(obj : longint) : longint;
begin
  GDK_IS_CAIRO_CONTEXT:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GDK_TYPE_CAIRO_CONTEXT);
end;

function GDK_CAIRO_ERROR : longint; { return type might be wrong }
  begin
    GDK_CAIRO_ERROR:=gdk_cairo_error_quark;
  end;


end.
