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

#ifndef __GTK_SHORTCUT_TRIGGER_H__
#define __GTK_SHORTCUT_TRIGGER_H__

#if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gtk/gtk.h> can be included directly."
#endif

#include <gtk/gtktypes.h>

/* Zeile entfernt */

#define GTK_TYPE_SHORTCUT_TRIGGER (gtk_shortcut_trigger_get_type ())

/* Zeile entfernt */
/* Zeile entfernt */

/* Zeile entfernt */
GtkShortcutTrigger *    gtk_shortcut_trigger_parse_string       (const char         *string);

/* Zeile entfernt */
char *                  gtk_shortcut_trigger_to_string          (GtkShortcutTrigger *self);
/* Zeile entfernt */
void                    gtk_shortcut_trigger_print              (GtkShortcutTrigger *self,
                                                                 GString            *string);
/* Zeile entfernt */
char *                  gtk_shortcut_trigger_to_label           (GtkShortcutTrigger *self,
                                                                 GdkDisplay         *display);
/* Zeile entfernt */
gboolean                gtk_shortcut_trigger_print_label        (GtkShortcutTrigger *self,
                                                                 GdkDisplay         *display,
                                                                 GString            *string);

/* Zeile entfernt */
guint                   gtk_shortcut_trigger_hash               (gconstpointer       trigger);
/* Zeile entfernt */
gboolean                gtk_shortcut_trigger_equal              (gconstpointer       trigger1,
                                                                 gconstpointer       trigger2);
/* Zeile entfernt */
int                     gtk_shortcut_trigger_compare            (gconstpointer       trigger1,
                                                                 gconstpointer       trigger2);

/* Zeile entfernt */
GdkKeyMatch             gtk_shortcut_trigger_trigger            (GtkShortcutTrigger *self,
                                                                 GdkEvent           *event,
                                                                 gboolean            enable_mnemonics);


#define GTK_TYPE_NEVER_TRIGGER (gtk_never_trigger_get_type())

/**
 * GtkNeverTrigger:
 *
 * A `GtkShortcutTrigger` that never triggers.
 */
/* Zeile entfernt */
/* Zeile entfernt */

/* Zeile entfernt */
GtkShortcutTrigger *    gtk_never_trigger_get                   (void);

#define GTK_TYPE_KEYVAL_TRIGGER (gtk_keyval_trigger_get_type())

/**
 * GtkKeyvalTrigger:
 *
 * A `GtkShortcutTrigger` that triggers when a specific keyval and modifiers are pressed.
 */

/* Zeile entfernt */
/* Zeile entfernt */

/* Zeile entfernt */
GtkShortcutTrigger *    gtk_keyval_trigger_new                  (guint             keyval,
                                                                 GdkModifierType   modifiers);
/* Zeile entfernt */
GdkModifierType         gtk_keyval_trigger_get_modifiers        (GtkKeyvalTrigger *self);
/* Zeile entfernt */
guint                   gtk_keyval_trigger_get_keyval           (GtkKeyvalTrigger *self);

#define GTK_TYPE_MNEMONIC_TRIGGER (gtk_mnemonic_trigger_get_type())

/**
 * GtkMnemonicTrigger:
 *
 * A `GtkShortcutTrigger` that triggers when a specific mnemonic is pressed.
 *
 * Mnemonics require a *mnemonic modifier* (typically <kbd>Alt</kbd>) to be
 * pressed together with the mnemonic key.
 */
/* Zeile entfernt */
/* Zeile entfernt */

/* Zeile entfernt */
GtkShortcutTrigger *    gtk_mnemonic_trigger_new                (guint               keyval);
/* Zeile entfernt */
guint                   gtk_mnemonic_trigger_get_keyval         (GtkMnemonicTrigger *self);

#define GTK_TYPE_ALTERNATIVE_TRIGGER (gtk_alternative_trigger_get_type())

/**
 * GtkAlternativeTrigger:
 *
 * A `GtkShortcutTrigger` that combines two triggers.
 *
 * The `GtkAlternativeTrigger` triggers when either of two trigger.
 *
 * This can be cascaded to combine more than two triggers.
 */

/* Zeile entfernt */
/* Zeile entfernt */

/* Zeile entfernt */
GtkShortcutTrigger *    gtk_alternative_trigger_new             (GtkShortcutTrigger    *first,
                                                                 GtkShortcutTrigger    *second);
/* Zeile entfernt */
GtkShortcutTrigger *    gtk_alternative_trigger_get_first       (GtkAlternativeTrigger *self);
/* Zeile entfernt */
GtkShortcutTrigger *    gtk_alternative_trigger_get_second      (GtkAlternativeTrigger *self);

/* Zeile entfernt */

#endif /* __GTK_SHORTCUT_TRIGGER_H__ */
