/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}


type
  // Ausgelagert
  //TGtkWindowGroup = record
  //  parent_instance: TGObject;
  //  priv: PGtkWindowGroupPrivate;
  //end;
  //PGtkWindowGroup = ^TGtkWindowGroup;

  TGtkWindowGroupClass = record
    parent_class: TGObjectClass;
    _gtk_reserved1: procedure; cdecl;
    _gtk_reserved2: procedure; cdecl;
    _gtk_reserved3: procedure; cdecl;
    _gtk_reserved4: procedure; cdecl;
  end;
  PGtkWindowGroupClass = ^TGtkWindowGroupClass;

  //TGtkWindowGroupPrivate = record // _GtkWindowGroupPrivate
  //end;
  //PGtkWindowGroupPrivate = ^TGtkWindowGroupPrivate;



function gtk_window_group_get_type: TGType; cdecl; external gtklib;
function gtk_window_group_new: PGtkWindowGroup; cdecl; external gtklib;
procedure gtk_window_group_add_window(window_group: PGtkWindowGroup; window: PGtkWindow); cdecl; external gtklib;
procedure gtk_window_group_remove_window(window_group: PGtkWindowGroup; window: PGtkWindow); cdecl; external gtklib;
function gtk_window_group_list_windows(window_group: PGtkWindowGroup): PGList; cdecl; external gtklib;

// === Konventiert am: 19-7-24 17:30:55 ===

function GTK_TYPE_WINDOW_GROUP: TGType;
function GTK_WINDOW_GROUP(obj: Pointer): PGtkWindowGroup;
function GTK_WINDOW_GROUP_CLASS(klass: Pointer): PGtkWindowGroupClass;
function GTK_IS_WINDOW_GROUP(obj: Pointer): Tgboolean;
function GTK_IS_WINDOW_GROUP_CLASS(klass: Pointer): Tgboolean;
function GTK_WINDOW_GROUP_GET_CLASS(obj: Pointer): PGtkWindowGroupClass;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_WINDOW_GROUP: TGType;
begin
  GTK_TYPE_WINDOW_GROUP := gtk_window_group_get_type;
end;

function GTK_WINDOW_GROUP(obj: Pointer): PGtkWindowGroup;
begin
  Result := PGtkWindowGroup(g_type_check_instance_cast(obj, GTK_TYPE_WINDOW_GROUP));
end;

function GTK_WINDOW_GROUP_CLASS(klass: Pointer): PGtkWindowGroupClass;
begin
  Result := PGtkWindowGroupClass(g_type_check_class_cast(klass, GTK_TYPE_WINDOW_GROUP));
end;

function GTK_IS_WINDOW_GROUP(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_WINDOW_GROUP);
end;

function GTK_IS_WINDOW_GROUP_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_WINDOW_GROUP);
end;

function GTK_WINDOW_GROUP_GET_CLASS(obj: Pointer): PGtkWindowGroupClass;
begin
  Result := PGtkWindowGroupClass(PGTypeInstance(obj)^.g_class);
end;



{$ENDIF read_implementation}
