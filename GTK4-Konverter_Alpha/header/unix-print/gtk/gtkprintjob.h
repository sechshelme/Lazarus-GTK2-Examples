/* GtkPrintJob
 * Copyright (C) 2006 Red Hat,Inc.
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

#ifndef __GTK_PRINT_JOB_H__
#define __GTK_PRINT_JOB_H__

#if !defined (__GTK_UNIX_PRINT_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gtk/gtkunixprint.h> can be included directly."
#endif

#include <cairo.h>

#include <gtk/gtk.h>
#include <gtk/gtkprinter.h>

/* Zeile entfernt */

#define GTK_TYPE_PRINT_JOB                  (gtk_print_job_get_type ())
#define GTK_PRINT_JOB(obj)                  (G_TYPE_CHECK_INSTANCE_CAST ((obj), GTK_TYPE_PRINT_JOB, GtkPrintJob))
#define GTK_IS_PRINT_JOB(obj)               (G_TYPE_CHECK_INSTANCE_TYPE ((obj), GTK_TYPE_PRINT_JOB))

typedef struct _GtkPrintJob          GtkPrintJob;

/**
 * GtkPrintJobCompleteFunc:
 * @print_job: the `GtkPrintJob`
 * @user_data: user data that has been passed to gtk_print_job_send()
 * @error: a `GError` that contains error information if the sending
 *   of the print job failed, otherwise %NULL
 *
 * The type of callback that is passed to gtk_print_job_send().
 *
 * It is called when the print job has been completely sent.
 */
typedef void (*GtkPrintJobCompleteFunc) (GtkPrintJob  *print_job,
                                         gpointer      user_data,
                                         const GError *error);


/* Zeile entfernt */
GType                    gtk_print_job_get_type               (void) ;
/* Zeile entfernt */
GtkPrintJob             *gtk_print_job_new                    (const char               *title,
							       GtkPrinter               *printer,
							       GtkPrintSettings         *settings,
							       GtkPageSetup             *page_setup);
/* Zeile entfernt */
GtkPrintSettings        *gtk_print_job_get_settings           (GtkPrintJob              *job);
/* Zeile entfernt */
GtkPrinter              *gtk_print_job_get_printer            (GtkPrintJob              *job);
/* Zeile entfernt */
const char *            gtk_print_job_get_title              (GtkPrintJob              *job);
/* Zeile entfernt */
GtkPrintStatus           gtk_print_job_get_status             (GtkPrintJob              *job);
/* Zeile entfernt */
gboolean                 gtk_print_job_set_source_file        (GtkPrintJob              *job,
							       const char               *filename,
							       GError                  **error);
/* Zeile entfernt */
gboolean                 gtk_print_job_set_source_fd          (GtkPrintJob              *job,
							       int                       fd,
							       GError                  **error);
/* Zeile entfernt */
cairo_surface_t         *gtk_print_job_get_surface            (GtkPrintJob              *job,
							       GError                  **error);
/* Zeile entfernt */
void                     gtk_print_job_set_track_print_status (GtkPrintJob              *job,
							       gboolean                  track_status);
/* Zeile entfernt */
gboolean                 gtk_print_job_get_track_print_status (GtkPrintJob              *job);
/* Zeile entfernt */
void                     gtk_print_job_send                   (GtkPrintJob              *job,
							       GtkPrintJobCompleteFunc   callback,
							       gpointer                  user_data,
							       GDestroyNotify            dnotify);

/* Zeile entfernt */
GtkPrintPages     gtk_print_job_get_pages       (GtkPrintJob       *job);
/* Zeile entfernt */
void              gtk_print_job_set_pages       (GtkPrintJob       *job,
                                                 GtkPrintPages      pages);
/* Zeile entfernt */
GtkPageRange *    gtk_print_job_get_page_ranges (GtkPrintJob       *job,
                                                 int               *n_ranges);
/* Zeile entfernt */
void              gtk_print_job_set_page_ranges (GtkPrintJob       *job,
                                                 GtkPageRange      *ranges,
                                                 int                n_ranges);
/* Zeile entfernt */
GtkPageSet        gtk_print_job_get_page_set    (GtkPrintJob       *job);
/* Zeile entfernt */
void              gtk_print_job_set_page_set    (GtkPrintJob       *job,
                                                 GtkPageSet         page_set);
/* Zeile entfernt */
int               gtk_print_job_get_num_copies  (GtkPrintJob       *job);
/* Zeile entfernt */
void              gtk_print_job_set_num_copies  (GtkPrintJob       *job,
                                                 int                num_copies);
/* Zeile entfernt */
double            gtk_print_job_get_scale       (GtkPrintJob       *job);
/* Zeile entfernt */
void              gtk_print_job_set_scale       (GtkPrintJob       *job,
                                                 double             scale);
/* Zeile entfernt */
guint             gtk_print_job_get_n_up        (GtkPrintJob       *job);
/* Zeile entfernt */
void              gtk_print_job_set_n_up        (GtkPrintJob       *job,
                                                 guint              n_up);
/* Zeile entfernt */
GtkNumberUpLayout gtk_print_job_get_n_up_layout (GtkPrintJob       *job);
/* Zeile entfernt */
void              gtk_print_job_set_n_up_layout (GtkPrintJob       *job,
                                                 GtkNumberUpLayout  layout);
/* Zeile entfernt */
gboolean          gtk_print_job_get_rotate      (GtkPrintJob       *job);
/* Zeile entfernt */
void              gtk_print_job_set_rotate      (GtkPrintJob       *job,
                                                 gboolean           rotate);
/* Zeile entfernt */
gboolean          gtk_print_job_get_collate     (GtkPrintJob       *job);
/* Zeile entfernt */
void              gtk_print_job_set_collate     (GtkPrintJob       *job,
                                                 gboolean           collate);
/* Zeile entfernt */
gboolean          gtk_print_job_get_reverse     (GtkPrintJob       *job);
/* Zeile entfernt */
void              gtk_print_job_set_reverse     (GtkPrintJob       *job,
                                                 gboolean           reverse);

/* Zeile entfernt */

#endif /* __GTK_PRINT_JOB_H__ */
