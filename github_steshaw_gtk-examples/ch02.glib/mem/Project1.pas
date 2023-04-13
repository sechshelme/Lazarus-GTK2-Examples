program Project1;

// https://github.com/steshaw/gtk-examples/blob/master/ch04.button.edit.combo/listbox.c

uses
  Math,
  Strings,
  SysUtils,
  GLib2,
  Gdk2,
  Gtk2;

  function ComparesNames(a, b: gconstpointer): gint; cdecl;
  begin
    Result:=strcomp(a,b);
  end;

  procedure main;
  var
    tree: PGTree;
    bad_pointer: PChar;
  begin
    tree:=g_tree_new(@ComparesNames);

    g_tree_insert(tree, PChar('Fred'), PChar('Loud'));
    g_tree_insert(tree, PChar('Mary'), PChar('Obnoxious'));
    g_tree_insert(tree, PChar('Sue'), PChar('Drunk'));
    g_tree_insert(tree, PChar('John'), PChar('Quiet'));
    g_tree_insert(tree, PChar('Shelley'), PChar('Civil'));
    g_tree_insert(tree, PChar('Mark'), PChar('Strange'));
    g_tree_insert(tree, PChar('Renato'), PChar('Mighty'));

    g_mem_profile;

    bad_pointer:=g_malloc(100*SizeOf(char));
    bad_pointer[101]:='a';

//    g_free(bad_pointer);
    g_free(bad_pointer);
  end;

begin
  SetExceptionMask([exDenormalized, exInvalidOp, exOverflow, exPrecision, exUnderflow, exZeroDivide]);
  main;
end.
