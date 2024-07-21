/*
 * Copyright (C) 2010 Openismus GmbH
 * Copyright (C) 2013 Red Hat, Inc.
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
 * License along with this library; if not, see <http://www.gnu.org/licenses/>.

 *
 * Authors:
 *      Tristan Van Berkom <tristanvb@openismus.com>
 *      Matthias Clasen <mclasen@redhat.com>
 *      William Jon McCann <jmccann@redhat.com>
 */

#pragma once

#if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gtk/gtk.h> can be included directly."
#endif

#include <gtk/gtkwidget.h>




#define GTK_TYPE_FLOW_BOX                  (gtk_flow_box_get_type ())
#define GTK_FLOW_BOX(obj)                  (G_TYPE_CHECK_INSTANCE_CAST ((obj), GTK_TYPE_FLOW_BOX, GtkFlowBox))
#define GTK_IS_FLOW_BOX(obj)               (G_TYPE_CHECK_INSTANCE_TYPE ((obj), GTK_TYPE_FLOW_BOX))

typedef struct _GtkFlowBox            GtkFlowBox;
typedef struct _GtkFlowBoxChild       GtkFlowBoxChild;
typedef struct _GtkFlowBoxChildClass  GtkFlowBoxChildClass;

#define GTK_TYPE_FLOW_BOX_CHILD            (gtk_flow_box_child_get_type ())
#define GTK_FLOW_BOX_CHILD(obj)            (G_TYPE_CHECK_INSTANCE_CAST ((obj), GTK_TYPE_FLOW_BOX_CHILD, GtkFlowBoxChild))
#define GTK_FLOW_BOX_CHILD_CLASS(klass)    (G_TYPE_CHECK_CLASS_CAST ((klass), GTK_TYPE_FLOW_BOX_CHILD, GtkFlowBoxChildClass))
#define GTK_IS_FLOW_BOX_CHILD(obj)         (G_TYPE_CHECK_INSTANCE_TYPE ((obj), GTK_TYPE_FLOW_BOX_CHILD))
#define GTK_IS_FLOW_BOX_CHILD_CLASS(klass) (G_TYPE_CHECK_CLASS_TYPE ((klass), GTK_TYPE_FLOW_BOX_CHILD))
#define GTK_FLOW_BOX_CHILD_GET_CLASS(obj)  (G_TYPE_INSTANCE_GET_CLASS ((obj), EG_TYPE_FLOW_BOX_CHILD, GtkFlowBoxChildClass))

struct _GtkFlowBoxChild
{
  /*< private >*/
  GtkWidget parent_instance;
};

struct _GtkFlowBoxChildClass
{
  /*< private >*/
  GtkWidgetClass parent_class;

  /*< public >*/
  void (* activate) (GtkFlowBoxChild *child);

  /*< private >*/
  gpointer padding[8];
};

/**
 * GtkFlowBoxCreateWidgetFunc:
 * @item: (type GObject): the item from the model for which to create a widget for
 * @user_data: (closure): user data from gtk_flow_box_bind_model()
 *
 * Called for flow boxes that are bound to a `GListModel`.
 *
 * This function is called for each item that gets added to the model.
 *
 * Returns: (transfer full): a `GtkWidget` that represents @item
 */
typedef GtkWidget * (*GtkFlowBoxCreateWidgetFunc) (gpointer item,
                                                   gpointer  user_data);


GType                 gtk_flow_box_child_get_type            (void) ;

GtkWidget*            gtk_flow_box_child_new                 (void);


void                  gtk_flow_box_child_set_child          (GtkFlowBoxChild *self,
                                                             GtkWidget       *child);

GtkWidget *           gtk_flow_box_child_get_child          (GtkFlowBoxChild *self);


int                   gtk_flow_box_child_get_index           (GtkFlowBoxChild *child);

gboolean              gtk_flow_box_child_is_selected         (GtkFlowBoxChild *child);

void                  gtk_flow_box_child_changed             (GtkFlowBoxChild *child);



GType                 gtk_flow_box_get_type                  (void) ;


GtkWidget            *gtk_flow_box_new                       (void);


void                  gtk_flow_box_bind_model                (GtkFlowBox                 *box,
                                                              GListModel                 *model,
                                                              GtkFlowBoxCreateWidgetFunc  create_widget_func,
                                                              gpointer                    user_data,
                                                              GDestroyNotify              user_data_free_func);


void                  gtk_flow_box_set_homogeneous           (GtkFlowBox           *box,
                                                              gboolean              homogeneous);

gboolean              gtk_flow_box_get_homogeneous           (GtkFlowBox           *box);

void                  gtk_flow_box_set_row_spacing           (GtkFlowBox           *box,
                                                              guint                 spacing);

guint                 gtk_flow_box_get_row_spacing           (GtkFlowBox           *box);


void                  gtk_flow_box_set_column_spacing        (GtkFlowBox           *box,
                                                              guint                 spacing);

guint                 gtk_flow_box_get_column_spacing        (GtkFlowBox           *box);


void                  gtk_flow_box_set_min_children_per_line (GtkFlowBox           *box,
                                                              guint                 n_children);

guint                 gtk_flow_box_get_min_children_per_line (GtkFlowBox           *box);


void                  gtk_flow_box_set_max_children_per_line (GtkFlowBox           *box,
                                                              guint                 n_children);

guint                 gtk_flow_box_get_max_children_per_line (GtkFlowBox           *box);

void                  gtk_flow_box_set_activate_on_single_click (GtkFlowBox        *box,
                                                                 gboolean           single);

gboolean              gtk_flow_box_get_activate_on_single_click (GtkFlowBox        *box);


void                  gtk_flow_box_prepend                      (GtkFlowBox        *self,
                                                                 GtkWidget         *child);

void                  gtk_flow_box_append                       (GtkFlowBox        *self,
                                                                 GtkWidget         *child);

void                  gtk_flow_box_insert                       (GtkFlowBox        *box,
                                                                 GtkWidget         *widget,
                                                                 int                position);

void                  gtk_flow_box_remove                       (GtkFlowBox        *box,
                                                                 GtkWidget         *widget);

void                  gtk_flow_box_remove_all                   (GtkFlowBox        *box);


GtkFlowBoxChild      *gtk_flow_box_get_child_at_index           (GtkFlowBox        *box,
                                                                 int                idx);


GtkFlowBoxChild      *gtk_flow_box_get_child_at_pos             (GtkFlowBox        *box,
                                                                 int                x,
                                                                 int                y);

typedef void (* GtkFlowBoxForeachFunc) (GtkFlowBox      *box,
                                        GtkFlowBoxChild *child,
                                        gpointer         user_data);


void                  gtk_flow_box_selected_foreach             (GtkFlowBox        *box,
                                                                 GtkFlowBoxForeachFunc func,
                                                                 gpointer           data);

GList                *gtk_flow_box_get_selected_children        (GtkFlowBox        *box);

void                  gtk_flow_box_select_child                 (GtkFlowBox        *box,
                                                                 GtkFlowBoxChild   *child);

void                  gtk_flow_box_unselect_child               (GtkFlowBox        *box,
                                                                 GtkFlowBoxChild   *child);

void                  gtk_flow_box_select_all                   (GtkFlowBox        *box);

void                  gtk_flow_box_unselect_all                 (GtkFlowBox        *box);

void                  gtk_flow_box_set_selection_mode           (GtkFlowBox        *box,
                                                                 GtkSelectionMode   mode);

GtkSelectionMode      gtk_flow_box_get_selection_mode           (GtkFlowBox        *box);

void                  gtk_flow_box_set_hadjustment              (GtkFlowBox        *box,
                                                                 GtkAdjustment     *adjustment);

void                  gtk_flow_box_set_vadjustment              (GtkFlowBox        *box,
                                                                 GtkAdjustment     *adjustment);

typedef gboolean (*GtkFlowBoxFilterFunc) (GtkFlowBoxChild *child,
                                          gpointer         user_data);


void                  gtk_flow_box_set_filter_func              (GtkFlowBox        *box,
                                                                 GtkFlowBoxFilterFunc filter_func,
                                                                 gpointer             user_data,
                                                                 GDestroyNotify       destroy);

void                  gtk_flow_box_invalidate_filter            (GtkFlowBox        *box);

typedef int (*GtkFlowBoxSortFunc) (GtkFlowBoxChild *child1,
                                   GtkFlowBoxChild *child2,
                                   gpointer         user_data);


void                  gtk_flow_box_set_sort_func                (GtkFlowBox        *box,
                                                                 GtkFlowBoxSortFunc  sort_func,
                                                                 gpointer            user_data,
                                                                 GDestroyNotify      destroy);

void                  gtk_flow_box_invalidate_sort              (GtkFlowBox         *box);







