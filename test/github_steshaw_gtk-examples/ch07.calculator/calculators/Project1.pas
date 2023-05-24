program Project1;

uses
  Math,
  Character,
  ctypes,
  SysUtils,
  pango,
  GLib2,
  Gdk2,
  Gtk2;

const
  num1: cfloat = 0;
  lastChar: char = #0;
  prevCmd: char = #0;
  BUF_SIZE = 88;

type
  TCalculatorButton = record
    szLabel: PChar;
    row, col: cint;
    widget: PGtkWidget;
  end;

var
  label1: PGtkWidget;


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
  //var
  //name :cint;cvar;external lib_stdio;


  function isdigit(i: cint): cint; cdecl; external lib_stdio;



const
  buttonList: array of TCalculatorButton = (
    (szLabel: 'C' + ''; row: 1; col: 0; widget: nil),      // --- Clear ---
    (szLabel: 'CE' + ''; row: 1; col: 1; widget: nil),     // --- Clear ---
    (szLabel: '/' + ''; row: 1; col: 3; widget: nil),      // --- Division ---
    (szLabel: '7' + ''; row: 2; col: 0; widget: nil),      // --- Digit ---
    (szLabel: '8' + ''; row: 2; col: 1; widget: nil),      // --- Digit ---
    (szLabel: '9' + ''; row: 2; col: 2; widget: nil),      // --- Digit ---
    (szLabel: '*' + ''; row: 2; col: 3; widget: nil),      // --- Multiplication ---
    (szLabel: '%' + ''; row: 2; col: 4; widget: nil),      // --- Percent ---
    (szLabel: '4' + ''; row: 3; col: 0; widget: nil),      // --- Digit ---
    (szLabel: '5' + ''; row: 3; col: 1; widget: nil),      // --- Digit ---
    (szLabel: '6' + ''; row: 3; col: 2; widget: nil),      // --- Digit ---
    (szLabel: '-' + ''; row: 3; col: 3; widget: nil),      // --- Subtraction ---
    (szLabel: '1/x' + ''; row: 3; col: 4; widget: nil),    // --- 1/x ---
    (szLabel: '1' + ''; row: 4; col: 0; widget: nil),      // --- Digit ---
    (szLabel: '2' + ''; row: 4; col: 1; widget: nil),      // --- Digit ---
    (szLabel: '3' + ''; row: 4; col: 2; widget: nil),      // --- Digit ---
    (szLabel: '+' + ''; row: 4; col: 3; widget: nil),      // --- Addition ---
    (szLabel: 'sqrt'; row: 4; col: 4; widget: nil),        // --- Square root ---
    (szLabel: '+/-' + ''; row: 5; col: 0; widget: nil),    // --- Negate value ---
    (szLabel: '0' + ''; row: 5; col: 1; widget: nil),      // --- zero ---
    (szLabel: '.' + ''; row: 5; col: 2; widget: nil),      // --- Decimal ---
    (szLabel: '=' + ''; row: 5; col: 3; widget: nil),      // --- Equals/total ---
    (szLabel: 'x^2' + ''; row: 5; col: 4; widget: nil));
var
  i: integer;
  // --- Squared ---


  function CloseAppWindow(w: PGtkWidget; Data: pgpointer): gint; cdecl;
  begin
    gtk_main_quit;
    Result := 0;
  end;

  function Key_Press(w: PGtkWidget; Data: pgpointer): gint; cdecl;
  begin
  end;

  function FloatigPointChar(ch: char): boolean;
  begin
    Result := (isdigit(cchar(ch)) <> 0) or (ch = '.');
  end;

  function Command(ch: char): boolean;
  begin
    Result := ch in ['+', '-', '/', '*', '='];
  end;

  procedure HandleDigit(str1: PChar; ch: char);
  var
    labelText: PChar;
    buffer: array[0..BUF_SIZE - 1] of char;
    len: SizeInt;
  begin
    if Command(lastChar) then begin
      gtk_label_set(GTK_LABEL(label1), @labelText);
    end;
    strcopy(buffer, labelText);

    len := strlen(buffer);
    buffer[len] := gchar(ch);
    buffer[len + 1] := gchar(0);

//    TrimL;
  end;


  function button_clicked(w: PGtkWidget; Data: pgpointer): gint; cdecl;
  var
    ch: char;
    str1: PChar;
  begin
    ch := PChar(Data)^;
    str1 := PChar(Data);

    if FloatigPointChar(ch) and (strlen(str1) = 1) then begin
   //   Han;
    end;
  end;

  function CreateButton(table: PGtkWidget; szLabel: PChar; ror, colum: cint): PGtkWidget;
  var
    btn: PGtkWidget;
  begin
    btn := gtk_button_new_with_label(szLabel);
    gtk_signal_connect(GTK_OBJECT(btn), 'clicked', GTK_SIGNAL_FUNC(@button_clicked), szLabel);
    gtk_table_attach(GTK_TABLE(table), btn, colum, colum + 1, ror, ror + 1, GTK_FILL or GTK_EXPAND, GTK_FILL or GTK_EXPAND, 5, 5);
    gtk_widget_show(btn);
    Result := btn;
  end;

  procedure CreateCalculatorButtons(table: PGtkWidget);
  var
    i: integer;
  begin
    for i := 0 to Length(buttonList) - 1 do begin
      buttonList[i].widget := CreateButton(table, buttonList[i].szLabel, buttonList[i].row, buttonList[i].col);
    end;
  end;

  procedure main;
  var
    Window, btn, table: PGtkWidget;
  begin
    GTK_Init(@argc, @argv);

    Window := gtk_window_new(GTK_WINDOW_TOPLEVEL);
    gtk_window_set_title(GTK_WINDOW(Window), 'Dialog');
    gtk_window_set_default_size(GTK_WINDOW(Window), 200, 200);
    gtk_window_set_position(GTK_WINDOW(window), GTK_WIN_POS_CENTER);
    gtk_container_set_border_width(GTK_CONTAINER(Window), 10);
    gtk_signal_connect(GTK_OBJECT(Window), 'delete_event', GTK_SIGNAL_FUNC(@CloseAppWindow), nil);
    gtk_signal_connect(GTK_OBJECT(Window), 'key_press_event', GTK_SIGNAL_FUNC(@Key_Press), nil);

    table := gtk_table_new(5, 5, True);
    CreateCalculatorButtons(table);

    label1 := gtk_label_new('0' + '');
    gtk_misc_set_alignment(GTK_MISC(label1), 1, 0.5);
    gtk_table_attach_defaults(GTK_TABLE(table), label1, 0, 4, 0, 1);

    gtk_container_add(GTK_CONTAINER(Window), table);

    gtk_widget_show_all(window);
    GTK_Main;
  end;

begin
  SetExceptionMask([exDenormalized, exInvalidOp, exOverflow, exPrecision, exUnderflow, exZeroDivide]);

  for i := 0 to 255 do begin
    WriteLn('No: ', i: 4, ' isdigit', isdigit(i));
  end;

  main;
end.
