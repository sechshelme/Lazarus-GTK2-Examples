/* gtkcombobox.h
 * Copyright (C) 2002, 2003  Kristian Rietveld <kris@gtk.org>
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Library General Public
 * License as published by the Free Software Foundation; either
 * version 2 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Library General Public License for more details.
 *
 * You should have received a copy of the GNU Library General Public
 * License along with this library. If not, see <http://www.gnu.org/licenses/>.
 */

#pragma once

#if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gtk/gtk.h> can be included directly."
#endif

#include <gtk/gtkwidget.h>
#include <gtk/deprecated/gtktreemodel.h>
#include <gtk/deprecated/gtktreeview.h>



#define GTK_TYPE_COMBO_BOX             (gtk_combo_box_get_type ())
#define GTK_COMBO_BOX(obj)             (G_TYPE_CHECK_INSTANCE_CAST ((obj), GTK_TYPE_COMBO_BOX, GtkComboBox))
#define GTK_COMBO_BOX_CLASS(vtable)    (G_TYPE_CHECK_CLASS_CAST ((vtable), GTK_TYPE_COMBO_BOX, GtkComboBoxClass))
#define GTK_IS_COMBO_BOX(obj)          (G_TYPE_CHECK_INSTANCE_TYPE ((obj), GTK_TYPE_COMBO_BOX))
#define GTK_IS_COMBO_BOX_CLASS(vtable) (G_TYPE_CHECK_CLASS_TYPE ((vtable), GTK_TYPE_COMBO_BOX))
#define GTK_COMBO_BOX_GET_CLASS(inst)  (G_TYPE_INSTANCE_GET_CLASS ((inst), GTK_TYPE_COMBO_BOX, GtkComboBoxClass))

typedef struct _GtkComboBox        GtkComboBox;
typedef struct _GtkComboBoxClass   GtkComboBoxClass;

struct _GtkComboBox
{
  GtkWidget parent_instance;
};

/**
 * GtkComboBoxClass:
 * @parent_class: The parent class.
 * @changed: Signal is emitted when the active item is changed.
 * @format_entry_text: Signal which allows you to change how the text
 *    displayed in a combo box’s entry is displayed.
 */
struct _GtkComboBoxClass
{
  GtkWidgetClass parent_class;

  /*< public >*/

  /* signals */
  void     (* changed)           (GtkComboBox *combo_box);
  char    *(* format_entry_text) (GtkComboBox *combo_box,
                                  const char *path);
  void     (* activate)          (GtkComboBox *combo_box);

  /*< private >*/

  gpointer padding[7];
};


/* construction */

GType         gtk_combo_box_get_type                 (void) ;

GtkWidget    *gtk_combo_box_new                      (void);

GtkWidget    *gtk_combo_box_new_with_entry           (void);

GtkWidget    *gtk_combo_box_new_with_model           (GtkTreeModel *model);

GtkWidget    *gtk_combo_box_new_with_model_and_entry (GtkTreeModel *model);

/* get/set active item */

int           gtk_combo_box_get_active       (GtkComboBox     *combo_box);

void          gtk_combo_box_set_active       (GtkComboBox     *combo_box,
                                              int              index_);

gboolean      gtk_combo_box_get_active_iter  (GtkComboBox     *combo_box,
                                              GtkTreeIter     *iter);

void          gtk_combo_box_set_active_iter  (GtkComboBox     *combo_box,
                                              GtkTreeIter     *iter);

/* getters and setters */

void          gtk_combo_box_set_model        (GtkComboBox     *combo_box,
                                              GtkTreeModel    *model);

GtkTreeModel *gtk_combo_box_get_model        (GtkComboBox     *combo_box);


GtkTreeViewRowSeparatorFunc gtk_combo_box_get_row_separator_func (GtkComboBox                *combo_box);

void                        gtk_combo_box_set_row_separator_func (GtkComboBox                *combo_box,
                                                                  GtkTreeViewRowSeparatorFunc func,
                                                                  gpointer                    data,
                                                                  GDestroyNotify              destroy);


void               gtk_combo_box_set_button_sensitivity (GtkComboBox        *combo_box,
                                                         GtkSensitivityType  sensitivity);

GtkSensitivityType gtk_combo_box_get_button_sensitivity (GtkComboBox        *combo_box);


gboolean           gtk_combo_box_get_has_entry          (GtkComboBox        *combo_box);

void               gtk_combo_box_set_entry_text_column  (GtkComboBox        *combo_box,
                                                         int                 text_column);

int                gtk_combo_box_get_entry_text_column  (GtkComboBox        *combo_box);


void               gtk_combo_box_set_popup_fixed_width  (GtkComboBox      *combo_box,
                                                         gboolean          fixed);

gboolean           gtk_combo_box_get_popup_fixed_width  (GtkComboBox      *combo_box);

/* programmatic control */

void          gtk_combo_box_popup            (GtkComboBox     *combo_box);

void          gtk_combo_box_popup_for_device (GtkComboBox     *combo_box,
                                              GdkDevice       *device);

void          gtk_combo_box_popdown          (GtkComboBox     *combo_box);


int           gtk_combo_box_get_id_column        (GtkComboBox *combo_box);

void          gtk_combo_box_set_id_column        (GtkComboBox *combo_box,
                                                  int          id_column);

const char * gtk_combo_box_get_active_id        (GtkComboBox *combo_box);

gboolean      gtk_combo_box_set_active_id        (GtkComboBox *combo_box,
                                                  const char *active_id);


void          gtk_combo_box_set_child            (GtkComboBox *combo_box,
                                                  GtkWidget   *child);

GtkWidget *   gtk_combo_box_get_child            (GtkComboBox *combo_box);





