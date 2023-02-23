
unit gtkmultifilter;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkmultifilter.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkmultifilter.h
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
PGtkAnyFilter  = ^GtkAnyFilter;
PGtkEveryFilter  = ^GtkEveryFilter;
PGtkFilter  = ^GtkFilter;
PGtkMultiFilter  = ^GtkMultiFilter;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_MULTI_FILTER_H__}
{$define __GTK_MULTI_FILTER_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkfilter.h>}
{$include <gtk/gtktypes.h>}


function GTK_TYPE_MULTI_FILTER : longint; { return type might be wrong }




procedure gtk_multi_filter_append(self:PGtkMultiFilter; filter:PGtkFilter);cdecl;external;

procedure gtk_multi_filter_remove(self:PGtkMultiFilter; position:Tguint);cdecl;external;
function GTK_TYPE_ANY_FILTER : longint; { return type might be wrong }




function gtk_any_filter_new:PGtkAnyFilter;cdecl;external;
function GTK_TYPE_EVERY_FILTER : longint; { return type might be wrong }




function gtk_every_filter_new:PGtkEveryFilter;cdecl;external;

{$endif}


implementation

function GTK_TYPE_MULTI_FILTER : longint; { return type might be wrong }
  begin
    GTK_TYPE_MULTI_FILTER:=gtk_multi_filter_get_type;
  end;

function GTK_TYPE_ANY_FILTER : longint; { return type might be wrong }
  begin
    GTK_TYPE_ANY_FILTER:=gtk_any_filter_get_type;
  end;

function GTK_TYPE_EVERY_FILTER : longint; { return type might be wrong }
  begin
    GTK_TYPE_EVERY_FILTER:=gtk_every_filter_get_type;
  end;


end.
