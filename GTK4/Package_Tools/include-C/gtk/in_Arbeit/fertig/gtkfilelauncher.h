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



#define GTK_TYPE_FILE_LAUNCHER (gtk_file_launcher_get_type ())


//G_DECLARE_FINAL_TYPE (GtkFileLauncher, gtk_file_launcher, GTK, FILE_LAUNCHER, GObject)


GtkFileLauncher * gtk_file_launcher_new                          (GFile               *file);


GFile           * gtk_file_launcher_get_file                     (GtkFileLauncher     *self);

void              gtk_file_launcher_set_file                     (GtkFileLauncher     *self,
                                                                  GFile               *file);

gboolean          gtk_file_launcher_get_always_ask               (GtkFileLauncher     *self);

void              gtk_file_launcher_set_always_ask               (GtkFileLauncher     *self,
                                                                  gboolean             always_ask);


gboolean          gtk_file_launcher_get_writable                 (GtkFileLauncher     *self);

void              gtk_file_launcher_set_writable                 (GtkFileLauncher     *self,
                                                                  gboolean             writable);

void             gtk_file_launcher_launch                        (GtkFileLauncher     *self,
                                                                  GtkWindow           *parent,
                                                                  GCancellable        *cancellable,
                                                                  GAsyncReadyCallback  callback,
                                                                  gpointer             user_data);


gboolean         gtk_file_launcher_launch_finish                 (GtkFileLauncher     *self,
                                                                  GAsyncResult        *result,
                                                                  GError             **error);


void             gtk_file_launcher_open_containing_folder        (GtkFileLauncher     *self,
                                                                  GtkWindow           *parent,
                                                                  GCancellable        *cancellable,
                                                                  GAsyncReadyCallback  callback,
                                                                  gpointer             user_data);


gboolean         gtk_file_launcher_open_containing_folder_finish (GtkFileLauncher     *self,
                                                                  GAsyncResult        *result,
                                                                  GError             **error);


