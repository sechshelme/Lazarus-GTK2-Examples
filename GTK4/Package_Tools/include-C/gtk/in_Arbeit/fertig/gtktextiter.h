/* GTK - The GIMP Toolkit
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
 */

/*
 * Modified by the GTK+ Team and others 1997-2000.  See the AUTHORS
 * file for a list of people on the GTK+ Team.  See the ChangeLog
 * files for a list of changes.  These files are distributed with
 * GTK+ at ftp://ftp.gtk.org/pub/gtk/.
 */

#pragma once

#if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gtk/gtk.h> can be included directly."
#endif

#include <gtk/gtktextchild.h>
#include <gtk/gtktexttag.h>



/**
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
 */
typedef enum {
  GTK_TEXT_SEARCH_VISIBLE_ONLY     = 1 << 0,
  GTK_TEXT_SEARCH_TEXT_ONLY        = 1 << 1,
  GTK_TEXT_SEARCH_CASE_INSENSITIVE = 1 << 2
  /* Possible future plans: SEARCH_REGEXP */
} GtkTextSearchFlags;

/*
 * Iter: represents a location in the text. Becomes invalid if the
 * characters/pixmaps/widgets (indexable objects) in the text buffer
 * are changed.
 */

typedef struct _GtkTextBuffer GtkTextBuffer;

#define GTK_TYPE_TEXT_ITER     (gtk_text_iter_get_type ())

struct _GtkTextIter {
  /* GtkTextIter is an opaque datatype; ignore all these fields.
   * Initialize the iter with gtk_text_buffer_get_iter_*
   * functions
   */
  /*< private >*/
  gpointer dummy1;
  gpointer dummy2;
  int dummy3;
  int dummy4;
  int dummy5;
  int dummy6;
  int dummy7;
  int dummy8;
  gpointer dummy9;
  gpointer dummy10;
  int dummy11;
  int dummy12;
  /* padding */
  int dummy13;
  gpointer dummy14;
};


/* This is primarily intended for language bindings that want to avoid
   a "buffer" argument to text insertions, deletions, etc. */

GtkTextBuffer *gtk_text_iter_get_buffer (const GtkTextIter *iter);

/*
 * Life cycle
 */


GtkTextIter *gtk_text_iter_copy     (const GtkTextIter *iter);

void         gtk_text_iter_free     (GtkTextIter       *iter);

void         gtk_text_iter_assign   (GtkTextIter       *iter,
                                     const GtkTextIter *other);


GType        gtk_text_iter_get_type (void) ;

/*
 * Convert to different kinds of index
 */


int gtk_text_iter_get_offset      (const GtkTextIter *iter);

int gtk_text_iter_get_line        (const GtkTextIter *iter);

int gtk_text_iter_get_line_offset (const GtkTextIter *iter);

int gtk_text_iter_get_line_index  (const GtkTextIter *iter);


int gtk_text_iter_get_visible_line_offset (const GtkTextIter *iter);

int gtk_text_iter_get_visible_line_index (const GtkTextIter *iter);


/*
 * “Dereference” operators
 */

gunichar gtk_text_iter_get_char          (const GtkTextIter  *iter);

/* includes the 0xFFFC char for pixmaps/widgets, so char offsets
 * into the returned string map properly into buffer char offsets
 */

char    *gtk_text_iter_get_slice         (const GtkTextIter  *start,
                                          const GtkTextIter  *end);

/* includes only text, no 0xFFFC */

char    *gtk_text_iter_get_text          (const GtkTextIter  *start,
                                          const GtkTextIter  *end);
/* exclude invisible chars */

char    *gtk_text_iter_get_visible_slice (const GtkTextIter  *start,
                                          const GtkTextIter  *end);

char    *gtk_text_iter_get_visible_text  (const GtkTextIter  *start,
                                          const GtkTextIter  *end);


GdkPaintable *gtk_text_iter_get_paintable (const GtkTextIter *iter);

GSList      *gtk_text_iter_get_marks      (const GtkTextIter *iter);


GtkTextChildAnchor* gtk_text_iter_get_child_anchor (const GtkTextIter *iter);

/* Return list of tags toggled at this point (toggled_on determines
 * whether the list is of on-toggles or off-toggles)
 */

GSList  *gtk_text_iter_get_toggled_tags  (const GtkTextIter  *iter,
                                          gboolean            toggled_on);


gboolean gtk_text_iter_starts_tag        (const GtkTextIter  *iter,
                                          GtkTextTag         *tag);


gboolean gtk_text_iter_ends_tag          (const GtkTextIter  *iter,
                                          GtkTextTag         *tag);


gboolean gtk_text_iter_toggles_tag       (const GtkTextIter  *iter,
                                          GtkTextTag         *tag);


gboolean gtk_text_iter_has_tag           (const GtkTextIter   *iter,
                                          GtkTextTag          *tag);

GSList  *gtk_text_iter_get_tags          (const GtkTextIter   *iter);


gboolean gtk_text_iter_editable          (const GtkTextIter   *iter,
                                          gboolean             default_setting);

gboolean gtk_text_iter_can_insert        (const GtkTextIter   *iter,
                                          gboolean             default_editability);


gboolean gtk_text_iter_starts_word        (const GtkTextIter   *iter);

gboolean gtk_text_iter_ends_word          (const GtkTextIter   *iter);

gboolean gtk_text_iter_inside_word        (const GtkTextIter   *iter);

gboolean gtk_text_iter_starts_sentence    (const GtkTextIter   *iter);

gboolean gtk_text_iter_ends_sentence      (const GtkTextIter   *iter);

gboolean gtk_text_iter_inside_sentence    (const GtkTextIter   *iter);

gboolean gtk_text_iter_starts_line        (const GtkTextIter   *iter);

gboolean gtk_text_iter_ends_line          (const GtkTextIter   *iter);

gboolean gtk_text_iter_is_cursor_position (const GtkTextIter   *iter);


int      gtk_text_iter_get_chars_in_line (const GtkTextIter   *iter);

int      gtk_text_iter_get_bytes_in_line (const GtkTextIter   *iter);


PangoLanguage* gtk_text_iter_get_language   (const GtkTextIter *iter);

gboolean       gtk_text_iter_is_end         (const GtkTextIter *iter);

gboolean       gtk_text_iter_is_start       (const GtkTextIter *iter);

/*
 * Moving around the buffer
 */


gboolean gtk_text_iter_forward_char         (GtkTextIter *iter);

gboolean gtk_text_iter_backward_char        (GtkTextIter *iter);

gboolean gtk_text_iter_forward_chars        (GtkTextIter *iter,
                                             int          count);

gboolean gtk_text_iter_backward_chars       (GtkTextIter *iter,
                                             int          count);

gboolean gtk_text_iter_forward_line         (GtkTextIter *iter);

gboolean gtk_text_iter_backward_line        (GtkTextIter *iter);

gboolean gtk_text_iter_forward_lines        (GtkTextIter *iter,
                                             int          count);

gboolean gtk_text_iter_backward_lines       (GtkTextIter *iter,
                                             int          count);

gboolean gtk_text_iter_forward_word_end     (GtkTextIter *iter);

gboolean gtk_text_iter_backward_word_start  (GtkTextIter *iter);

gboolean gtk_text_iter_forward_word_ends    (GtkTextIter *iter,
                                             int          count);

gboolean gtk_text_iter_backward_word_starts (GtkTextIter *iter,
                                             int          count);


gboolean gtk_text_iter_forward_visible_line   (GtkTextIter *iter);

gboolean gtk_text_iter_backward_visible_line  (GtkTextIter *iter);

gboolean gtk_text_iter_forward_visible_lines  (GtkTextIter *iter,
                                               int          count);

gboolean gtk_text_iter_backward_visible_lines (GtkTextIter *iter,
                                               int          count);


gboolean gtk_text_iter_forward_visible_word_end     (GtkTextIter *iter);

gboolean gtk_text_iter_backward_visible_word_start  (GtkTextIter *iter);

gboolean gtk_text_iter_forward_visible_word_ends    (GtkTextIter *iter,
                                             int          count);

gboolean gtk_text_iter_backward_visible_word_starts (GtkTextIter *iter,
                                             int          count);


gboolean gtk_text_iter_forward_sentence_end     (GtkTextIter *iter);

gboolean gtk_text_iter_backward_sentence_start  (GtkTextIter *iter);

gboolean gtk_text_iter_forward_sentence_ends    (GtkTextIter *iter,
                                                 int          count);

gboolean gtk_text_iter_backward_sentence_starts (GtkTextIter *iter,
                                                 int          count);
/* cursor positions are almost equivalent to chars, but not quite;
 * in some languages, you can’t put the cursor between certain
 * chars. Also, you can’t put the cursor between \r\n at the end
 * of a line.
 */

gboolean gtk_text_iter_forward_cursor_position   (GtkTextIter *iter);

gboolean gtk_text_iter_backward_cursor_position  (GtkTextIter *iter);

gboolean gtk_text_iter_forward_cursor_positions  (GtkTextIter *iter,
                                                  int          count);

gboolean gtk_text_iter_backward_cursor_positions (GtkTextIter *iter,
                                                  int          count);


gboolean gtk_text_iter_forward_visible_cursor_position   (GtkTextIter *iter);

gboolean gtk_text_iter_backward_visible_cursor_position  (GtkTextIter *iter);

gboolean gtk_text_iter_forward_visible_cursor_positions  (GtkTextIter *iter,
                                                          int          count);

gboolean gtk_text_iter_backward_visible_cursor_positions (GtkTextIter *iter,
                                                          int          count);


void     gtk_text_iter_set_offset         (GtkTextIter *iter,
                                           int          char_offset);

void     gtk_text_iter_set_line           (GtkTextIter *iter,
                                           int          line_number);

void     gtk_text_iter_set_line_offset    (GtkTextIter *iter,
                                           int          char_on_line);

void     gtk_text_iter_set_line_index     (GtkTextIter *iter,
                                           int          byte_on_line);

void     gtk_text_iter_forward_to_end     (GtkTextIter *iter);

gboolean gtk_text_iter_forward_to_line_end (GtkTextIter *iter);


void     gtk_text_iter_set_visible_line_offset (GtkTextIter *iter,
                                                int          char_on_line);

void     gtk_text_iter_set_visible_line_index  (GtkTextIter *iter,
                                                int          byte_on_line);

/* returns TRUE if a toggle was found; NULL for the tag pointer
 * means “any tag toggle”, otherwise the next toggle of the
 * specified tag is located.
 */

gboolean gtk_text_iter_forward_to_tag_toggle (GtkTextIter *iter,
                                              GtkTextTag  *tag);


gboolean gtk_text_iter_backward_to_tag_toggle (GtkTextIter *iter,
                                               GtkTextTag  *tag);

/**
 * GtkTextCharPredicate:
 * @ch: a Unicode code point
 * @user_data: data passed to the callback
 *
 * The predicate function used by gtk_text_iter_forward_find_char() and
 * gtk_text_iter_backward_find_char().
 *
 * Returns: %TRUE if the predicate is satisfied, and the iteration should
 *   stop, and %FALSE otherwise
 */
typedef gboolean (* GtkTextCharPredicate) (gunichar ch, gpointer user_data);


gboolean gtk_text_iter_forward_find_char  (GtkTextIter          *iter,
                                           GtkTextCharPredicate  pred,
                                           gpointer              user_data,
                                           const GtkTextIter    *limit);

gboolean gtk_text_iter_backward_find_char (GtkTextIter          *iter,
                                           GtkTextCharPredicate  pred,
                                           gpointer              user_data,
                                           const GtkTextIter    *limit);


gboolean gtk_text_iter_forward_search  (const GtkTextIter *iter,
                                        const char        *str,
                                        GtkTextSearchFlags flags,
                                        GtkTextIter       *match_start,
                                        GtkTextIter       *match_end,
                                        const GtkTextIter *limit);


gboolean gtk_text_iter_backward_search (const GtkTextIter *iter,
                                        const char        *str,
                                        GtkTextSearchFlags flags,
                                        GtkTextIter       *match_start,
                                        GtkTextIter       *match_end,
                                        const GtkTextIter *limit);

/*
 * Comparisons
 */

gboolean gtk_text_iter_equal           (const GtkTextIter *lhs,
                                        const GtkTextIter *rhs);

int      gtk_text_iter_compare         (const GtkTextIter *lhs,
                                        const GtkTextIter *rhs);

gboolean gtk_text_iter_in_range        (const GtkTextIter *iter,
                                        const GtkTextIter *start,
                                        const GtkTextIter *end);

/* Put these two in ascending order */

void     gtk_text_iter_order           (GtkTextIter *first,
                                        GtkTextIter *second);





