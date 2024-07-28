// gcc main.c -o main `pkg-config --cflags --libs gtk+-3.0 gstreamer-1.0`


#include <gst/gst.h>

#ifdef __APPLE__
#include <TargetConditionals.h>
#endif

int
tutorial_main (int argc, char *argv[])
{
  GstElement *pipeline;
  GstBus *bus;
  GstMessage *msg = 0;

  /* Initialize GStreamer */
  gst_init (&argc, &argv);

  /* Build the pipeline */
  pipeline =
      gst_parse_launch
     ("playbin uri=https://gstreamer.freedesktop.org/data/media/sintel_trailer-480p.webm",
//     ("playbin uri=file:///home/tux/Schreibtisch/gstreamer_3/sintel_trailer-480p.webm",
//      ("playbin uri=file:/home/tux/Schreibtisch/gstreamer_3/test.flac",
      NULL);

  /* Start playing */
  gst_element_set_state (pipeline, GST_STATE_PLAYING);

  /* Wait until error or EOS */
printf("1111\n");
  bus = gst_element_get_bus (pipeline);
printf("2222 %i\n",GST_CLOCK_TIME_NONE);
 msg =
    gst_bus_timed_pop_filtered (bus, GST_CLOCK_TIME_NONE,
     GST_MESSAGE_ERROR | GST_MESSAGE_EOS);
printf("3333\n");

  /* See next tutorial for proper error message handling/parsing */
  if (GST_MESSAGE_TYPE (msg) == GST_MESSAGE_ERROR) {
    g_printerr ("An error occurred! Re-run with the GST_DEBUG=*:WARN "
        "environment variable set for more details.\n");
  }


  /* Free resources */
  gst_message_unref (msg);
  gst_object_unref (bus);
  gst_element_set_state (pipeline, GST_STATE_NULL);
  gst_object_unref (pipeline);
  return 0;
}

int
main (int argc, char *argv[])
{
#if defined(__APPLE__) && TARGET_OS_MAC && !TARGET_OS_IPHONE
  return gst_macos_main ((GstMainFunc) tutorial_main, argc, argv, NULL);
#else
  return tutorial_main (argc, argv);
#endif
}


/*
https://gstreamer.freedesktop.org/documentation/tutorials/basic/hello-world.html?gi-language=c

Play local file

I tried the following tutorial and it works.
I changed the following line. But unfortunately it doesn't work,
```
// old
("playbin uri=https://gstreamer.freedesktop.org/data/media/sintel_trailer-480p.webm",
// new
("playbin uri=sintel_trailer-480p.webm",
// or
("/home/tux/Schreibtisch/gstreamer_3/test.mp3",
```
When I try it with the MP3, I get the following message, including a SIGSEV.

```

(main:3964): GStreamer-CRITICAL **: 13:35:28.891: gst_element_set_state: assertion 'GST_IS_ELEMENT (element)' failed

(main:3964): GStreamer-CRITICAL **: 13:35:28.891: gst_element_get_bus: assertion 'GST_IS_ELEMENT (element)' failed

(main:3964): GStreamer-CRITICAL **: 13:35:28.891: gst_bus_timed_pop_filtered: assertion 'GST_IS_BUS (bus)' failed
Memory access error (memory dump written)
```
What am I doing wrong?
*/











