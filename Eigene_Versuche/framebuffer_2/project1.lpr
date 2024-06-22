program Project1;

// https://stackoverflow.com/questions/65323718/live-image-from-camera-in-gtk

uses
  Math,
  pango,
  GLib2,
  Gdk2,
  gdk2pixbuf,
  Gtk2;

const
  Width: gint = 800;
  Height: gint = 600;

type
  Trgb =bitpacked record
    case byte of
    1:(    r, g, b: byte);
    2:(    rgb: 0..$FFFFFF);
    end;
var
  buffer_rgb:packed array of Trgb;

  function draw_call(Data: gpointer): gboolean; cdecl;
  var
    image: PGtkImage;
    y, x: integer;
    pixbuf_rgb: PGdkPixbuf;
  const
    bascecolor: integer = 0;
  begin
    image := PGtkImage(Data);

  SetLength(buffer_rgb, Width * Height);

    for x := 0 to Width - 1 do begin
      for y := 0 to Height - 1 do begin
        buffer_rgb[Width * y + x].r := x;
        buffer_rgb[Width * y + x].g := y;
        buffer_rgb[Width * y + x].b := (bascecolor + x) * y;
      end;
    end;
    Inc(bascecolor, 5);

    pixbuf_rgb := gdk_pixbuf_new_from_data(Pguchar(buffer_rgb), GDK_COLORSPACE_RGB, False, 8, Width, Height, Width * 3, nil, nil);
    gtk_image_set_from_pixbuf(image, pixbuf_rgb);
    g_object_unref(pixbuf_rgb);

    for x:=0 to 100000 do buffer_rgb[x].rgb:=Random($FFFFFF);

    Result := gTRUE;
  end;

  // https://ubuntuforums.org/showthread.php?t=761973

  function resize_call(widget: PGtkWidget; event: PGdkEvent; window: PGtkWidget): gboolean; cdecl;
  begin
//    Width := widget^.allocation.Width;
//    Height := widget^.allocation.Height;
    WriteLn(Width,' x ',Height);
  end;

  procedure main;
  var
    Window, image: PGtkWidget;
  begin
    GTK_Init(@argc, @argv);

    Window := gtk_window_new(GTK_WINDOW_TOPLEVEL);
    gtk_window_set_title(GTK_WINDOW(Window), 'Frame-Buffer Example');

    g_signal_connect(Window, 'destroy', G_CALLBACK(@gtk_main_quit), nil);
    g_signal_connect(Window, 'size-request', G_CALLBACK(@resize_call), nil);
//    g_signal_connect(Window, 'expose-event', G_CALLBACK(@resize_call), nil);

    image := gtk_image_new_from_pixbuf(nil);

    gtk_container_add(GTK_CONTAINER(Window), image);
    gtk_widget_show_all(window);

    g_timeout_add(1000, @draw_call, image);
    GTK_Main;
  end;

begin
  SetExceptionMask([exDenormalized, exInvalidOp, exOverflow, exPrecision, exUnderflow, exZeroDivide]);
  main;
end.
