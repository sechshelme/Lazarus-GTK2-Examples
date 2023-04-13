program Project1;

uses
  GLib2,
  Gdk2,
  Gtk2;

  procedure main;
  var
    Window, label1: PGtkWidget;
  begin
    GTK_Init(@argc, @argv);

    Window := gtk_window_new(GTK_WINDOW_TOPLEVEL);
    gtk_window_set_title(GTK_WINDOW(Window), 'GtkButton');
    //    gtk_window_set_default_size(GTK_WINDOW(Window), 500, 500);
    gtk_window_set_position(GTK_WINDOW(window), GTK_WIN_POS_CENTER);

    gtk_container_set_border_width(GTK_CONTAINER(Window), 15);

    label1 := gtk_label_new(
      'I''ve always been too lame' + lineEnding +
      'To see what''s before me' + lineEnding +
      'And I know nothing sweeter than' + lineEnding +
      'Champaign from last New Years' + lineEnding +
      'Sweet music in my ears' + lineEnding +
      'And a night full of no fears' + lineEnding +
      '' + lineEnding +
      'But if I had one wish fulfilled tonight' + lineEnding +
      'I''d ask for the sun to never rise' + lineEnding +
      'If God passed a mic to me to speak' + lineEnding +
      'I''d say ' + LineEnding +
      'Stay in bed, world,' + lineEnding +
      'Sleep in peace');

    gtk_label_set_justify(GTK_LABEL(label1), GTK_JUSTIFY_CENTER);

    gtk_container_add(GTK_CONTAINER(Window), label1);

    gtk_widget_show_all(window);

    g_signal_connect(G_OBJECT(window), 'destroy', G_CALLBACK(@gtk_main_quit), nil);

    GTK_Main;
  end;

begin
  main;
end.
