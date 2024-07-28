// gcc main.c -o main `pkg-config --cflags --libs gtk+-3.0 gstreamer-1.0`



#include <gtk/gtk.h>
#include <gst/gst.h>
#include <gst/video/videooverlay.h>

static GstElement *pipeline;

static void start_playback(GtkWidget *widget, gpointer data) {
  printf("11111\n");
//    gst_element_set_state(pipeline, GST_STATE_PLAYING);
  printf("2222\n");


GstStateChangeReturn ret = gst_element_set_state(pipeline, GST_STATE_READY);
if (ret == GST_STATE_CHANGE_FAILURE) {
    g_printerr("Fehler beim Setzen des Pipeline-Zustands auf READY.\n");
}
printf("ret: %i\n", ret );

ret = gst_element_set_state(pipeline, GST_STATE_PLAYING);
if (ret == GST_STATE_CHANGE_FAILURE) {
    g_printerr("Fehler beim Setzen des Pipeline-Zustands auf PLAYING.\n");
  }
printf("ret: %i\n", ret );
}

static void stop_playback(GtkWidget *widget, gpointer data) {
    gst_element_set_state(pipeline, GST_STATE_NULL);
}

int main(int argc, char *argv[]) {
    GtkWidget *window;
    GtkWidget *button_start;
    GtkWidget *button_stop;
    GstElement *source, *decoder, *sink;

    // Initialisiere GStreamer und GTK
    gst_init(&argc, &argv);
    gtk_init(&argc, &argv);

    // Erstelle die GTK-Oberfläche
    window = gtk_window_new(GTK_WINDOW_TOPLEVEL);
    gtk_window_set_title(GTK_WINDOW(window), "GStreamer mit GTK");
    gtk_window_set_default_size(GTK_WINDOW(window), 400, 200);

    g_signal_connect(window, "destroy", G_CALLBACK(gtk_main_quit), NULL);

    // Erstelle die GStreamer-Pipeline
    source = gst_element_factory_make("filesrc", "source");
if (!source)   printf("fehler source \n");

//    g_object_set(source, "location", "audio.mp3", NULL); // Pfad zur MP3-Datei
    g_object_set(source, "location", "test.flac", NULL); // Pfad zur MP3-Datei

    decoder = gst_element_factory_make("decodebin", "decoder");
if (!decoder)   printf("fehler decoder \n");
    sink = gst_element_factory_make("autoaudiosink", "sink");
if (!sink)   printf("fehler sink \n");

    pipeline = gst_pipeline_new("audio-pipeline");
if (!pipeline)   printf("fehler pipeline \n");

    gst_bin_add_many(GST_BIN(pipeline), source, decoder, sink, NULL);
    gst_element_link(source, decoder);
    g_signal_connect(decoder, "pad-added", G_CALLBACK(gst_element_link), sink);

    // Erstelle Buttons für die Steuerung
    button_start = gtk_button_new_with_label("Start");
    button_stop = gtk_button_new_with_label("Stop");

    g_signal_connect(button_start, "clicked", G_CALLBACK(start_playback), NULL);
    g_signal_connect(button_stop, "clicked", G_CALLBACK(stop_playback), NULL);

    // Füge die Buttons zum Fenster hinzu
    GtkWidget *box = gtk_box_new(GTK_ORIENTATION_VERTICAL, 5);
    gtk_box_pack_start(GTK_BOX(box), button_start, TRUE, TRUE, 0);
    gtk_box_pack_start(GTK_BOX(box), button_stop, TRUE, TRUE, 0);
    gtk_container_add(GTK_CONTAINER(window), box);

    // Zeige das Fenster an
    gtk_widget_show_all(window);

    // Starte die GTK-Hauptschleife
    gtk_main();

    // Bereinige und stoppe die Pipeline
    gst_element_set_state(pipeline, GST_STATE_NULL);
    gst_object_unref(pipeline);
    return 0;
}
