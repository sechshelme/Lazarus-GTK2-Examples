/* GTK - The GIMP Toolkit
 * Copyright (C) 1995-1997 Peter Mattis, Spencer Kimball and Josh MacDonald
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

/*
 * Modified by the GTK+ Team and others 1997-2000.  See the AUTHORS
 * file for a list of people on the GTK+ Team.  See the ChangeLog
 * files for a list of changes.  These files are distributed with
 * GTK+ at ftp://ftp.gtk.org/pub/gtk/.
 */

#ifndef __GTK_PROGRESS_BAR_H__
#define __GTK_PROGRESS_BAR_H__

#if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gtk/gtk.h> can be included directly."
#endif

#include <gtk/gtkwidget.h>

/* Zeile entfernt */

#define GTK_TYPE_PROGRESS_BAR            (gtk_progress_bar_get_type ())
#define GTK_PROGRESS_BAR(obj)            (G_TYPE_CHECK_INSTANCE_CAST ((obj), GTK_TYPE_PROGRESS_BAR, GtkProgressBar))
#define GTK_IS_PROGRESS_BAR(obj)         (G_TYPE_CHECK_INSTANCE_TYPE ((obj), GTK_TYPE_PROGRESS_BAR))


typedef struct _GtkProgressBar              GtkProgressBar;


/* Zeile entfernt */
GType      gtk_progress_bar_get_type             (void) ;
/* Zeile entfernt */
GtkWidget* gtk_progress_bar_new                  (void);

/* Zeile entfernt */
void       gtk_progress_bar_pulse                (GtkProgressBar *pbar);
/* Zeile entfernt */
void       gtk_progress_bar_set_text             (GtkProgressBar *pbar,
                                                  const char     *text);
/* Zeile entfernt */
void       gtk_progress_bar_set_fraction         (GtkProgressBar *pbar,
                                                  double          fraction);

/* Zeile entfernt */
void       gtk_progress_bar_set_pulse_step       (GtkProgressBar *pbar,
                                                  double          fraction);
/* Zeile entfernt */
void       gtk_progress_bar_set_inverted         (GtkProgressBar *pbar,
                                                  gboolean        inverted);

/* Zeile entfernt */
const char *      gtk_progress_bar_get_text       (GtkProgressBar *pbar);
/* Zeile entfernt */
double             gtk_progress_bar_get_fraction   (GtkProgressBar *pbar);
/* Zeile entfernt */
double             gtk_progress_bar_get_pulse_step (GtkProgressBar *pbar);

/* Zeile entfernt */
gboolean           gtk_progress_bar_get_inverted    (GtkProgressBar *pbar);
/* Zeile entfernt */
void               gtk_progress_bar_set_ellipsize (GtkProgressBar     *pbar,
                                                   PangoEllipsizeMode  mode);
/* Zeile entfernt */
PangoEllipsizeMode gtk_progress_bar_get_ellipsize (GtkProgressBar     *pbar);

/* Zeile entfernt */
void               gtk_progress_bar_set_show_text (GtkProgressBar     *pbar,
                                                   gboolean            show_text);
/* Zeile entfernt */
gboolean           gtk_progress_bar_get_show_text (GtkProgressBar     *pbar);

/* Zeile entfernt */

#endif /* __GTK_PROGRESS_BAR_H__ */
