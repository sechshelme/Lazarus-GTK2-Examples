#define GTK_TYPE_MNEMONIC_TRIGGER (gtk_mnemonic_trigger_get_type())

/**
 * GtkMnemonicTrigger:
 *
 * A `GtkShortcutTrigger` that triggers when a specific mnemonic is pressed.
 *
 * Mnemonics require a *mnemonic modifier* (typically <kbd>Alt</kbd>) to be
 * pressed together with the mnemonic key.
 */

//GDK_DECLARE_INTERNAL_TYPE (GtkMnemonicTrigger, gtk_mnemonic_trigger, GTK, MNEMONIC_TRIGGER, GtkShortcutTrigger)


GtkShortcutTrigger *    gtk_mnemonic_trigger_new                (guint               keyval);

guint                   gtk_mnemonic_trigger_get_keyval         (GtkMnemonicTrigger *self);


