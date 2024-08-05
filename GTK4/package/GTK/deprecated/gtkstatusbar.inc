/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}


type
  TGtkStatusbar = record
  end;
  PGtkStatusbar = ^TGtkStatusbar;

function gtk_statusbar_get_type: TGType; cdecl; external gtklib;
function gtk_statusbar_new: PGtkWidget; cdecl; external gtklib;
function gtk_statusbar_get_context_id(statusbar: PGtkStatusbar; context_description: PChar): Tguint; cdecl; external gtklib;
function gtk_statusbar_push(statusbar: PGtkStatusbar; context_id: Tguint; Text: PChar): Tguint; cdecl; external gtklib;
procedure gtk_statusbar_pop(statusbar: PGtkStatusbar; context_id: Tguint); cdecl; external gtklib;
procedure gtk_statusbar_remove(statusbar: PGtkStatusbar; context_id: Tguint; message_id: Tguint); cdecl; external gtklib;
procedure gtk_statusbar_remove_all(statusbar: PGtkStatusbar; context_id: Tguint); cdecl; external gtklib;

// === Konventiert am: 30-7-24 16:18:03 ===

function GTK_TYPE_STATUSBAR: TGType;
function GTK_STATUSBAR(obj: Pointer): PGtkStatusbar;
function GTK_IS_STATUSBAR(obj: Pointer): Tgboolean;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_STATUSBAR: TGType;
begin
  GTK_TYPE_STATUSBAR := gtk_statusbar_get_type;
end;

function GTK_STATUSBAR(obj: Pointer): PGtkStatusbar;
begin
  Result := PGtkStatusbar(g_type_check_instance_cast(obj, GTK_TYPE_STATUSBAR));
end;

function GTK_IS_STATUSBAR(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_STATUSBAR);
end;



{$ENDIF read_implementation}
