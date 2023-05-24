program Project1;

// https://github.com/steshaw/gtk-examples/blob/master/ch04.button.edit.combo/listbox.c

uses
  Math,
  SysUtils,
  GLib2,
  Gdk2,
  Gtk2;

  function CloseAppWindow(w: PGtkWidget; Data: pgpointer): gint;
  begin
    gtk_main_quit;
    Result := 0;
  end;

  function ButtonEvent(w: PGtkWidget; Data: pgpointer): gint;
  begin
    g_print('Button event: %s'#10, Data);
  end;

  procedure main;
  var
    Window, vbox, label_, button1: PGtkWidget;
  begin
    GTK_Init(@argc, @argv);

    Window := gtk_window_new(GTK_WINDOW_TOPLEVEL);
    gtk_window_set_title(GTK_WINDOW(Window), 'align');
    gtk_window_set_default_size(GTK_WINDOW(Window), 320, 200);
    gtk_window_set_position(GTK_WINDOW(window), GTK_WIN_POS_CENTER);
    gtk_signal_connect(GTK_OBJECT(Window), 'delete_event', GTK_SIGNAL_FUNC(@CloseAppWindow), nil);

    gtk_container_set_border_width(GTK_CONTAINER(Window), 10);

    vbox := gtk_vbox_new(False, 0);

    label_ := gtk_label_new('Drücke den Button');
    gtk_box_pack_start(GTK_BOX(vbox), label_, False, False, 0);

    button1 := gtk_button_new_with_label('Button');
    gtk_box_pack_start(GTK_BOX(vbox), button1, False, False, 0);

    gtk_signal_connect(GTK_OBJECT(button1), 'pressed', GTK_SIGNAL_FUNC(@ButtonEvent), PChar('pressed'));
    gtk_signal_connect(GTK_OBJECT(button1), 'released', GTK_SIGNAL_FUNC(@ButtonEvent), PChar('released'));
    gtk_signal_connect(GTK_OBJECT(button1), 'clicked', GTK_SIGNAL_FUNC(@ButtonEvent), PChar('clicked'));
    gtk_signal_connect(GTK_OBJECT(button1), 'enter', GTK_SIGNAL_FUNC(@ButtonEvent), PChar('enter'));
    gtk_signal_connect(GTK_OBJECT(button1), 'leave', GTK_SIGNAL_FUNC(@ButtonEvent), PChar('leave'));

    gtk_container_add(GTK_CONTAINER(Window), vbox);

    gtk_widget_show_all(window);

    GTK_Main;
  end;

begin
  SetExceptionMask([exDenormalized, exInvalidOp, exOverflow, exPrecision, exUnderflow, exZeroDivide]);
  main;
end.
