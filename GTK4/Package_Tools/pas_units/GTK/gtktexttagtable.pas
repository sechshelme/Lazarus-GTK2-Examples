unit gtktexttagtable;

interface

uses
  glib2, common_GTK, gtktexttag;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  TGtkTextTagTableForeach = procedure(tag: PGtkTextTag; Data: Tgpointer); cdecl;

function gtk_text_tag_table_get_type: TGType; cdecl; external gtklib;
function gtk_text_tag_table_new: PGtkTextTagTable; cdecl; external gtklib;
function gtk_text_tag_table_add(table: PGtkTextTagTable; tag: PGtkTextTag): Tgboolean; cdecl; external gtklib;
procedure gtk_text_tag_table_remove(table: PGtkTextTagTable; tag: PGtkTextTag); cdecl; external gtklib;
function gtk_text_tag_table_lookup(table: PGtkTextTagTable; Name: PChar): PGtkTextTag; cdecl; external gtklib;
procedure gtk_text_tag_table_foreach(table: PGtkTextTagTable; func: TGtkTextTagTableForeach; Data: Tgpointer); cdecl; external gtklib;
function gtk_text_tag_table_get_size(table: PGtkTextTagTable): longint; cdecl; external gtklib;

// === Konventiert am: 19-7-24 19:56:13 ===

function GTK_TYPE_TEXT_TAG_TABLE: TGType;
function GTK_TEXT_TAG_TABLE(obj: Pointer): PGtkTextTagTable;
function GTK_IS_TEXT_TAG_TABLE(obj: Pointer): Tgboolean;

implementation

function GTK_TYPE_TEXT_TAG_TABLE: TGType;
begin
  GTK_TYPE_TEXT_TAG_TABLE := gtk_text_tag_table_get_type;
end;

function GTK_TEXT_TAG_TABLE(obj: Pointer): PGtkTextTagTable;
begin
  Result := PGtkTextTagTable(g_type_check_instance_cast(obj, GTK_TYPE_TEXT_TAG_TABLE));
end;

function GTK_IS_TEXT_TAG_TABLE(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_TEXT_TAG_TABLE);
end;



end.
