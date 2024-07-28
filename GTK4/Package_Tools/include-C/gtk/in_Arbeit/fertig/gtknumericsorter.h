/*
 * Copyright © 2019 Matthias Clasen
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
 * Authors: Matthias Clasen <mclasen@redhat.com>
 */

#pragma once

#if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gtk/gtk.h> can be included directly."
#endif

#include <gtk/gtkexpression.h>
#include <gtk/gtksorter.h>



#define GTK_TYPE_NUMERIC_SORTER             (gtk_numeric_sorter_get_type ())

//G_DECLARE_FINAL_TYPE (GtkNumericSorter, gtk_numeric_sorter, GTK, NUMERIC_SORTER, GtkSorter)


GtkNumericSorter *      gtk_numeric_sorter_new                   (GtkExpression          *expression);


GtkExpression *         gtk_numeric_sorter_get_expression        (GtkNumericSorter       *self);

void                    gtk_numeric_sorter_set_expression        (GtkNumericSorter       *self,
                                                                  GtkExpression          *expression);


GtkSortType             gtk_numeric_sorter_get_sort_order        (GtkNumericSorter       *self);

void                    gtk_numeric_sorter_set_sort_order        (GtkNumericSorter       *self,
                                                                  GtkSortType             sort_order);



