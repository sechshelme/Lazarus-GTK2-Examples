program Project1;

uses
  GLib2,
  Gdk2,
  Gtk2;

  procedure press(widget: PGtkWidget; event: PGdkEventButton; user_data: gpointer); cdecl;
  begin
    WriteLn('Press Button ', PtrUInt(event));
  end;

  procedure main;
  var
    Window: PGtkWidget;
    window_class: PGtkWindowClass;
  begin
    GTK_Init(@argc, @argv);

    Window := gtk_window_new(GTK_WINDOW_TOPLEVEL);
    gtk_window_set_title(GTK_WINDOW( Window),'Mein Fenster');

    window_class:=GTK_WINDOW_GET_CLASS(Window);
    WriteLn(G_OBJECT_CLASS_NAME(window_class));

    gtk_widget_show(Window);

    GTK_Main;

  end;

begin
  main;
end.
