/* GTK - The GIMP Toolkit
 * Copyright (C) 2012 Red Hat, Inc.
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
 * Modified by the GTK+ Team and others 2012.  See the AUTHORS
 * file for a list of people on the GTK+ Team.  See the ChangeLog
 * files for a list of changes.  These files are distributed with
 * GTK+ at ftp://ftp.gtk.org/pub/gtk/.
 */

#pragma once

#if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gtk/gtk.h> can be included directly."
#endif

#include <gtk/gtkentry.h>



#define GTK_TYPE_SEARCH_ENTRY                 (gtk_search_entry_get_type ())
#define GTK_SEARCH_ENTRY(obj)                 (G_TYPE_CHECK_INSTANCE_CAST ((obj), GTK_TYPE_SEARCH_ENTRY, GtkSearchEntry))
#define GTK_IS_SEARCH_ENTRY(obj)              (G_TYPE_CHECK_INSTANCE_TYPE ((obj), GTK_TYPE_SEARCH_ENTRY))

typedef struct _GtkSearchEntry       GtkSearchEntry;


GType           gtk_search_entry_get_type       (void) ;


GtkWidget*      gtk_search_entry_new            (void);


void            gtk_search_entry_set_key_capture_widget (GtkSearchEntry *entry,
                                                         GtkWidget      *widget);

GtkWidget*      gtk_search_entry_get_key_capture_widget (GtkSearchEntry *entry);


void gtk_search_entry_set_search_delay (GtkSearchEntry *entry,
                                        guint delay);

guint gtk_search_entry_get_search_delay (GtkSearchEntry *entry);


void            gtk_search_entry_set_placeholder_text (GtkSearchEntry *entry,
                                                       const char     *text);

const char *    gtk_search_entry_get_placeholder_text (GtkSearchEntry *entry);


void            gtk_search_entry_set_input_purpose (GtkSearchEntry  *entry,
                                                    GtkInputPurpose  purpose);

GtkInputPurpose gtk_search_entry_get_input_purpose (GtkSearchEntry *entry);


void            gtk_search_entry_set_input_hints (GtkSearchEntry *entry,
                                                  GtkInputHints   hints);

GtkInputHints   gtk_search_entry_get_input_hints (GtkSearchEntry *entry);





