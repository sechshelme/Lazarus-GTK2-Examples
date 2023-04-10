program Project1;

// https://github.com/steshaw/gtk-examples/blob/master/ch04.button.edit.combo/listbox.c

uses
  Strings,
  GLib2;

  function HashFunction(key: gconstpointer): guint; cdecl;
  begin
    Result := guint(pbyte(key)[0] + pbyte(key)[1]);
  end;

  function HashCompare(SName1, sName2: gconstpointer): gboolean; cdecl;
  begin
    Result := strcomp(PChar(SName1), PChar(sName2)) = 0;
  end;

  procedure PrintNames(key, Value, user_data: gpointer); cdecl;
  begin
    g_print('Key: %s, Value: %s'#10, Pgchar(key), Pgchar(Value));
  end;

  procedure main;
  var
    hTable: PGHashTable;
  begin
    hTable := g_hash_table_new(@HashFunction, @HashCompare);

    g_hash_table_insert(hTable, PChar('Fred'), PChar('Boring'));
    g_hash_table_insert(hTable, PChar('Mary'), PChar('Shifty'));
    g_hash_table_insert(hTable, PChar('Sue'), PChar('Nice'));
    g_hash_table_insert(hTable, PChar('John'), PChar('Strange'));
    g_hash_table_insert(hTable, PChar('Shelley'), PChar('Abnormal'));
    g_hash_table_insert(hTable, PChar('Markus'), PChar('Absent minded'));
    g_hash_table_insert(hTable, PChar('Renato'), PChar('Panaoid'));
    g_hash_table_insert(hTable, PChar('Renato'), PChar('Smart'));
    g_hash_table_insert(hTable, PChar('Renato'), PChar('Intelligent'));
    g_hash_table_insert(hTable, PChar('Renato'), PChar('Stubby toes'));
    g_hash_table_insert(hTable, PChar('Markus'), PChar('abc'));

    g_print('Renato is %s'#10, Pgchar(g_hash_table_lookup(hTable, PChar('Renato'))));
    g_print('-----'#10);
    g_hash_table_foreach(hTable, @PrintNames, nil);
  end;

begin
  main;
end.
