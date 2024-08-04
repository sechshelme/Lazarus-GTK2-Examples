unit gtktextiter;

interface

uses
 ctypes, glib2, pango, common_GTK, GDK4, gtktexttag, gtktextchild;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}


  // Ausgelagert von gtktextbuffer
type
  TGtkTextBufferPrivate = record // _GtkTextBufferPrivate
  end;
  PGtkTextBufferPrivate = ^TGtkTextBufferPrivate;

  TGtkTextBuffer = record
    parent_instance: TGObject;
    priv: PGtkTextBufferPrivate;
  end;
  PGtkTextBuffer = ^TGtkTextBuffer;

type
  PGtkTextSearchFlags = ^TGtkTextSearchFlags;
  TGtkTextSearchFlags = longint;

const
  GTK_TEXT_SEARCH_VISIBLE_ONLY = 1 shl 0;
  GTK_TEXT_SEARCH_TEXT_ONLY = 1 shl 1;
  GTK_TEXT_SEARCH_CASE_INSENSITIVE = 1 shl 2;

type
  TGtkTextIter = record
    dummy1: Tgpointer;
    dummy2: Tgpointer;
    dummy3: cint;
    dummy4: cint;
    dummy5: cint;
    dummy6: cint;
    dummy7: cint;
    dummy8: cint;
    dummy9: Tgpointer;
    dummy10: Tgpointer;
    dummy11: cint;
    dummy12: cint;
    dummy13: cint;
    dummy14: Tgpointer;
  end;
  PGtkTextIter = ^TGtkTextIter;

function gtk_text_iter_get_buffer(iter: PGtkTextIter): PGtkTextBuffer; cdecl; external gtklib;
function gtk_text_iter_copy(iter: PGtkTextIter): PGtkTextIter; cdecl; external gtklib;
procedure gtk_text_iter_free(iter: PGtkTextIter); cdecl; external gtklib;
procedure gtk_text_iter_assign(iter: PGtkTextIter; other: PGtkTextIter); cdecl; external gtklib;
function gtk_text_iter_get_type: TGType; cdecl; external gtklib;
function gtk_text_iter_get_offset(iter: PGtkTextIter): longint; cdecl; external gtklib;
function gtk_text_iter_get_line(iter: PGtkTextIter): longint; cdecl; external gtklib;
function gtk_text_iter_get_line_offset(iter: PGtkTextIter): longint; cdecl; external gtklib;
function gtk_text_iter_get_line_index(iter: PGtkTextIter): longint; cdecl; external gtklib;
function gtk_text_iter_get_visible_line_offset(iter: PGtkTextIter): longint; cdecl; external gtklib;
function gtk_text_iter_get_visible_line_index(iter: PGtkTextIter): longint; cdecl; external gtklib;
function gtk_text_iter_get_char(iter: PGtkTextIter): Tgunichar; cdecl; external gtklib;
function gtk_text_iter_get_slice(start: PGtkTextIter; end_: PGtkTextIter): PChar; cdecl; external gtklib;
function gtk_text_iter_get_text(start: PGtkTextIter; end_: PGtkTextIter): PChar; cdecl; external gtklib;
function gtk_text_iter_get_visible_slice(start: PGtkTextIter; end_: PGtkTextIter): PChar; cdecl; external gtklib;
function gtk_text_iter_get_visible_text(start: PGtkTextIter; end_: PGtkTextIter): PChar; cdecl; external gtklib;
function gtk_text_iter_get_paintable(iter: PGtkTextIter): PGdkPaintable; cdecl; external gtklib;
function gtk_text_iter_get_marks(iter: PGtkTextIter): PGSList; cdecl; external gtklib;
function gtk_text_iter_get_child_anchor(iter: PGtkTextIter): PGtkTextChildAnchor; cdecl; external gtklib;
function gtk_text_iter_get_toggled_tags(iter: PGtkTextIter; toggled_on: Tgboolean): PGSList; cdecl; external gtklib;
function gtk_text_iter_starts_tag(iter: PGtkTextIter; tag: PGtkTextTag): Tgboolean; cdecl; external gtklib;
function gtk_text_iter_ends_tag(iter: PGtkTextIter; tag: PGtkTextTag): Tgboolean; cdecl; external gtklib;
function gtk_text_iter_toggles_tag(iter: PGtkTextIter; tag: PGtkTextTag): Tgboolean; cdecl; external gtklib;
function gtk_text_iter_has_tag(iter: PGtkTextIter; tag: PGtkTextTag): Tgboolean; cdecl; external gtklib;
function gtk_text_iter_get_tags(iter: PGtkTextIter): PGSList; cdecl; external gtklib;
function gtk_text_iter_editable(iter: PGtkTextIter; default_setting: Tgboolean): Tgboolean; cdecl; external gtklib;
function gtk_text_iter_can_insert(iter: PGtkTextIter; default_editability: Tgboolean): Tgboolean; cdecl; external gtklib;
function gtk_text_iter_starts_word(iter: PGtkTextIter): Tgboolean; cdecl; external gtklib;
function gtk_text_iter_ends_word(iter: PGtkTextIter): Tgboolean; cdecl; external gtklib;
function gtk_text_iter_inside_word(iter: PGtkTextIter): Tgboolean; cdecl; external gtklib;
function gtk_text_iter_starts_sentence(iter: PGtkTextIter): Tgboolean; cdecl; external gtklib;
function gtk_text_iter_ends_sentence(iter: PGtkTextIter): Tgboolean; cdecl; external gtklib;
function gtk_text_iter_inside_sentence(iter: PGtkTextIter): Tgboolean; cdecl; external gtklib;
function gtk_text_iter_starts_line(iter: PGtkTextIter): Tgboolean; cdecl; external gtklib;
function gtk_text_iter_ends_line(iter: PGtkTextIter): Tgboolean; cdecl; external gtklib;
function gtk_text_iter_is_cursor_position(iter: PGtkTextIter): Tgboolean; cdecl; external gtklib;
function gtk_text_iter_get_chars_in_line(iter: PGtkTextIter): longint; cdecl; external gtklib;
function gtk_text_iter_get_bytes_in_line(iter: PGtkTextIter): longint; cdecl; external gtklib;
function gtk_text_iter_get_language(iter: PGtkTextIter): PPangoLanguage; cdecl; external gtklib;
function gtk_text_iter_is_end(iter: PGtkTextIter): Tgboolean; cdecl; external gtklib;
function gtk_text_iter_is_start(iter: PGtkTextIter): Tgboolean; cdecl; external gtklib;
function gtk_text_iter_forward_char(iter: PGtkTextIter): Tgboolean; cdecl; external gtklib;
function gtk_text_iter_backward_char(iter: PGtkTextIter): Tgboolean; cdecl; external gtklib;
function gtk_text_iter_forward_chars(iter: PGtkTextIter; Count: longint): Tgboolean; cdecl; external gtklib;
function gtk_text_iter_backward_chars(iter: PGtkTextIter; Count: longint): Tgboolean; cdecl; external gtklib;
function gtk_text_iter_forward_line(iter: PGtkTextIter): Tgboolean; cdecl; external gtklib;
function gtk_text_iter_backward_line(iter: PGtkTextIter): Tgboolean; cdecl; external gtklib;
function gtk_text_iter_forward_lines(iter: PGtkTextIter; Count: longint): Tgboolean; cdecl; external gtklib;
function gtk_text_iter_backward_lines(iter: PGtkTextIter; Count: longint): Tgboolean; cdecl; external gtklib;
function gtk_text_iter_forward_word_end(iter: PGtkTextIter): Tgboolean; cdecl; external gtklib;
function gtk_text_iter_backward_word_start(iter: PGtkTextIter): Tgboolean; cdecl; external gtklib;
function gtk_text_iter_forward_word_ends(iter: PGtkTextIter; Count: longint): Tgboolean; cdecl; external gtklib;
function gtk_text_iter_backward_word_starts(iter: PGtkTextIter; Count: longint): Tgboolean; cdecl; external gtklib;
function gtk_text_iter_forward_visible_line(iter: PGtkTextIter): Tgboolean; cdecl; external gtklib;
function gtk_text_iter_backward_visible_line(iter: PGtkTextIter): Tgboolean; cdecl; external gtklib;
function gtk_text_iter_forward_visible_lines(iter: PGtkTextIter; Count: longint): Tgboolean; cdecl; external gtklib;
function gtk_text_iter_backward_visible_lines(iter: PGtkTextIter; Count: longint): Tgboolean; cdecl; external gtklib;
function gtk_text_iter_forward_visible_word_end(iter: PGtkTextIter): Tgboolean; cdecl; external gtklib;
function gtk_text_iter_backward_visible_word_start(iter: PGtkTextIter): Tgboolean; cdecl; external gtklib;
function gtk_text_iter_forward_visible_word_ends(iter: PGtkTextIter; Count: longint): Tgboolean; cdecl; external gtklib;
function gtk_text_iter_backward_visible_word_starts(iter: PGtkTextIter; Count: longint): Tgboolean; cdecl; external gtklib;
function gtk_text_iter_forward_sentence_end(iter: PGtkTextIter): Tgboolean; cdecl; external gtklib;
function gtk_text_iter_backward_sentence_start(iter: PGtkTextIter): Tgboolean; cdecl; external gtklib;
function gtk_text_iter_forward_sentence_ends(iter: PGtkTextIter; Count: longint): Tgboolean; cdecl; external gtklib;
function gtk_text_iter_backward_sentence_starts(iter: PGtkTextIter; Count: longint): Tgboolean; cdecl; external gtklib;
function gtk_text_iter_forward_cursor_position(iter: PGtkTextIter): Tgboolean; cdecl; external gtklib;
function gtk_text_iter_backward_cursor_position(iter: PGtkTextIter): Tgboolean; cdecl; external gtklib;
function gtk_text_iter_forward_cursor_positions(iter: PGtkTextIter; Count: longint): Tgboolean; cdecl; external gtklib;
function gtk_text_iter_backward_cursor_positions(iter: PGtkTextIter; Count: longint): Tgboolean; cdecl; external gtklib;
function gtk_text_iter_forward_visible_cursor_position(iter: PGtkTextIter): Tgboolean; cdecl; external gtklib;
function gtk_text_iter_backward_visible_cursor_position(iter: PGtkTextIter): Tgboolean; cdecl; external gtklib;
function gtk_text_iter_forward_visible_cursor_positions(iter: PGtkTextIter; Count: longint): Tgboolean; cdecl; external gtklib;
function gtk_text_iter_backward_visible_cursor_positions(iter: PGtkTextIter; Count: longint): Tgboolean; cdecl; external gtklib;
procedure gtk_text_iter_set_offset(iter: PGtkTextIter; char_offset: longint); cdecl; external gtklib;
procedure gtk_text_iter_set_line(iter: PGtkTextIter; line_number: longint); cdecl; external gtklib;
procedure gtk_text_iter_set_line_offset(iter: PGtkTextIter; char_on_line: longint); cdecl; external gtklib;
procedure gtk_text_iter_set_line_index(iter: PGtkTextIter; byte_on_line: longint); cdecl; external gtklib;
procedure gtk_text_iter_forward_to_end(iter: PGtkTextIter); cdecl; external gtklib;
function gtk_text_iter_forward_to_line_end(iter: PGtkTextIter): Tgboolean; cdecl; external gtklib;
procedure gtk_text_iter_set_visible_line_offset(iter: PGtkTextIter; char_on_line: longint); cdecl; external gtklib;
procedure gtk_text_iter_set_visible_line_index(iter: PGtkTextIter; byte_on_line: longint); cdecl; external gtklib;
function gtk_text_iter_forward_to_tag_toggle(iter: PGtkTextIter; tag: PGtkTextTag): Tgboolean; cdecl; external gtklib;
function gtk_text_iter_backward_to_tag_toggle(iter: PGtkTextIter; tag: PGtkTextTag): Tgboolean; cdecl; external gtklib;

type
  TGtkTextCharPredicate = function(ch: Tgunichar; user_data: Tgpointer): Tgboolean; cdecl;

function gtk_text_iter_forward_find_char(iter: PGtkTextIter; pred: TGtkTextCharPredicate; user_data: Tgpointer; limit: PGtkTextIter): Tgboolean; cdecl; external gtklib;
function gtk_text_iter_backward_find_char(iter: PGtkTextIter; pred: TGtkTextCharPredicate; user_data: Tgpointer; limit: PGtkTextIter): Tgboolean; cdecl; external gtklib;
function gtk_text_iter_forward_search(iter: PGtkTextIter; str: PChar; flags: TGtkTextSearchFlags; match_start: PGtkTextIter; match_end: PGtkTextIter;
  limit: PGtkTextIter): Tgboolean; cdecl; external gtklib;
function gtk_text_iter_backward_search(iter: PGtkTextIter; str: PChar; flags: TGtkTextSearchFlags; match_start: PGtkTextIter; match_end: PGtkTextIter;
  limit: PGtkTextIter): Tgboolean; cdecl; external gtklib;
function gtk_text_iter_equal(lhs: PGtkTextIter; rhs: PGtkTextIter): Tgboolean; cdecl; external gtklib;
function gtk_text_iter_compare(lhs: PGtkTextIter; rhs: PGtkTextIter): longint; cdecl; external gtklib;
function gtk_text_iter_in_range(iter: PGtkTextIter; start: PGtkTextIter; end_: PGtkTextIter): Tgboolean; cdecl; external gtklib;
procedure gtk_text_iter_order(First: PGtkTextIter; second: PGtkTextIter); cdecl; external gtklib;

// === Konventiert am: 19-7-24 19:34:48 ===

function GTK_TYPE_TEXT_ITER: TGType;

implementation

function GTK_TYPE_TEXT_ITER: TGType;
begin
  GTK_TYPE_TEXT_ITER := gtk_text_iter_get_type;
end;



end.
