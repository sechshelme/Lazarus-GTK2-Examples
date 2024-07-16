#define GTK_TYPE_SHORTCUT_TRIGGER (gtk_shortcut_trigger_get_type ())


//GDK_DECLARE_INTERNAL_TYPE (GtkShortcutTrigger, gtk_shortcut_trigger, GTK, SHORTCUT_TRIGGER, GObject)


GtkShortcutTrigger *    gtk_shortcut_trigger_parse_string       (const char         *string);


char *                  gtk_shortcut_trigger_to_string          (GtkShortcutTrigger *self);

void                    gtk_shortcut_trigger_print              (GtkShortcutTrigger *self,
                                                                 GString            *string);

char *                  gtk_shortcut_trigger_to_label           (GtkShortcutTrigger *self,
                                                                 GdkDisplay         *display);

gboolean                gtk_shortcut_trigger_print_label        (GtkShortcutTrigger *self,
                                                                 GdkDisplay         *display,
                                                                 GString            *string);


guint                   gtk_shortcut_trigger_hash               (gconstpointer       trigger);

gboolean                gtk_shortcut_trigger_equal              (gconstpointer       trigger1,
                                                                 gconstpointer       trigger2);

int                     gtk_shortcut_trigger_compare            (gconstpointer       trigger1,
                                                                 gconstpointer       trigger2);


GdkKeyMatch             gtk_shortcut_trigger_trigger            (GtkShortcutTrigger *self,
                                                                 GdkEvent           *event,
                                                                 gboolean            enable_mnemonics);


