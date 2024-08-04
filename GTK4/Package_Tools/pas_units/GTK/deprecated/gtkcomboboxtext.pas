unit gtkcomboboxtext;

interface

uses
  glib2, common_GTK, gtktypes, gtkwidget;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  TGtkComboBoxText = record
  end;
  PGtkComboBoxText = ^TGtkComboBoxText;

function gtk_combo_box_text_get_type: TGType; cdecl; external gtklib;
function gtk_combo_box_text_new: PGtkWidget; cdecl; external gtklib;
function gtk_combo_box_text_new_with_entry: PGtkWidget; cdecl; external gtklib;
procedure gtk_combo_box_text_append_text(combo_box: PGtkComboBoxText; Text: PChar); cdecl; external gtklib;
procedure gtk_combo_box_text_insert_text(combo_box: PGtkComboBoxText; position: longint; Text: PChar); cdecl; external gtklib;
procedure gtk_combo_box_text_prepend_text(combo_box: PGtkComboBoxText; Text: PChar); cdecl; external gtklib;
procedure gtk_combo_box_text_remove(combo_box: PGtkComboBoxText; position: longint); cdecl; external gtklib;
procedure gtk_combo_box_text_remove_all(combo_box: PGtkComboBoxText); cdecl; external gtklib;
function gtk_combo_box_text_get_active_text(combo_box: PGtkComboBoxText): PChar; cdecl; external gtklib;
procedure gtk_combo_box_text_insert(combo_box: PGtkComboBoxText; position: longint; id: PChar; Text: PChar); cdecl; external gtklib;
procedure gtk_combo_box_text_append(combo_box: PGtkComboBoxText; id: PChar; Text: PChar); cdecl; external gtklib;
procedure gtk_combo_box_text_prepend(combo_box: PGtkComboBoxText; id: PChar; Text: PChar); cdecl; external gtklib;

// === Konventiert am: 29-7-24 15:12:09 ===

function GTK_TYPE_COMBO_BOX_TEXT: TGType;
function GTK_COMBO_BOX_TEXT(obj: Pointer): PGtkComboBoxText;
function GTK_IS_COMBO_BOX_TEXT(obj: Pointer): Tgboolean;

implementation

function GTK_TYPE_COMBO_BOX_TEXT: TGType;
begin
  GTK_TYPE_COMBO_BOX_TEXT := gtk_combo_box_text_get_type;
end;

function GTK_COMBO_BOX_TEXT(obj: Pointer): PGtkComboBoxText;
begin
  Result := PGtkComboBoxText(g_type_check_instance_cast(obj, GTK_TYPE_COMBO_BOX_TEXT));
end;

function GTK_IS_COMBO_BOX_TEXT(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_COMBO_BOX_TEXT);
end;



end.
