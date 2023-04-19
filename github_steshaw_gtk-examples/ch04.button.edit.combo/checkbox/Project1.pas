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

  function CreateCheckBox(parent: PGtkWidget; szLabel: PChar): PGtkWidget;
  begin
    Result := gtk_check_button_new_with_label(szLabel);
    gtk_box_pack_start(GTK_BOX(parent), Result, False, False, 10);
  end;

  procedure CheckEvent(w: PGtkWidget; Data: pgpointer);
  begin
    g_print('checkbox event: %s'#10, Data);
  end;

  procedure main;
  var
    Window, vbox, check, label_: PGtkWidget;
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

    check := CreateCheckBox(vbox, 'Have Linux');
    gtk_signal_connect(GTK_OBJECT(check), 'toggled', GTK_SIGNAL_FUNC(@CheckEvent), PChar('check 1 toggled'));
    gtk_signal_connect(GTK_OBJECT(check), 'pressed', GTK_SIGNAL_FUNC(@CheckEvent), PChar('check 1 pressed'));
    gtk_signal_connect(GTK_OBJECT(check), 'released', GTK_SIGNAL_FUNC(@CheckEvent), PChar('check 1 relaesed'));
    gtk_signal_connect(GTK_OBJECT(check), 'clicked', GTK_SIGNAL_FUNC(@CheckEvent), PChar('check 1 clicked'));
    gtk_signal_connect(GTK_OBJECT(check), 'enter', GTK_SIGNAL_FUNC(@CheckEvent), PChar('check 1 enter'));
    gtk_signal_connect(GTK_OBJECT(check), 'leave', GTK_SIGNAL_FUNC(@CheckEvent), PChar('check 1 leave'));

    check := CreateCheckBox(vbox, 'Use Linux');
    gtk_signal_connect(GTK_OBJECT(check), 'toggled', GTK_SIGNAL_FUNC(@CheckEvent), PChar('check 2 toggled'));
    gtk_signal_connect(GTK_OBJECT(check), 'pressed', GTK_SIGNAL_FUNC(@CheckEvent), PChar('check 2 pressed'));
    gtk_signal_connect(GTK_OBJECT(check), 'released', GTK_SIGNAL_FUNC(@CheckEvent), PChar('check 2 relaesed'));
    gtk_signal_connect(GTK_OBJECT(check), 'clicked', GTK_SIGNAL_FUNC(@CheckEvent), PChar('check 2 clicked'));
    gtk_signal_connect(GTK_OBJECT(check), 'enter', GTK_SIGNAL_FUNC(@CheckEvent), PChar('check 2 enter'));
    gtk_signal_connect(GTK_OBJECT(check), 'leave', GTK_SIGNAL_FUNC(@CheckEvent), PChar('check 2 leave'));

    check := CreateCheckBox(vbox, 'Like Linux');
    gtk_signal_connect(GTK_OBJECT(check), 'toggled', GTK_SIGNAL_FUNC(@CheckEvent), PChar('check 3 toggled'));
    gtk_signal_connect(GTK_OBJECT(check), 'pressed', GTK_SIGNAL_FUNC(@CheckEvent), PChar('check 3 pressed'));
    gtk_signal_connect(GTK_OBJECT(check), 'released', GTK_SIGNAL_FUNC(@CheckEvent), PChar('check 3 relaesed'));
    gtk_signal_connect(GTK_OBJECT(check), 'clicked', GTK_SIGNAL_FUNC(@CheckEvent), PChar('check 3 clicked'));
    gtk_signal_connect(GTK_OBJECT(check), 'enter', GTK_SIGNAL_FUNC(@CheckEvent), PChar('check 3 enter'));
    gtk_signal_connect(GTK_OBJECT(check), 'leave', GTK_SIGNAL_FUNC(@CheckEvent), PChar('check 3 leave'));

    gtk_container_add(GTK_CONTAINER(Window), vbox);

    gtk_widget_show_all(window);

    GTK_Main;
  end;

begin
  SetExceptionMask([exDenormalized, exInvalidOp, exOverflow, exPrecision, exUnderflow, exZeroDivide]);
  main;
end.
