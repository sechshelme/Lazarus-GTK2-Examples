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

#pragma once

#if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gtk/gtk.h> can be included directly."
#endif

#include <gtk/gtkwidget.h>



#define GTK_TYPE_LABEL		  (gtk_label_get_type ())
#define GTK_LABEL(obj)		  (G_TYPE_CHECK_INSTANCE_CAST ((obj), GTK_TYPE_LABEL, GtkLabel))
#define GTK_IS_LABEL(obj)	  (G_TYPE_CHECK_INSTANCE_TYPE ((obj), GTK_TYPE_LABEL))

typedef struct _GtkLabel GtkLabel;


GType                 gtk_label_get_type          (void) ;

GtkWidget*            gtk_label_new               (const char    *str);

GtkWidget*            gtk_label_new_with_mnemonic (const char    *str);

void                  gtk_label_set_text          (GtkLabel      *self,
						   const char    *str);

const char *          gtk_label_get_text          (GtkLabel      *self);

void                  gtk_label_set_attributes    (GtkLabel      *self,
						   PangoAttrList *attrs);

PangoAttrList        *gtk_label_get_attributes    (GtkLabel      *self);

void                  gtk_label_set_label         (GtkLabel      *self,
						   const char    *str);

const char *         gtk_label_get_label         (GtkLabel      *self);

void                  gtk_label_set_markup        (GtkLabel      *self,
						   const char    *str);

void                  gtk_label_set_use_markup    (GtkLabel      *self,
						   gboolean       setting);

gboolean              gtk_label_get_use_markup    (GtkLabel      *self);

void                  gtk_label_set_use_underline (GtkLabel      *self,
						   gboolean       setting);

gboolean              gtk_label_get_use_underline (GtkLabel      *self);


void     gtk_label_set_markup_with_mnemonic       (GtkLabel         *self,
						   const char       *str);

guint    gtk_label_get_mnemonic_keyval            (GtkLabel         *self);

void     gtk_label_set_mnemonic_widget            (GtkLabel         *self,
						   GtkWidget        *widget);

GtkWidget *gtk_label_get_mnemonic_widget          (GtkLabel         *self);

void     gtk_label_set_text_with_mnemonic         (GtkLabel         *self,
						   const char       *str);

void     gtk_label_set_justify                    (GtkLabel         *self,
						   GtkJustification  jtype);

GtkJustification gtk_label_get_justify            (GtkLabel         *self);

void     gtk_label_set_ellipsize                  (GtkLabel         *self,
                                                   PangoEllipsizeMode mode);

PangoEllipsizeMode gtk_label_get_ellipsize        (GtkLabel         *self);

void     gtk_label_set_width_chars                (GtkLabel         *self,
                                                   int               n_chars);

int      gtk_label_get_width_chars                (GtkLabel         *self);

void     gtk_label_set_max_width_chars            (GtkLabel         *self,
                                                   int               n_chars);

int      gtk_label_get_max_width_chars            (GtkLabel         *self);

void     gtk_label_set_lines                      (GtkLabel         *self,
                                                   int               lines);

int      gtk_label_get_lines                      (GtkLabel         *self);

void     gtk_label_set_wrap                       (GtkLabel         *self,
                                                   gboolean          wrap);

gboolean gtk_label_get_wrap                       (GtkLabel         *self);

void     gtk_label_set_wrap_mode                  (GtkLabel         *self,
                                                   PangoWrapMode     wrap_mode);

PangoWrapMode gtk_label_get_wrap_mode             (GtkLabel         *self);

void          gtk_label_set_natural_wrap_mode     (GtkLabel         *self,
                                                   GtkNaturalWrapMode wrap_mode);

GtkNaturalWrapMode gtk_label_get_natural_wrap_mode(GtkLabel         *self);

void     gtk_label_set_selectable                 (GtkLabel         *self,
						   gboolean          setting);

gboolean gtk_label_get_selectable                 (GtkLabel         *self);

void     gtk_label_select_region                  (GtkLabel         *self,
						   int               start_offset,
						   int               end_offset);

gboolean gtk_label_get_selection_bounds           (GtkLabel         *self,
                                                   int              *start,
                                                   int              *end);


PangoLayout *gtk_label_get_layout         (GtkLabel *self);

void         gtk_label_get_layout_offsets (GtkLabel *self,
                                           int      *x,
                                           int      *y);


void         gtk_label_set_single_line_mode  (GtkLabel *self,
                                              gboolean single_line_mode);

gboolean     gtk_label_get_single_line_mode  (GtkLabel *self);


const char *gtk_label_get_current_uri (GtkLabel *self);


void         gtk_label_set_xalign (GtkLabel *self,
                                   float     xalign);


float        gtk_label_get_xalign (GtkLabel *self);


void         gtk_label_set_yalign (GtkLabel *self,
                                   float     yalign);


float        gtk_label_get_yalign (GtkLabel *self);


void         gtk_label_set_extra_menu (GtkLabel   *self,
                                       GMenuModel *model);

GMenuModel * gtk_label_get_extra_menu (GtkLabel   *self);


void             gtk_label_set_tabs (GtkLabel      *self,
                                     PangoTabArray *tabs);


PangoTabArray * gtk_label_get_tabs  (GtkLabel      *self);







