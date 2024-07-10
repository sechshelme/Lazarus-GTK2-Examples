program project1;

uses
  glib2,
  common_GTK,
  gtkenums,
  gtkapplication,
  gtkapplicationwindow,
  gtkwindow,
  gtkbox,
  gtkbutton,

  Math;


  // ------ libgio

  function g_application_run(application: Pointer; argc: longint; argv: PPchar): longint; cdecl; external libgio;

  // ------ glib


  function g_signal_connect(instance: gpointer; detailed_signal: Pgchar; c_handler: TGCallback; Data: gpointer): gulong;
  begin
    g_signal_connect := g_signal_connect_data(instance, detailed_signal, c_handler, Data, nil, 0);
  end;

  function G_CALLBACK(f: pointer): TGCallback;
  begin
    G_CALLBACK := TGCallback(f);
  end;



  // ------- Eigenes

  procedure btn_Click(button: PGTKWidget; user_data: Pointer); cdecl;
  begin
    WriteLn(gtk_button_get_label(GTK_BUTTON(button)));
  end;

  procedure activate(app: PGtkApplication; user_data: Pointer); cdecl;
  var
    window, box, button1, button2, button3: PGTKWidget;
    window_class: PGtkWindowClass;
  begin
    window := gtk_application_window_new(app);

    gtk_window_set_default_size(GTK_WINDOW(window), 320, 200);
    gtk_window_set_title(GTK_WINDOW(window), 'Hello GTK-4');

    box := gtk_box_new(GTK_ORIENTATION_HORIZONTAL, 10);
    gtk_window_set_child(GTK_WINDOW(window), box);

    button1 := gtk_button_new_with_label('Button 1');
    gtk_box_append(GTK_BOX(box), button1);
    g_signal_connect(button1, 'clicked', G_CALLBACK(@btn_Click), nil);
    //    gtk_widget_set_size_request(button, 75, 25);

    button2 := gtk_button_new_with_label('Button 2');
    gtk_box_append(GTK_BOX(box), button2);
    g_signal_connect(button2, 'clicked', G_CALLBACK(@btn_Click), nil);
    //    gtk_widget_set_size_request(button, 75, 25);

    button3 := gtk_button_new_with_label('Button 3');
    gtk_box_append(GTK_BOX(box), button3);
    g_signal_connect(button3, 'clicked', G_CALLBACK(@btn_Click), nil);
    //    gtk_widget_set_size_request(button, 75, 25);

    gtk_window_present(GTK_WINDOW(window));

    window_class := GTK_WINDOW_GET_CLASS(window);
    WriteLn('win class: ', G_OBJECT_CLASS_NAME(window_class));
    WriteLn('win is_class: ', GTK_IS_WINDOW_CLASS(window_class));

    window_class := GTK_WINDOW_GET_CLASS(button1);
    WriteLn('btn class: ', G_OBJECT_CLASS_NAME(window_class));
    WriteLn('btn is_class: ', GTK_IS_WINDOW_CLASS(window_class));

    WriteLn('is win: ', GTK_IS_WINDOW(window));
    WriteLn('is win: ', GTK_IS_WINDOW(button1));
    WriteLn('is btn: ', GTK_IS_BUTTON(button1));
    WriteLn('is btn: ', GTK_IS_BUTTON(window));
  end;

  procedure main;
  var
    app: PGtkApplication;
  begin
    app := gtk_application_new('org.gtk.example', 0);

    g_signal_connect(app, 'activate', G_CALLBACK(@activate), nil);
    g_application_run(app, 0, nil);
  end;

begin
  SetExceptionMask([exDenormalized, exInvalidOp, exOverflow, exPrecision, exUnderflow, exZeroDivide]);
  main;
end.
