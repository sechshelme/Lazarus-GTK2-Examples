
unit gtkcustomsorter;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkcustomsorter.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkcustomsorter.h
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
PGtkCustomSorter  = ^GtkCustomSorter;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_CUSTOM_SORTER_H__}
{$define __GTK_CUSTOM_SORTER_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkexpression.h>}
{$include <gtk/gtksorter.h>}


function GTK_TYPE_CUSTOM_SORTER : longint; { return type might be wrong }




function gtk_custom_sorter_new(sort_func:TGCompareDataFunc; user_data:Tgpointer; user_destroy:TGDestroyNotify):PGtkCustomSorter;cdecl;external;

procedure gtk_custom_sorter_set_sort_func(self:PGtkCustomSorter; sort_func:TGCompareDataFunc; user_data:Tgpointer; user_destroy:TGDestroyNotify);cdecl;external;

{$endif}


implementation

function GTK_TYPE_CUSTOM_SORTER : longint; { return type might be wrong }
  begin
    GTK_TYPE_CUSTOM_SORTER:=gtk_custom_sorter_get_type;
  end;


end.
