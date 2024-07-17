/*
 * gtkappchooserdialog.h: an app-chooser dialog
 *
 * Copyright (C) 2004 Novell, Inc.
 * Copyright (C) 2007, 2010 Red Hat, Inc.
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Library General Public License as
 * published by the Free Software Foundation; either version 2 of the
 * License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Library General Public License for more details.
 *
 * You should have received a copy of the GNU Library General Public
 * License along with this library. If not, see <http://www.gnu.org/licenses/>.
 *
 * Authors: Dave Camp <dave@novell.com>
 *          Alexander Larsson <alexl@redhat.com>
 *          Cosimo Cecchi <ccecchi@redhat.com>
 */

#pragma once

#if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gtk/gtk.h> can be included directly."
#endif

#include <gtk/deprecated/gtkdialog.h>
#include <gio/gio.h>



#define GTK_TYPE_APP_CHOOSER_DIALOG            (gtk_app_chooser_dialog_get_type ())
#define GTK_APP_CHOOSER_DIALOG(obj)            (G_TYPE_CHECK_INSTANCE_CAST ((obj), GTK_TYPE_APP_CHOOSER_DIALOG, GtkAppChooserDialog))
#define GTK_IS_APP_CHOOSER_DIALOG(obj)         (G_TYPE_CHECK_INSTANCE_TYPE ((obj), GTK_TYPE_APP_CHOOSER_DIALOG))

typedef struct _GtkAppChooserDialog        GtkAppChooserDialog;


GType         gtk_app_chooser_dialog_get_type             (void) ;


GtkWidget *   gtk_app_chooser_dialog_new                  (GtkWindow           *parent,
                                                           GtkDialogFlags       flags,
                                                           GFile               *file);

GtkWidget *   gtk_app_chooser_dialog_new_for_content_type (GtkWindow           *parent,
                                                           GtkDialogFlags       flags,
                                                           const char          *content_type);


GtkWidget *   gtk_app_chooser_dialog_get_widget           (GtkAppChooserDialog *self);

void          gtk_app_chooser_dialog_set_heading          (GtkAppChooserDialog *self,
                                                           const char          *heading);

const char * gtk_app_chooser_dialog_get_heading          (GtkAppChooserDialog *self);





