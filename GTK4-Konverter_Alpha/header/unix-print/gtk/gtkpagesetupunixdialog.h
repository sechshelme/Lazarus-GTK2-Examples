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

#ifndef __GTK_PAGE_SETUP_UNIX_DIALOG_H__
#define __GTK_PAGE_SETUP_UNIX_DIALOG_H__

#if !defined (__GTK_UNIX_PRINT_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gtk/gtkunixprint.h> can be included directly."
#endif

#include <gtk/gtk.h>

/* Zeile entfernt */

#define GTK_TYPE_PAGE_SETUP_UNIX_DIALOG                  (gtk_page_setup_unix_dialog_get_type ())
#define GTK_PAGE_SETUP_UNIX_DIALOG(obj)                  (G_TYPE_CHECK_INSTANCE_CAST ((obj), GTK_TYPE_PAGE_SETUP_UNIX_DIALOG, GtkPageSetupUnixDialog))
#define GTK_IS_PAGE_SETUP_UNIX_DIALOG(obj)               (G_TYPE_CHECK_INSTANCE_TYPE ((obj), GTK_TYPE_PAGE_SETUP_UNIX_DIALOG))


typedef struct _GtkPageSetupUnixDialog GtkPageSetupUnixDialog;


/* Zeile entfernt */
GType 		  gtk_page_setup_unix_dialog_get_type	        (void) ;
/* Zeile entfernt */
GtkWidget *       gtk_page_setup_unix_dialog_new                (const char             *title,
								 GtkWindow              *parent);
/* Zeile entfernt */
void              gtk_page_setup_unix_dialog_set_page_setup     (GtkPageSetupUnixDialog *dialog,
								 GtkPageSetup           *page_setup);
/* Zeile entfernt */
GtkPageSetup *    gtk_page_setup_unix_dialog_get_page_setup     (GtkPageSetupUnixDialog *dialog);
/* Zeile entfernt */
void              gtk_page_setup_unix_dialog_set_print_settings (GtkPageSetupUnixDialog *dialog,
								 GtkPrintSettings       *print_settings);
/* Zeile entfernt */
GtkPrintSettings *gtk_page_setup_unix_dialog_get_print_settings (GtkPageSetupUnixDialog *dialog);

/* Zeile entfernt */

#endif /* __GTK_PAGE_SETUP_UNIX_DIALOG_H__ */
