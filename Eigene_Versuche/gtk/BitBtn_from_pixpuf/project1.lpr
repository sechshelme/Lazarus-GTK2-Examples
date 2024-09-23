program project1;

uses
  GLib2,
  Gdk2,
  Gtk2,
  gdk2pixbuf;

const
  w = 256;
  h = 256;
  l = w * h * 3;
var
  Window, button, fixedBox, image: PGtkWidget;
  pixbuf: PGdkImage;

  buffer: Pguchar = nil;
  i: integer;

procedure pixbuf_free(pixels: Pguchar; Data: gpointer); cdecl;
begin
  g_free(pixels);
  WriteLn('pixbuf data freed');
end;

begin
  GTK_Init(@argc, @argv);

  Window := gtk_window_new(GTK_WINDOW_TOPLEVEL);
  gtk_window_set_default_size(GTK_WINDOW(Window), 320, 200);


  buffer:=g_malloc(l);
  for i := 0 to l - 1 do begin
    buffer[i] := Random($FF);
  end;
  pixbuf := gdk_pixbuf_new_from_data(Pguchar(buffer), GDK_COLORSPACE_RGB, False, 8, w, h, w * 3, @pixbuf_free, nil);
  image := gtk_image_new_from_pixbuf(pixbuf);
  g_object_unref(pixbuf);

  fixedBox := gtk_fixed_new();
  gtk_container_add(GTK_CONTAINER(window), fixedBox);
  button := gtk_button_new();
  gtk_button_set_image(GTK_BUTTON(button), image);
  gtk_widget_set_size_request(button, 75, 50);
  gtk_fixed_put(GTK_FIXED(fixedBox), button, 10, 10);

  gtk_widget_show_all(window);

  g_signal_connect(G_OBJECT(window), 'destroy', G_CALLBACK(@gtk_main_quit), nil);

  GTK_Main;
  WriteLn('ende');
end.
