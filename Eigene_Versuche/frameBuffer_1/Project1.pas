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
  Width = 800;
  Height = 600;

type
  Prgb = ^Trgb;

  Trgb = record
    r, g, b: byte;
  end;

var
  buffer_8: pbyte;

  procedure select_Color(widget: PGtkWidget; lab: gpointer); cdecl;
  var
    dialog: PGtkWidget;
  begin
    dialog := gtk_color_selection_dialog_new('Select Color');
    gtk_dialog_run(GTK_DIALOG(dialog));
    gtk_widget_destroy(dialog);
  end;

  procedure select_Font(widget: PGtkWidget; lab: gpointer); cdecl;
  var
    dialog: PGtkWidget;
  begin
    dialog := gtk_font_selection_dialog_new('Select Font');
    gtk_dialog_run(GTK_DIALOG(dialog));
    gtk_widget_destroy(dialog);
  end;

  procedure pixbuf_free(pixels: Pguchar; Data: gpointer); cdecl;
  begin
    g_free(pixels);
    WriteLn('pixbuf data freed');
  end;

  function draw_call(Data: gpointer): gboolean; cdecl;
  var
    image: PGtkImage;
    Stride_rgb: integer;
    buffer_rgb: Prgb;
    y, x: integer;
    gray: byte;
    pixbuf_rgb: PGdkPixbuf;
  const
    bascecolor: integer = 0;
  begin
    image := PGtkImage(Data);
    Stride_rgb := Width;

    buffer_rgb := g_malloc(Stride_rgb * Height * SizeOf(Trgb));

    for x := 0 to Width - 1 do begin
      for y := 0 to Height - 1 do begin
        gray := buffer_8[bascecolor + x + y] and $FF;
        buffer_rgb[Stride_rgb * y + x].r := gray;
        buffer_rgb[Stride_rgb * y + x].g := gray;
        buffer_rgb[Stride_rgb * y + x].b := gray;
      end;
    end;
    Inc(bascecolor, 5);

    pixbuf_rgb := gdk_pixbuf_new_from_data(Pguchar(buffer_rgb), GDK_COLORSPACE_RGB, False, 8, Width, Height, Stride_rgb * 3, @pixbuf_free, nil);
    gtk_image_set_from_pixbuf(image, pixbuf_rgb);
    g_object_unref(pixbuf_rgb);

    Result:=gTRUE;
  end;

  procedure main;
  const
    Stride_8 = Width;
    Stride_rgb = Width;
  var
    Window, image: PGtkWidget;
    y, x: integer;
    buffer_rgb: Prgb;
    gray: byte;
    pixbuf_rgb: PGdkPixbuf;
  begin
    buffer_8 := g_malloc(Stride_8 * Height);
    for x := 0 to Width - 1 do begin
      for y := 0 to Height - 1 do begin
        buffer_8[Stride_8 * y + x] := (x + y) and $FF;
      end;
    end;

    buffer_rgb := g_malloc(Stride_rgb * Height * SizeOf(Trgb));
    for x := 0 to Width - 1 do begin
      for y := 0 to Height - 1 do begin
        gray := buffer_8[Stride_8 * y + x];
        buffer_rgb[Stride_rgb * y + x].r := gray;
        buffer_rgb[Stride_rgb * y + x].g := gray;
        buffer_rgb[Stride_rgb * y + x].b := gray;
      end;
    end;

    GTK_Init(@argc, @argv);

    Window := gtk_window_new(GTK_WINDOW_TOPLEVEL);
    gtk_window_set_title(GTK_WINDOW(Window), 'Frame-Buffer');

    g_signal_connect(Window, 'destroy', G_CALLBACK(@gtk_main_quit), nil);

    pixbuf_rgb := gdk_pixbuf_new_from_data(Pguchar(buffer_rgb), GDK_COLORSPACE_RGB, False, 8, Width, Height, Stride_rgb * 3, @pixbuf_free, nil);
    image := gtk_image_new_from_pixbuf(pixbuf_rgb);
    g_object_unref(pixbuf_rgb);

    gtk_container_add(GTK_CONTAINER(Window), image);
    gtk_widget_show_all(window);

    g_timeout_add(100, @draw_call, image);
    GTK_Main;
    g_free(buffer_8);
  end;

begin
  SetExceptionMask([exDenormalized, exInvalidOp, exOverflow, exPrecision, exUnderflow, exZeroDivide]);
  main;
end.
