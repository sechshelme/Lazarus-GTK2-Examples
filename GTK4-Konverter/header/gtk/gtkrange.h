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

#ifndef __GTK_RANGE_H__
#define __GTK_RANGE_H__


#if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gtk/gtk.h> can be included directly."
#endif

#include <gtk/gtkwidget.h>


/* Zeile entfernt */


#define GTK_TYPE_RANGE            (gtk_range_get_type ())
#define GTK_RANGE(obj)            (G_TYPE_CHECK_INSTANCE_CAST ((obj), GTK_TYPE_RANGE, GtkRange))
#define GTK_RANGE_CLASS(klass)    (G_TYPE_CHECK_CLASS_CAST ((klass), GTK_TYPE_RANGE, GtkRangeClass))
#define GTK_IS_RANGE(obj)         (G_TYPE_CHECK_INSTANCE_TYPE ((obj), GTK_TYPE_RANGE))
#define GTK_IS_RANGE_CLASS(klass) (G_TYPE_CHECK_CLASS_TYPE ((klass), GTK_TYPE_RANGE))
#define GTK_RANGE_GET_CLASS(obj)  (G_TYPE_INSTANCE_GET_CLASS ((obj), GTK_TYPE_RANGE, GtkRangeClass))

typedef struct _GtkRange              GtkRange;
typedef struct _GtkRangeClass         GtkRangeClass;

struct _GtkRange
{
  GtkWidget parent_instance;
};

struct _GtkRangeClass
{
  GtkWidgetClass parent_class;

  void (* value_changed)    (GtkRange     *range);
  void (* adjust_bounds)    (GtkRange     *range,
                             double	   new_value);

  /* action signals for keybindings */
  void (* move_slider)      (GtkRange     *range,
                             GtkScrollType scroll);

  /* Virtual functions */
  void (* get_range_border) (GtkRange     *range,
                             GtkBorder    *border_);

  gboolean (* change_value) (GtkRange     *range,
                             GtkScrollType scroll,
                             double        new_value);

  /*< private > */

  gpointer padding[8];
};


/* Zeile entfernt */
GType              gtk_range_get_type                      (void) ;

/* Zeile entfernt */
void               gtk_range_set_adjustment                (GtkRange      *range,
                                                            GtkAdjustment *adjustment);
/* Zeile entfernt */
GtkAdjustment*     gtk_range_get_adjustment                (GtkRange      *range);

/* Zeile entfernt */
void               gtk_range_set_inverted                  (GtkRange      *range,
                                                            gboolean       setting);
/* Zeile entfernt */
gboolean           gtk_range_get_inverted                  (GtkRange      *range);

/* Zeile entfernt */
void               gtk_range_set_flippable                 (GtkRange      *range,
                                                            gboolean       flippable);
/* Zeile entfernt */
gboolean           gtk_range_get_flippable                 (GtkRange      *range);

/* Zeile entfernt */
void               gtk_range_set_slider_size_fixed         (GtkRange      *range,
                                                            gboolean       size_fixed);
/* Zeile entfernt */
gboolean           gtk_range_get_slider_size_fixed         (GtkRange      *range);

/* Zeile entfernt */
void               gtk_range_get_range_rect                (GtkRange      *range,
                                                            GdkRectangle  *range_rect);
/* Zeile entfernt */
void               gtk_range_get_slider_range              (GtkRange      *range,
                                                            int           *slider_start,
                                                            int           *slider_end);

/* Zeile entfernt */
void               gtk_range_set_increments                (GtkRange      *range,
                                                            double         step,
                                                            double         page);
/* Zeile entfernt */
void               gtk_range_set_range                     (GtkRange      *range,
                                                            double         min,
                                                            double         max);
/* Zeile entfernt */
void               gtk_range_set_value                     (GtkRange      *range,
                                                            double         value);
/* Zeile entfernt */
double             gtk_range_get_value                     (GtkRange      *range);

/* Zeile entfernt */
void               gtk_range_set_show_fill_level           (GtkRange      *range,
                                                            gboolean       show_fill_level);
/* Zeile entfernt */
gboolean           gtk_range_get_show_fill_level           (GtkRange      *range);
/* Zeile entfernt */
void               gtk_range_set_restrict_to_fill_level    (GtkRange      *range,
                                                            gboolean       restrict_to_fill_level);
/* Zeile entfernt */
gboolean           gtk_range_get_restrict_to_fill_level    (GtkRange      *range);
/* Zeile entfernt */
void               gtk_range_set_fill_level                (GtkRange      *range,
                                                            double         fill_level);
/* Zeile entfernt */
double             gtk_range_get_fill_level                (GtkRange      *range);
/* Zeile entfernt */
void               gtk_range_set_round_digits              (GtkRange      *range,
                                                            int            round_digits);
/* Zeile entfernt */
int                 gtk_range_get_round_digits              (GtkRange      *range);


/* Zeile entfernt */


#endif /* __GTK_RANGE_H__ */
