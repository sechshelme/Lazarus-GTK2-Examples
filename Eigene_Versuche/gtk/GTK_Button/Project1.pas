program Project1;

//uses
//GTK2,  SysUtils;

uses
  GLib2,
  Gdk2,
  Gdk2Pixbuf,
  Cairo,
  Gtk2;

var
  Window, fixed, btn1, btn2, btn3: PGtkWidget;


procedure press1(widget: PGtkWidget; event: PGdkEventButton; user_data: gpointer); cdecl;
begin
  WriteLn('hello 1');
end;

procedure press2(widget: PGtkWidget; event: PGdkEventButton; user_data: gpointer); cdecl;
begin
  WriteLn('hello 2');
end;

procedure press3(widget: PGtkWidget; event: PGdkEventButton; user_data: gpointer); cdecl;
begin
  WriteLn('hello 3');
end;


begin
  GTK_Init(@argc, @argv);

  Window := gtk_window_new(GTK_WINDOW_TOPLEVEL);
  gtk_window_set_title(GTK_WINDOW(Window), 'Hallo');
  gtk_window_set_default_size(GTK_WINDOW(Window), 500, 500);
  gtk_window_set_position(GTK_WINDOW(window), GTK_WIN_POS_CENTER);

  fixed := gtk_fixed_new();
  gtk_container_add(GTK_CONTAINER(window), fixed);

  btn1 := gtk_button_new_with_label('Button1');
  gtk_fixed_put(GTK_FIXED(fixed), btn1, 150, 50);
  gtk_widget_set_size_request(btn1, 75, 25);
  gtk_signal_connect(PGtkObject(btn1), 'button-press-event', G_CALLBACK(@press1), nil);

  btn2 := gtk_button_new_with_label('Button2');
  gtk_fixed_put(GTK_FIXED(fixed), btn2, 15, 15);
  gtk_widget_set_size_request(btn2, 75, 25);
  gtk_signal_connect(PGtkObject(btn2), 'button-press-event', G_CALLBACK(@press2), nil);

  btn3 := gtk_button_new_with_label('Button3');
  gtk_fixed_put(GTK_FIXED(fixed), btn3, 100, 100);
  gtk_widget_set_size_request(btn3, 75, 25);
  gtk_signal_connect(PGtkObject(btn3), 'button-press-event', G_CALLBACK(@press3), nil);



  gtk_widget_show_all(window);

  GTK_Main;
end.
