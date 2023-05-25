program Project1;

uses
  Math,
  ctypes,
  SysUtils,
  pango,
  GLib2,
  Gdk2,
  Gtk2;

const
  num1: cdouble = 0;
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

  function sprintf(desr, src: PChar): cint; varargs cdecl; external lib_stdio;
  function atof(str: PChar): cdouble; cdecl; external lib_stdio;
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


  function CloseAppWindow(w: PGtkWidget; Data: pgpointer): gint; cdecl;
  begin
    gtk_main_quit;
    Result := 0;
  end;

  function Key_Press(w: PGtkWidget; event: PGdkEventKey; Data: pgpointer): gint; cdecl;
  var
    nIndex: integer;
  begin
    for nIndex := 0 to Length(buttonList) - 1 do begin
      if (Char( event^.keyval) = buttonList[nIndex].szLabel[0]) and (buttonList[nIndex].szLabel[1] = #0) then begin
        gtk_widget_grab_focus(buttonList[nIndex].widget);
        gtk_button_clicked(GTK_BUTTON(buttonList[nIndex].widget));
        Exit;
      end;
    end;
  end;

  function FloatigPointChar(ch: char): boolean;
  begin
    Result := (isdigit(cchar(ch)) <> 0) or (ch = '.');
  end;

  procedure TrimTrailingZeros(szDigits: PChar);
  var
    nIndex: cint;
    bDecimal: boolean = False;
    nPos: cint = -1;
  begin
    for nIndex := 0 to strlen(szDigits) - 1 do begin
      if szDigits[nIndex] = '.' then begin
        bDecimal := True;
      end;
      if bDecimal then begin
        if szDigits[nIndex] = '0' then begin
          if nPos < 0 then begin
            nPos := nIndex;
          end;
        end else begin
          nPos := -1;
        end;
      end;
    end;
    if nPos > 0 then begin
      szDigits[nPos] := #0;
    end;
  end;

  procedure TrimLeadingZeros(szDigits: PChar);
  var
    nPos: cint;
  begin
    if szDigits = nil then begin
      Exit;
    end;
    nPos := 0;
    while (szDigits[nPos] <> #0) and (szDigits[nPos] = '0' + '') do begin
      if isdigit(cint(szDigits[nPos + 1])) <> 0 then begin
        szDigits[nPos] := ' ';
      end;
      Inc(nPos);
    end;
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
      gtk_label_set(GTK_LABEL(label1), '');
      if lastChar = '=' then begin
        lastChar := #0;
        prevCmd := #0;
      end;
    end;
    gtk_label_get(GTK_LABEL(label1), @labelText);
    strcopy(buffer, labelText);

    len := strlen(buffer);
    buffer[len] := gchar(ch);
    buffer[len + 1] := gchar(0);

    TrimLeadingZeros(buffer);

    gtk_label_set(GTK_LABEL(label1), PChar(buffer));
  end;

  procedure MaybeUnaryOperation(str1: PChar);
  var
    labelText: PChar;
    num2: cdouble;
    buffer: array[0..BUF_SIZE - 1] of char;
  begin
    gtk_label_get(GTK_LABEL(label1), @labelText);
    num2 := atof(labelText);

    if strcomp(str1, '%' + '') = 0 then begin
      num2 := num2 / 100;
    end else if strcomp(str1, '1/x') = 0 then begin
      if num2 = 0 then begin
        exit;
      end;
      num2 := 1 / num2;
    end else if strcomp(str1, 'sqrt') = 0 then begin
      num2 := Sqrt(num2);
    end else if strcomp(str1, 'x^2') = 0 then begin
      num2 := num2 * num2;
    end else if strcomp(str1, '+/-') = 0 then begin
      num2 := num2 * -1;
    end;
    sprintf(buffer, '%f', num2);
    TrimTrailingZeros(buffer);
    TrimLeadingZeros(buffer);
    gtk_label_set(GTK_LABEL(label1), buffer);
  end;

  procedure HandleBinaryOperation;
  var
    buffer: array[0..BUF_SIZE - 1] of char;
    labelText: PChar;
    num2: cdouble;
  begin
    gtk_label_get(GTK_LABEL(label1), @labelText);
    num2 := atof(labelText);
    case prevCmd of
      '+': begin
        num1 := num1 + num2;
      end;
      '-': begin
        num1 := num1 - num2;
      end;
      '*': begin
        num1 := num1 * num2;
      end;
      '/': begin
        num1 := num1 / num2;
      end;
      '=': begin
        num1 := num2;
      end;
      else begin
        num1 := num2;
      end;
    end;
    sprintf(buffer, '%f', num1);
    TrimTrailingZeros(buffer);
    TrimLeadingZeros(buffer);
    gtk_label_set(GTK_LABEL(label1), buffer);
  end;

  procedure button_clicked(w: PGtkWidget; Data: pgpointer); cdecl;
  var
    ch: char;
    str1: PChar;
  begin
    ch := PChar(Data)^;
    str1 := PChar(Data);

    if FloatigPointChar(ch) and (strlen(str1) = 1) then begin
      HandleDigit(str1, ch);
    end else begin
      if strcomp(str1, 'CE') = 0 then begin
        gtk_label_set(GTK_LABEL(label1), '0' + '');
        Exit;
      end else if strcomp(str1, 'C' + '') = 0 then begin
        prevCmd := #0;
        lastChar := #0;
        gtk_label_set(GTK_LABEL(label1), '0' + '');
      end else begin
        MaybeUnaryOperation(str1);
      end;
      HandleBinaryOperation;
      prevCmd := ch;
    end;
    lastChar := ch;
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

    buffer: array[0..19] of char;
    num2: cdouble = 12;
    labelText: PChar = '-.8';
  begin

    num2 := atof(labelText);


    sprintf(buffer, '%f', num2);
    WriteLn(num2: 10: 5);
    WriteLn(buffer);



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

  main;
end.
