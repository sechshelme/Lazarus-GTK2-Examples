program Project1;

uses
  GLib2,
  Gdk2,
  Gtk2;

  procedure press(widget: PGtkWidget; Caption: PChar); cdecl;
  begin
    WriteLn('Cklicked: ', Caption);
  end;

  procedure main;
  var
    Window, align1, button1, button2, vbox, align2, align3, button3: PGtkWidget;
  begin
    GTK_Init(@argc, @argv);

    Window := gtk_window_new(GTK_WINDOW_TOPLEVEL);
    gtk_window_set_title(GTK_WINDOW(Window), 'Hallo');
    gtk_window_set_default_size(GTK_WINDOW(Window), 500, 500);
    gtk_window_set_position(GTK_WINDOW(window), GTK_WIN_POS_CENTER);

    gtk_container_set_border_width(GTK_CONTAINER(Window), 5);

    vbox := gtk_vbox_new(False, 0);

    align1 := gtk_alignment_new(0, 0, 0, 0);
    button1 := gtk_button_new_with_label('Button1');
    gtk_container_add(GTK_CONTAINER(align1), button1);
    gtk_box_pack_start(GTK_BOX(vbox), align1, False, False, 0);
    g_signal_connect(G_OBJECT(button1), 'clicked', G_CALLBACK(@press), PChar('Button1'));

    align2 := gtk_alignment_new(0.5, 0, 0, 0);
    button2 := gtk_button_new_with_label('Button2');
    gtk_container_add(GTK_CONTAINER(align2), button2);
    gtk_box_pack_start(GTK_BOX(vbox), align2, False, False, 0);
    g_signal_connect(G_OBJECT(button2), 'clicked', G_CALLBACK(@press), PChar('Button2'));

    align3 := gtk_alignment_new(1.0, 0, 0, 0);
    button3 := gtk_button_new_with_label('Button3');
    gtk_container_add(GTK_CONTAINER(align3), button3);
    gtk_box_pack_start(GTK_BOX(vbox), align3, False, False, 0);
    g_signal_connect(G_OBJECT(button3), 'clicked', G_CALLBACK(@press), PChar('Button3'));


    gtk_container_add(GTK_CONTAINER(Window), vbox);

    gtk_widget_show_all(window);

    g_signal_connect(G_OBJECT(window), 'destroy', G_CALLBACK(@gtk_main_quit), nil);

    GTK_Main;
  end;

begin
  main;
end.
