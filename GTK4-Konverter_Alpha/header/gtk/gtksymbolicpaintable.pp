
unit gtksymbolicpaintable;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtksymbolicpaintable.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtksymbolicpaintable.h
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
PGdkRGBA  = ^GdkRGBA;
PGdkSnapshot  = ^GdkSnapshot;
PGtkSymbolicPaintable  = ^GtkSymbolicPaintable;
PGtkSymbolicPaintableInterface  = ^GtkSymbolicPaintableInterface;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_SYMBOLIC_PAINTABLE_H__}
{$define __GTK_SYMBOLIC_PAINTABLE_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtktypes.h>}


function GTK_TYPE_SYMBOLIC_PAINTABLE : longint; { return type might be wrong }






type
  PGtkSymbolicPaintableInterface = ^TGtkSymbolicPaintableInterface;
  TGtkSymbolicPaintableInterface = record
      g_iface : TGTypeInterface;
      snapshot_symbolic : procedure (paintable:PGtkSymbolicPaintable; snapshot:PGdkSnapshot; width:Tdouble; height:Tdouble; colors:PGdkRGBA; 
                    n_colors:Tgsize);cdecl;
    end;



procedure gtk_symbolic_paintable_snapshot_symbolic(paintable:PGtkSymbolicPaintable; snapshot:PGdkSnapshot; width:Tdouble; height:Tdouble; colors:PGdkRGBA; 
            n_colors:Tgsize);cdecl;external;

{$endif}


implementation

function GTK_TYPE_SYMBOLIC_PAINTABLE : longint; { return type might be wrong }
  begin
    GTK_TYPE_SYMBOLIC_PAINTABLE:=gtk_symbolic_paintable_get_type;
  end;


end.
