program project1;

uses
  glib2,
  common_GTK,
  gtkenums,                   // io. ohne
  gtkwidget,             // -> ctypes,pango,Cairo, glib2, common_GTK, gtkenums
  gtkapplication,             // -> glib2, common_GTK, gtkwindow               ( PGtkApplication ausgelagert )
  gtkapplicationwindow,       // -> glib2, common_GTK, gtkwidget, gtkwindow    ( PGtkApplication ausgelagert )
  gtkwindow,                  // -> glib2, common_GTK, gtkwidget               ( PGtkApplication ausgelagert )
  gtkbox,                     // io. -> common_GTK, gtkwidget, gtkenums
  gtkbutton,                  // io. -> common_GTK, gtkwidget;
  gtkactionbar,               // io. -> common_GTK, gtkwidget;

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

  function CreateButton(caption:Pgchar):PGtkWidget;
  begin
    Result := gtk_button_new_with_label(caption);
    gtk_widget_set_margin_start(Result,10);
    gtk_widget_set_margin_top(Result,10);
    gtk_widget_set_margin_bottom(Result,10);
    gtk_widget_set_margin_end(Result,10);
  end;

  procedure btn_Click(button: PGTKWidget; user_data: Pointer); cdecl;
  begin
    WriteLn(gtk_button_get_label(GTK_BUTTON(button)));
  end;

  function Create_ActionBar: PGtkWidget;
  var
    button1: PGtkWidget;
  begin
    Result := gtk_action_bar_new;

    button1 := gtk_button_new_with_label('ABButton 1');
    gtk_action_bar_pack_start(GTK_ACTION_BAR(Result), button1);
    button1 := gtk_button_new_with_label('ABButton 2');
    gtk_action_bar_pack_start(GTK_ACTION_BAR(Result), button1);
  end;

  function Create_Button_Box: PGtkWidget;
  var
    vbox2, vbox1, button1, button2, button3, button4: PGtkWidget;
  begin
    Result := gtk_box_new(GTK_ORIENTATION_HORIZONTAL, 0);

    vbox1 := gtk_box_new(GTK_ORIENTATION_VERTICAL, 0);
    gtk_box_append(GTK_BOX(Result), vbox1);

    button1 := CreateButton('Button 1');
    gtk_box_append(GTK_BOX(vbox1), button1);
    g_signal_connect(button1, 'clicked', G_CALLBACK(@btn_Click), nil);
    //    gtk_widget_set_size_request(button, 75, 25);

    button2 := CreateButton('Button 2');
    gtk_box_append(GTK_BOX(vbox1), button2);
    g_signal_connect(button2, 'clicked', G_CALLBACK(@btn_Click), nil);
    //    gtk_widget_set_size_request(button, 75, 25);

    vbox2 := gtk_box_new(GTK_ORIENTATION_VERTICAL, 0);
    gtk_box_append(GTK_BOX(Result), vbox2);

    button3 := CreateButton('Button 3');
    gtk_box_append(GTK_BOX(vbox2), button3);
    g_signal_connect(button3, 'clicked', G_CALLBACK(@btn_Click), nil);
    //    gtk_widget_set_size_request(button, 75, 25);

    button4 := CreateButton('Button 4');
    gtk_box_append(GTK_BOX(vbox2), button4);
    g_signal_connect(button4, 'clicked', G_CALLBACK(@btn_Click), nil);
    //    gtk_widget_set_size_request(button, 75, 25);

  end;

  procedure activate(app: PGtkApplication; user_data: Pointer); cdecl;
  var
    window, box, actionBar: PGTKWidget;
    window_class: PGtkWindowClass;
  begin
    window := gtk_application_window_new(app);

    gtk_window_set_default_size(GTK_WINDOW(window), 320, 200);
    gtk_window_set_title(GTK_WINDOW(window), 'Hello GTK-4');


    box := Create_Button_Box;
    gtk_window_set_child(GTK_WINDOW(window), box);

    actionBar := Create_ActionBar;
    gtk_box_append(GTK_BOX(box), actionBar);
    actionBar := Create_ActionBar;
    gtk_box_append(GTK_BOX(box), actionBar);


    gtk_window_present(GTK_WINDOW(window));

    window_class := GTK_WINDOW_GET_CLASS(window);
    WriteLn('win class: ', G_OBJECT_CLASS_NAME(window_class));
    WriteLn('win is_class: ', GTK_IS_WINDOW_CLASS(window_class));

    window_class := GTK_WINDOW_GET_CLASS(box);
    WriteLn('btn class: ', G_OBJECT_CLASS_NAME(window_class));
    WriteLn('btn is_class: ', GTK_IS_WINDOW_CLASS(window_class));

    WriteLn('is win: ', GTK_IS_WINDOW(window));
    WriteLn('is win: ', GTK_IS_WINDOW(box));
    WriteLn('is btn: ', GTK_IS_BUTTON(box));
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
