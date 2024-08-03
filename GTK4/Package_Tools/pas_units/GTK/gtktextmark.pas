unit gtktextmark;

interface

uses
  glib2, common_GTK, gtktextiter;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  TGtkTextMark = record
    parent_instance: TGObject;
    segment: Tgpointer;
  end;
  PGtkTextMark = ^TGtkTextMark;

  TGtkTextMarkClass = record
    parent_class: TGObjectClass;
    padding: array[0..7] of Tgpointer;
  end;
  PGtkTextMarkClass = ^TGtkTextMarkClass;

function gtk_text_mark_get_type: TGType; cdecl; external gtklib;
function gtk_text_mark_new(Name: PChar; left_gravity: Tgboolean): PGtkTextMark; cdecl; external gtklib;
procedure gtk_text_mark_set_visible(mark: PGtkTextMark; setting: Tgboolean); cdecl; external gtklib;
function gtk_text_mark_get_visible(mark: PGtkTextMark): Tgboolean; cdecl; external gtklib;
function gtk_text_mark_get_name(mark: PGtkTextMark): PChar; cdecl; external gtklib;
function gtk_text_mark_get_deleted(mark: PGtkTextMark): Tgboolean; cdecl; external gtklib;
function gtk_text_mark_get_buffer(mark: PGtkTextMark): PGtkTextBuffer; cdecl; external gtklib;
function gtk_text_mark_get_left_gravity(mark: PGtkTextMark): Tgboolean; cdecl; external gtklib;

// === Konventiert am: 19-7-24 19:52:28 ===

function GTK_TYPE_TEXT_MARK: TGType;
function GTK_TEXT_MARK(obj: Pointer): PGtkTextMark;
function GTK_TEXT_MARK_CLASS(klass: Pointer): PGtkTextMarkClass;
function GTK_IS_TEXT_MARK(obj: Pointer): Tgboolean;
function GTK_IS_TEXT_MARK_CLASS(klass: Pointer): Tgboolean;
function GTK_TEXT_MARK_GET_CLASS(obj: Pointer): PGtkTextMarkClass;

implementation

function GTK_TYPE_TEXT_MARK: TGType;
begin
  GTK_TYPE_TEXT_MARK := gtk_text_mark_get_type;
end;

function GTK_TEXT_MARK(obj: Pointer): PGtkTextMark;
begin
  Result := PGtkTextMark(g_type_check_instance_cast(obj, GTK_TYPE_TEXT_MARK));
end;

function GTK_TEXT_MARK_CLASS(klass: Pointer): PGtkTextMarkClass;
begin
  Result := PGtkTextMarkClass(g_type_check_class_cast(klass, GTK_TYPE_TEXT_MARK));
end;

function GTK_IS_TEXT_MARK(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_TEXT_MARK);
end;

function GTK_IS_TEXT_MARK_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_TEXT_MARK);
end;

function GTK_TEXT_MARK_GET_CLASS(obj: Pointer): PGtkTextMarkClass;
begin
  Result := PGtkTextMarkClass(PGTypeInstance(obj)^.g_class);
end;



end.
