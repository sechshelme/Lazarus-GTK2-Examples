/* gtkentrycompletion.h
 * Copyright (C) 2003  Kristian Rietveld  <kris@gtk.org>
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Library General Public
 * License as published by the Free Software Foundation; either
 * version 2 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Library General Public License for more details.
 *
 * You should have received a copy of the GNU Library General Public
 * License along with this library. If not, see <http://www.gnu.org/licenses/>.
 */

#ifndef __GTK_ENTRY_COMPLETION_H__
#define __GTK_ENTRY_COMPLETION_H__

#if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gtk/gtk.h> can be included directly."
#endif

#include <gdk/gdk.h>
#include <gtk/gtktreemodel.h>
#include <gtk/gtkliststore.h>
#include <gtk/gtkcellarea.h>
#include <gtk/gtktreeviewcolumn.h>
#include <gtk/gtktreemodelfilter.h>

/* Zeile entfernt */

#define GTK_TYPE_ENTRY_COMPLETION            (gtk_entry_completion_get_type ())
#define GTK_ENTRY_COMPLETION(obj)            (G_TYPE_CHECK_INSTANCE_CAST ((obj), GTK_TYPE_ENTRY_COMPLETION, GtkEntryCompletion))
#define GTK_IS_ENTRY_COMPLETION(obj)         (G_TYPE_CHECK_INSTANCE_TYPE ((obj), GTK_TYPE_ENTRY_COMPLETION))

typedef struct _GtkEntryCompletion            GtkEntryCompletion;

/**
 * GtkEntryCompletionMatchFunc:
 * @completion: the `GtkEntryCompletion`
 * @key: the string to match, normalized and case-folded
 * @iter: a `GtkTreeIter` indicating the row to match
 * @user_data: user data given to gtk_entry_completion_set_match_func()
 *
 * A function which decides whether the row indicated by @iter matches
 * a given @key, and should be displayed as a possible completion for @key.
 *
 * Note that @key is normalized and case-folded (see g_utf8_normalize()
 * and g_utf8_casefold()). If this is not appropriate, match functions
 * have access to the unmodified key via
 * `gtk_editable_get_text (GTK_EDITABLE (gtk_entry_completion_get_entry ()))`.
 *
 * Returns: %TRUE if @iter should be displayed as a possible completion
 *   for @key
 */
typedef gboolean (* GtkEntryCompletionMatchFunc) (GtkEntryCompletion *completion,
                                                  const char         *key,
                                                  GtkTreeIter        *iter,
                                                  gpointer            user_data);


/* Zeile entfernt */
GType               gtk_entry_completion_get_type               (void) ;
/* Zeile entfernt */
GtkEntryCompletion *gtk_entry_completion_new                    (void);
/* Zeile entfernt */
GtkEntryCompletion *gtk_entry_completion_new_with_area          (GtkCellArea                 *area);

/* Zeile entfernt */
GtkWidget          *gtk_entry_completion_get_entry              (GtkEntryCompletion          *completion);

/* Zeile entfernt */
void                gtk_entry_completion_set_model              (GtkEntryCompletion          *completion,
                                                                 GtkTreeModel                *model);
/* Zeile entfernt */
GtkTreeModel       *gtk_entry_completion_get_model              (GtkEntryCompletion          *completion);

/* Zeile entfernt */
void                gtk_entry_completion_set_match_func         (GtkEntryCompletion          *completion,
                                                                 GtkEntryCompletionMatchFunc  func,
                                                                 gpointer                     func_data,
                                                                 GDestroyNotify               func_notify);
/* Zeile entfernt */
void                gtk_entry_completion_set_minimum_key_length (GtkEntryCompletion          *completion,
                                                                 int                          length);
/* Zeile entfernt */
int                 gtk_entry_completion_get_minimum_key_length (GtkEntryCompletion          *completion);
/* Zeile entfernt */
char *             gtk_entry_completion_compute_prefix         (GtkEntryCompletion          *completion,
                                                                 const char                  *key);
/* Zeile entfernt */
void                gtk_entry_completion_complete               (GtkEntryCompletion          *completion);
/* Zeile entfernt */
void                gtk_entry_completion_insert_prefix          (GtkEntryCompletion          *completion);

/* Zeile entfernt */
void                gtk_entry_completion_set_inline_completion  (GtkEntryCompletion          *completion,
                                                                 gboolean                     inline_completion);
/* Zeile entfernt */
gboolean            gtk_entry_completion_get_inline_completion  (GtkEntryCompletion          *completion);
/* Zeile entfernt */
void                gtk_entry_completion_set_inline_selection  (GtkEntryCompletion          *completion,
                                                                 gboolean                     inline_selection);
/* Zeile entfernt */
gboolean            gtk_entry_completion_get_inline_selection  (GtkEntryCompletion          *completion);
/* Zeile entfernt */
void                gtk_entry_completion_set_popup_completion   (GtkEntryCompletion          *completion,
                                                                 gboolean                     popup_completion);
/* Zeile entfernt */
gboolean            gtk_entry_completion_get_popup_completion   (GtkEntryCompletion          *completion);
/* Zeile entfernt */
void                gtk_entry_completion_set_popup_set_width    (GtkEntryCompletion          *completion,
                                                                 gboolean                     popup_set_width);
/* Zeile entfernt */
gboolean            gtk_entry_completion_get_popup_set_width    (GtkEntryCompletion          *completion);
/* Zeile entfernt */
void                gtk_entry_completion_set_popup_single_match (GtkEntryCompletion          *completion,
                                                                 gboolean                     popup_single_match);
/* Zeile entfernt */
gboolean            gtk_entry_completion_get_popup_single_match (GtkEntryCompletion          *completion);

/* Zeile entfernt */
const char          *gtk_entry_completion_get_completion_prefix (GtkEntryCompletion *completion);
/* convenience */
/* Zeile entfernt */
void                gtk_entry_completion_set_text_column        (GtkEntryCompletion          *completion,
                                                                 int                          column);
/* Zeile entfernt */
int                 gtk_entry_completion_get_text_column        (GtkEntryCompletion          *completion);

/* Zeile entfernt */

#endif /* __GTK_ENTRY_COMPLETION_H__ */
