/* GtkPageSetupUnixDialog
 * Copyright (C) 2006 Alexander Larsson <alexl@redhat.com>
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library. If not, see <http://www.gnu.org/licenses/>.
 */

#pragma once

#if !defined (__GTK_UNIX_PRINT_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gtk/gtkunixprint.h> can be included directly."
#endif

#include <gtk/gtk.h>



#define GTK_TYPE_PAGE_SETUP_UNIX_DIALOG                  (gtk_page_setup_unix_dialog_get_type ())
#define GTK_PAGE_SETUP_UNIX_DIALOG(obj)                  (G_TYPE_CHECK_INSTANCE_CAST ((obj), GTK_TYPE_PAGE_SETUP_UNIX_DIALOG, GtkPageSetupUnixDialog))
#define GTK_IS_PAGE_SETUP_UNIX_DIALOG(obj)               (G_TYPE_CHECK_INSTANCE_TYPE ((obj), GTK_TYPE_PAGE_SETUP_UNIX_DIALOG))


typedef struct _GtkPageSetupUnixDialog GtkPageSetupUnixDialog;



GType 		  gtk_page_setup_unix_dialog_get_type	        (void) ;

GtkWidget *       gtk_page_setup_unix_dialog_new                (const char             *title,
								 GtkWindow              *parent);

void              gtk_page_setup_unix_dialog_set_page_setup     (GtkPageSetupUnixDialog *dialog,
								 GtkPageSetup           *page_setup);

GtkPageSetup *    gtk_page_setup_unix_dialog_get_page_setup     (GtkPageSetupUnixDialog *dialog);

void              gtk_page_setup_unix_dialog_set_print_settings (GtkPageSetupUnixDialog *dialog,
								 GtkPrintSettings       *print_settings);

GtkPrintSettings *gtk_page_setup_unix_dialog_get_print_settings (GtkPageSetupUnixDialog *dialog);



