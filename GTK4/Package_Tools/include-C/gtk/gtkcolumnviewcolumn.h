/*
 * Copyright © 2019 Benjamin Otte
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library. If not, see <http://www.gnu.org/licenses/>.
 *
 * Authors: Benjamin Otte <otte@gnome.org>
 */

#pragma once

#if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gtk/gtk.h> can be included directly."
#endif

#include <gtk/gtkcolumnview.h>
#include <gtk/gtksorter.h>



#define GTK_TYPE_COLUMN_VIEW_COLUMN         (gtk_column_view_column_get_type ())
#define GTK_COLUMN_VIEW_COLUMN(o)           (G_TYPE_CHECK_INSTANCE_CAST ((o), GTK_TYPE_COLUMN_VIEW_COLUMN, GtkColumnViewColumn))
#define GTK_COLUMN_VIEW_COLUMN_CLASS(k)     (G_TYPE_CHECK_CLASS_CAST ((k), GTK_TYPE_COLUMN_VIEW_COLUMN, GtkColumnViewColumnClass))
#define GTK_IS_COLUMN_VIEW_COLUMN(o)        (G_TYPE_CHECK_INSTANCE_TYPE ((o), GTK_TYPE_COLUMN_VIEW_COLUMN))
#define GTK_IS_COLUMN_VIEW_COLUMN_CLASS(k)  (G_TYPE_CHECK_CLASS_TYPE ((k), GTK_TYPE_COLUMN_VIEW_COLUMN))
#define GTK_COLUMN_VIEW_COLUMN_GET_CLASS(o) (G_TYPE_INSTANCE_GET_CLASS ((o), GTK_TYPE_COLUMN_VIEW_COLUMN, GtkColumnViewColumnClass))


typedef struct _GtkColumnViewColumnClass GtkColumnViewColumnClass;


GType                   gtk_column_view_column_get_type                 (void) ;


GtkColumnViewColumn *   gtk_column_view_column_new                      (const char             *title,
                                                                         GtkListItemFactory     *factory);


GtkColumnView *         gtk_column_view_column_get_column_view          (GtkColumnViewColumn    *self);

void                    gtk_column_view_column_set_factory              (GtkColumnViewColumn    *self,
                                                                         GtkListItemFactory     *factory);

GtkListItemFactory *    gtk_column_view_column_get_factory              (GtkColumnViewColumn    *self);


void                    gtk_column_view_column_set_title                (GtkColumnViewColumn    *self,
                                                                         const char             *title);

const char *            gtk_column_view_column_get_title                (GtkColumnViewColumn    *self);


void                    gtk_column_view_column_set_sorter               (GtkColumnViewColumn    *self,
                                                                         GtkSorter              *sorter);

GtkSorter *             gtk_column_view_column_get_sorter               (GtkColumnViewColumn    *self);


void                    gtk_column_view_column_set_visible              (GtkColumnViewColumn    *self,
                                                                         gboolean                visible);

gboolean                gtk_column_view_column_get_visible              (GtkColumnViewColumn    *self);



void                    gtk_column_view_column_set_header_menu          (GtkColumnViewColumn    *self,
                                                                         GMenuModel             *menu);

GMenuModel *            gtk_column_view_column_get_header_menu          (GtkColumnViewColumn    *self);


void                    gtk_column_view_column_set_fixed_width          (GtkColumnViewColumn    *self,
                                                                         int                     fixed_width);

int                     gtk_column_view_column_get_fixed_width          (GtkColumnViewColumn    *self);


void                    gtk_column_view_column_set_resizable            (GtkColumnViewColumn    *self,
                                                                         gboolean                resizable);

gboolean                gtk_column_view_column_get_resizable            (GtkColumnViewColumn    *self);


void                    gtk_column_view_column_set_expand               (GtkColumnViewColumn    *self,
                                                                         gboolean                expand);

gboolean                gtk_column_view_column_get_expand               (GtkColumnViewColumn    *self);


void                    gtk_column_view_column_set_id                   (GtkColumnViewColumn    *self,
                                                                         const char             *id);

const char *            gtk_column_view_column_get_id                   (GtkColumnViewColumn    *self);



