
  Type
  PGtkBitset  = ^GtkBitset;
  PGtkBitsetIter  = ^GtkBitsetIter;
  Pguint  = ^guint;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  {
   * Copyright © 2020 Benjamin Otte
   *
   * This library is free software; you can redistribute it and/or
   * modify it under the terms of the GNU Lesser General Public
   * License as published by the Free Software Foundation; either
   * version 2.1 of the License, or (at your option) any later version.
   *
   * This library is distributed in the hope that it will be useful,
   * but WITHOUT ANY WARRANTY; without even the implied warranty of
   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   * Lesser General Public License for more details.
   *
   * You should have received a copy of the GNU Lesser General Public
   * License along with this library. If not, see <http://www.gnu.org/licenses/>.
   *
   * Authors: Benjamin Otte <otte@gnome.org>
    }
{$ifndef __GTK_BITSET_H__}
{$define __GTK_BITSET_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtktypes.h>}

  { was #define dname def_expr }
  function GTK_TYPE_BITSET : longint; { return type might be wrong }

(* error 
GType                   gtk_bitset_get_type                     (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;

  function gtk_bitset_ref(self:PGtkBitset):^GtkBitset;

  procedure gtk_bitset_unref(self:PGtkBitset);

(* error 
G_DEFINE_AUTOPTR_CLEANUP_FUNC(GtkBitset, gtk_bitset_unref)
(* error 
G_DEFINE_AUTOPTR_CLEANUP_FUNC(GtkBitset, gtk_bitset_unref)
(* error 
                                                                 guint                   value);
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* Const before type ignored *)
  function gtk_bitset_is_empty(self:PGtkBitset):gboolean;

(* Const before type ignored *)
(* Const before type ignored *)
  function gtk_bitset_equals(self:PGtkBitset; other:PGtkBitset):gboolean;

(* Const before type ignored *)
  function gtk_bitset_get_size(self:PGtkBitset):guint64;

(* Const before type ignored *)
  function gtk_bitset_get_size_in_range(self:PGtkBitset; first:guint; last:guint):guint64;

(* Const before type ignored *)
  function gtk_bitset_get_nth(self:PGtkBitset; nth:guint):guint;

(* Const before type ignored *)
  function gtk_bitset_get_minimum(self:PGtkBitset):guint;

(* Const before type ignored *)
  function gtk_bitset_get_maximum(self:PGtkBitset):guint;

  function gtk_bitset_new_empty:^GtkBitset;

(* Const before type ignored *)
  function gtk_bitset_copy(self:PGtkBitset):^GtkBitset;

  function gtk_bitset_new_range(start:guint; n_items:guint):^GtkBitset;

  procedure gtk_bitset_remove_all(self:PGtkBitset);

  function gtk_bitset_add(self:PGtkBitset; value:guint):gboolean;

  function gtk_bitset_remove(self:PGtkBitset; value:guint):gboolean;

  procedure gtk_bitset_add_range(self:PGtkBitset; start:guint; n_items:guint);

  procedure gtk_bitset_remove_range(self:PGtkBitset; start:guint; n_items:guint);

  procedure gtk_bitset_add_range_closed(self:PGtkBitset; first:guint; last:guint);

  procedure gtk_bitset_remove_range_closed(self:PGtkBitset; first:guint; last:guint);

  procedure gtk_bitset_add_rectangle(self:PGtkBitset; start:guint; width:guint; height:guint; stride:guint);

  procedure gtk_bitset_remove_rectangle(self:PGtkBitset; start:guint; width:guint; height:guint; stride:guint);

(* Const before type ignored *)
  procedure gtk_bitset_union(self:PGtkBitset; other:PGtkBitset);

(* Const before type ignored *)
  procedure gtk_bitset_intersect(self:PGtkBitset; other:PGtkBitset);

(* Const before type ignored *)
  procedure gtk_bitset_subtract(self:PGtkBitset; other:PGtkBitset);

(* Const before type ignored *)
  procedure gtk_bitset_difference(self:PGtkBitset; other:PGtkBitset);

  procedure gtk_bitset_shift_left(self:PGtkBitset; amount:guint);

  procedure gtk_bitset_shift_right(self:PGtkBitset; amount:guint);

  procedure gtk_bitset_splice(self:PGtkBitset; position:guint; removed:guint; added:guint);

  {*
   * GtkBitsetIter:
   *
   * An opaque, stack-allocated struct for iterating
   * over the elements of a `GtkBitset`.
   *
   * Before a `GtkBitsetIter` can be used, it needs to be initialized with
   * [func@Gtk.BitsetIter.init_first], [func@Gtk.BitsetIter.init_last]
   * or [func@Gtk.BitsetIter.init_at].
    }

  type
    _GtkBitsetIter = GtkBitsetIter;
  {< private > }
    _GtkBitsetIter = record
        private_data : array[0..9] of gpointer;
      end;

(* error 
GType                   gtk_bitset_iter_get_type                (void) G_GNUC_CONST;
 in declarator_list *)
(* Const before type ignored *)

  function gtk_bitset_iter_init_first(iter:PGtkBitsetIter; set:PGtkBitset; value:Pguint):gboolean;

(* Const before type ignored *)
  function gtk_bitset_iter_init_last(iter:PGtkBitsetIter; set:PGtkBitset; value:Pguint):gboolean;

(* Const before type ignored *)
  function gtk_bitset_iter_init_at(iter:PGtkBitsetIter; set:PGtkBitset; target:guint; value:Pguint):gboolean;

  function gtk_bitset_iter_next(iter:PGtkBitsetIter; value:Pguint):gboolean;

  function gtk_bitset_iter_previous(iter:PGtkBitsetIter; value:Pguint):gboolean;

(* Const before type ignored *)
  function gtk_bitset_iter_get_value(iter:PGtkBitsetIter):guint;

(* Const before type ignored *)
  function gtk_bitset_iter_is_valid(iter:PGtkBitsetIter):gboolean;

{$endif}
  { __GTK_BITSET_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_BITSET : longint; { return type might be wrong }
    begin
      GTK_TYPE_BITSET:=gtk_bitset_get_type;
    end;

  function gtk_bitset_ref(self:PGtkBitset):PGtkBitset;
  begin
    { You must implement this function }
  end;
  procedure gtk_bitset_unref(self:PGtkBitset);
  begin
    { You must implement this function }
  end;
  function gtk_bitset_is_empty(self:PGtkBitset):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_bitset_equals(self:PGtkBitset; other:PGtkBitset):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_bitset_get_size(self:PGtkBitset):guint64;
  begin
    { You must implement this function }
  end;
  function gtk_bitset_get_size_in_range(self:PGtkBitset; first:guint; last:guint):guint64;
  begin
    { You must implement this function }
  end;
  function gtk_bitset_get_nth(self:PGtkBitset; nth:guint):guint;
  begin
    { You must implement this function }
  end;
  function gtk_bitset_get_minimum(self:PGtkBitset):guint;
  begin
    { You must implement this function }
  end;
  function gtk_bitset_get_maximum(self:PGtkBitset):guint;
  begin
    { You must implement this function }
  end;
  function gtk_bitset_new_empty:PGtkBitset;
  begin
    { You must implement this function }
  end;
  function gtk_bitset_copy(self:PGtkBitset):PGtkBitset;
  begin
    { You must implement this function }
  end;
  function gtk_bitset_new_range(start:guint; n_items:guint):PGtkBitset;
  begin
    { You must implement this function }
  end;
  procedure gtk_bitset_remove_all(self:PGtkBitset);
  begin
    { You must implement this function }
  end;
  function gtk_bitset_add(self:PGtkBitset; value:guint):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_bitset_remove(self:PGtkBitset; value:guint):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_bitset_add_range(self:PGtkBitset; start:guint; n_items:guint);
  begin
    { You must implement this function }
  end;
  procedure gtk_bitset_remove_range(self:PGtkBitset; start:guint; n_items:guint);
  begin
    { You must implement this function }
  end;
  procedure gtk_bitset_add_range_closed(self:PGtkBitset; first:guint; last:guint);
  begin
    { You must implement this function }
  end;
  procedure gtk_bitset_remove_range_closed(self:PGtkBitset; first:guint; last:guint);
  begin
    { You must implement this function }
  end;
  procedure gtk_bitset_add_rectangle(self:PGtkBitset; start:guint; width:guint; height:guint; stride:guint);
  begin
    { You must implement this function }
  end;
  procedure gtk_bitset_remove_rectangle(self:PGtkBitset; start:guint; width:guint; height:guint; stride:guint);
  begin
    { You must implement this function }
  end;
  procedure gtk_bitset_union(self:PGtkBitset; other:PGtkBitset);
  begin
    { You must implement this function }
  end;
  procedure gtk_bitset_intersect(self:PGtkBitset; other:PGtkBitset);
  begin
    { You must implement this function }
  end;
  procedure gtk_bitset_subtract(self:PGtkBitset; other:PGtkBitset);
  begin
    { You must implement this function }
  end;
  procedure gtk_bitset_difference(self:PGtkBitset; other:PGtkBitset);
  begin
    { You must implement this function }
  end;
  procedure gtk_bitset_shift_left(self:PGtkBitset; amount:guint);
  begin
    { You must implement this function }
  end;
  procedure gtk_bitset_shift_right(self:PGtkBitset; amount:guint);
  begin
    { You must implement this function }
  end;
  procedure gtk_bitset_splice(self:PGtkBitset; position:guint; removed:guint; added:guint);
  begin
    { You must implement this function }
  end;
  function gtk_bitset_iter_init_first(iter:PGtkBitsetIter; set:PGtkBitset; value:Pguint):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_bitset_iter_init_last(iter:PGtkBitsetIter; set:PGtkBitset; value:Pguint):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_bitset_iter_init_at(iter:PGtkBitsetIter; set:PGtkBitset; target:guint; value:Pguint):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_bitset_iter_next(iter:PGtkBitsetIter; value:Pguint):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_bitset_iter_previous(iter:PGtkBitsetIter; value:Pguint):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_bitset_iter_get_value(iter:PGtkBitsetIter):guint;
  begin
    { You must implement this function }
  end;
  function gtk_bitset_iter_is_valid(iter:PGtkBitsetIter):gboolean;
  begin
    { You must implement this function }
  end;

