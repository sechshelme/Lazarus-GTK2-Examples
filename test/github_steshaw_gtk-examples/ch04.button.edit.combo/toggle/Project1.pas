program Project1;

// https://github.com/steshaw/gtk-examples/blob/master/ch04.button.edit.combo/listbox.c

uses
  Math,
  SysUtils,
  pango,
  GLib2,
  Gdk2,
  Gtk2;

  function CloseAppWindow(w: PGtkWidget; Data: pgpointer): gint;
  begin
    gtk_main_quit;
    Result := 0;
  end;

  procedure ButtonEvent(w: PGtkWidget; Data: pgpointer);
  begin
    g_print('Button event: %s'#10, Data);
  end;

  procedure main;
  var
    Window, vbox, toggle_btn, label_: PGtkWidget;
  begin
    GTK_Init(@argc, @argv);

    Window := gtk_window_new(GTK_WINDOW_TOPLEVEL);
    gtk_window_set_title(GTK_WINDOW(Window), 'CheckBox');
    gtk_window_set_default_size(GTK_WINDOW(Window), 320, 200);
    gtk_window_set_position(GTK_WINDOW(window), GTK_WIN_POS_CENTER);
    gtk_signal_connect(GTK_OBJECT(Window), 'delete_event', GTK_SIGNAL_FUNC(@CloseAppWindow), nil);

    gtk_container_set_border_width(GTK_CONTAINER(Window), 50);

    vbox := gtk_vbox_new(False, 0);

    label_:=gtk_label_new('Clicked CheckBox');
    gtk_box_pack_start(GTK_BOX(vbox), label_, False, False, 10);

    toggle_btn := gtk_toggle_button_new_with_label('Have Linux');
    gtk_box_pack_start(GTK_BOX(vbox), toggle_btn, False, False, 10);
    gtk_signal_connect(GTK_OBJECT(toggle_btn), 'toggled', GTK_SIGNAL_FUNC(@ButtonEvent), PChar('check 1 toggled'));
    gtk_signal_connect(GTK_OBJECT(toggle_btn), 'pressed', GTK_SIGNAL_FUNC(@ButtonEvent), PChar('check 1 pressed'));
    gtk_signal_connect(GTK_OBJECT(toggle_btn), 'released', GTK_SIGNAL_FUNC(@ButtonEvent), PChar('check 1 relaesed'));
    gtk_signal_connect(GTK_OBJECT(toggle_btn), 'clicked', GTK_SIGNAL_FUNC(@ButtonEvent), PChar('check 1 clicked'));
    gtk_signal_connect(GTK_OBJECT(toggle_btn), 'enter', GTK_SIGNAL_FUNC(@ButtonEvent), PChar('check 1 enter'));
    gtk_signal_connect(GTK_OBJECT(toggle_btn), 'leave', GTK_SIGNAL_FUNC(@ButtonEvent), PChar('check 1 leave'));

    toggle_btn := gtk_toggle_button_new_with_label('Use Linux');
    gtk_box_pack_start(GTK_BOX(vbox), toggle_btn, False, False, 10);
    gtk_signal_connect(GTK_OBJECT(toggle_btn), 'toggled', GTK_SIGNAL_FUNC(@ButtonEvent), PChar('check 2 toggled'));
    gtk_signal_connect(GTK_OBJECT(toggle_btn), 'pressed', GTK_SIGNAL_FUNC(@ButtonEvent), PChar('check 2 pressed'));
    gtk_signal_connect(GTK_OBJECT(toggle_btn), 'released', GTK_SIGNAL_FUNC(@ButtonEvent), PChar('check 2 relaesed'));
    gtk_signal_connect(GTK_OBJECT(toggle_btn), 'clicked', GTK_SIGNAL_FUNC(@ButtonEvent), PChar('check 2 clicked'));
    gtk_signal_connect(GTK_OBJECT(toggle_btn), 'enter', GTK_SIGNAL_FUNC(@ButtonEvent), PChar('check 2 enter'));
    gtk_signal_connect(GTK_OBJECT(toggle_btn), 'leave', GTK_SIGNAL_FUNC(@ButtonEvent), PChar('check 2 leave'));

    toggle_btn := gtk_toggle_button_new_with_label('Like Linux');
    gtk_box_pack_start(GTK_BOX(vbox), toggle_btn, False, False, 10);
    gtk_signal_connect(GTK_OBJECT(toggle_btn), 'toggled', GTK_SIGNAL_FUNC(@ButtonEvent), PChar('check 3 toggled'));
    gtk_signal_connect(GTK_OBJECT(toggle_btn), 'pressed', GTK_SIGNAL_FUNC(@ButtonEvent), PChar('check 3 pressed'));
    gtk_signal_connect(GTK_OBJECT(toggle_btn), 'released', GTK_SIGNAL_FUNC(@ButtonEvent), PChar('check 3 relaesed'));
    gtk_signal_connect(GTK_OBJECT(toggle_btn), 'clicked', GTK_SIGNAL_FUNC(@ButtonEvent), PChar('check 3 clicked'));
    gtk_signal_connect(GTK_OBJECT(toggle_btn), 'enter', GTK_SIGNAL_FUNC(@ButtonEvent), PChar('check 3 enter'));
    gtk_signal_connect(GTK_OBJECT(toggle_btn), 'leave', GTK_SIGNAL_FUNC(@ButtonEvent), PChar('check 3 leave'));

    gtk_container_add(GTK_CONTAINER(Window), vbox);

    gtk_widget_show_all(window);

    GTK_Main;
  end;

begin
  SetExceptionMask([exDenormalized, exInvalidOp, exOverflow, exPrecision, exUnderflow, exZeroDivide]);
  main;
end.
