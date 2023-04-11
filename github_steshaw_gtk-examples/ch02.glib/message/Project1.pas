program Project1;

// https://github.com/steshaw/gtk-examples/blob/master/ch04.button.edit.combo/listbox.c

uses
  Math,
  Strings,
  SysUtils,
  GLib2,
  Gdk2,
  Gtk2;

  procedure Critical(log_domain: Pgchar; log_level: TGLogLevelFlags; TheMessage: Pgchar; user_data: gpointer); cdecl;
  begin
    WriteLn('Kritischer Fehler: ', TheMessage);
    WriteLn('LogLevel: ', log_level);
    WriteLn(PtrInt(user_data));
  end;

  procedure Message(log_domain: Pgchar; log_level: TGLogLevelFlags;    TheMessage: Pgchar; user_data: gpointer); cdecl;
  begin
    WriteLn('Information: ', TheMessage);
    WriteLn('LogLevel: ', log_level);
    WriteLn(PtrInt(user_data));
  end;

  procedure PrintFunc(_string: pgchar);
  begin
    WriteLn('Neues "g_print": ',_string);
  end;

  procedure _MyError(log_domain: Pgchar; log_level: TGLogLevelFlags;
    TheMessage: Pgchar; user_data: gpointer); cdecl;
  begin
       WriteLn('ein schwerwiegender Fehler !!');
  end;

  procedure main;
  begin
    g_log_set_handler(G_LOG_DOMAIN, G_LOG_LEVEL_MESSAGE, @Message, Pointer(1234));
    g_log_set_handler(nil, G_LOG_LEVEL_CRITICAL, @Critical, Pointer(1234));
    g_log_set_handler(nil, G_LOG_LEVEL_ERROR, @_MyError, Pointer(1234));


    g_print('Here''s a print'#10);
    g_critical('%sHere''s a critical'#10,['Ich bin eine String']);
    g_message('Here''s a message'#10);
    g_warning('Here''s a warning'#10);
//    g_error('Here''s an error'#10);

    g_set_print_handler(@PrintFunc);
    g_print('Here''s a print'#10);

    WriteLn('dsfdsfdsfdsfdfsfdsfdfsdfdfsdfsdfsdfds');
  end;

begin
  SetExceptionMask([exDenormalized, exInvalidOp, exOverflow, exPrecision, exUnderflow, exZeroDivide]);
  main;
end.
