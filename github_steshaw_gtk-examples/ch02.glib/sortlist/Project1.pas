program Project1;

// https://github.com/steshaw/gtk-examples/blob/master/ch04.button.edit.combo/listbox.c

uses
  Math,
  Strings,
  SysUtils,
  GLib2,
  Gdk2,
  Gtk2;

  function CompareName(a, b: gconstpointer): gint; cdecl;
  begin
    Result:=strcomp(PChar(a), PChar(b));
  end;

  procedure PrintNames(data, userdata: gpointer; key: gconstpointer); cdecl;
  var
    message: Pgchar;
  begin
       message:=Pgchar(data);
       g_print('%s position is ...'#10,message);
  end;

  procedure main;
  var
    list: PGSList=nil;
    buffer:PChar=nil;
    node: PGSList;
  begin
    list:=g_slist_insert_sorted(list,PChar('Fred'), @CompareName);
    list:=g_slist_insert_sorted(list,PChar('Joe'), @CompareName);
    list:=g_slist_insert_sorted(list,PChar('Susie'), @CompareName);
    list:=g_slist_insert_sorted(list,PChar('Frank'), @CompareName);
    list:=g_slist_insert_sorted(list,PChar('Wilma'), @CompareName);
    list:=g_slist_insert_sorted(list,PChar('Mary'), @CompareName);

    Getmem(buffer,80);
    strcopy(buffer, 'Wilma');
    WriteLn(buffer);
    node:=g_slist_find(list, buffer);
    if node <>nil then g_print('found..'#10 )else g_print('not found..'#10 );


    g_slist_foreach(list, @PrintNames, list);
  end;

begin
  SetExceptionMask([exDenormalized, exInvalidOp, exOverflow, exPrecision, exUnderflow, exZeroDivide]);
  main;
end.
