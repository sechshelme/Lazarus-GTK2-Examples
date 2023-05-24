program Project1;

uses
  Math,
  SysUtils,
  pango,
  GLib2,
  Gdk2,
  Gtk2;

var
  sFilename: string;

  function CloseAppWindow(w: PGtkWidget; Data: pgpointer): gint; cdecl;
  begin
    gtk_main_quit;
    Result := 0;
  end;

  function DestroyDialog(w: PGtkWidget; Data: pgpointer): gint; cdecl;
  begin
    WriteLn('widget destroy');
    gtk_grab_remove(w);
    //  gtk_main_quit;
    Result := 0;
  end;

  function file_cancel(w: PGtkWidget; Data: pgpointer): gint; cdecl;
  begin
    gtk_widget_destroy(GTK_WIDGET(Data));
  end;

  function file_ok_sel(w: PGtkWidget; Data: pgpointer): gint; cdecl;
  var
    sTempFile: Pgchar = nil;
  begin
    sTempFile := gtk_file_selection_get_filename(GTK_FILE_SELECTION(Data));
    WriteLn('Getting ', sTempFile);
    //  strcopy(sFilename,sTempFile);

    gtk_widget_destroy(GTK_WIDGET(Data));
  end;

  function GetFileName(sTitle: PChar): PChar;
  var
    filew: PGtkWidget;
  begin
    sFilename := '';

    filew := gtk_file_selection_new(sTitle);

    gtk_signal_connect(GTK_OBJECT(filew), 'destroy', GTK_SIGNAL_FUNC(@DestroyDialog), @filew);

    gtk_signal_connect(GTK_OBJECT(GTK_FILE_SELECTION(filew)^.ok_button), 'clicked', GTK_SIGNAL_FUNC(@file_ok_sel), filew);

    gtk_signal_connect(GTK_OBJECT(GTK_FILE_SELECTION(filew)^.cancel_button), 'clicked', GTK_SIGNAL_FUNC(@file_cancel), filew);

    gtk_file_selection_set_filename(GTK_FILE_SELECTION(filew), '*.txt');

    gtk_widget_show_all(filew);
    gtk_grab_add(filew);

    //    gtk_main;

    Result := PChar(sFilename);

  end;

  function ButtonCLicked(w: PGtkWidget; Data: pgpointer): gint; cdecl;
  var
    sFile: PChar;
  begin
    sFile := GetFileName('Hey, hey, hey');
    WriteLn(sFile);
  end;

  procedure main;
  var
    Window, vbox, btn: PGtkWidget;
  begin
    GTK_Init(@argc, @argv);

    Window := gtk_window_new(GTK_WINDOW_TOPLEVEL);
    gtk_window_set_title(GTK_WINDOW(Window), 'Dialog');
    gtk_window_set_default_size(GTK_WINDOW(Window), 350, 250);
    gtk_window_set_position(GTK_WINDOW(window), GTK_WIN_POS_CENTER);
    gtk_signal_connect(GTK_OBJECT(Window), 'delete_event', GTK_SIGNAL_FUNC(@CloseAppWindow), nil);

    gtk_container_set_border_width(GTK_CONTAINER(Window), 10);

    vbox := gtk_vbox_new(True, 5);
    gtk_container_add(GTK_CONTAINER(Window), vbox);

    btn := gtk_button_new_with_label('File dialog');
    gtk_signal_connect(GTK_OBJECT(btn), 'clicked', GTK_SIGNAL_FUNC(@ButtonCLicked), nil);
    gtk_container_add(GTK_CONTAINER(vbox), btn);

    btn := gtk_button_new_with_label('Close');
    gtk_signal_connect(GTK_OBJECT(btn), 'clicked', GTK_SIGNAL_FUNC(@CloseAppWindow), nil);
    gtk_container_add(GTK_CONTAINER(vbox), btn);

    gtk_widget_show_all(window);
    GTK_Main;
  end;

begin
  SetExceptionMask([exDenormalized, exInvalidOp, exOverflow, exPrecision, exUnderflow, exZeroDivide]);
  main;
end.
