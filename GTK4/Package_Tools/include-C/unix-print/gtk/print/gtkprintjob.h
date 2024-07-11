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

#pragma once

#if !defined (__GTK_UNIX_PRINT_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gtk/gtkunixprint.h> can be included directly."
#endif

#include <cairo.h>

#include <gtk/gtk.h>
#include <gtk/print/gtkprinter.h>



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



GType                    gtk_print_job_get_type               (void) ;

GtkPrintJob             *gtk_print_job_new                    (const char               *title,
							       GtkPrinter               *printer,
							       GtkPrintSettings         *settings,
							       GtkPageSetup             *page_setup);

GtkPrintSettings        *gtk_print_job_get_settings           (GtkPrintJob              *job);

GtkPrinter              *gtk_print_job_get_printer            (GtkPrintJob              *job);

const char *            gtk_print_job_get_title              (GtkPrintJob              *job);

GtkPrintStatus           gtk_print_job_get_status             (GtkPrintJob              *job);

gboolean                 gtk_print_job_set_source_file        (GtkPrintJob              *job,
							       const char               *filename,
							       GError                  **error);

gboolean                 gtk_print_job_set_source_fd          (GtkPrintJob              *job,
							       int                       fd,
							       GError                  **error);

cairo_surface_t         *gtk_print_job_get_surface            (GtkPrintJob              *job,
							       GError                  **error);

void                     gtk_print_job_set_track_print_status (GtkPrintJob              *job,
							       gboolean                  track_status);

gboolean                 gtk_print_job_get_track_print_status (GtkPrintJob              *job);

void                     gtk_print_job_send                   (GtkPrintJob              *job,
							       GtkPrintJobCompleteFunc   callback,
							       gpointer                  user_data,
							       GDestroyNotify            dnotify);


GtkPrintPages     gtk_print_job_get_pages       (GtkPrintJob       *job);

void              gtk_print_job_set_pages       (GtkPrintJob       *job,
                                                 GtkPrintPages      pages);

GtkPageRange *    gtk_print_job_get_page_ranges (GtkPrintJob       *job,
                                                 int               *n_ranges);

void              gtk_print_job_set_page_ranges (GtkPrintJob       *job,
                                                 GtkPageRange      *ranges,
                                                 int                n_ranges);

GtkPageSet        gtk_print_job_get_page_set    (GtkPrintJob       *job);

void              gtk_print_job_set_page_set    (GtkPrintJob       *job,
                                                 GtkPageSet         page_set);

int               gtk_print_job_get_num_copies  (GtkPrintJob       *job);

void              gtk_print_job_set_num_copies  (GtkPrintJob       *job,
                                                 int                num_copies);

double            gtk_print_job_get_scale       (GtkPrintJob       *job);

void              gtk_print_job_set_scale       (GtkPrintJob       *job,
                                                 double             scale);

guint             gtk_print_job_get_n_up        (GtkPrintJob       *job);

void              gtk_print_job_set_n_up        (GtkPrintJob       *job,
                                                 guint              n_up);

GtkNumberUpLayout gtk_print_job_get_n_up_layout (GtkPrintJob       *job);

void              gtk_print_job_set_n_up_layout (GtkPrintJob       *job,
                                                 GtkNumberUpLayout  layout);

gboolean          gtk_print_job_get_rotate      (GtkPrintJob       *job);

void              gtk_print_job_set_rotate      (GtkPrintJob       *job,
                                                 gboolean           rotate);

gboolean          gtk_print_job_get_collate     (GtkPrintJob       *job);

void              gtk_print_job_set_collate     (GtkPrintJob       *job,
                                                 gboolean           collate);

gboolean          gtk_print_job_get_reverse     (GtkPrintJob       *job);

void              gtk_print_job_set_reverse     (GtkPrintJob       *job,
                                                 gboolean           reverse);





