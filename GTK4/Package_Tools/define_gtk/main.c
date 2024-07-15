//
// gcc main.c -o main
// gcc main.c -o main `pkg-config gtk4 --libs --cflags`
//

#include <stdlib.h>
#include <gtk/gtk.h>
#include <stdio.h>

//G_DECLARE_FINAL_TYPE (GtkWindowControls, gtk_window_controls, GTK, WINDOW_CONTROLS, GtkWidget)
//G_DECLARE_INTERFACE (GtkAccessible, gtk_accessible, GTK, ACCESSIBLE, GObject)


int main() {

  GtkNative *wk = gtk_window_controls_new(0);

  //GtkNativeClass *wkc = GTK_NATIVE_GET_CLASS(wk);


  gboolean is;
  is = GTK_IS_NATIVE(wk);
}



