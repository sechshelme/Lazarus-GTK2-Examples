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
    g_print('Quitting...'#10);
    gtk_main_quit;
    Result := 0;
  end;

  procedure LabelModif(widget: PGtkWidget; Data: gpointer); cdecl;
  var
    szText: PChar;
  begin
    if GTK_IS_LABEL(widget) then begin
      gtk_label_get(GTK_LABEL(widget), @szText);
      if strcomp(szText, 'Windows') = 0 then begin
        gtk_label_set(GTK_LABEL(widget), 'Linux');
        gtk_label_set_angle(GTK_LABEL(widget), 10);
//        gtk_label_set(GTK_LABEL(widget), 'Linux');
      end else if strcomp(szText, 'Linux') = 0 then begin
        gtk_label_set(GTK_LABEL(widget), 'AmigaOS');
      end else begin
        gtk_label_set(GTK_LABEL(widget), 'Windows');
      end;
    end;
  end;

  function button_was_clicked(w: PGtkWidget; Data: pgpointer): gint;
  begin
    gtk_container_foreach(GTK_CONTAINER(w), @LabelModif, nil);
  end;

  procedure ButtonModif(widget: PGtkWidget; data: gpointer); cdecl;
  begin
    gtk_label_set_angle(GTK_LABEL(widget), 10);
  end;

  procedure main;
  var
    Window, button1, vbox, label1: PGtkWidget;
    BtnLabel: PGtkLabel;
  begin
    GTK_Init(@argc, @argv);

    Window := gtk_window_new(GTK_WINDOW_TOPLEVEL);
    gtk_window_set_title(GTK_WINDOW(Window), 'align');
    gtk_window_set_default_size(GTK_WINDOW(Window), 320, 200);
    gtk_window_set_position(GTK_WINDOW(window), GTK_WIN_POS_CENTER);
    gtk_signal_connect(GTK_OBJECT(Window), 'delete_event', GTK_SIGNAL_FUNC(@CloseAppWindow), nil);

    gtk_container_set_border_width(GTK_CONTAINER(Window), 10);

    vbox:=gtk_vbox_new(False,0);
    gtk_container_add(GTK_CONTAINER(Window), vbox);

    label1 := gtk_label_new('Click on Button!');
    gtk_label_set_angle(GTK_LABEL(label1), pi/4);
    gtk_container_add(GTK_CONTAINER(vbox), label1);

    button1 := gtk_button_new_with_label('Click me!');
    gtk_container_add(GTK_CONTAINER(vbox), button1);

    gtk_signal_connect(GTK_OBJECT(button1), 'clicked', GTK_SIGNAL_FUNC(@button_was_clicked), PChar('clicked'));

    button1 := gtk_button_new_with_label('Button 2');
    gtk_container_add(GTK_CONTAINER(vbox), button1);

    gtk_container_foreach(GTK_CONTAINER(button1), @ButtonModif, nil);


//    BtnLabel:=GTK_LABEL(GTK_BUTTON( button1)^.event_window);
//    gtk_label_set_text(BtnLabel, '100');


//    gtk_label_set_angle(BtnLabel, 100);

    gtk_label_set_angle(GTK_LABEL(label1), pi/4);


    gtk_widget_show_all(window);

    GTK_Main;
  end;

begin
  SetExceptionMask([exDenormalized, exInvalidOp, exOverflow, exPrecision, exUnderflow, exZeroDivide]);
  main;
end.
