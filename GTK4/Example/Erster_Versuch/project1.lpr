program project1;

uses
  glib2,
  common_GTK,
  gtkapplication,
  gtkwindow,
  gtkbutton,

  Math;

// ---- libgtk-4

//type
//  TGTKWidget = Pointer;
//  PGTKWidget = ^TGTKWidget;

//  TGTKButton = Pointer;
//  PGTKButton = ^TGTKButton;

//  TGTKWindow = Pointer;
//  PGTKWindow = ^TGTKWindow;

//  TGtkApplication = Pointer;
//  PGtkApplication = ^TGtkApplication;

//  function gtk_application_new(application_id: PChar; flags: int64): PGtkApplication; cdecl; external gtklib;
  function gtk_application_window_new(application: PGtkApplication): PGtkWidget; cdecl; external gtklib;
//  procedure gtk_window_present(window: PGtkWindow); cdecl; external gtklib;
//  function gtk_button_new_with_label(_label: PChar): PGtkWidget; cdecl; external gtklib;
//  procedure gtk_window_set_child(window: PGtkWindow; child: PGtkWidget); cdecl; external gtklib;
//  procedure gtk_window_set_default_size(window: PGtkWindow; Width: longint; Height: longint); cdecl; external gtklib;
//  procedure gtk_window_set_title(window: PGtkWindow; title: PChar); cdecl; external gtklib;
//  function gtk_button_get_label(button: PGtkButton): PChar; cdecl; external gtklib;
  //  procedure gtk_widget_set_size_request(widget: PGtkWidget; Width: longint; Height: longint); cdecl; external gtklib;

// ------ libgio

  function g_application_run(application: Pointer; argc: longint; argv: PPchar): longint; cdecl; external libgio;

// ------ glib

//type
  //TGCallBackProcedure = procedure;
  //TGCallback = procedure(para1: TGCallBackProcedure); cdecl;
  //
  //TGClosureNotify = procedure(Data: Pointer; closure: Pointer); cdecl;


//function g_signal_connect_data(instance: Pointer; detailed_signal: PChar; c_handler: TGCallback; Data: Pointer; destroy_data: TGClosureNotify; connect_flags: longint): longint; cdecl; external gobjectlib;

  function g_signal_connect(instance: Pointer; detailed_signal: PChar; c_handler: TGCallback; Data: Pointer): longint;
  begin
    g_signal_connect := g_signal_connect_data(instance, detailed_signal, c_handler, Data, nil, 0);
  end;

  function G_CALLBACK(f: pointer): TGCallback;
  begin
    G_CALLBACK := TGCallback(f);
  end;



// ------- Eigenes

  procedure btn_Click(button: PGTKWidget; user_data: Pointer);
  begin
    WriteLn(gtk_button_get_label(GTK_BUTTON( button)));
  end;

  procedure activate(app: PGtkApplication; user_data: Pointer);
  var
    window, button: PGTKWidget;
    window_class: PGtkWindowClass;
  begin
    window := gtk_application_window_new(app);

    gtk_window_set_default_size(GTK_WINDOW( window), 640, 480);
    gtk_window_set_title(GTK_WINDOW( window), 'Hello GTK-4');

    button := gtk_button_new_with_label('Button 1');
    //    gtk_widget_set_size_request(button, 75, 25);

    window_class:=GTK_WINDOW_GET_CLASS(window);
    WriteLn('win class: ',G_OBJECT_CLASS_NAME(window_class));
    WriteLn('win is_class: ',GTK_IS_WINDOW_CLASS(window_class));

    window_class:=GTK_WINDOW_GET_CLASS(button);
    WriteLn('btn class: ',G_OBJECT_CLASS_NAME(window_class));
    WriteLn('btn is_class: ',GTK_IS_WINDOW_CLASS(window_class));

    g_signal_connect(button, 'clicked', G_CALLBACK(@btn_Click), nil);
    gtk_window_set_child(GTK_WINDOW( window), button);

    gtk_window_present(GTK_WINDOW( window));

    WriteLn('is win: ', GTK_IS_WINDOW(window));
    WriteLn('is win: ', GTK_IS_WINDOW(button));
    WriteLn('is btn: ', GTK_IS_BUTTON(button));
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
