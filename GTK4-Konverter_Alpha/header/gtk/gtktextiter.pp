
unit gtktextiter;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtktextiter.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtktextiter.h
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
Pchar  = ^char;
PGdkPaintable  = ^GdkPaintable;
PGSList  = ^GSList;
PGtkTextBuffer  = ^GtkTextBuffer;
PGtkTextChildAnchor  = ^GtkTextChildAnchor;
PGtkTextIter  = ^GtkTextIter;
PGtkTextSearchFlags  = ^GtkTextSearchFlags;
PGtkTextTag  = ^GtkTextTag;
PPangoLanguage  = ^PangoLanguage;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef __GTK_TEXT_ITER_H__}
{$define __GTK_TEXT_ITER_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtktextchild.h>}
{$include <gtk/gtktexttag.h>}



type
  PGtkTextSearchFlags = ^TGtkTextSearchFlags;
  TGtkTextSearchFlags = (GTK_TEXT_SEARCH_VISIBLE_ONLY := 1 shl 0,GTK_TEXT_SEARCH_TEXT_ONLY := 1 shl 1,
    GTK_TEXT_SEARCH_CASE_INSENSITIVE := 1 shl 2
    );


function GTK_TYPE_TEXT_ITER : longint; { return type might be wrong }




type
  PGtkTextIter = ^TGtkTextIter;
  TGtkTextIter = record
      dummy1 : Tgpointer;
      dummy2 : Tgpointer;
      dummy3 : longint;
      dummy4 : longint;
      dummy5 : longint;
      dummy6 : longint;
      dummy7 : longint;
      dummy8 : longint;
      dummy9 : Tgpointer;
      dummy10 : Tgpointer;
      dummy11 : longint;
      dummy12 : longint;
      dummy13 : longint;
      dummy14 : Tgpointer;
    end;




function gtk_text_iter_get_buffer(iter:PGtkTextIter):PGtkTextBuffer;cdecl;external;


function gtk_text_iter_copy(iter:PGtkTextIter):PGtkTextIter;cdecl;external;

procedure gtk_text_iter_free(iter:PGtkTextIter);cdecl;external;

procedure gtk_text_iter_assign(iter:PGtkTextIter; other:PGtkTextIter);cdecl;external;

function gtk_text_iter_get_type:TGType;cdecl;external;


function gtk_text_iter_get_offset(iter:PGtkTextIter):longint;cdecl;external;

function gtk_text_iter_get_line(iter:PGtkTextIter):longint;cdecl;external;

function gtk_text_iter_get_line_offset(iter:PGtkTextIter):longint;cdecl;external;

function gtk_text_iter_get_line_index(iter:PGtkTextIter):longint;cdecl;external;

function gtk_text_iter_get_visible_line_offset(iter:PGtkTextIter):longint;cdecl;external;

function gtk_text_iter_get_visible_line_index(iter:PGtkTextIter):longint;cdecl;external;


function gtk_text_iter_get_char(iter:PGtkTextIter):Tgunichar;cdecl;external;


function gtk_text_iter_get_slice(start:PGtkTextIter; end:PGtkTextIter):Pchar;cdecl;external;


function gtk_text_iter_get_text(start:PGtkTextIter; end:PGtkTextIter):Pchar;cdecl;external;


function gtk_text_iter_get_visible_slice(start:PGtkTextIter; end:PGtkTextIter):Pchar;cdecl;external;

function gtk_text_iter_get_visible_text(start:PGtkTextIter; end:PGtkTextIter):Pchar;cdecl;external;

function gtk_text_iter_get_paintable(iter:PGtkTextIter):PGdkPaintable;cdecl;external;

function gtk_text_iter_get_marks(iter:PGtkTextIter):PGSList;cdecl;external;

function gtk_text_iter_get_child_anchor(iter:PGtkTextIter):PGtkTextChildAnchor;cdecl;external;


function gtk_text_iter_get_toggled_tags(iter:PGtkTextIter; toggled_on:Tgboolean):PGSList;cdecl;external;

function gtk_text_iter_starts_tag(iter:PGtkTextIter; tag:PGtkTextTag):Tgboolean;cdecl;external;

function gtk_text_iter_ends_tag(iter:PGtkTextIter; tag:PGtkTextTag):Tgboolean;cdecl;external;

function gtk_text_iter_toggles_tag(iter:PGtkTextIter; tag:PGtkTextTag):Tgboolean;cdecl;external;

function gtk_text_iter_has_tag(iter:PGtkTextIter; tag:PGtkTextTag):Tgboolean;cdecl;external;

function gtk_text_iter_get_tags(iter:PGtkTextIter):PGSList;cdecl;external;

function gtk_text_iter_editable(iter:PGtkTextIter; default_setting:Tgboolean):Tgboolean;cdecl;external;

function gtk_text_iter_can_insert(iter:PGtkTextIter; default_editability:Tgboolean):Tgboolean;cdecl;external;

function gtk_text_iter_starts_word(iter:PGtkTextIter):Tgboolean;cdecl;external;

function gtk_text_iter_ends_word(iter:PGtkTextIter):Tgboolean;cdecl;external;

function gtk_text_iter_inside_word(iter:PGtkTextIter):Tgboolean;cdecl;external;

function gtk_text_iter_starts_sentence(iter:PGtkTextIter):Tgboolean;cdecl;external;

function gtk_text_iter_ends_sentence(iter:PGtkTextIter):Tgboolean;cdecl;external;

function gtk_text_iter_inside_sentence(iter:PGtkTextIter):Tgboolean;cdecl;external;

function gtk_text_iter_starts_line(iter:PGtkTextIter):Tgboolean;cdecl;external;

function gtk_text_iter_ends_line(iter:PGtkTextIter):Tgboolean;cdecl;external;

function gtk_text_iter_is_cursor_position(iter:PGtkTextIter):Tgboolean;cdecl;external;

function gtk_text_iter_get_chars_in_line(iter:PGtkTextIter):longint;cdecl;external;

function gtk_text_iter_get_bytes_in_line(iter:PGtkTextIter):longint;cdecl;external;

function gtk_text_iter_get_language(iter:PGtkTextIter):PPangoLanguage;cdecl;external;

function gtk_text_iter_is_end(iter:PGtkTextIter):Tgboolean;cdecl;external;

function gtk_text_iter_is_start(iter:PGtkTextIter):Tgboolean;cdecl;external;


function gtk_text_iter_forward_char(iter:PGtkTextIter):Tgboolean;cdecl;external;

function gtk_text_iter_backward_char(iter:PGtkTextIter):Tgboolean;cdecl;external;

function gtk_text_iter_forward_chars(iter:PGtkTextIter; count:longint):Tgboolean;cdecl;external;

function gtk_text_iter_backward_chars(iter:PGtkTextIter; count:longint):Tgboolean;cdecl;external;

function gtk_text_iter_forward_line(iter:PGtkTextIter):Tgboolean;cdecl;external;

function gtk_text_iter_backward_line(iter:PGtkTextIter):Tgboolean;cdecl;external;

function gtk_text_iter_forward_lines(iter:PGtkTextIter; count:longint):Tgboolean;cdecl;external;

function gtk_text_iter_backward_lines(iter:PGtkTextIter; count:longint):Tgboolean;cdecl;external;

function gtk_text_iter_forward_word_end(iter:PGtkTextIter):Tgboolean;cdecl;external;

function gtk_text_iter_backward_word_start(iter:PGtkTextIter):Tgboolean;cdecl;external;

function gtk_text_iter_forward_word_ends(iter:PGtkTextIter; count:longint):Tgboolean;cdecl;external;

function gtk_text_iter_backward_word_starts(iter:PGtkTextIter; count:longint):Tgboolean;cdecl;external;

function gtk_text_iter_forward_visible_line(iter:PGtkTextIter):Tgboolean;cdecl;external;

function gtk_text_iter_backward_visible_line(iter:PGtkTextIter):Tgboolean;cdecl;external;

function gtk_text_iter_forward_visible_lines(iter:PGtkTextIter; count:longint):Tgboolean;cdecl;external;

function gtk_text_iter_backward_visible_lines(iter:PGtkTextIter; count:longint):Tgboolean;cdecl;external;

function gtk_text_iter_forward_visible_word_end(iter:PGtkTextIter):Tgboolean;cdecl;external;

function gtk_text_iter_backward_visible_word_start(iter:PGtkTextIter):Tgboolean;cdecl;external;

function gtk_text_iter_forward_visible_word_ends(iter:PGtkTextIter; count:longint):Tgboolean;cdecl;external;

function gtk_text_iter_backward_visible_word_starts(iter:PGtkTextIter; count:longint):Tgboolean;cdecl;external;

function gtk_text_iter_forward_sentence_end(iter:PGtkTextIter):Tgboolean;cdecl;external;

function gtk_text_iter_backward_sentence_start(iter:PGtkTextIter):Tgboolean;cdecl;external;

function gtk_text_iter_forward_sentence_ends(iter:PGtkTextIter; count:longint):Tgboolean;cdecl;external;

function gtk_text_iter_backward_sentence_starts(iter:PGtkTextIter; count:longint):Tgboolean;cdecl;external;


function gtk_text_iter_forward_cursor_position(iter:PGtkTextIter):Tgboolean;cdecl;external;

function gtk_text_iter_backward_cursor_position(iter:PGtkTextIter):Tgboolean;cdecl;external;

function gtk_text_iter_forward_cursor_positions(iter:PGtkTextIter; count:longint):Tgboolean;cdecl;external;

function gtk_text_iter_backward_cursor_positions(iter:PGtkTextIter; count:longint):Tgboolean;cdecl;external;

function gtk_text_iter_forward_visible_cursor_position(iter:PGtkTextIter):Tgboolean;cdecl;external;

function gtk_text_iter_backward_visible_cursor_position(iter:PGtkTextIter):Tgboolean;cdecl;external;

function gtk_text_iter_forward_visible_cursor_positions(iter:PGtkTextIter; count:longint):Tgboolean;cdecl;external;

function gtk_text_iter_backward_visible_cursor_positions(iter:PGtkTextIter; count:longint):Tgboolean;cdecl;external;

procedure gtk_text_iter_set_offset(iter:PGtkTextIter; char_offset:longint);cdecl;external;

procedure gtk_text_iter_set_line(iter:PGtkTextIter; line_number:longint);cdecl;external;

procedure gtk_text_iter_set_line_offset(iter:PGtkTextIter; char_on_line:longint);cdecl;external;

procedure gtk_text_iter_set_line_index(iter:PGtkTextIter; byte_on_line:longint);cdecl;external;

procedure gtk_text_iter_forward_to_end(iter:PGtkTextIter);cdecl;external;

function gtk_text_iter_forward_to_line_end(iter:PGtkTextIter):Tgboolean;cdecl;external;

procedure gtk_text_iter_set_visible_line_offset(iter:PGtkTextIter; char_on_line:longint);cdecl;external;

procedure gtk_text_iter_set_visible_line_index(iter:PGtkTextIter; byte_on_line:longint);cdecl;external;


function gtk_text_iter_forward_to_tag_toggle(iter:PGtkTextIter; tag:PGtkTextTag):Tgboolean;cdecl;external;

function gtk_text_iter_backward_to_tag_toggle(iter:PGtkTextIter; tag:PGtkTextTag):Tgboolean;cdecl;external;

type

  TGtkTextCharPredicate = function (ch:Tgunichar; user_data:Tgpointer):Tgboolean;cdecl;


function gtk_text_iter_forward_find_char(iter:PGtkTextIter; pred:TGtkTextCharPredicate; user_data:Tgpointer; limit:PGtkTextIter):Tgboolean;cdecl;external;

function gtk_text_iter_backward_find_char(iter:PGtkTextIter; pred:TGtkTextCharPredicate; user_data:Tgpointer; limit:PGtkTextIter):Tgboolean;cdecl;external;

function gtk_text_iter_forward_search(iter:PGtkTextIter; str:Pchar; flags:TGtkTextSearchFlags; match_start:PGtkTextIter; match_end:PGtkTextIter; 
           limit:PGtkTextIter):Tgboolean;cdecl;external;

function gtk_text_iter_backward_search(iter:PGtkTextIter; str:Pchar; flags:TGtkTextSearchFlags; match_start:PGtkTextIter; match_end:PGtkTextIter; 
           limit:PGtkTextIter):Tgboolean;cdecl;external;


function gtk_text_iter_equal(lhs:PGtkTextIter; rhs:PGtkTextIter):Tgboolean;cdecl;external;

function gtk_text_iter_compare(lhs:PGtkTextIter; rhs:PGtkTextIter):longint;cdecl;external;

function gtk_text_iter_in_range(iter:PGtkTextIter; start:PGtkTextIter; end:PGtkTextIter):Tgboolean;cdecl;external;


procedure gtk_text_iter_order(first:PGtkTextIter; second:PGtkTextIter);cdecl;external;

{$endif}

implementation

function GTK_TYPE_TEXT_ITER : longint; { return type might be wrong }
  begin
    GTK_TYPE_TEXT_ITER:=gtk_text_iter_get_type;
  end;


end.
