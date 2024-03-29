program Project1;

uses
  GLib2,
  Gdk2,
  Gtk2;

  function g_markup_printf_escaped(format: PChar): Pgchar; cdecl; varargs external gliblib;

// http://irtfweb.ifa.hawaii.edu/SoftwareDocs/gtk20/pango/pangomarkupformat.html

  procedure main;
  var
    Window, label1: PGtkWidget;
    s, format: Pgchar;
    marup: Pgchar;

  begin
    GTK_Init(@argc, @argv);

    Window := gtk_window_new(GTK_WINDOW_TOPLEVEL);
    gtk_window_set_title(GTK_WINDOW(Window), 'GtkButton');
    gtk_window_set_default_size(GTK_WINDOW(Window), 320, 200);
    gtk_window_set_position(GTK_WINDOW(window), GTK_WIN_POS_CENTER);

    gtk_container_set_border_width(GTK_CONTAINER(Window), 15);

    label1 := gtk_label_new(nil);

    s := 'Hello World';
    format := '<span style="italic">%s</span>';
    marup := g_markup_printf_escaped(format, s);
    gtk_label_set_markup(GTK_LABEL(label1), marup);


    gtk_label_set_markup(GTK_LABEL(label1), '<small>Small text</small>');
    gtk_label_set_markup(GTK_LABEL(label1), '<b>Small text</b>');
    gtk_label_set_markup(GTK_LABEL(label1), '<span foreground="blue" size="100000">Blue text</span> is <i>cool</i>!');


    gtk_container_add(GTK_CONTAINER(Window), label1);

    gtk_widget_show_all(window);

    g_signal_connect(G_OBJECT(window), 'destroy', G_CALLBACK(@gtk_main_quit), nil);

    GTK_Main;
  end;

begin
  main;
end.
