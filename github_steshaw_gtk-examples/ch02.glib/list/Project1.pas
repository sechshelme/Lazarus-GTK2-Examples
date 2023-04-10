program Project1;

// https://github.com/steshaw/gtk-examples/blob/master/ch04.button.edit.combo/listbox.c

uses
  Math,
  Strings,
  SysUtils,
  GLib2,
  Gdk2,
  Gtk2;

  procedure DisplayList(list: PGSList);
  var
    node: PGSList;
    nIndex: guint;
  begin
    nIndex := 0;
    repeat
      node := g_slist_nth(list, nIndex);

      Inc(nIndex);
      if node <> nil then begin
        g_print('%s'#10, PChar(node^.Data));
      end;

    until node = nil;
  end;

  procedure ListLookup(list: PGSList; szName: PChar);
  var
    item: PGSList;
  begin
    g_print('Looking up: %s ', szName);
    item := g_slist_find(list, szName);
    if item <> nil then begin
      g_print('--Found it--'#10);
    end else begin
      g_print('**no found**'#10);
    end;
  end;

  procedure main;
  var
    szMary: array[0..4] of char = 'Mary'#0;
    list: PGSList = nil;     // --- Empty list. ---

  begin
    // --- Insert items in this order ---
    // --- Fred, Susie, Frank, Wilma  ---
    list := g_slist_append(list, PChar('Fred'));
    list := g_slist_append(list, PChar('Susie'));
    list := g_slist_append(list, PChar('Frank'));
    list := g_slist_append(list, PChar('Wilma'));

    // --- Insert Joe at the front of the list. ---
    list := g_slist_prepend(list, PChar('Joe'));

    // --- Insert Mary after the second position ---
    list := g_slist_insert(list, PChar('Mary'), 2);

    DisplayList(list);

    ListLookup(list, 'Mike');
    ListLookup(list, szMary);
    ListLookup(list, 'Mary');
    ListLookup(list, 'Susan');
    ListLookup(list, 'Tyler');

    g_print('----------------'#10);
    g_print('   Reversing'#10);
    g_print('----------------'#10);

    // --- Reverse the list. ---
    list := g_slist_reverse(list);

    DisplayList(list);

    // --- Free data ---
    g_slist_free(list);
  end;

begin
  SetExceptionMask([exDenormalized, exInvalidOp, exOverflow, exPrecision, exUnderflow, exZeroDivide]);
  main;
end.
