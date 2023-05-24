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
    Result := a - b;
  end;

  procedure PrintNames(Data, userdata: gpointer; key: gconstpointer); cdecl;
  var
    message: PtrInt;
  begin
    message := PtrInt(Data);
    g_print('%d position is ...'#10, message);
  end;

  procedure main;
  var
    list: PGSList = nil;
    node: PGSList;
    i: integer;
  begin
    Randomize;
    for i := 0 to 7 do begin
      list := g_slist_insert_sorted(list, Pointer(Random(1000)), @CompareName);
    end;
    g_slist_insert_sorted(list, Pointer(55), @CompareName);
    for i := 0 to 7 do begin
      list := g_slist_insert_sorted(list, Pointer(Random(1000)), @CompareName);
    end;

    node := g_slist_find(list, Pointer(55));
    if node <> nil then begin
      g_print('found..'#10);
    end else begin
      g_print('not found..'#10);
    end;

    g_slist_foreach(list, @PrintNames, list);
  end;

begin
  SetExceptionMask([exDenormalized, exInvalidOp, exOverflow, exPrecision, exUnderflow, exZeroDivide]);
  main;
end.
