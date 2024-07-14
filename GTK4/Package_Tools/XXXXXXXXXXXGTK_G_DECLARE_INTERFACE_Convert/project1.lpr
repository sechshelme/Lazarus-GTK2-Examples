program project1;

uses
  Classes,
  SysUtils;

  // G_DECLARE_INTERFACE (GtkNative, gtk_native, GTK, NATIVE, GtkWidget)

const
  //  inter = '{G_DECLARE_INTERFACE (GtkNative, gtk_native, GTK, NATIVE, GtkWidget) }';
  G_DECLARE_INTERFACE = '{G_DECLARE_INTERFACE (GtkButton, gtk_button, GTK, BUTTON, GtkWidget) }';

var
  sl: TStringList;
  sa: TAnsiStringArray;
  i: integer;

  // 0
  // 1  G_DECLARE_INTERFACE
  // 2
  // 3  GtkNative
  // 4
  // 5  gtk_native
  // 6
  // 7  GTK
  // 8
  // 9  NATIVE
  //10
  //11  GtkWidget


  // 0
  // 1  G_DECLARE_INTERFACE
  // 2
  // 3  GtkButton
  // 4
  // 5  gtk_button
  // 6
  // 7  GTK
  // 8
  // 9  BUTTON
  //10
  //11  GtkWidget

  function Create_InterfaceMacro(const int: string): TStringList;
  begin
    Result := TStringList.Create;
    sa := int.Split([' ', ',', '(', ')', '{', '}']);
    for i := 0 to Length(sa) - 1 do begin
      WriteLn(i: 2, '  ', sa[i]);
    end;
    WriteLn();
    Result.Add('type ');
    Result.Add('  T' + sa[3] + ' = record');
    Result.Add('    parent_instance: T' + sa[11] + ';');
    Result.Add('  end');
    Result.Add('  P' + sa[3] + ' = ^T' + sa[3] + ';');
    Result.Add('');

    Result.Add('  T' + sa[3] + 'Class = record');
    Result.Add('    parent_class: T' + sa[11] + 'Class;');
    Result.Add('  end');
    Result.Add('  P' + sa[3] + 'Class = ^T' + sa[3] + 'Class;');
    Result.Add('');
    Result.Add('');
    Result.Add('');



    Result.Add('function ' + sa[5] + '_get_type: TGType; cdecl; external gtklib;');
    Result.Add('function ' + sa[5] + '_new: P' + sa[11] + '; cdecl; external gtklib;');
    Result.Add('');

    Result.Add('function ' + sa[7] + '_TYPE_' + sa[9] + ': TGType;');
    Result.Add('begin');
    Result.Add('  Result := ' + sa[5] + '_get_type;');
    Result.Add('end;');
    Result.Add('');

    Result.Add('function ' + sa[7] + '_' + sa[9] + '(obj: Pointer): P' + sa[3] + ';');
    Result.Add('begin');
    Result.Add('  Result := P' + sa[3] + '(g_type_check_instance_cast(obj, ' + sa[7] + '_TYPE_' + sa[9] + '));');
    Result.Add('end;');
    Result.Add('');

    Result.Add('function ' + sa[7] + '_' + sa[9] + '_CLASS(klass: Pointer): P' + sa[3] + 'Class;');
    Result.Add('begin');
    Result.Add('  Result := P' + sa[3] + 'Class(g_type_check_class_cast(klass, ' + sa[7] + '_TYPE_' + sa[9] + '));');
    Result.Add('end;');
    Result.Add('');

    Result.Add('function ' + sa[7] + '_IS_' + sa[9] + '(obj: Pointer): Tgboolean;');
    Result.Add('begin');
    Result.Add('  Result := g_type_check_instance_is_a(obj, ' + sa[7] + '_TYPE_' + sa[9] + ');');
    Result.Add('end;');
    Result.Add('');

    Result.Add('function ' + sa[7] + '_IS_' + sa[9] + '_CLASS(klass: Pointer): Tgboolean;');
    Result.Add('begin');
    Result.Add('  Result := g_type_check_class_is_a(klass, ' + sa[7] + '_TYPE_' + sa[9] + ');');
    Result.Add('end;');
    Result.Add('');

    Result.Add('function ' + sa[7] + '_' + sa[9] + '_GET_CLASS(obj: Pointer): P' + sa[3] + 'Class;');
    Result.Add('begin');
    Result.Add('  Result := P' + sa[3] + 'Class(PGTypeInstance(obj)^.g_class);');
    Result.Add('end;');
    Result.Add('');
  end;

begin
  sl := Create_InterfaceMacro(G_DECLARE_INTERFACE);

  WriteLn(sl.Text);
  sl.Free;
end.
