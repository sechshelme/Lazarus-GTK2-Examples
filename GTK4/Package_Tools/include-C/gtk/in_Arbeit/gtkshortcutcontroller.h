/*
 * Copyright © 2018 Benjamin Otte
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

#include <gtk/gtkeventcontroller.h>



#define GTK_TYPE_SHORTCUT_CONTROLLER         (gtk_shortcut_controller_get_type ())
#define GTK_SHORTCUT_CONTROLLER(o)           (G_TYPE_CHECK_INSTANCE_CAST ((o), GTK_TYPE_SHORTCUT_CONTROLLER, GtkShortcutController))
#define GTK_SHORTCUT_CONTROLLER_CLASS(k)     (G_TYPE_CHECK_CLASS_CAST ((k), GTK_TYPE_SHORTCUT_CONTROLLER, GtkShortcutControllerClass))
#define GTK_IS_SHORTCUT_CONTROLLER(o)        (G_TYPE_CHECK_INSTANCE_TYPE ((o), GTK_TYPE_SHORTCUT_CONTROLLER))
#define GTK_IS_SHORTCUT_CONTROLLER_CLASS(k)  (G_TYPE_CHECK_CLASS_TYPE ((k), GTK_TYPE_SHORTCUT_CONTROLLER))
#define GTK_SHORTCUT_CONTROLLER_GET_CLASS(o) (G_TYPE_INSTANCE_GET_CLASS ((o), GTK_TYPE_SHORTCUT_CONTROLLER, GtkShortcutControllerClass))

typedef struct _GtkShortcutController GtkShortcutController;
typedef struct _GtkShortcutControllerClass GtkShortcutControllerClass;


GType                   gtk_shortcut_controller_get_type                (void) ;


GtkEventController *    gtk_shortcut_controller_new                     (void);

GtkEventController *    gtk_shortcut_controller_new_for_model           (GListModel             *model);


void                    gtk_shortcut_controller_set_mnemonics_modifiers (GtkShortcutController  *self,
                                                                         GdkModifierType         modifiers);

GdkModifierType         gtk_shortcut_controller_get_mnemonics_modifiers (GtkShortcutController  *self);

void                    gtk_shortcut_controller_set_scope               (GtkShortcutController  *self,
                                                                         GtkShortcutScope        scope);

GtkShortcutScope        gtk_shortcut_controller_get_scope               (GtkShortcutController  *self);


void                    gtk_shortcut_controller_add_shortcut            (GtkShortcutController  *self,
                                                                         GtkShortcut            *shortcut);

void                    gtk_shortcut_controller_remove_shortcut         (GtkShortcutController  *self,
                                                                         GtkShortcut            *shortcut);



