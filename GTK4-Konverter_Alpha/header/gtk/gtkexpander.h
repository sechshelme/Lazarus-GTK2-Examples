/* GTK - The GIMP Toolkit
 *
 * Copyright (C) 2003 Sun Microsystems, Inc.
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
 *
 * Authors:
 *      Mark McLoughlin <mark@skynet.ie>
 */

#ifndef __GTK_EXPANDER_H__
#define __GTK_EXPANDER_H__

#if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gtk/gtk.h> can be included directly."
#endif

#include <gtk/gtkwidget.h>

/* Zeile entfernt */

#define GTK_TYPE_EXPANDER            (gtk_expander_get_type ())
#define GTK_EXPANDER(obj)            (G_TYPE_CHECK_INSTANCE_CAST ((obj), GTK_TYPE_EXPANDER, GtkExpander))
#define GTK_IS_EXPANDER(obj)         (G_TYPE_CHECK_INSTANCE_TYPE ((obj), GTK_TYPE_EXPANDER))

typedef struct _GtkExpander        GtkExpander;

/* Zeile entfernt */
GType                 gtk_expander_get_type            (void) ;

/* Zeile entfernt */
GtkWidget            *gtk_expander_new                 (const char *label);
/* Zeile entfernt */
GtkWidget            *gtk_expander_new_with_mnemonic   (const char *label);

/* Zeile entfernt */
void                  gtk_expander_set_expanded        (GtkExpander *expander,
                                                        gboolean     expanded);
/* Zeile entfernt */
gboolean              gtk_expander_get_expanded        (GtkExpander *expander);

/* Zeile entfernt */
void                  gtk_expander_set_label           (GtkExpander *expander,
                                                        const char *label);
/* Zeile entfernt */
const char *         gtk_expander_get_label           (GtkExpander *expander);

/* Zeile entfernt */
void                  gtk_expander_set_use_underline   (GtkExpander *expander,
                                                        gboolean     use_underline);
/* Zeile entfernt */
gboolean              gtk_expander_get_use_underline   (GtkExpander *expander);

/* Zeile entfernt */
void                  gtk_expander_set_use_markup      (GtkExpander *expander,
                                                        gboolean    use_markup);
/* Zeile entfernt */
gboolean              gtk_expander_get_use_markup      (GtkExpander *expander);

/* Zeile entfernt */
void                  gtk_expander_set_label_widget    (GtkExpander *expander,
                                                        GtkWidget   *label_widget);
/* Zeile entfernt */
GtkWidget            *gtk_expander_get_label_widget    (GtkExpander *expander);
/* Zeile entfernt */
void                  gtk_expander_set_resize_toplevel (GtkExpander *expander,
                                                        gboolean     resize_toplevel);
/* Zeile entfernt */
gboolean              gtk_expander_get_resize_toplevel (GtkExpander *expander);

/* Zeile entfernt */
void                  gtk_expander_set_child           (GtkExpander *expander,
                                                        GtkWidget      *child);
/* Zeile entfernt */
GtkWidget *           gtk_expander_get_child           (GtkExpander *expander);


/* Zeile entfernt */

#endif /* __GTK_EXPANDER_H__ */
