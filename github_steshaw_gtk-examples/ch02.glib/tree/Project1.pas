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
    Result := strcomp(PChar(a), PChar(b));
  end;

  function TraverseTree(key: gpointer; Value: gpointer; Data: gpointer): gboolean; cdecl;
  var
    sValue, sKey: PChar;
  begin
    sKey := PChar(key);
    sValue := PChar(Value);

    g_print('Key: %s, Value: %s'#10, sKey, sValue);
    Result := False;
  end;

  procedure main;
  var
    tree: PGTree;
  begin
    tree := g_tree_new(@CompareName);

    g_tree_insert(tree, PChar('Fred'), PChar('Loud'));
    g_tree_insert(tree, PChar('Mary'), PChar('Obnoxious'));
    g_tree_insert(tree, PChar('Sue'), PChar('Drunk'));
    g_tree_insert(tree, PChar('John'), PChar('Quiet'));
    g_tree_insert(tree, PChar('Shelley'), PChar('Civil'));
    g_tree_insert(tree, PChar('Mark'), PChar('Strange'));
    g_tree_insert(tree, PChar('Renato'), PChar('Mighty'));

    g_print('Looking up Fred - values %s'#10, Pgchar(g_tree_lookup(tree, PChar('Mary'))));
    g_print('Tree height: %d'#10, g_tree_height(tree));
    g_print('Tree nodes: %d'#10, g_tree_nnodes(tree));
    g_print('Tree: '#10);

    g_tree_traverse(tree, @TraverseTree, G_IN_ORDER, nil);
  end;

begin
  SetExceptionMask([exDenormalized, exInvalidOp, exOverflow, exPrecision, exUnderflow, exZeroDivide]);
  main;
end.
