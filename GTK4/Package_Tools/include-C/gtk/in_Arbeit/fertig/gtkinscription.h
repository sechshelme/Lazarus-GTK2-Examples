/*
 * Copyright © 2022 Benjamin Otte
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library. If not, see <http://www.gnu.org/licenses/>.
 *
 * Authors: Benjamin Otte <otte@gnome.org>
 */

#pragma once

#if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gtk/gtk.h> can be included directly."
#endif

#include <gtk/gtkwidget.h>



#define GTK_TYPE_INSCRIPTION         (gtk_inscription_get_type ())

/**
 * GtkInscriptionOverflow:
 * @GTK_INSCRIPTION_OVERFLOW_CLIP: Clip the remaining text
 * @GTK_INSCRIPTION_OVERFLOW_ELLIPSIZE_START: Omit characters at the start of the text
 * @GTK_INSCRIPTION_OVERFLOW_ELLIPSIZE_MIDDLE: Omit characters at the middle of the text
 * @GTK_INSCRIPTION_OVERFLOW_ELLIPSIZE_END: Omit characters at the end of the text
 *
 * The different methods to handle text in #GtkInscription when it doesn't
 * fit the available space.
 *
 * Since: 4.8
 */
typedef enum {
  GTK_INSCRIPTION_OVERFLOW_CLIP,
  GTK_INSCRIPTION_OVERFLOW_ELLIPSIZE_START,
  GTK_INSCRIPTION_OVERFLOW_ELLIPSIZE_MIDDLE,
  GTK_INSCRIPTION_OVERFLOW_ELLIPSIZE_END
} GtkInscriptionOverflow;


//G_DECLARE_FINAL_TYPE (GtkInscription, gtk_inscription, GTK, INSCRIPTION, GtkWidget)


GtkWidget *             gtk_inscription_new                     (const char             *text);


const char *            gtk_inscription_get_text                (GtkInscription         *self);

void                    gtk_inscription_set_text                (GtkInscription         *self,
                                                                 const char             *text);

PangoAttrList *         gtk_inscription_get_attributes          (GtkInscription         *self);

void                    gtk_inscription_set_attributes          (GtkInscription         *self,
                                                                 PangoAttrList          *attrs);

void                    gtk_inscription_set_markup              (GtkInscription         *self,
                                                                 const char             *markup);

GtkInscriptionOverflow  gtk_inscription_get_text_overflow       (GtkInscription         *self);

void                    gtk_inscription_set_text_overflow       (GtkInscription         *self,
                                                                 GtkInscriptionOverflow  overflow);

PangoWrapMode           gtk_inscription_get_wrap_mode           (GtkInscription         *self);

void                    gtk_inscription_set_wrap_mode           (GtkInscription         *self,
                                                                 PangoWrapMode           wrap_mode);


guint                   gtk_inscription_get_min_chars           (GtkInscription         *self);

void                    gtk_inscription_set_min_chars           (GtkInscription         *self,
                                                                 guint                   min_chars);

guint                   gtk_inscription_get_nat_chars           (GtkInscription         *self);

void                    gtk_inscription_set_nat_chars           (GtkInscription         *self,
                                                                 guint                   nat_chars);

guint                   gtk_inscription_get_min_lines           (GtkInscription         *self);

void                    gtk_inscription_set_min_lines           (GtkInscription         *self,
                                                                 guint                   min_lines);

guint                   gtk_inscription_get_nat_lines           (GtkInscription         *self);

void                    gtk_inscription_set_nat_lines           (GtkInscription         *self,
                                                                 guint                   nat_lines);


float                   gtk_inscription_get_xalign              (GtkInscription         *self);

void                    gtk_inscription_set_xalign              (GtkInscription         *self,
                                                                 float                   xalign);

float                   gtk_inscription_get_yalign              (GtkInscription         *self);

void                    gtk_inscription_set_yalign              (GtkInscription         *self,
                                                                 float                   yalign);



