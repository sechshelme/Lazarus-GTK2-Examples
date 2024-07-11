/* GTK - The GIMP Toolkit
 * Copyright (C) 2019 Red Hat, Inc.
 *
 * Authors:
 * - MAtthias Clasen <mclasen@redhat.com>
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

#pragma once

#if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gtk/gtk.h> can be included directly."
#endif

#include <gtk/gtkentry.h>



#define GTK_TYPE_PASSWORD_ENTRY                 (gtk_password_entry_get_type ())
#define GTK_PASSWORD_ENTRY(obj)                 (G_TYPE_CHECK_INSTANCE_CAST ((obj), GTK_TYPE_PASSWORD_ENTRY, GtkPasswordEntry))
#define GTK_IS_PASSWORD_ENTRY(obj)              (G_TYPE_CHECK_INSTANCE_TYPE ((obj), GTK_TYPE_PASSWORD_ENTRY))

typedef struct _GtkPasswordEntry       GtkPasswordEntry;
typedef struct _GtkPasswordEntryClass  GtkPasswordEntryClass;


GType           gtk_password_entry_get_type (void) ;


GtkWidget *     gtk_password_entry_new      (void);


void            gtk_password_entry_set_show_peek_icon (GtkPasswordEntry *entry,
                                                       gboolean          show_peek_icon);

gboolean        gtk_password_entry_get_show_peek_icon (GtkPasswordEntry *entry);


void            gtk_password_entry_set_extra_menu     (GtkPasswordEntry *entry,
                                                       GMenuModel       *model);

GMenuModel *    gtk_password_entry_get_extra_menu     (GtkPasswordEntry *entry);



