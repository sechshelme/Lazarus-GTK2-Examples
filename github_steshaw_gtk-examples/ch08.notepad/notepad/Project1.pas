program Project1;

uses
  Math,
  Character,
  ctypes,
  SysUtils,
  pango,
  GLib2,
  Gdk2,
  Gtk2, menu, misc;

  // ctype.h

  //
  //  #define  __exctype(name)  extern int name (int) __THROW
  //
  //  /* The following names are all functions:
  //       int isCHARACTERISTIC(int c);
  //     which return nonzero iff C has CHARACTERISTIC.
  //     For the meaning of the characteristic names, see the `enum' above.  */
  //  __exctype (isalnum);
  //  __exctype (isalpha);
  //  __exctype (iscntrl);
  //  __exctype (isdigit);
  //  __exctype (islower);
  //  __exctype (isgraph);
  //  __exctype (isprint);
  //  __exctype (ispunct);
  //  __exctype (isspace);
  //  __exctype (isupper);
  //  __exctype (isxdigit);


const
  lib_stdio = 'c';


  function sprintf(desr, src: PChar): cint; varargs cdecl; external lib_stdio;
  function atof(str: PChar): cdouble; cdecl; external lib_stdio;
  function isdigit(i: cint): cint; cdecl; external lib_stdio;


    function CloseAppWindow(w: PGtkWidget; Data: pgpointer): gint; cdecl;
    begin
      gtk_main_quit;
      Result := 0;
    end;




  procedure main;
  var
    Window, main_vbox: PGtkWidget;

    buffer:array[0..19]of Char;
    num2:cdouble=12;
    labelText: PChar='-.8';
  begin

    num2 := atof(labelText);


  sprintf(buffer, '%f', num2);
  WriteLn(num2:10:5);
  WriteLn(buffer);



    GTK_Init(@argc, @argv);

    Window := gtk_window_new(GTK_WINDOW_TOPLEVEL);
    gtk_window_set_title(GTK_WINDOW(Window), 'Dialog');
    gtk_window_set_default_size(GTK_WINDOW(Window), 200, 200);
    gtk_window_set_position(GTK_WINDOW(window), GTK_WIN_POS_CENTER);
    gtk_container_set_border_width(GTK_CONTAINER(Window), 10);
    gtk_signal_connect(GTK_OBJECT(Window), 'delete_event', GTK_SIGNAL_FUNC(@CloseAppWindow), nil);

    main_vbox:=gtk_vbox_new(False,1);


    gtk_container_add(GTK_CONTAINER(Window), main_vbox);

    gtk_widget_show_all(window);
    GTK_Main;
  end;

begin
  SetExceptionMask([exDenormalized, exInvalidOp, exOverflow, exPrecision, exUnderflow, exZeroDivide]);
  main;
end.
