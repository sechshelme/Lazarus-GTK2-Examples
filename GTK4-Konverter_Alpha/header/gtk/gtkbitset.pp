
unit gtkbitset;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkbitset.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkbitset.h
    -v
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
PGtkBitset  = ^GtkBitset;
PGtkBitsetIter  = ^GtkBitsetIter;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_BITSET_H__}
{$define __GTK_BITSET_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtktypes.h>}


function GTK_TYPE_BITSET : longint; { return type might be wrong }


function gtk_bitset_get_type:TGType;cdecl;external;

function gtk_bitset_ref(var self:TGtkBitset):PGtkBitset;cdecl;external;

procedure gtk_bitset_unref(var self:TGtkBitset);cdecl;external;


function gtk_bitset_contains(var self:TGtkBitset; value:Tguint):Tgboolean;cdecl;external;

function gtk_bitset_is_empty(var self:TGtkBitset):Tgboolean;cdecl;external;

function gtk_bitset_equals(var self:TGtkBitset; var other:TGtkBitset):Tgboolean;cdecl;external;

function gtk_bitset_get_size(var self:TGtkBitset):Tguint64;cdecl;external;

function gtk_bitset_get_size_in_range(var self:TGtkBitset; first:Tguint; last:Tguint):Tguint64;cdecl;external;

function gtk_bitset_get_nth(var self:TGtkBitset; nth:Tguint):Tguint;cdecl;external;

function gtk_bitset_get_minimum(var self:TGtkBitset):Tguint;cdecl;external;

function gtk_bitset_get_maximum(var self:TGtkBitset):Tguint;cdecl;external;

function gtk_bitset_new_empty:PGtkBitset;cdecl;external;

function gtk_bitset_copy(var self:TGtkBitset):PGtkBitset;cdecl;external;

function gtk_bitset_new_range(start:Tguint; n_items:Tguint):PGtkBitset;cdecl;external;

procedure gtk_bitset_remove_all(var self:TGtkBitset);cdecl;external;

function gtk_bitset_add(var self:TGtkBitset; value:Tguint):Tgboolean;cdecl;external;

function gtk_bitset_remove(var self:TGtkBitset; value:Tguint):Tgboolean;cdecl;external;

procedure gtk_bitset_add_range(var self:TGtkBitset; start:Tguint; n_items:Tguint);cdecl;external;

procedure gtk_bitset_remove_range(var self:TGtkBitset; start:Tguint; n_items:Tguint);cdecl;external;

procedure gtk_bitset_add_range_closed(var self:TGtkBitset; first:Tguint; last:Tguint);cdecl;external;

procedure gtk_bitset_remove_range_closed(var self:TGtkBitset; first:Tguint; last:Tguint);cdecl;external;

procedure gtk_bitset_add_rectangle(var self:TGtkBitset; start:Tguint; width:Tguint; height:Tguint; stride:Tguint);cdecl;external;

procedure gtk_bitset_remove_rectangle(var self:TGtkBitset; start:Tguint; width:Tguint; height:Tguint; stride:Tguint);cdecl;external;

procedure gtk_bitset_union(var self:TGtkBitset; var other:TGtkBitset);cdecl;external;

procedure gtk_bitset_intersect(var self:TGtkBitset; var other:TGtkBitset);cdecl;external;

procedure gtk_bitset_subtract(var self:TGtkBitset; var other:TGtkBitset);cdecl;external;

procedure gtk_bitset_difference(var self:TGtkBitset; var other:TGtkBitset);cdecl;external;

procedure gtk_bitset_shift_left(var self:TGtkBitset; amount:Tguint);cdecl;external;

procedure gtk_bitset_shift_right(var self:TGtkBitset; amount:Tguint);cdecl;external;

procedure gtk_bitset_splice(var self:TGtkBitset; position:Tguint; removed:Tguint; added:Tguint);cdecl;external;

type

  PGtkBitsetIter = ^TGtkBitsetIter;
  TGtkBitsetIter = record
      private_data : array[0..9] of Tgpointer;
    end;



function gtk_bitset_iter_get_type:TGType;cdecl;external;

function gtk_bitset_iter_init_first(var iter:TGtkBitsetIter; var set:TGtkBitset; var value:Tguint):Tgboolean;cdecl;external;

function gtk_bitset_iter_init_last(var iter:TGtkBitsetIter; var set:TGtkBitset; var value:Tguint):Tgboolean;cdecl;external;

function gtk_bitset_iter_init_at(var iter:TGtkBitsetIter; var set:TGtkBitset; target:Tguint; var value:Tguint):Tgboolean;cdecl;external;

function gtk_bitset_iter_next(var iter:TGtkBitsetIter; var value:Tguint):Tgboolean;cdecl;external;

function gtk_bitset_iter_previous(var iter:TGtkBitsetIter; var value:Tguint):Tgboolean;cdecl;external;

function gtk_bitset_iter_get_value(var iter:TGtkBitsetIter):Tguint;cdecl;external;

function gtk_bitset_iter_is_valid(var iter:TGtkBitsetIter):Tgboolean;cdecl;external;

{$endif}


implementation

function GTK_TYPE_BITSET : longint; { return type might be wrong }
  begin
    GTK_TYPE_BITSET:=gtk_bitset_get_type;
  end;


end.
