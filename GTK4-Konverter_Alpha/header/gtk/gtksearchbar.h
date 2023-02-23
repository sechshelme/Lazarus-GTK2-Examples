/* GTK - The GIMP Toolkit
 * Copyright (C) 2013 Red Hat, Inc.
 *
 * Authors:
 * - Bastien Nocera <bnocera@redhat.com>
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
 * Modified by the GTK+ Team and others 2013.  See the AUTHORS
 * file for a list of people on the GTK+ Team.  See the ChangeLog
 * files for a list of changes.  These files are distributed with
 * GTK+ at ftp://ftp.gtk.org/pub/gtk/.
 */

#ifndef __GTK_SEARCH_BAR_H__
#define __GTK_SEARCH_BAR_H__

#if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gtk/gtk.h> can be included directly."
#endif

#include <gtk/gtkwidget.h>
#include <gtk/gtkeditable.h>

/* Zeile entfernt */

#define GTK_TYPE_SEARCH_BAR                 (gtk_search_bar_get_type ())
#define GTK_SEARCH_BAR(obj)                 (G_TYPE_CHECK_INSTANCE_CAST ((obj), GTK_TYPE_SEARCH_BAR, GtkSearchBar))
#define GTK_IS_SEARCH_BAR(obj)              (G_TYPE_CHECK_INSTANCE_TYPE ((obj), GTK_TYPE_SEARCH_BAR))

typedef struct _GtkSearchBar        GtkSearchBar;

/* Zeile entfernt */
GType       gtk_search_bar_get_type        (void) ;

/* Zeile entfernt */
GtkWidget*  gtk_search_bar_new             (void);

/* Zeile entfernt */
void        gtk_search_bar_connect_entry   (GtkSearchBar *bar,
                                            GtkEditable  *entry);

/* Zeile entfernt */
gboolean    gtk_search_bar_get_search_mode (GtkSearchBar *bar);
/* Zeile entfernt */
void        gtk_search_bar_set_search_mode (GtkSearchBar *bar,
                                            gboolean      search_mode);

/* Zeile entfernt */
gboolean    gtk_search_bar_get_show_close_button (GtkSearchBar *bar);
/* Zeile entfernt */
void        gtk_search_bar_set_show_close_button (GtkSearchBar *bar,
                                                  gboolean      visible);

/* Zeile entfernt */
void        gtk_search_bar_set_key_capture_widget (GtkSearchBar *bar,
                                                   GtkWidget    *widget);
/* Zeile entfernt */
GtkWidget * gtk_search_bar_get_key_capture_widget (GtkSearchBar *bar);

/* Zeile entfernt */
void        gtk_search_bar_set_child          (GtkSearchBar *bar,
                                               GtkWidget    *child);
/* Zeile entfernt */
GtkWidget * gtk_search_bar_get_child          (GtkSearchBar *bar);


/* Zeile entfernt */

#endif /* __GTK_SEARCH_BAR_H__ */
