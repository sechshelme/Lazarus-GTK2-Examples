unit gtktextbuffer;

interface

uses
  glib2, GDK4, common_GTK, gtktexttag, gtktextiter, gtktextchild, gtktextmark;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  // Ausgelagert nach gtkTextiter wegen gtkTextiter
  //TGtkTextBufferPrivate = record // _GtkTextBufferPrivate
  //end;
  //PGtkTextBufferPrivate = ^TGtkTextBufferPrivate;
  //
  //PGtkTextBuffer = ^TGtkTextBuffer;
  //
  //TGtkTextBuffer = record
  //  parent_instance: TGObject;
  //  priv: PGtkTextBufferPrivate;
  //end;

  PGtkTextBufferClass = ^TGtkTextBufferClass;

  TGtkTextBufferClass = record
    parent_class: TGObjectClass;
    insert_text: procedure(buffer: PGtkTextBuffer; pos: PGtkTextIter; new_text: PChar; new_text_length: longint); cdecl;
    insert_paintable: procedure(buffer: PGtkTextBuffer; iter: PGtkTextIter; paintable: PGdkPaintable); cdecl;
    insert_child_anchor: procedure(buffer: PGtkTextBuffer; iter: PGtkTextIter; anchor: PGtkTextChildAnchor); cdecl;
    delete_range: procedure(buffer: PGtkTextBuffer; start: PGtkTextIter; _end: PGtkTextIter); cdecl;
    changed: procedure(buffer: PGtkTextBuffer); cdecl;
    modified_changed: procedure(buffer: PGtkTextBuffer); cdecl;
    mark_set: procedure(buffer: PGtkTextBuffer; location: PGtkTextIter; mark: PGtkTextMark); cdecl;
    mark_deleted: procedure(buffer: PGtkTextBuffer; mark: PGtkTextMark); cdecl;
    apply_tag: procedure(buffer: PGtkTextBuffer; tag: PGtkTextTag; start: PGtkTextIter; _end: PGtkTextIter); cdecl;
    remove_tag: procedure(buffer: PGtkTextBuffer; tag: PGtkTextTag; start: PGtkTextIter; _end: PGtkTextIter); cdecl;
    begin_user_action: procedure(buffer: PGtkTextBuffer); cdecl;
    end_user_action: procedure(buffer: PGtkTextBuffer); cdecl;
    paste_done: procedure(buffer: PGtkTextBuffer; clipboard: PGdkClipboard); cdecl;
    undo: procedure(buffer: PGtkTextBuffer); cdecl;
    redo: procedure(buffer: PGtkTextBuffer); cdecl;
    _gtk_reserved1: procedure; cdecl;
    _gtk_reserved2: procedure; cdecl;
    _gtk_reserved3: procedure; cdecl;
    _gtk_reserved4: procedure; cdecl;
  end;


function gtk_text_buffer_get_type: TGType; cdecl; external gtklib;
function gtk_text_buffer_new(table: PGtkTextTagTable): PGtkTextBuffer; cdecl; external gtklib;
function gtk_text_buffer_get_line_count(buffer: PGtkTextBuffer): longint; cdecl; external gtklib;
function gtk_text_buffer_get_char_count(buffer: PGtkTextBuffer): longint; cdecl; external gtklib;
function gtk_text_buffer_get_tag_table(buffer: PGtkTextBuffer): PGtkTextTagTable; cdecl; external gtklib;
procedure gtk_text_buffer_set_text(buffer: PGtkTextBuffer; Text: PChar; len: longint); cdecl; external gtklib;
procedure gtk_text_buffer_insert(buffer: PGtkTextBuffer; iter: PGtkTextIter; Text: PChar; len: longint); cdecl; external gtklib;
procedure gtk_text_buffer_insert_at_cursor(buffer: PGtkTextBuffer; Text: PChar; len: longint); cdecl; external gtklib;
function gtk_text_buffer_insert_interactive(buffer: PGtkTextBuffer; iter: PGtkTextIter; Text: PChar; len: longint; default_editable: Tgboolean): Tgboolean; cdecl; external gtklib;
function gtk_text_buffer_insert_interactive_at_cursor(buffer: PGtkTextBuffer; Text: PChar; len: longint; default_editable: Tgboolean): Tgboolean; cdecl; external gtklib;
procedure gtk_text_buffer_insert_range(buffer: PGtkTextBuffer; iter: PGtkTextIter; start: PGtkTextIter; _end: PGtkTextIter); cdecl; external gtklib;
function gtk_text_buffer_insert_range_interactive(buffer: PGtkTextBuffer; iter: PGtkTextIter; start: PGtkTextIter; _end: PGtkTextIter; default_editable: Tgboolean): Tgboolean; cdecl; external gtklib;
procedure gtk_text_buffer_insert_with_tags(buffer: PGtkTextBuffer; iter: PGtkTextIter; Text: PChar; len: longint; first_tag: PGtkTextTag;
  args: array of const); cdecl; external gtklib;
procedure gtk_text_buffer_insert_with_tags(buffer: PGtkTextBuffer; iter: PGtkTextIter; Text: PChar; len: longint; first_tag: PGtkTextTag); cdecl; external gtklib;
procedure gtk_text_buffer_insert_with_tags_by_name(buffer: PGtkTextBuffer; iter: PGtkTextIter; Text: PChar; len: longint; first_tag_name: PChar;
  args: array of const); cdecl; external gtklib;
procedure gtk_text_buffer_insert_with_tags_by_name(buffer: PGtkTextBuffer; iter: PGtkTextIter; Text: PChar; len: longint; first_tag_name: PChar); cdecl; external gtklib;
procedure gtk_text_buffer_insert_markup(buffer: PGtkTextBuffer; iter: PGtkTextIter; markup: PChar; len: longint); cdecl; external gtklib;
procedure gtk_text_buffer_delete(buffer: PGtkTextBuffer; start: PGtkTextIter; _end: PGtkTextIter); cdecl; external gtklib;
function gtk_text_buffer_delete_interactive(buffer: PGtkTextBuffer; start_iter: PGtkTextIter; end_iter: PGtkTextIter; default_editable: Tgboolean): Tgboolean; cdecl; external gtklib;
function gtk_text_buffer_backspace(buffer: PGtkTextBuffer; iter: PGtkTextIter; interactive: Tgboolean; default_editable: Tgboolean): Tgboolean; cdecl; external gtklib;
function gtk_text_buffer_get_text(buffer: PGtkTextBuffer; start: PGtkTextIter; _end: PGtkTextIter; include_hidden_chars: Tgboolean): PChar; cdecl; external gtklib;
function gtk_text_buffer_get_slice(buffer: PGtkTextBuffer; start: PGtkTextIter; _end: PGtkTextIter; include_hidden_chars: Tgboolean): PChar; cdecl; external gtklib;
procedure gtk_text_buffer_insert_paintable(buffer: PGtkTextBuffer; iter: PGtkTextIter; paintable: PGdkPaintable); cdecl; external gtklib;
procedure gtk_text_buffer_insert_child_anchor(buffer: PGtkTextBuffer; iter: PGtkTextIter; anchor: PGtkTextChildAnchor); cdecl; external gtklib;
function gtk_text_buffer_create_child_anchor(buffer: PGtkTextBuffer; iter: PGtkTextIter): PGtkTextChildAnchor; cdecl; external gtklib;
procedure gtk_text_buffer_add_mark(buffer: PGtkTextBuffer; mark: PGtkTextMark; where: PGtkTextIter); cdecl; external gtklib;
function gtk_text_buffer_create_mark(buffer: PGtkTextBuffer; mark_name: PChar; where: PGtkTextIter; left_gravity: Tgboolean): PGtkTextMark; cdecl; external gtklib;
procedure gtk_text_buffer_move_mark(buffer: PGtkTextBuffer; mark: PGtkTextMark; where: PGtkTextIter); cdecl; external gtklib;
procedure gtk_text_buffer_delete_mark(buffer: PGtkTextBuffer; mark: PGtkTextMark); cdecl; external gtklib;
function gtk_text_buffer_get_mark(buffer: PGtkTextBuffer; Name: PChar): PGtkTextMark; cdecl; external gtklib;
procedure gtk_text_buffer_move_mark_by_name(buffer: PGtkTextBuffer; Name: PChar; where: PGtkTextIter); cdecl; external gtklib;
procedure gtk_text_buffer_delete_mark_by_name(buffer: PGtkTextBuffer; Name: PChar); cdecl; external gtklib;
function gtk_text_buffer_get_insert(buffer: PGtkTextBuffer): PGtkTextMark; cdecl; external gtklib;
function gtk_text_buffer_get_selection_bound(buffer: PGtkTextBuffer): PGtkTextMark; cdecl; external gtklib;
procedure gtk_text_buffer_place_cursor(buffer: PGtkTextBuffer; where: PGtkTextIter); cdecl; external gtklib;
procedure gtk_text_buffer_select_range(buffer: PGtkTextBuffer; ins: PGtkTextIter; bound: PGtkTextIter); cdecl; external gtklib;
procedure gtk_text_buffer_apply_tag(buffer: PGtkTextBuffer; tag: PGtkTextTag; start: PGtkTextIter; _end: PGtkTextIter); cdecl; external gtklib;
procedure gtk_text_buffer_remove_tag(buffer: PGtkTextBuffer; tag: PGtkTextTag; start: PGtkTextIter; _end: PGtkTextIter); cdecl; external gtklib;
procedure gtk_text_buffer_apply_tag_by_name(buffer: PGtkTextBuffer; Name: PChar; start: PGtkTextIter; _end: PGtkTextIter); cdecl; external gtklib;
procedure gtk_text_buffer_remove_tag_by_name(buffer: PGtkTextBuffer; Name: PChar; start: PGtkTextIter; _end: PGtkTextIter); cdecl; external gtklib;
procedure gtk_text_buffer_remove_all_tags(buffer: PGtkTextBuffer; start: PGtkTextIter; _end: PGtkTextIter); cdecl; external gtklib;
function gtk_text_buffer_create_tag(buffer: PGtkTextBuffer; tag_name: PChar; first_property_name: PChar; args: array of const): PGtkTextTag; cdecl; external gtklib;
function gtk_text_buffer_create_tag(buffer: PGtkTextBuffer; tag_name: PChar; first_property_name: PChar): PGtkTextTag; cdecl; external gtklib;
function gtk_text_buffer_get_iter_at_line_offset(buffer: PGtkTextBuffer; iter: PGtkTextIter; line_number: longint; char_offset: longint): Tgboolean; cdecl; external gtklib;
function gtk_text_buffer_get_iter_at_line_index(buffer: PGtkTextBuffer; iter: PGtkTextIter; line_number: longint; byte_index: longint): Tgboolean; cdecl; external gtklib;
procedure gtk_text_buffer_get_iter_at_offset(buffer: PGtkTextBuffer; iter: PGtkTextIter; char_offset: longint); cdecl; external gtklib;
function gtk_text_buffer_get_iter_at_line(buffer: PGtkTextBuffer; iter: PGtkTextIter; line_number: longint): Tgboolean; cdecl; external gtklib;
procedure gtk_text_buffer_get_start_iter(buffer: PGtkTextBuffer; iter: PGtkTextIter); cdecl; external gtklib;
procedure gtk_text_buffer_get_end_iter(buffer: PGtkTextBuffer; iter: PGtkTextIter); cdecl; external gtklib;
procedure gtk_text_buffer_get_bounds(buffer: PGtkTextBuffer; start: PGtkTextIter; _end: PGtkTextIter); cdecl; external gtklib;
procedure gtk_text_buffer_get_iter_at_mark(buffer: PGtkTextBuffer; iter: PGtkTextIter; mark: PGtkTextMark); cdecl; external gtklib;
procedure gtk_text_buffer_get_iter_at_child_anchor(buffer: PGtkTextBuffer; iter: PGtkTextIter; anchor: PGtkTextChildAnchor); cdecl; external gtklib;
function gtk_text_buffer_get_modified(buffer: PGtkTextBuffer): Tgboolean; cdecl; external gtklib;
procedure gtk_text_buffer_set_modified(buffer: PGtkTextBuffer; setting: Tgboolean); cdecl; external gtklib;
function gtk_text_buffer_get_has_selection(buffer: PGtkTextBuffer): Tgboolean; cdecl; external gtklib;
procedure gtk_text_buffer_add_selection_clipboard(buffer: PGtkTextBuffer; clipboard: PGdkClipboard); cdecl; external gtklib;
procedure gtk_text_buffer_remove_selection_clipboard(buffer: PGtkTextBuffer; clipboard: PGdkClipboard); cdecl; external gtklib;
procedure gtk_text_buffer_cut_clipboard(buffer: PGtkTextBuffer; clipboard: PGdkClipboard; default_editable: Tgboolean); cdecl; external gtklib;
procedure gtk_text_buffer_copy_clipboard(buffer: PGtkTextBuffer; clipboard: PGdkClipboard); cdecl; external gtklib;
procedure gtk_text_buffer_paste_clipboard(buffer: PGtkTextBuffer; clipboard: PGdkClipboard; override_location: PGtkTextIter; default_editable: Tgboolean); cdecl; external gtklib;
function gtk_text_buffer_get_selection_bounds(buffer: PGtkTextBuffer; start: PGtkTextIter; _end: PGtkTextIter): Tgboolean; cdecl; external gtklib;
function gtk_text_buffer_delete_selection(buffer: PGtkTextBuffer; interactive: Tgboolean; default_editable: Tgboolean): Tgboolean; cdecl; external gtklib;
function gtk_text_buffer_get_selection_content(buffer: PGtkTextBuffer): PGdkContentProvider; cdecl; external gtklib;
function gtk_text_buffer_get_can_undo(buffer: PGtkTextBuffer): Tgboolean; cdecl; external gtklib;
function gtk_text_buffer_get_can_redo(buffer: PGtkTextBuffer): Tgboolean; cdecl; external gtklib;
function gtk_text_buffer_get_enable_undo(buffer: PGtkTextBuffer): Tgboolean; cdecl; external gtklib;
procedure gtk_text_buffer_set_enable_undo(buffer: PGtkTextBuffer; enable_undo: Tgboolean); cdecl; external gtklib;
function gtk_text_buffer_get_max_undo_levels(buffer: PGtkTextBuffer): Tguint; cdecl; external gtklib;
procedure gtk_text_buffer_set_max_undo_levels(buffer: PGtkTextBuffer; max_undo_levels: Tguint); cdecl; external gtklib;
procedure gtk_text_buffer_undo(buffer: PGtkTextBuffer); cdecl; external gtklib;
procedure gtk_text_buffer_redo(buffer: PGtkTextBuffer); cdecl; external gtklib;
procedure gtk_text_buffer_begin_irreversible_action(buffer: PGtkTextBuffer); cdecl; external gtklib;
procedure gtk_text_buffer_end_irreversible_action(buffer: PGtkTextBuffer); cdecl; external gtklib;
procedure gtk_text_buffer_begin_user_action(buffer: PGtkTextBuffer); cdecl; external gtklib;
procedure gtk_text_buffer_end_user_action(buffer: PGtkTextBuffer); cdecl; external gtklib;

// === Konventiert am: 19-7-24 19:24:39 ===

function GTK_TYPE_TEXT_BUFFER: TGType;
function GTK_TEXT_BUFFER(obj: Pointer): PGtkTextBuffer;
function GTK_TEXT_BUFFER_CLASS(klass: Pointer): PGtkTextBufferClass;
function GTK_IS_TEXT_BUFFER(obj: Pointer): Tgboolean;
function GTK_IS_TEXT_BUFFER_CLASS(klass: Pointer): Tgboolean;
function GTK_TEXT_BUFFER_GET_CLASS(obj: Pointer): PGtkTextBufferClass;

implementation

function GTK_TYPE_TEXT_BUFFER: TGType;
begin
  GTK_TYPE_TEXT_BUFFER := gtk_text_buffer_get_type;
end;

function GTK_TEXT_BUFFER(obj: Pointer): PGtkTextBuffer;
begin
  Result := PGtkTextBuffer(g_type_check_instance_cast(obj, GTK_TYPE_TEXT_BUFFER));
end;

function GTK_TEXT_BUFFER_CLASS(klass: Pointer): PGtkTextBufferClass;
begin
  Result := PGtkTextBufferClass(g_type_check_class_cast(klass, GTK_TYPE_TEXT_BUFFER));
end;

function GTK_IS_TEXT_BUFFER(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_TEXT_BUFFER);
end;

function GTK_IS_TEXT_BUFFER_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_TEXT_BUFFER);
end;

function GTK_TEXT_BUFFER_GET_CLASS(obj: Pointer): PGtkTextBufferClass;
begin
  Result := PGtkTextBufferClass(PGTypeInstance(obj)^.g_class);
end;



end.
