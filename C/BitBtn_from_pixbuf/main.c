// gcc main.c -o main `pkg-config --cflags --libs gtk+-2.0`
#include <gtk-2.0/gtk/gtk.h>
#include <gtk-2.0/gdk/gdk.h>

// gcc main.c -o main `pkg-config --cflags --libs gtk+-3.0`
//#include <gtk/gtk.h>
//#include <gdk/gdk.h>
#include <gdk/gdkpixbuf.h>
#include <stdlib.h>
#include <stdio.h>

#define WIDTH 256
#define HEIGHT 256
#define LENGTH (WIDTH * HEIGHT * 3)

static void pixbuf_free(guchar *pixels, gpointer data) {
    g_free(pixels);
    printf("pixbuf data freed\n");
}

int main(int argc, char *argv[]) {
    gtk_init(&argc, &argv);

    GtkWidget *window = gtk_window_new(GTK_WINDOW_TOPLEVEL);
    gtk_window_set_default_size(GTK_WINDOW(window), 320, 200);

    guchar *buffer = g_malloc(LENGTH);
    for (int i = 0; i < LENGTH; i++) {
        buffer[i] = rand() % 256; // Random values between 0 and 255
    }

    GdkPixbuf *pixbuf = gdk_pixbuf_new_from_data(buffer, GDK_COLORSPACE_RGB, FALSE, 8, WIDTH, HEIGHT, WIDTH * 3, pixbuf_free, NULL);
    GtkWidget *image = gtk_image_new_from_pixbuf(pixbuf);
    g_object_unref(pixbuf);

    GtkWidget *fixedBox = gtk_fixed_new();
    gtk_container_add(GTK_CONTAINER(window), fixedBox);
    GtkWidget *button = gtk_button_new();
    gtk_button_set_image(GTK_BUTTON(button), image);
    gtk_widget_set_size_request(button, 75, 50);
    gtk_fixed_put(GTK_FIXED(fixedBox), button, 10, 10);

    gtk_widget_show_all(window);

    g_signal_connect(G_OBJECT(window), "destroy", G_CALLBACK(gtk_main_quit), NULL);

    gtk_main();
    printf("ende\n");

    return 0;
}
