program project1;

uses
  Math,
  glib2,
  gdk2,
  gtk2;

var
  Text: string;


  procedure change_label(button: PGtkButton; Data: gpointer);
  begin
    gtk_label_set_label(GTK_LABEL(Data), PChar(Text));
  end;


  procedure change_text(button: PGtkButton; Data: gpointer);
  begin
    Text := gtk_entry_get_text(Data);
  end;

  procedure new_text(button: PGtkButton; Data: gpointer);
  begin
    gtk_entry_set_text(Data, 'Hello World !');
  end;


  function main(argc: integer; argv: PChar): integer;
  var
    window, vbox, label1, button1, button3, textentry1, button2: PGtkWidget;
  begin
    gtk_init(@argc, @argv);
    window := gtk_window_new(GTK_WINDOW_TOPLEVEL);

    vbox := gtk_vbox_new(False, 0);
    gtk_container_add(GTK_CONTAINER(window), vbox);

    label1 := gtk_label_new('Gib etwas ein!');
    gtk_box_pack_start(GTK_BOX(vbox), label1, False, False, 0);

    textentry1 := gtk_entry_new;
    gtk_box_pack_start(GTK_BOX(vbox), textentry1, False, False, 0);

    button1 := gtk_button_new_with_label('Eingabe');
    gtk_box_pack_start(GTK_BOX(vbox), button1, False, False, 0);
    g_signal_connect(button1, 'clicked', G_CALLBACK(@change_text), textentry1);
    g_signal_connect(button1, 'clicked', G_CALLBACK(@change_label), label1);

    button2 := gtk_button_new_with_label('Text Reset');
    gtk_box_pack_start(GTK_BOX(vbox), button2, False, False, 0);
    g_signal_connect(button2, 'clicked', G_CALLBACK(@new_text), textentry1);

    button3 := gtk_button_new_with_label('Programm beenden');
    gtk_box_pack_start(GTK_BOX(vbox), button3, False, False, 0);
    g_signal_connect(button3, 'clicked', G_CALLBACK(@gtk_main_quit), nil);


    g_signal_connect(window, 'destroy', G_CALLBACK(@gtk_main_quit), nil);

    gtk_widget_show_all(window);

    gtk_main;
    Result := 0;
  end;

begin
  SetExceptionMask([exDenormalized, exInvalidOp, exOverflow, exPrecision, exUnderflow, exZeroDivide]);
  Halt(main(argc, @argv));
end.
