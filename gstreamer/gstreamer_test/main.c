// gcc -o flac_player main.c $(pkg-config --cflags --libs gstreamer-1.0 gstreamer-plugins-base-1.0)



#include <gst/gst.h>

int main(int argc, char *argv[]) {
    GstElement *pipeline;
    GstBus *bus;
    GstMessage *msg;

    // GStreamer initialisieren
    gst_init(&argc, &argv);

    // Überprüfen, ob ein Dateipfad übergeben wurde
    if (argc != 2) {
        g_print("Usage: %s <filename>\n", argv[0]);
        return -1;
    }

    // Pipeline erstellen
    pipeline = gst_element_factory_make("playbin", "player");
    g_object_set(pipeline, "uri", g_strdup_printf("file://%s", argv[1]), NULL);

    // Pipeline starten
    gst_element_set_state(pipeline, GST_STATE_PLAYING);

    // Warten auf die Endbenachrichtigung
    bus = gst_element_get_bus(pipeline);
    msg = gst_bus_timed_pop(bus, GST_CLOCK_TIME_NONE);

    // Nachrichten verarbeiten
    if (msg != NULL) {
        switch (GST_MESSAGE_TYPE(msg)) {
            case GST_MESSAGE_EOS:
                g_print("End of stream reached.\n");
                break;
            case GST_MESSAGE_ERROR:
                {
                    GError *err;
                    gchar *debug_info;

                    gst_message_parse_error(msg, &err, &debug_info);
                    g_printerr("Error received from element %s: %s\n",
                                GST_OBJECT_NAME(msg->src), err->message);
                    g_printerr("Debugging information: %s\n",
                                debug_info ? debug_info : "none");
                    g_error_free(err);
                    g_free(debug_info);
                }
                break;
            default:
                g_print("Unexpected message received.\n");
                break;
        }
        gst_message_unref(msg);
    }

    // Aufräumen
    gst_object_unref(bus);
    gst_element_set_state(pipeline, GST_STATE_NULL);
    gst_object_unref(pipeline);

    return 0;
}
