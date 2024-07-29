/* GTK - The GIMP Toolkit
 *
 * Copyright (C) 2010 Christian Dywan
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
 */

#pragma once

#if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gtk/gtk.h> can be included directly."
#endif

#include <gtk/deprecated/gtkcombobox.h>



#define GTK_TYPE_COMBO_BOX_TEXT                 (gtk_combo_box_text_get_type ())
#define GTK_COMBO_BOX_TEXT(obj)                 (G_TYPE_CHECK_INSTANCE_CAST ((obj), GTK_TYPE_COMBO_BOX_TEXT, GtkComboBoxText))
#define GTK_IS_COMBO_BOX_TEXT(obj)              (G_TYPE_CHECK_INSTANCE_TYPE ((obj), GTK_TYPE_COMBO_BOX_TEXT))

typedef struct _GtkComboBoxText GtkComboBoxText;


GType         gtk_combo_box_text_get_type        (void) ;

GtkWidget*    gtk_combo_box_text_new             (void);

GtkWidget*    gtk_combo_box_text_new_with_entry  (void);

void          gtk_combo_box_text_append_text     (GtkComboBoxText     *combo_box,
                                                  const char          *text);

void          gtk_combo_box_text_insert_text     (GtkComboBoxText     *combo_box,
                                                  int                  position,
                                                  const char          *text);

void          gtk_combo_box_text_prepend_text    (GtkComboBoxText     *combo_box,
                                                  const char          *text);

void          gtk_combo_box_text_remove          (GtkComboBoxText     *combo_box,
                                                  int                  position);

void          gtk_combo_box_text_remove_all      (GtkComboBoxText     *combo_box);

char         *gtk_combo_box_text_get_active_text (GtkComboBoxText     *combo_box);


void          gtk_combo_box_text_insert          (GtkComboBoxText     *combo_box,
                                                  int                  position,
                                                  const char          *id,
                                                  const char          *text);

void          gtk_combo_box_text_append          (GtkComboBoxText     *combo_box,
                                                  const char          *id,
                                                  const char          *text);

void          gtk_combo_box_text_prepend         (GtkComboBoxText     *combo_box,
                                                  const char          *id,
                                                  const char          *text);





