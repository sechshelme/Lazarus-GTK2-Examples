/* GTK - The GIMP Toolkit
 * gtklinkbutton.h - a hyperlink-enabled button
 *
 * Copyright (C) 2005 Emmanuele Bassi <ebassi@gmail.com>
 * All rights reserved.
 *
 * Based on gnome-href code by:
 * 	James Henstridge <james@daa.com.au>
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

#ifndef __GTK_LINK_BUTTON_H__
#define __GTK_LINK_BUTTON_H__

#if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gtk/gtk.h> can be included directly."
#endif

#include <gtk/gtkbutton.h>

/* Zeile entfernt */

#define GTK_TYPE_LINK_BUTTON		(gtk_link_button_get_type ())
#define GTK_LINK_BUTTON(obj)		(G_TYPE_CHECK_INSTANCE_CAST ((obj), GTK_TYPE_LINK_BUTTON, GtkLinkButton))
#define GTK_IS_LINK_BUTTON(obj)		(G_TYPE_CHECK_INSTANCE_TYPE ((obj), GTK_TYPE_LINK_BUTTON))

typedef struct _GtkLinkButton GtkLinkButton;

/* Zeile entfernt */
GType                 gtk_link_button_get_type          (void) ;

/* Zeile entfernt */
GtkWidget *           gtk_link_button_new               (const char    *uri);
/* Zeile entfernt */
GtkWidget *           gtk_link_button_new_with_label    (const char    *uri,
						         const char    *label);

/* Zeile entfernt */
const char *         gtk_link_button_get_uri           (GtkLinkButton *link_button);
/* Zeile entfernt */
void                  gtk_link_button_set_uri           (GtkLinkButton *link_button,
						         const char    *uri);

/* Zeile entfernt */
gboolean              gtk_link_button_get_visited       (GtkLinkButton *link_button);
/* Zeile entfernt */
void                  gtk_link_button_set_visited       (GtkLinkButton *link_button,
                                                         gboolean       visited);


/* Zeile entfernt */

#endif /* __GTK_LINK_BUTTON_H__ */
