/* GtkPrintUnixDialog
 * Copyright (C) 2006 John (J5) Palmieri <johnp@redhat.com>
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

#ifndef __GTK_PRINT_UNIX_DIALOG_H__
#define __GTK_PRINT_UNIX_DIALOG_H__

#if !defined (__GTK_UNIX_PRINT_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gtk/gtkunixprint.h> can be included directly."
#endif

#include <gtk/gtk.h>
#include <gtk/gtkprinter.h>
#include <gtk/gtkprintjob.h>

/* Zeile entfernt */

#define GTK_TYPE_PRINT_UNIX_DIALOG                  (gtk_print_unix_dialog_get_type ())
#define GTK_PRINT_UNIX_DIALOG(obj)                  (G_TYPE_CHECK_INSTANCE_CAST ((obj), GTK_TYPE_PRINT_UNIX_DIALOG, GtkPrintUnixDialog))
#define GTK_IS_PRINT_UNIX_DIALOG(obj)               (G_TYPE_CHECK_INSTANCE_TYPE ((obj), GTK_TYPE_PRINT_UNIX_DIALOG))


typedef struct _GtkPrintUnixDialog GtkPrintUnixDialog;


/* Zeile entfernt */
GType                gtk_print_unix_dialog_get_type                (void) ;
/* Zeile entfernt */
GtkWidget *          gtk_print_unix_dialog_new                     (const char *title,
                                                                    GtkWindow   *parent);

/* Zeile entfernt */
void                 gtk_print_unix_dialog_set_page_setup          (GtkPrintUnixDialog *dialog,
								    GtkPageSetup       *page_setup);
/* Zeile entfernt */
GtkPageSetup *       gtk_print_unix_dialog_get_page_setup          (GtkPrintUnixDialog *dialog);
/* Zeile entfernt */
void                 gtk_print_unix_dialog_set_current_page        (GtkPrintUnixDialog *dialog,
								    int                 current_page);
/* Zeile entfernt */
int                  gtk_print_unix_dialog_get_current_page        (GtkPrintUnixDialog *dialog);
/* Zeile entfernt */
void                 gtk_print_unix_dialog_set_settings            (GtkPrintUnixDialog *dialog,
								    GtkPrintSettings   *settings);
/* Zeile entfernt */
GtkPrintSettings *   gtk_print_unix_dialog_get_settings            (GtkPrintUnixDialog *dialog);
/* Zeile entfernt */
GtkPrinter *         gtk_print_unix_dialog_get_selected_printer    (GtkPrintUnixDialog *dialog);
/* Zeile entfernt */
void                 gtk_print_unix_dialog_add_custom_tab          (GtkPrintUnixDialog *dialog,
								    GtkWidget          *child,
								    GtkWidget          *tab_label);
/* Zeile entfernt */
void                 gtk_print_unix_dialog_set_manual_capabilities (GtkPrintUnixDialog *dialog,
								    GtkPrintCapabilities capabilities);
/* Zeile entfernt */
GtkPrintCapabilities gtk_print_unix_dialog_get_manual_capabilities (GtkPrintUnixDialog  *dialog);
/* Zeile entfernt */
void                 gtk_print_unix_dialog_set_support_selection   (GtkPrintUnixDialog  *dialog,
								    gboolean             support_selection);
/* Zeile entfernt */
gboolean             gtk_print_unix_dialog_get_support_selection   (GtkPrintUnixDialog  *dialog);
/* Zeile entfernt */
void                 gtk_print_unix_dialog_set_has_selection       (GtkPrintUnixDialog  *dialog,
								    gboolean             has_selection);
/* Zeile entfernt */
gboolean             gtk_print_unix_dialog_get_has_selection       (GtkPrintUnixDialog  *dialog);
/* Zeile entfernt */
void                 gtk_print_unix_dialog_set_embed_page_setup    (GtkPrintUnixDialog *dialog,
								    gboolean            embed);
/* Zeile entfernt */
gboolean             gtk_print_unix_dialog_get_embed_page_setup    (GtkPrintUnixDialog *dialog);
/* Zeile entfernt */
gboolean             gtk_print_unix_dialog_get_page_setup_set      (GtkPrintUnixDialog *dialog);

/* Zeile entfernt */

#endif /* __GTK_PRINT_UNIX_DIALOG_H__ */
