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


//GDK_DECLARE_INTERNAL_TYPE (GtkAlternativeTrigger, gtk_alternative_trigger, GTK, ALTERNATIVE_TRIGGER, GtkShortcutTrigger)


GtkShortcutTrigger *    gtk_alternative_trigger_new             (GtkShortcutTrigger    *first,
                                                                 GtkShortcutTrigger    *second);

GtkShortcutTrigger *    gtk_alternative_trigger_get_first       (GtkAlternativeTrigger *self);

GtkShortcutTrigger *    gtk_alternative_trigger_get_second      (GtkAlternativeTrigger *self);



