program project1;

uses
  glib2,
  gdk2,
  gtk2;

  function main(argc: integer; argv: PChar): integer;
  begin
    gtk_init(@argc, @argv);
    WriteLn('GTK+ version: ', gtk_major_version, '.', gtk_minor_version, '.', gtk_micro_version);
    WriteLn('Glib version: ', glib_major_version, '.', glib_major_version, '.', glib_micro_version);

    Result := 0;
  end;

begin
  Halt(main(argc, @argv));
end.
