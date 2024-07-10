// https://www.gtk.org/docs/getting-started/hello-world/

#include <stdlib.h>
#include <gtk/gtk.h>



static void print_hello (GtkWidget *widget, gpointer data)
{
  g_print ("Hello World\n");
  g_print ("Hello World  %s\n", gtk_button_get_label(GTK_BUTTON(widget)));
}

static void activate (GtkApplication *app, gpointer user_data)
{
  GtkWidget *window;
  GtkWidget *button;
  GtkWidget *box;

  window = gtk_application_window_new (app);
  gtk_window_set_title (GTK_WINDOW (window), "Window");
  gtk_window_set_default_size (GTK_WINDOW (window), 200, 200);

  box = gtk_box_new(GTK_ORIENTATION_HORIZONTAL, 10);
  gtk_window_set_child(GTK_WINDOW(window), box);

    GtkWidget *button1 = gtk_button_new_with_label("Button 1");
    gtk_box_append(GTK_BOX(box), button1);

    GtkWidget *button2 = gtk_button_new_with_label("Button 2");
    gtk_box_append(GTK_BOX(box), button2);

    GtkWidget *button3 = gtk_button_new_with_label("Button 3");
    gtk_box_append(GTK_BOX(box), button3);



  button = gtk_button_new_with_label ("Button");
  g_signal_connect (button, "clicked", G_CALLBACK (print_hello), NULL);
//  gtk_window_set_child (GTK_WINDOW (window), button);

  gtk_window_present (GTK_WINDOW (window));

  GtkWindowClass *window_class = GTK_BUTTON_GET_CLASS(GTK_WINDOW(button));
  g_print("Window class name: %s\n", G_OBJECT_CLASS_NAME(window_class));

  gboolean is_win = GTK_IS_WINDOW_CLASS(window_class);
  if (is_win) printf("true"); else  printf("false");




  printf("win : %i\n",    window);
  printf("win CLASS: %i\n",    GTK_WINDOW_CLASS(window));
 printf("win GET_CLASS: %i\n", GTK_WINDOW_GET_CLASS(window));
 printf("\n\n");



printf("btn : %i\n",    button);
  printf("btn CLASS: %i\n",    GTK_WINDOW_CLASS(button));
 printf("btn GET_CLASS: %i\n", GTK_WINDOW_GET_CLASS(button));
}

int main (int argc, char **argv)
{
  GtkApplication *app;
  int status;

  app = gtk_application_new ("org.gtk.example", G_APPLICATION_FLAGS_NONE);
 // app = gtk_application_new ("org.gtk.example", G_APPLICATION_DEFAULT_FLAGS);

  g_signal_connect (app, "activate", G_CALLBACK (activate), NULL);
  status = g_application_run (G_APPLICATION (app), argc, argv);
  g_object_unref (app);

  return status;
}

