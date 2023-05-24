#include <stdlib.h>
#include <gtk/gtk.h>


static void output_state (GtkToggleButton *source, gpointer user_data) {
  printf ("Active: %d\n", gtk_toggle_button_get_active (source));
}

int main (int argc, char *argv[]) {
  GtkWidget *window, *toggle1, *toggle2;
  GtkWidget *box;
  const char *text;

    gtk_init (&argc, &argv);


  window = gtk_window_new (GTK_WINDOW_TOPLEVEL);
  box = gtk_box_new (GTK_ORIENTATION_VERTICAL, 12);

  text = "Hi, I’m a toggle button.";
  toggle1 = gtk_toggle_button_new_with_label (text);

  // Makes this toggle button invisible
  gtk_toggle_button_set_mode (GTK_TOGGLE_BUTTON (toggle1),
                              TRUE);

  g_signal_connect (toggle1, "toggled",
                    G_CALLBACK (output_state),
                    NULL);
  gtk_container_add (GTK_CONTAINER (box), toggle1);

  text = "Hi, I’m a toggle button.";
  toggle2 = gtk_toggle_button_new_with_label (text);
  gtk_toggle_button_set_mode (GTK_TOGGLE_BUTTON (toggle2),
                              FALSE);
  g_signal_connect (toggle2, "toggled",
                    G_CALLBACK (output_state),
                    NULL);
  gtk_container_add (GTK_CONTAINER (box), toggle2);

  gtk_container_add (GTK_CONTAINER (window), box);
  gtk_widget_show_all (window);

  gtk_main ();

}
