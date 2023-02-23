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

#ifndef __GTK_SHORTCUT_H__
#define __GTK_SHORTCUT_H__

#include <gtk/gtktypes.h>

/* Zeile entfernt */

#define GTK_TYPE_SHORTCUT         (gtk_shortcut_get_type ())

/* Zeile entfernt */
/* Zeile entfernt */

/* Zeile entfernt */
GtkShortcut *   gtk_shortcut_new                                (GtkShortcutTrigger     *trigger,
                                                                 GtkShortcutAction      *action);
/* Zeile entfernt */
GtkShortcut *   gtk_shortcut_new_with_arguments                 (GtkShortcutTrigger     *trigger,
                                                                 GtkShortcutAction      *action,
                                                                 const char             *format_string,
                                                                 ...);

/* Zeile entfernt */
GtkShortcutTrigger *
                gtk_shortcut_get_trigger                        (GtkShortcut            *self);
/* Zeile entfernt */
void            gtk_shortcut_set_trigger                        (GtkShortcut            *self,
                                                                 GtkShortcutTrigger     *trigger);
/* Zeile entfernt */
GtkShortcutAction *
                gtk_shortcut_get_action                         (GtkShortcut            *self);
/* Zeile entfernt */
void            gtk_shortcut_set_action                         (GtkShortcut            *self,
                                                                 GtkShortcutAction      *action);

/* Zeile entfernt */
GVariant *      gtk_shortcut_get_arguments                      (GtkShortcut            *self);
/* Zeile entfernt */
void            gtk_shortcut_set_arguments                      (GtkShortcut            *self,
                                                                 GVariant               *args);

/* Zeile entfernt */

#endif  /* __GTK_SHORTCUT_H__ */
