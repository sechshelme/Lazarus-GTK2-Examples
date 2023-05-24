program Project1;

uses
  GLib2,
  Gdk2,
  Gtk2,
  Cairo;

type
  PGDateTime = ^TGDateTime;
  TGDateTime = double;

  function g_date_time_new_now_local: PGDateTime; cdecl; external gtklib;
  function g_date_time_format(datetime: PGDateTime; format: Pgchar): Pgchar; cdecl; external gtklib;

//  function g_sprintf(str: Pgchar; const format: Pgchar; a: array of const): Pgint; cdecl; external gtklib;
  function g_sprintf(str: Pgchar; const format: Pgchar; a: array of const): Pgint; cdecl; external 'c';

var
  buf: array[0..255] of char;

  function on_expose_event(widget: PGtkWidget; event: TGdkEventExpose; Data: gpointer): boolean; cdecl;
  var
    cr: Pcairo_t;
  begin
    WriteLn('expose ');
    cr := gdk_cairo_create(widget^.window);
    cairo_move_to(cr, 30, 30);
    cairo_set_font_size(cr, 15);
    cairo_show_text(cr, buf);
    cairo_destroy(cr);
    Result := False;
  end;

  function time_handler(widget: PGtkWidget): boolean; cdecl;
  var
    now: PGDateTime;
    my_time: Pgchar;
  begin
    Result := False;
    if widget^.window = nil then begin
      Exit;
    end;
    now := g_date_time_new_now_local;
    my_time := g_date_time_format(now, PChar('%H:%M:%S'));

    g_sprintf(buf, '%s', [my_time]);

    gtk_widget_queue_draw(widget);

    g_free(my_time);
    Result := True;
  end;

  procedure main;
  var
    Window, darea: PGtkWidget;
  begin
    GTK_Init(@argc, @argv);

    Window := gtk_window_new(GTK_WINDOW_TOPLEVEL);
    gtk_window_set_title(GTK_WINDOW(Window), 'Timer');
    gtk_window_set_default_size(GTK_WINDOW(Window), 500, 500);
    gtk_container_set_border_width(GTK_CONTAINER(Window), 15);
    gtk_window_set_position(GTK_WINDOW(window), GTK_WIN_POS_CENTER);

    darea := gtk_drawing_area_new;
    gtk_container_add(GTK_CONTAINER(Window), darea);

    g_signal_connect(G_OBJECT(darea), 'expose-event', G_CALLBACK(@on_expose_event), nil);
    g_signal_connect(G_OBJECT(window), 'destroy', G_CALLBACK(@gtk_main_quit), nil);

    g_timeout_add(1000, TGSourceFunc(@time_handler), gpointer(Window));

    gtk_widget_show_all(window);

    GTK_Main;
  end;

begin
  main;
end.
