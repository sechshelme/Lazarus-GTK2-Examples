program project1;

uses
  glib2,
  gdk2,
  gtk2;

  procedure gtk_widget_set_tooltip_text(window: PGtkWidget; title: Pgchar); cdecl; external gtklib;

  procedure print_msg(widget: PGtkWidget; window:gpointer); cdecl;
  begin
    WriteLn('click');
  end;

  function main(argc: integer; argv: PChar): integer;
  var
    window, Button1, halign: PGtkWidget;
  begin
    gtk_init(@argc, @argv);
    window := gtk_window_new(GTK_WINDOW_TOPLEVEL);
    gtk_window_set_title(GTK_WINDOW(window), 'Mnemonic');
    gtk_window_set_default_size(GTK_WINDOW(window), 300, 200);
    gtk_container_set_border_width(GTK_CONTAINER(window), 15);

    Button1 := gtk_button_new_with_mnemonic('_Button 1');
    g_signal_connect(Button1, 'clicked', G_CALLBACK(@print_msg), nil);
    gtk_widget_set_tooltip_text(Button1, 'Button 1 Hilfe');

    halign := gtk_alignment_new(0, 0, 0, 0);
    gtk_container_add(GTK_CONTAINER(halign), Button1);
    gtk_container_add(GTK_CONTAINER(window), halign);

    gtk_widget_show_all(window);

    g_signal_connect(window, 'destroy', G_CALLBACK(@gtk_main_quit), nil);

    gtk_main;
    Result := 0;
  end;

begin
  Halt(main(argc, @argv));
end.
