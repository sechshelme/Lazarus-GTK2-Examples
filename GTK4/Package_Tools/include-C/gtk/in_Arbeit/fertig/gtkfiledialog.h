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
#include <gtk/gtkfilefilter.h>



#define GTK_TYPE_FILE_DIALOG (gtk_file_dialog_get_type ())


//G_DECLARE_FINAL_TYPE (GtkFileDialog, gtk_file_dialog, GTK, FILE_DIALOG, GObject)


GtkFileDialog * gtk_file_dialog_new                  (void);


const char *    gtk_file_dialog_get_title            (GtkFileDialog        *self);


void            gtk_file_dialog_set_title            (GtkFileDialog        *self,
                                                      const char           *title);


gboolean        gtk_file_dialog_get_modal            (GtkFileDialog        *self);


void            gtk_file_dialog_set_modal            (GtkFileDialog        *self,
                                                      gboolean              modal);


GListModel *     gtk_file_dialog_get_filters         (GtkFileDialog        *self);


void             gtk_file_dialog_set_filters         (GtkFileDialog        *self,
                                                      GListModel           *filters);


GtkFileFilter *  gtk_file_dialog_get_default_filter  (GtkFileDialog        *self);


void             gtk_file_dialog_set_default_filter  (GtkFileDialog        *self,
                                                      GtkFileFilter        *filter);


GFile *          gtk_file_dialog_get_initial_folder  (GtkFileDialog        *self);


void             gtk_file_dialog_set_initial_folder  (GtkFileDialog        *self,
                                                      GFile                *folder);


const char *     gtk_file_dialog_get_initial_name    (GtkFileDialog        *self);


void             gtk_file_dialog_set_initial_name    (GtkFileDialog        *self,
                                                      const char           *name);


GFile *          gtk_file_dialog_get_initial_file    (GtkFileDialog        *self);


void             gtk_file_dialog_set_initial_file    (GtkFileDialog        *self,
                                                      GFile                *file);


const char *    gtk_file_dialog_get_accept_label     (GtkFileDialog        *self);


void             gtk_file_dialog_set_accept_label    (GtkFileDialog        *self,
                                                      const char           *accept_label);


void             gtk_file_dialog_open                (GtkFileDialog        *self,
                                                      GtkWindow            *parent,
                                                      GCancellable         *cancellable,
                                                      GAsyncReadyCallback   callback,
                                                      gpointer              user_data);


GFile *          gtk_file_dialog_open_finish         (GtkFileDialog        *self,
                                                      GAsyncResult         *result,
                                                      GError              **error);


void             gtk_file_dialog_select_folder       (GtkFileDialog        *self,
                                                      GtkWindow            *parent,
                                                      GCancellable         *cancellable,
                                                      GAsyncReadyCallback   callback,
                                                      gpointer              user_data);


GFile *          gtk_file_dialog_select_folder_finish
                                                     (GtkFileDialog        *self,
                                                      GAsyncResult         *result,
                                                      GError              **error);


void             gtk_file_dialog_save                (GtkFileDialog        *self,
                                                      GtkWindow            *parent,
                                                      GCancellable         *cancellable,
                                                      GAsyncReadyCallback   callback,
                                                      gpointer              user_data);


GFile *          gtk_file_dialog_save_finish         (GtkFileDialog        *self,
                                                      GAsyncResult         *result,
                                                      GError               **error);


void             gtk_file_dialog_open_multiple       (GtkFileDialog        *self,
                                                      GtkWindow            *parent,
                                                      GCancellable         *cancellable,
                                                      GAsyncReadyCallback   callback,
                                                      gpointer              user_data);


GListModel *     gtk_file_dialog_open_multiple_finish
                                                     (GtkFileDialog        *self,
                                                      GAsyncResult         *result,
                                                      GError              **error);


void             gtk_file_dialog_select_multiple_folders
                                                     (GtkFileDialog        *self,
                                                      GtkWindow            *parent,
                                                      GCancellable         *cancellable,
                                                      GAsyncReadyCallback   callback,
                                                      gpointer              user_data);


GListModel *     gtk_file_dialog_select_multiple_folders_finish
                                                     (GtkFileDialog        *self,
                                                      GAsyncResult         *result,
                                                      GError              **error);



