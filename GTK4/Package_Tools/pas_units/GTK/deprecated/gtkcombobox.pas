unit gtkcombobox;

interface

uses
  glib2, common_GTK, GDK4, gtkenums, gtkwidget, gtktypes, gtktreemodel, gtktreeview;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  PGtkComboBox = ^TGtkComboBox;

  TGtkComboBox = record
    parent_instance: TGtkWidget;
  end;

  PGtkComboBoxClass = ^TGtkComboBoxClass;

  TGtkComboBoxClass = record
    parent_class: TGtkWidgetClass;
    changed: procedure(combo_box: PGtkComboBox); cdecl;
    format_entry_text: function(combo_box: PGtkComboBox; path: PChar): PChar; cdecl;
    activate: procedure(combo_box: PGtkComboBox); cdecl;
    padding: array[0..6] of Tgpointer;
  end;

function gtk_combo_box_get_type: TGType; cdecl; external gtklib;
function gtk_combo_box_new: PGtkWidget; cdecl; external gtklib;
function gtk_combo_box_new_with_entry: PGtkWidget; cdecl; external gtklib;
function gtk_combo_box_new_with_model(model: PGtkTreeModel): PGtkWidget; cdecl; external gtklib;
function gtk_combo_box_new_with_model_and_entry(model: PGtkTreeModel): PGtkWidget; cdecl; external gtklib;
function gtk_combo_box_get_active(combo_box: PGtkComboBox): longint; cdecl; external gtklib;
procedure gtk_combo_box_set_active(combo_box: PGtkComboBox; index_: longint); cdecl; external gtklib;
function gtk_combo_box_get_active_iter(combo_box: PGtkComboBox; iter: PGtkTreeIter): Tgboolean; cdecl; external gtklib;
procedure gtk_combo_box_set_active_iter(combo_box: PGtkComboBox; iter: PGtkTreeIter); cdecl; external gtklib;
procedure gtk_combo_box_set_model(combo_box: PGtkComboBox; model: PGtkTreeModel); cdecl; external gtklib;
function gtk_combo_box_get_model(combo_box: PGtkComboBox): PGtkTreeModel; cdecl; external gtklib;
function gtk_combo_box_get_row_separator_func(combo_box: PGtkComboBox): TGtkTreeViewRowSeparatorFunc; cdecl; external gtklib;
procedure gtk_combo_box_set_row_separator_func(combo_box: PGtkComboBox; func: TGtkTreeViewRowSeparatorFunc; Data: Tgpointer; Destroy: TGDestroyNotify); cdecl; external gtklib;
procedure gtk_combo_box_set_button_sensitivity(combo_box: PGtkComboBox; sensitivity: TGtkSensitivityType); cdecl; external gtklib;
function gtk_combo_box_get_button_sensitivity(combo_box: PGtkComboBox): TGtkSensitivityType; cdecl; external gtklib;
function gtk_combo_box_get_has_entry(combo_box: PGtkComboBox): Tgboolean; cdecl; external gtklib;
procedure gtk_combo_box_set_entry_text_column(combo_box: PGtkComboBox; text_column: longint); cdecl; external gtklib;
function gtk_combo_box_get_entry_text_column(combo_box: PGtkComboBox): longint; cdecl; external gtklib;
procedure gtk_combo_box_set_popup_fixed_width(combo_box: PGtkComboBox; fixed: Tgboolean); cdecl; external gtklib;
function gtk_combo_box_get_popup_fixed_width(combo_box: PGtkComboBox): Tgboolean; cdecl; external gtklib;
procedure gtk_combo_box_popup(combo_box: PGtkComboBox); cdecl; external gtklib;
procedure gtk_combo_box_popup_for_device(combo_box: PGtkComboBox; device: PGdkDevice); cdecl; external gtklib;
procedure gtk_combo_box_popdown(combo_box: PGtkComboBox); cdecl; external gtklib;
function gtk_combo_box_get_id_column(combo_box: PGtkComboBox): longint; cdecl; external gtklib;
procedure gtk_combo_box_set_id_column(combo_box: PGtkComboBox; id_column: longint); cdecl; external gtklib;
function gtk_combo_box_get_active_id(combo_box: PGtkComboBox): PChar; cdecl; external gtklib;
function gtk_combo_box_set_active_id(combo_box: PGtkComboBox; active_id: PChar): Tgboolean; cdecl; external gtklib;
procedure gtk_combo_box_set_child(combo_box: PGtkComboBox; child: PGtkWidget); cdecl; external gtklib;
function gtk_combo_box_get_child(combo_box: PGtkComboBox): PGtkWidget; cdecl; external gtklib;

// === Konventiert am: 29-7-24 15:11:57 ===

function GTK_TYPE_COMBO_BOX: TGType;
function GTK_COMBO_BOX(obj: Pointer): PGtkComboBox;
function GTK_COMBO_BOX_CLASS(klass: Pointer): PGtkComboBoxClass;
function GTK_IS_COMBO_BOX(obj: Pointer): Tgboolean;
function GTK_IS_COMBO_BOX_CLASS(klass: Pointer): Tgboolean;
function GTK_COMBO_BOX_GET_CLASS(obj: Pointer): PGtkComboBoxClass;

implementation

function GTK_TYPE_COMBO_BOX: TGType;
begin
  GTK_TYPE_COMBO_BOX := gtk_combo_box_get_type;
end;

function GTK_COMBO_BOX(obj: Pointer): PGtkComboBox;
begin
  Result := PGtkComboBox(g_type_check_instance_cast(obj, GTK_TYPE_COMBO_BOX));
end;

function GTK_COMBO_BOX_CLASS(klass: Pointer): PGtkComboBoxClass;
begin
  Result := PGtkComboBoxClass(g_type_check_class_cast(klass, GTK_TYPE_COMBO_BOX));
end;

function GTK_IS_COMBO_BOX(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_COMBO_BOX);
end;

function GTK_IS_COMBO_BOX_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_COMBO_BOX);
end;

function GTK_COMBO_BOX_GET_CLASS(obj: Pointer): PGtkComboBoxClass;
begin
  Result := PGtkComboBoxClass(PGTypeInstance(obj)^.g_class);
end;



end.
