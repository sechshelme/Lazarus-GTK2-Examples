unit gtkstringlist;

interface

uses
  glib2, common_GTK;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}


{G_DECLARE_FINAL_TYPE (GtkStringObject, gtk_string_object, GTK, STRING_OBJECT, GObject) }
type
  TGtkStringObject = record
  end;
  PGtkStringObject = ^TGtkStringObject;

  TGtkStringObjectClass = record
    parent_class: TGObjectClass;
  end;
  PGtkStringObjectClass = ^TGtkStringObjectClass;

function gtk_string_object_get_type: TGType; cdecl; external gtklib;
function gtk_string_object_new(_string: PChar): PGtkStringObject; cdecl; external gtklib;
function gtk_string_object_get_string(self: PGtkStringObject): PChar; cdecl; external gtklib;

{G_DECLARE_FINAL_TYPE (GtkStringList, gtk_string_list, GTK, STRING_LIST, GObject) }
type
  TGtkStringList = record
  end;
  PGtkStringList = ^TGtkStringList;

  TGtkStringListClass = record
    parent_class: TGObjectClass;
  end;
  PGtkStringListClass = ^TGtkStringListClass;

function gtk_string_list_get_type: TGType; cdecl; external gtklib;
function gtk_string_list_new(strings: PPchar): PGtkStringList; cdecl; external gtklib;
procedure gtk_string_list_append(self: PGtkStringList; _string: PChar); cdecl; external gtklib;
procedure gtk_string_list_take(self: PGtkStringList; _string: PChar); cdecl; external gtklib;
procedure gtk_string_list_remove(self: PGtkStringList; position: Tguint); cdecl; external gtklib;
procedure gtk_string_list_splice(self: PGtkStringList; position: Tguint; n_removals: Tguint; additions: PPchar); cdecl; external gtklib;
function gtk_string_list_get_string(self: PGtkStringList; position: Tguint): PChar; cdecl; external gtklib;

// === Konventiert am: 27-7-24 17:43:36 ===

function GTK_TYPE_STRING_OBJECT: TGType;
function GTK_STRING_OBJECT(obj: Pointer): PGtkStringObject;
function GTK_IS_STRING_OBJECT(obj: Pointer): Tgboolean;

function GTK_TYPE_STRING_LIST: TGType;
function GTK_STRING_LIST(obj: Pointer): PGtkStringList;
function GTK_IS_STRING_LIST(obj: Pointer): Tgboolean;


implementation

function GTK_TYPE_STRING_OBJECT: TGType;
begin
  Result := gtk_string_object_get_type;
end;

function GTK_STRING_OBJECT(obj: Pointer): PGtkStringObject;
begin
  Result := PGtkStringObject(g_type_check_instance_cast(obj, GTK_TYPE_STRING_OBJECT));
end;

function GTK_IS_STRING_OBJECT(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_STRING_OBJECT);
end;

// ====

function GTK_TYPE_STRING_LIST: TGType;
begin
  Result := gtk_string_list_get_type;
end;

function GTK_STRING_LIST(obj: Pointer): PGtkStringList;
begin
  Result := PGtkStringList(g_type_check_instance_cast(obj, GTK_TYPE_STRING_LIST));
end;

function GTK_IS_STRING_LIST(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_STRING_LIST);
end;



end.
