#define GTK_TYPE_KEYVAL_TRIGGER (gtk_keyval_trigger_get_type())

/**
 * GtkKeyvalTrigger:
 *
 * A `GtkShortcutTrigger` that triggers when a specific keyval and modifiers are pressed.
 */


//GDK_DECLARE_INTERNAL_TYPE (GtkKeyvalTrigger, gtk_keyval_trigger, GTK, KEYVAL_TRIGGER, GtkShortcutTrigger)


GtkShortcutTrigger *    gtk_keyval_trigger_new                  (guint             keyval,
                                                                 GdkModifierType   modifiers);

GdkModifierType         gtk_keyval_trigger_get_modifiers        (GtkKeyvalTrigger *self);

guint                   gtk_keyval_trigger_get_keyval           (GtkKeyvalTrigger *self);


