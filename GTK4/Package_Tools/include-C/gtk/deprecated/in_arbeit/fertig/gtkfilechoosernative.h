/* GTK - The GIMP Toolkit
 * gtkfilechoosernative.h: Native File selector dialog
 * Copyright (C) 2015, Red Hat, Inc.
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

#include <gtk/deprecated/gtkfilechooser.h>
#include <gtk/gtknativedialog.h>



#define GTK_TYPE_FILE_CHOOSER_NATIVE             (gtk_file_chooser_native_get_type ())


//G_DECLARE_FINAL_TYPE (GtkFileChooserNative, gtk_file_chooser_native, GTK, FILE_CHOOSER_NATIVE, GtkNativeDialog)


GtkFileChooserNative *gtk_file_chooser_native_new (const char           *title,
                                                   GtkWindow            *parent,
                                                   GtkFileChooserAction  action,
                                                   const char           *accept_label,
                                                   const char           *cancel_label);


const char *gtk_file_chooser_native_get_accept_label (GtkFileChooserNative *self);

void        gtk_file_chooser_native_set_accept_label (GtkFileChooserNative *self,
                                                      const char           *accept_label);

const char *gtk_file_chooser_native_get_cancel_label (GtkFileChooserNative *self);

void        gtk_file_chooser_native_set_cancel_label (GtkFileChooserNative *self,
                                                      const char           *cancel_label);



