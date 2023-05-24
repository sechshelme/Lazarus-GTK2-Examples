program Project1;

uses
  heaptrc,
  Math,
  SysUtils,
  pango,
  GLib2,
  Gdk2,
  Gtk2,
  Progress;

var
  sFilename: string;
  ptimer, nValue: integer;

  function CloseAppWindow(w: PGtkWidget; Data: pgpointer): gint; cdecl;
  begin
    gtk_main_quit;
    Result := 0;
  end;

  function UpdateProgreeTimer(Data: gpointer): gboolean; cdecl;
  begin
    Inc(nValue);
    UpdateProgress(nValue, 100);
    if nValue = 100 then begin
      EndProgress;
      gtk_timeout_remove(ptimer);
    end;
  end;

  function ButtonCLicked(w: PGtkWidget; Data: pgpointer): gint; cdecl;
  begin
    nValue := 0;
    StartProgress;
    ptimer := gtk_timeout_add(100, @UpdateProgreeTimer, Data);
  end;

  procedure main;
  var
    Window, btn, vbox: PGtkWidget;
  begin
    GTK_Init(@argc, @argv);

    Window := gtk_window_new(GTK_WINDOW_TOPLEVEL);
    gtk_window_set_title(GTK_WINDOW(Window), 'Dialog');
    gtk_window_set_default_size(GTK_WINDOW(Window), 350, 250);
    gtk_window_set_position(GTK_WINDOW(window), GTK_WIN_POS_CENTER);
    gtk_signal_connect(GTK_OBJECT(Window), 'delete_event', GTK_SIGNAL_FUNC(@CloseAppWindow), nil);
    gtk_container_set_border_width(GTK_CONTAINER(Window), 10);

    vbox := gtk_vbox_new(False, 0);

    btn := gtk_button_new_with_label('Progress Bar');
    gtk_container_add(GTK_CONTAINER(vbox), btn);
    gtk_signal_connect(GTK_OBJECT(btn), 'clicked', GTK_SIGNAL_FUNC(@ButtonCLicked), nil);

    btn := gtk_button_new_with_label('quit');
    gtk_container_add(GTK_CONTAINER(vbox), btn);
    gtk_signal_connect(GTK_OBJECT(btn), 'clicked', GTK_SIGNAL_FUNC(@CloseAppWindow), nil);


    gtk_container_add(GTK_CONTAINER(Window), vbox);

    gtk_widget_show_all(window);
    GTK_Main;
  end;

begin
  SetExceptionMask([exDenormalized, exInvalidOp, exOverflow, exPrecision, exUnderflow, exZeroDivide]);
  main;
end.
