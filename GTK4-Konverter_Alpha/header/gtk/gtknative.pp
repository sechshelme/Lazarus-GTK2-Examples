
unit gtknative;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtknative.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtknative.h
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
PGdkSurface  = ^GdkSurface;
PGskRenderer  = ^GskRenderer;
PGtkNative  = ^GtkNative;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_NATIVE_H__}
{$define __GTK_NATIVE_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}
{$include <gtk/gtkwidget.h>}


function GTK_TYPE_NATIVE : longint; { return type might be wrong }




procedure gtk_native_realize(self:PGtkNative);cdecl;external;

procedure gtk_native_unrealize(self:PGtkNative);cdecl;external;

function gtk_native_get_for_surface(surface:PGdkSurface):PGtkNative;cdecl;external;

function gtk_native_get_surface(self:PGtkNative):PGdkSurface;cdecl;external;

function gtk_native_get_renderer(self:PGtkNative):PGskRenderer;cdecl;external;

procedure gtk_native_get_surface_transform(self:PGtkNative; x:Pdouble; y:Pdouble);cdecl;external;

{$endif}


implementation

function GTK_TYPE_NATIVE : longint; { return type might be wrong }
  begin
    GTK_TYPE_NATIVE:=gtk_native_get_type;
  end;


end.
