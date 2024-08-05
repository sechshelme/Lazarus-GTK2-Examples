// https://www.gtk.org/docs/getting-started/hello-world/

#include <stdlib.h>
#include <gtk/gtk.h>
//#include <gtk/css/gtkcss.h>
//#include <gtk/a11y/gtkatspi.h>
#include <gdk/broadway/gdkbroadway.h>



static void scroll_Changed (GtkAdjustment *adj, gpointer user_data)
{
  double val = gtk_adjustment_get_value(adj);
  g_print("Value: %f\n", val);

  gsk_broadway_renderer_get_type();
  gsk_gl_renderer_get_type();
  gsk_vulkan_renderer_get_type();


}



static void print_hello (GtkWidget *widget, int value,  gpointer data)
{
  g_print ("Hello World\n");
  g_print ("Hello World  %s\n", gtk_button_get_label(GTK_BUTTON(widget)));

  GtkWidgetClass *wgc;

  GtkWindowControlsClass *wkc;
  wkc->parent_class.priv=wgc;

  GtkWindowControls *wk = gtk_window_controls_new(0);

  GtkButton *btn = gtk_button_new();


  gboolean is;
  is = GTK_IS_WINDOW_CONTROLS(wk);
  if (is) {
    gtk_button_set_label(GTK_BUTTON(widget), "true");
  } else {
    gtk_button_set_label(GTK_BUTTON(widget), "false");
  }

  GtkNative *na = 0;
  btn->parent_instance.priv=0;
  is = GTK_IS_BUTTON(wk);
  if (is) {
    gtk_button_set_label(GTK_BUTTON(widget), "true");
  } else {
    gtk_button_set_label(GTK_BUTTON(widget), "false");
  }

  GtkWidget *w;
  w =  G_TYPE_INSTANCE_GET_CLASS ((btn), GTK_TYPE_BUTTON, GtkButtonClass);
  g_print("class:     %i\n", w);
  w =  G_TYPE_INSTANCE_GET_INTERFACE ((btn), GTK_TYPE_BUTTON, GtkButtonClass);
  g_print("interface: %i\n", w);



  }

static void activate (GtkApplication *app, gpointer user_data)
{
  GtkWidget *window = gtk_application_window_new (app);
  gtk_window_set_title (GTK_WINDOW (window), "Window");
  gtk_window_set_default_size (GTK_WINDOW (window), 200, 200);

  GtkWidget *box = gtk_box_new(GTK_ORIENTATION_HORIZONTAL, 10);
  gtk_window_set_child(GTK_WINDOW(window), box);

// https://discourse.gnome.org/t/gtk4-x-scrollbar-and-g-signal-connect/22136
  GtkAdjustment *adj = gtk_adjustment_new(1, -100, 100, 0.1, 10, 0);
  GtkWidget *sb = gtk_scrollbar_new(GTK_ORIENTATION_VERTICAL, adj);
  gtk_box_append(GTK_BOX(box), sb);
  g_signal_connect (adj, "value-changed", G_CALLBACK (scroll_Changed), NULL);


  GtkWidget *button1 = gtk_button_new_with_label("Button 1");
  gtk_box_append(GTK_BOX(box), button1);
  g_signal_connect (button1, "clicked", G_CALLBACK (print_hello), NULL);

  GtkWidget *button2 = gtk_button_new_with_label("Button 2");
  gtk_box_append(GTK_BOX(box), button2);
  g_signal_connect (button2, "clicked", G_CALLBACK (print_hello), NULL);
          gtk_widget_set_size_request(button2, 175, 125);


  GtkWidget *button3 = gtk_button_new_with_label("Button 3");
  gtk_box_append(GTK_BOX(box), button3);
  g_signal_connect (button3, "clicked", G_CALLBACK (print_hello), NULL);



//  gtk_window_set_child (GTK_WINDOW (window), button);

  gtk_window_present (GTK_WINDOW (window));

  GtkWindowClass *window_class = GTK_BUTTON_GET_CLASS(GTK_WINDOW(button1));
  g_print("Window class name: %s\n", G_OBJECT_CLASS_NAME(window_class));

  gboolean is_win = GTK_IS_WINDOW_CLASS(window_class);
  if (is_win) printf("true"); else  printf("false");



  printf("win : %i\n",    window);
  printf("win CLASS: %i\n",    GTK_WINDOW_CLASS(window));
 printf("win GET_CLASS: %i\n", GTK_WINDOW_GET_CLASS(window));
 printf("\n\n");



printf("btn : %i\n",    button1);
  printf("btn CLASS: %i\n",    GTK_WINDOW_CLASS(button1));
 printf("btn GET_CLASS: %i\n", GTK_WINDOW_GET_CLASS(button1));
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

