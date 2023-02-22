/*
 * Copyright © 2020 Red Hat, Inc.
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
 * Authors: Matthias Clasen
 */

#ifndef __GTK_SELECTION_FILTER_MODEL_H__
#define __GTK_SELECTION_FILTER_MODEL_H__


#if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gtk/gtk.h> can be included directly."
#endif

#include <gio/gio.h>
#include <gtk/gtkselectionmodel.h>

/* Zeile entfernt */

#define GTK_TYPE_SELECTION_FILTER_MODEL (gtk_selection_filter_model_get_type ())

/* Zeile entfernt */
/* Zeile entfernt */

/* Zeile entfernt */
GtkSelectionFilterModel * gtk_selection_filter_model_new          (GtkSelectionModel           *model);

/* Zeile entfernt */
void                      gtk_selection_filter_model_set_model    (GtkSelectionFilterModel     *self,
                                                                   GtkSelectionModel           *model);
/* Zeile entfernt */
GtkSelectionModel *       gtk_selection_filter_model_get_model    (GtkSelectionFilterModel     *self);

/* Zeile entfernt */

#endif /* __GTK_SELECTION_FILTER_MODEL_H__ */
