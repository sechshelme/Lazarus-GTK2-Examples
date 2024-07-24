/* GTK - The GIMP Toolkit
 * Copyright (C) 2019 Red Hat, Inc.
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

#pragma once


#if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gtk/gtk.h> can be included directly."
#endif

#include <gtk/gtkpopover.h>





#define	GTK_TYPE_POPOVER_MENU_BAR               (gtk_popover_menu_bar_get_type ())
#define GTK_POPOVER_MENU_BAR(obj)               (G_TYPE_CHECK_INSTANCE_CAST ((obj), GTK_TYPE_POPOVER_MENU_BAR, GtkPopoverMenuBar))
#define GTK_IS_POPOVER_MENU_BAR(obj)            (G_TYPE_CHECK_INSTANCE_TYPE ((obj), GTK_TYPE_POPOVER_MENU_BAR))

typedef struct _GtkPopoverMenuBar GtkPopoverMenuBar;


GType        gtk_popover_menu_bar_get_type       (void) ;


GtkWidget *  gtk_popover_menu_bar_new_from_model (GMenuModel        *model);


void         gtk_popover_menu_bar_set_menu_model (GtkPopoverMenuBar *bar,
                                                  GMenuModel        *model);

GMenuModel * gtk_popover_menu_bar_get_menu_model (GtkPopoverMenuBar *bar);


gboolean     gtk_popover_menu_bar_add_child      (GtkPopoverMenuBar *bar,
                                                  GtkWidget         *child,
                                                  const char        *id);


gboolean     gtk_popover_menu_bar_remove_child   (GtkPopoverMenuBar *bar,
                                                  GtkWidget         *child);






