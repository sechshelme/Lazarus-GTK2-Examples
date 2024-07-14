/* GTK - The GIMP Toolkit
 *
 * Copyright (C) 2022 Red Hat, Inc.
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

#include <gdk/gdk.h>
#include <gtk/gtkwindow.h>



#define GTK_TYPE_COLOR_DIALOG (gtk_color_dialog_get_type ())


//G_DECLARE_FINAL_TYPE (GtkColorDialog, gtk_color_dialog, GTK, COLOR_DIALOG, GObject)


GtkColorDialog *gtk_color_dialog_new                    (void);


const char *    gtk_color_dialog_get_title              (GtkColorDialog       *self);


void            gtk_color_dialog_set_title              (GtkColorDialog       *self,
                                                         const char           *title);


gboolean        gtk_color_dialog_get_modal              (GtkColorDialog       *self);


void            gtk_color_dialog_set_modal              (GtkColorDialog       *self,
                                                         gboolean              modal);


gboolean        gtk_color_dialog_get_with_alpha         (GtkColorDialog       *self);


void            gtk_color_dialog_set_with_alpha         (GtkColorDialog       *self,
                                                         gboolean              with_alpha);


void            gtk_color_dialog_choose_rgba            (GtkColorDialog       *self,
                                                         GtkWindow            *parent,
                                                         const GdkRGBA        *initial_color,
                                                         GCancellable         *cancellable,
                                                         GAsyncReadyCallback   callback,
                                                         gpointer              user_data);


GdkRGBA *       gtk_color_dialog_choose_rgba_finish     (GtkColorDialog        *self,
                                                         GAsyncResult          *result,
                                                         GError               **error);


