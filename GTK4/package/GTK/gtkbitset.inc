/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  TGtkBitset = record // _GtkBitset
  end;
  PGtkBitset = ^TGtkBitset;

  TGtkBitsetIter = record
    private_data: array[0..9] of Tgpointer;
  end;
  PGtkBitsetIter = ^TGtkBitsetIter;


function gtk_bitset_get_type: TGType; cdecl; external gtklib;
function gtk_bitset_ref(self: PGtkBitset): PGtkBitset; cdecl; external gtklib;
procedure gtk_bitset_unref(self: PGtkBitset); cdecl; external gtklib;
function gtk_bitset_contains(self: PGtkBitset; Value: Tguint): Tgboolean; cdecl; external gtklib;
function gtk_bitset_is_empty(self: PGtkBitset): Tgboolean; cdecl; external gtklib;
function gtk_bitset_equals(self: PGtkBitset; other: PGtkBitset): Tgboolean; cdecl; external gtklib;
function gtk_bitset_get_size(self: PGtkBitset): Tguint64; cdecl; external gtklib;
function gtk_bitset_get_size_in_range(self: PGtkBitset; First: Tguint; last: Tguint): Tguint64; cdecl; external gtklib;
function gtk_bitset_get_nth(self: PGtkBitset; nth: Tguint): Tguint; cdecl; external gtklib;
function gtk_bitset_get_minimum(self: PGtkBitset): Tguint; cdecl; external gtklib;
function gtk_bitset_get_maximum(self: PGtkBitset): Tguint; cdecl; external gtklib;
function gtk_bitset_new_empty: PGtkBitset; cdecl; external gtklib;
function gtk_bitset_copy(self: PGtkBitset): PGtkBitset; cdecl; external gtklib;
function gtk_bitset_new_range(start: Tguint; n_items: Tguint): PGtkBitset; cdecl; external gtklib;
procedure gtk_bitset_remove_all(self: PGtkBitset); cdecl; external gtklib;
function gtk_bitset_add(self: PGtkBitset; Value: Tguint): Tgboolean; cdecl; external gtklib;
function gtk_bitset_remove(self: PGtkBitset; Value: Tguint): Tgboolean; cdecl; external gtklib;
procedure gtk_bitset_add_range(self: PGtkBitset; start: Tguint; n_items: Tguint); cdecl; external gtklib;
procedure gtk_bitset_remove_range(self: PGtkBitset; start: Tguint; n_items: Tguint); cdecl; external gtklib;
procedure gtk_bitset_add_range_closed(self: PGtkBitset; First: Tguint; last: Tguint); cdecl; external gtklib;
procedure gtk_bitset_remove_range_closed(self: PGtkBitset; First: Tguint; last: Tguint); cdecl; external gtklib;
procedure gtk_bitset_add_rectangle(self: PGtkBitset; start: Tguint; Width: Tguint; Height: Tguint; stride: Tguint); cdecl; external gtklib;
procedure gtk_bitset_remove_rectangle(self: PGtkBitset; start: Tguint; Width: Tguint; Height: Tguint; stride: Tguint); cdecl; external gtklib;
procedure gtk_bitset_union(self: PGtkBitset; other: PGtkBitset); cdecl; external gtklib;
procedure gtk_bitset_intersect(self: PGtkBitset; other: PGtkBitset); cdecl; external gtklib;
procedure gtk_bitset_subtract(self: PGtkBitset; other: PGtkBitset); cdecl; external gtklib;
procedure gtk_bitset_difference(self: PGtkBitset; other: PGtkBitset); cdecl; external gtklib;
procedure gtk_bitset_shift_left(self: PGtkBitset; amount: Tguint); cdecl; external gtklib;
procedure gtk_bitset_shift_right(self: PGtkBitset; amount: Tguint); cdecl; external gtklib;
procedure gtk_bitset_splice(self: PGtkBitset; position: Tguint; removed: Tguint; added: Tguint); cdecl; external gtklib;
function gtk_bitset_iter_get_type: TGType; cdecl; external gtklib;
function gtk_bitset_iter_init_first(iter: PGtkBitsetIter; set_: PGtkBitset; Value: Pguint): Tgboolean; cdecl; external gtklib;
function gtk_bitset_iter_init_last(iter: PGtkBitsetIter; set_: PGtkBitset; Value: Pguint): Tgboolean; cdecl; external gtklib;
function gtk_bitset_iter_init_at(iter: PGtkBitsetIter; set_: PGtkBitset; target: Tguint; Value: Pguint): Tgboolean; cdecl; external gtklib;
function gtk_bitset_iter_next(iter: PGtkBitsetIter; Value: Pguint): Tgboolean; cdecl; external gtklib;
function gtk_bitset_iter_previous(iter: PGtkBitsetIter; Value: Pguint): Tgboolean; cdecl; external gtklib;
function gtk_bitset_iter_get_value(iter: PGtkBitsetIter): Tguint; cdecl; external gtklib;
function gtk_bitset_iter_is_valid(iter: PGtkBitsetIter): Tgboolean; cdecl; external gtklib;

// === Konventiert am: 13-7-24 17:09:15 ===

function GTK_TYPE_BITSET: TGType;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_BITSET: TGType;
begin
  GTK_TYPE_BITSET := gtk_bitset_get_type;
end;


{$ENDIF read_implementation}
