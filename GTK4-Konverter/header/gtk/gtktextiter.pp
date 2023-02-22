
  Type
  Pchar  = ^char;
  PGdkPaintable  = ^GdkPaintable;
  PGSList  = ^GSList;
  PGtkTextBuffer  = ^GtkTextBuffer;
  PGtkTextChildAnchor  = ^GtkTextChildAnchor;
  PGtkTextIter  = ^GtkTextIter;
  PGtkTextTag  = ^GtkTextTag;
  PPangoLanguage  = ^PangoLanguage;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GTK - The GIMP Toolkit
   * gtktextiter.h Copyright (C) 2000 Red Hat, Inc.
   *
   * This library is free software; you can redistribute it and/or
   * modify it under the terms of the GNU Lesser General Public
   * License as published by the Free Software Foundation; either
   * version 2 of the License, or (at your option) any later version.
   *
   * This library is distributed in the hope that it will be useful,
   * but WITHOUT ANY WARRANTY; without even the implied warranty of
   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   * Lesser General Public License for more details.
   *
   * You should have received a copy of the GNU Lesser General Public
   * License along with this library. If not, see <http://www.gnu.org/licenses/>.
    }
  {
   * Modified by the GTK+ Team and others 1997-2000.  See the AUTHORS
   * file for a list of people on the GTK+ Team.  See the ChangeLog
   * files for a list of changes.  These files are distributed with
   * GTK+ at ftp://ftp.gtk.org/pub/gtk/.
    }
{$ifndef __GTK_TEXT_ITER_H__}
{$define __GTK_TEXT_ITER_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtktextchild.h>}
{$include <gtk/gtktexttag.h>}
  { Zeile entfernt  }
  {*
   * GtkTextSearchFlags:
   * @GTK_TEXT_SEARCH_VISIBLE_ONLY: Search only visible data. A search match may
   * have invisible text interspersed.
   * @GTK_TEXT_SEARCH_TEXT_ONLY: Search only text. A match may have paintables or
   * child widgets mixed inside the matched range.
   * @GTK_TEXT_SEARCH_CASE_INSENSITIVE: The text will be matched regardless of
   * what case it is in.
   *
   * Flags affecting how a search is done.
   *
   * If neither %GTK_TEXT_SEARCH_VISIBLE_ONLY nor %GTK_TEXT_SEARCH_TEXT_ONLY are
   * enabled, the match must be exact; the special 0xFFFC character will match
   * embedded paintables or child widgets.
    }
  { Possible future plans: SEARCH_REGEXP  }

  type
    GtkTextSearchFlags = (GTK_TEXT_SEARCH_VISIBLE_ONLY := 1 shl 0,GTK_TEXT_SEARCH_TEXT_ONLY := 1 shl 1,
      GTK_TEXT_SEARCH_CASE_INSENSITIVE := 1 shl 2
      );
  {
   * Iter: represents a location in the text. Becomes invalid if the
   * characters/pixmaps/widgets (indexable objects) in the text buffer
   * are changed.
    }
    _GtkTextBuffer = GtkTextBuffer;

  { was #define dname def_expr }
  function GTK_TYPE_TEXT_ITER : longint; { return type might be wrong }

  { GtkTextIter is an opaque datatype; ignore all these fields.
     * Initialize the iter with gtk_text_buffer_get_iter_*
     * functions
      }
  {< private > }
  { padding  }

  type
    _GtkTextIter = record
        dummy1 : gpointer;
        dummy2 : gpointer;
        dummy3 : longint;
        dummy4 : longint;
        dummy5 : longint;
        dummy6 : longint;
        dummy7 : longint;
        dummy8 : longint;
        dummy9 : gpointer;
        dummy10 : gpointer;
        dummy11 : longint;
        dummy12 : longint;
        dummy13 : longint;
        dummy14 : gpointer;
      end;

  { This is primarily intended for language bindings that want to avoid
     a "buffer" argument to text insertions, deletions, etc.  }
  { Zeile entfernt  }
(* Const before type ignored *)

  function gtk_text_iter_get_buffer(iter:PGtkTextIter):^GtkTextBuffer;

  {
   * Life cycle
    }
  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_text_iter_copy(iter:PGtkTextIter):^GtkTextIter;

  { Zeile entfernt  }
  procedure gtk_text_iter_free(iter:PGtkTextIter);

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_text_iter_assign(iter:PGtkTextIter; other:PGtkTextIter);

  { Zeile entfernt  }
  function gtk_text_iter_get_type:GType;

  {
   * Convert to different kinds of index
    }
  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_text_iter_get_offset(iter:PGtkTextIter):longint;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_text_iter_get_line(iter:PGtkTextIter):longint;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_text_iter_get_line_offset(iter:PGtkTextIter):longint;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_text_iter_get_line_index(iter:PGtkTextIter):longint;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_text_iter_get_visible_line_offset(iter:PGtkTextIter):longint;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_text_iter_get_visible_line_index(iter:PGtkTextIter):longint;

  {
   * “Dereference” operators
    }
  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_text_iter_get_char(iter:PGtkTextIter):gunichar;

  { includes the 0xFFFC char for pixmaps/widgets, so char offsets
   * into the returned string map properly into buffer char offsets
    }
  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
  function gtk_text_iter_get_slice(start:PGtkTextIter; end:PGtkTextIter):^char;

  { includes only text, no 0xFFFC  }
  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
  function gtk_text_iter_get_text(start:PGtkTextIter; end:PGtkTextIter):^char;

  { exclude invisible chars  }
  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
  function gtk_text_iter_get_visible_slice(start:PGtkTextIter; end:PGtkTextIter):^char;

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
  function gtk_text_iter_get_visible_text(start:PGtkTextIter; end:PGtkTextIter):^char;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_text_iter_get_paintable(iter:PGtkTextIter):^GdkPaintable;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_text_iter_get_marks(iter:PGtkTextIter):^GSList;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_text_iter_get_child_anchor(iter:PGtkTextIter):^GtkTextChildAnchor;

  { Return list of tags toggled at this point (toggled_on determines
   * whether the list is of on-toggles or off-toggles)
    }
  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_text_iter_get_toggled_tags(iter:PGtkTextIter; toggled_on:gboolean):^GSList;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_text_iter_starts_tag(iter:PGtkTextIter; tag:PGtkTextTag):gboolean;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_text_iter_ends_tag(iter:PGtkTextIter; tag:PGtkTextTag):gboolean;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_text_iter_toggles_tag(iter:PGtkTextIter; tag:PGtkTextTag):gboolean;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_text_iter_has_tag(iter:PGtkTextIter; tag:PGtkTextTag):gboolean;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_text_iter_get_tags(iter:PGtkTextIter):^GSList;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_text_iter_editable(iter:PGtkTextIter; default_setting:gboolean):gboolean;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_text_iter_can_insert(iter:PGtkTextIter; default_editability:gboolean):gboolean;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_text_iter_starts_word(iter:PGtkTextIter):gboolean;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_text_iter_ends_word(iter:PGtkTextIter):gboolean;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_text_iter_inside_word(iter:PGtkTextIter):gboolean;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_text_iter_starts_sentence(iter:PGtkTextIter):gboolean;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_text_iter_ends_sentence(iter:PGtkTextIter):gboolean;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_text_iter_inside_sentence(iter:PGtkTextIter):gboolean;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_text_iter_starts_line(iter:PGtkTextIter):gboolean;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_text_iter_ends_line(iter:PGtkTextIter):gboolean;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_text_iter_is_cursor_position(iter:PGtkTextIter):gboolean;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_text_iter_get_chars_in_line(iter:PGtkTextIter):longint;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_text_iter_get_bytes_in_line(iter:PGtkTextIter):longint;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_text_iter_get_language(iter:PGtkTextIter):^PangoLanguage;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_text_iter_is_end(iter:PGtkTextIter):gboolean;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_text_iter_is_start(iter:PGtkTextIter):gboolean;

  {
   * Moving around the buffer
    }
  { Zeile entfernt  }
  function gtk_text_iter_forward_char(iter:PGtkTextIter):gboolean;

  { Zeile entfernt  }
  function gtk_text_iter_backward_char(iter:PGtkTextIter):gboolean;

  { Zeile entfernt  }
  function gtk_text_iter_forward_chars(iter:PGtkTextIter; count:longint):gboolean;

  { Zeile entfernt  }
  function gtk_text_iter_backward_chars(iter:PGtkTextIter; count:longint):gboolean;

  { Zeile entfernt  }
  function gtk_text_iter_forward_line(iter:PGtkTextIter):gboolean;

  { Zeile entfernt  }
  function gtk_text_iter_backward_line(iter:PGtkTextIter):gboolean;

  { Zeile entfernt  }
  function gtk_text_iter_forward_lines(iter:PGtkTextIter; count:longint):gboolean;

  { Zeile entfernt  }
  function gtk_text_iter_backward_lines(iter:PGtkTextIter; count:longint):gboolean;

  { Zeile entfernt  }
  function gtk_text_iter_forward_word_end(iter:PGtkTextIter):gboolean;

  { Zeile entfernt  }
  function gtk_text_iter_backward_word_start(iter:PGtkTextIter):gboolean;

  { Zeile entfernt  }
  function gtk_text_iter_forward_word_ends(iter:PGtkTextIter; count:longint):gboolean;

  { Zeile entfernt  }
  function gtk_text_iter_backward_word_starts(iter:PGtkTextIter; count:longint):gboolean;

  { Zeile entfernt  }
  function gtk_text_iter_forward_visible_line(iter:PGtkTextIter):gboolean;

  { Zeile entfernt  }
  function gtk_text_iter_backward_visible_line(iter:PGtkTextIter):gboolean;

  { Zeile entfernt  }
  function gtk_text_iter_forward_visible_lines(iter:PGtkTextIter; count:longint):gboolean;

  { Zeile entfernt  }
  function gtk_text_iter_backward_visible_lines(iter:PGtkTextIter; count:longint):gboolean;

  { Zeile entfernt  }
  function gtk_text_iter_forward_visible_word_end(iter:PGtkTextIter):gboolean;

  { Zeile entfernt  }
  function gtk_text_iter_backward_visible_word_start(iter:PGtkTextIter):gboolean;

  { Zeile entfernt  }
  function gtk_text_iter_forward_visible_word_ends(iter:PGtkTextIter; count:longint):gboolean;

  { Zeile entfernt  }
  function gtk_text_iter_backward_visible_word_starts(iter:PGtkTextIter; count:longint):gboolean;

  { Zeile entfernt  }
  function gtk_text_iter_forward_sentence_end(iter:PGtkTextIter):gboolean;

  { Zeile entfernt  }
  function gtk_text_iter_backward_sentence_start(iter:PGtkTextIter):gboolean;

  { Zeile entfernt  }
  function gtk_text_iter_forward_sentence_ends(iter:PGtkTextIter; count:longint):gboolean;

  { Zeile entfernt  }
  function gtk_text_iter_backward_sentence_starts(iter:PGtkTextIter; count:longint):gboolean;

  { cursor positions are almost equivalent to chars, but not quite;
   * in some languages, you can’t put the cursor between certain
   * chars. Also, you can’t put the cursor between \r\n at the end
   * of a line.
    }
  { Zeile entfernt  }
  function gtk_text_iter_forward_cursor_position(iter:PGtkTextIter):gboolean;

  { Zeile entfernt  }
  function gtk_text_iter_backward_cursor_position(iter:PGtkTextIter):gboolean;

  { Zeile entfernt  }
  function gtk_text_iter_forward_cursor_positions(iter:PGtkTextIter; count:longint):gboolean;

  { Zeile entfernt  }
  function gtk_text_iter_backward_cursor_positions(iter:PGtkTextIter; count:longint):gboolean;

  { Zeile entfernt  }
  function gtk_text_iter_forward_visible_cursor_position(iter:PGtkTextIter):gboolean;

  { Zeile entfernt  }
  function gtk_text_iter_backward_visible_cursor_position(iter:PGtkTextIter):gboolean;

  { Zeile entfernt  }
  function gtk_text_iter_forward_visible_cursor_positions(iter:PGtkTextIter; count:longint):gboolean;

  { Zeile entfernt  }
  function gtk_text_iter_backward_visible_cursor_positions(iter:PGtkTextIter; count:longint):gboolean;

  { Zeile entfernt  }
  procedure gtk_text_iter_set_offset(iter:PGtkTextIter; char_offset:longint);

  { Zeile entfernt  }
  procedure gtk_text_iter_set_line(iter:PGtkTextIter; line_number:longint);

  { Zeile entfernt  }
  procedure gtk_text_iter_set_line_offset(iter:PGtkTextIter; char_on_line:longint);

  { Zeile entfernt  }
  procedure gtk_text_iter_set_line_index(iter:PGtkTextIter; byte_on_line:longint);

  { Zeile entfernt  }
  procedure gtk_text_iter_forward_to_end(iter:PGtkTextIter);

  { Zeile entfernt  }
  function gtk_text_iter_forward_to_line_end(iter:PGtkTextIter):gboolean;

  { Zeile entfernt  }
  procedure gtk_text_iter_set_visible_line_offset(iter:PGtkTextIter; char_on_line:longint);

  { Zeile entfernt  }
  procedure gtk_text_iter_set_visible_line_index(iter:PGtkTextIter; byte_on_line:longint);

  { returns TRUE if a toggle was found; NULL for the tag pointer
   * means “any tag toggle”, otherwise the next toggle of the
   * specified tag is located.
    }
  { Zeile entfernt  }
  function gtk_text_iter_forward_to_tag_toggle(iter:PGtkTextIter; tag:PGtkTextTag):gboolean;

  { Zeile entfernt  }
  function gtk_text_iter_backward_to_tag_toggle(iter:PGtkTextIter; tag:PGtkTextTag):gboolean;

  {*
   * GtkTextCharPredicate:
   * @ch: a Unicode code point
   * @user_data: data passed to the callback
   *
   * The predicate function used by gtk_text_iter_forward_find_char() and
   * gtk_text_iter_backward_find_char().
   *
   * Returns: %TRUE if the predicate is satisfied, and the iteration should
   *   stop, and %FALSE otherwise
    }

  type

    GtkTextCharPredicate = function (ch:gunichar; user_data:gpointer):gboolean;cdecl;
  { Zeile entfernt  }
(* Const before type ignored *)

  function gtk_text_iter_forward_find_char(iter:PGtkTextIter; pred:GtkTextCharPredicate; user_data:gpointer; limit:PGtkTextIter):gboolean;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_text_iter_backward_find_char(iter:PGtkTextIter; pred:GtkTextCharPredicate; user_data:gpointer; limit:PGtkTextIter):gboolean;

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)
  function gtk_text_iter_forward_search(iter:PGtkTextIter; str:Pchar; flags:GtkTextSearchFlags; match_start:PGtkTextIter; match_end:PGtkTextIter; 
             limit:PGtkTextIter):gboolean;

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)
  function gtk_text_iter_backward_search(iter:PGtkTextIter; str:Pchar; flags:GtkTextSearchFlags; match_start:PGtkTextIter; match_end:PGtkTextIter; 
             limit:PGtkTextIter):gboolean;

  {
   * Comparisons
    }
  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
  function gtk_text_iter_equal(lhs:PGtkTextIter; rhs:PGtkTextIter):gboolean;

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
  function gtk_text_iter_compare(lhs:PGtkTextIter; rhs:PGtkTextIter):longint;

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)
  function gtk_text_iter_in_range(iter:PGtkTextIter; start:PGtkTextIter; end:PGtkTextIter):gboolean;

  { Put these two in ascending order  }
  { Zeile entfernt  }
  procedure gtk_text_iter_order(first:PGtkTextIter; second:PGtkTextIter);

  { Zeile entfernt  }
{$endif}
  { was #define dname def_expr }
  function GTK_TYPE_TEXT_ITER : longint; { return type might be wrong }
    begin
      GTK_TYPE_TEXT_ITER:=gtk_text_iter_get_type;
    end;

  function gtk_text_iter_get_buffer(iter:PGtkTextIter):PGtkTextBuffer;
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_copy(iter:PGtkTextIter):PGtkTextIter;
  begin
    { You must implement this function }
  end;
  procedure gtk_text_iter_free(iter:PGtkTextIter);
  begin
    { You must implement this function }
  end;
  procedure gtk_text_iter_assign(iter:PGtkTextIter; other:PGtkTextIter);
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_get_offset(iter:PGtkTextIter):longint;
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_get_line(iter:PGtkTextIter):longint;
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_get_line_offset(iter:PGtkTextIter):longint;
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_get_line_index(iter:PGtkTextIter):longint;
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_get_visible_line_offset(iter:PGtkTextIter):longint;
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_get_visible_line_index(iter:PGtkTextIter):longint;
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_get_char(iter:PGtkTextIter):gunichar;
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_get_slice(start:PGtkTextIter; end:PGtkTextIter):Pchar;
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_get_text(start:PGtkTextIter; end:PGtkTextIter):Pchar;
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_get_visible_slice(start:PGtkTextIter; end:PGtkTextIter):Pchar;
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_get_visible_text(start:PGtkTextIter; end:PGtkTextIter):Pchar;
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_get_paintable(iter:PGtkTextIter):PGdkPaintable;
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_get_marks(iter:PGtkTextIter):PGSList;
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_get_child_anchor(iter:PGtkTextIter):PGtkTextChildAnchor;
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_get_toggled_tags(iter:PGtkTextIter; toggled_on:gboolean):PGSList;
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_starts_tag(iter:PGtkTextIter; tag:PGtkTextTag):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_ends_tag(iter:PGtkTextIter; tag:PGtkTextTag):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_toggles_tag(iter:PGtkTextIter; tag:PGtkTextTag):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_has_tag(iter:PGtkTextIter; tag:PGtkTextTag):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_get_tags(iter:PGtkTextIter):PGSList;
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_editable(iter:PGtkTextIter; default_setting:gboolean):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_can_insert(iter:PGtkTextIter; default_editability:gboolean):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_starts_word(iter:PGtkTextIter):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_ends_word(iter:PGtkTextIter):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_inside_word(iter:PGtkTextIter):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_starts_sentence(iter:PGtkTextIter):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_ends_sentence(iter:PGtkTextIter):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_inside_sentence(iter:PGtkTextIter):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_starts_line(iter:PGtkTextIter):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_ends_line(iter:PGtkTextIter):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_is_cursor_position(iter:PGtkTextIter):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_get_chars_in_line(iter:PGtkTextIter):longint;
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_get_bytes_in_line(iter:PGtkTextIter):longint;
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_get_language(iter:PGtkTextIter):PPangoLanguage;
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_is_end(iter:PGtkTextIter):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_is_start(iter:PGtkTextIter):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_forward_char(iter:PGtkTextIter):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_backward_char(iter:PGtkTextIter):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_forward_chars(iter:PGtkTextIter; count:longint):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_backward_chars(iter:PGtkTextIter; count:longint):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_forward_line(iter:PGtkTextIter):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_backward_line(iter:PGtkTextIter):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_forward_lines(iter:PGtkTextIter; count:longint):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_backward_lines(iter:PGtkTextIter; count:longint):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_forward_word_end(iter:PGtkTextIter):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_backward_word_start(iter:PGtkTextIter):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_forward_word_ends(iter:PGtkTextIter; count:longint):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_backward_word_starts(iter:PGtkTextIter; count:longint):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_forward_visible_line(iter:PGtkTextIter):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_backward_visible_line(iter:PGtkTextIter):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_forward_visible_lines(iter:PGtkTextIter; count:longint):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_backward_visible_lines(iter:PGtkTextIter; count:longint):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_forward_visible_word_end(iter:PGtkTextIter):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_backward_visible_word_start(iter:PGtkTextIter):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_forward_visible_word_ends(iter:PGtkTextIter; count:longint):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_backward_visible_word_starts(iter:PGtkTextIter; count:longint):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_forward_sentence_end(iter:PGtkTextIter):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_backward_sentence_start(iter:PGtkTextIter):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_forward_sentence_ends(iter:PGtkTextIter; count:longint):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_backward_sentence_starts(iter:PGtkTextIter; count:longint):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_forward_cursor_position(iter:PGtkTextIter):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_backward_cursor_position(iter:PGtkTextIter):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_forward_cursor_positions(iter:PGtkTextIter; count:longint):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_backward_cursor_positions(iter:PGtkTextIter; count:longint):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_forward_visible_cursor_position(iter:PGtkTextIter):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_backward_visible_cursor_position(iter:PGtkTextIter):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_forward_visible_cursor_positions(iter:PGtkTextIter; count:longint):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_backward_visible_cursor_positions(iter:PGtkTextIter; count:longint):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_text_iter_set_offset(iter:PGtkTextIter; char_offset:longint);
  begin
    { You must implement this function }
  end;
  procedure gtk_text_iter_set_line(iter:PGtkTextIter; line_number:longint);
  begin
    { You must implement this function }
  end;
  procedure gtk_text_iter_set_line_offset(iter:PGtkTextIter; char_on_line:longint);
  begin
    { You must implement this function }
  end;
  procedure gtk_text_iter_set_line_index(iter:PGtkTextIter; byte_on_line:longint);
  begin
    { You must implement this function }
  end;
  procedure gtk_text_iter_forward_to_end(iter:PGtkTextIter);
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_forward_to_line_end(iter:PGtkTextIter):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_text_iter_set_visible_line_offset(iter:PGtkTextIter; char_on_line:longint);
  begin
    { You must implement this function }
  end;
  procedure gtk_text_iter_set_visible_line_index(iter:PGtkTextIter; byte_on_line:longint);
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_forward_to_tag_toggle(iter:PGtkTextIter; tag:PGtkTextTag):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_backward_to_tag_toggle(iter:PGtkTextIter; tag:PGtkTextTag):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_forward_find_char(iter:PGtkTextIter; pred:GtkTextCharPredicate; user_data:gpointer; limit:PGtkTextIter):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_backward_find_char(iter:PGtkTextIter; pred:GtkTextCharPredicate; user_data:gpointer; limit:PGtkTextIter):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_forward_search(iter:PGtkTextIter; str:Pchar; flags:GtkTextSearchFlags; match_start:PGtkTextIter; match_end:PGtkTextIter; 
             limit:PGtkTextIter):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_backward_search(iter:PGtkTextIter; str:Pchar; flags:GtkTextSearchFlags; match_start:PGtkTextIter; match_end:PGtkTextIter; 
             limit:PGtkTextIter):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_equal(lhs:PGtkTextIter; rhs:PGtkTextIter):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_compare(lhs:PGtkTextIter; rhs:PGtkTextIter):longint;
  begin
    { You must implement this function }
  end;
  function gtk_text_iter_in_range(iter:PGtkTextIter; start:PGtkTextIter; end:PGtkTextIter):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_text_iter_order(first:PGtkTextIter; second:PGtkTextIter);
  begin
    { You must implement this function }
  end;

