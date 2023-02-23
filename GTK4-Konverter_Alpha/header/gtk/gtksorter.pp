
unit gtksorter;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtksorter.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtksorter.h
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
PGtkSorter  = ^GtkSorter;
PGtkSorterChange  = ^GtkSorterChange;
PGtkSorterClass  = ^GtkSorterClass;
PGtkSorterOrder  = ^GtkSorterOrder;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_SORTER_H__}
{$define __GTK_SORTER_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}
{$include <gtk/gtkenums.h>}


type
  PGtkSorterOrder = ^TGtkSorterOrder;
  TGtkSorterOrder = (GTK_SORTER_ORDER_PARTIAL,GTK_SORTER_ORDER_NONE,
    GTK_SORTER_ORDER_TOTAL);


  PGtkSorterChange = ^TGtkSorterChange;
  TGtkSorterChange = (GTK_SORTER_CHANGE_DIFFERENT,GTK_SORTER_CHANGE_INVERTED,
    GTK_SORTER_CHANGE_LESS_STRICT,GTK_SORTER_CHANGE_MORE_STRICT
    );

function GTK_TYPE_SORTER : longint; { return type might be wrong }






type
  PGtkSorterClass = ^TGtkSorterClass;
  TGtkSorterClass = record
      parent_class : TGObjectClass;
      compare : function (self:PGtkSorter; item1:Tgpointer; item2:Tgpointer):TGtkOrdering;cdecl;
      get_order : function (self:PGtkSorter):TGtkSorterOrder;cdecl;
      _gtk_reserved1 : procedure ;cdecl;
      _gtk_reserved2 : procedure ;cdecl;
      _gtk_reserved3 : procedure ;cdecl;
      _gtk_reserved4 : procedure ;cdecl;
      _gtk_reserved5 : procedure ;cdecl;
      _gtk_reserved6 : procedure ;cdecl;
      _gtk_reserved7 : procedure ;cdecl;
      _gtk_reserved8 : procedure ;cdecl;
    end;



function gtk_sorter_compare(self:PGtkSorter; item1:Tgpointer; item2:Tgpointer):TGtkOrdering;cdecl;external;

function gtk_sorter_get_order(self:PGtkSorter):TGtkSorterOrder;cdecl;external;


procedure gtk_sorter_changed(self:PGtkSorter; change:TGtkSorterChange);cdecl;external;

{$endif}


implementation

function GTK_TYPE_SORTER : longint; { return type might be wrong }
  begin
    GTK_TYPE_SORTER:=gtk_sorter_get_type;
  end;


end.
