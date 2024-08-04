unit gtkeditablelabel;

interface

uses
  glib2, common_GTK, gtktypes, gtkwidget;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}


  {G_DECLARE_FINAL_TYPE (GtkEditableLabel, gtk_editable_label, GTK, EDITABLE_LABEL, GtkWidget) }
type
  TGtkEditableLabel = record
  end;
  PGtkEditableLabel = ^TGtkEditableLabel;

  TGtkEditableLabelClass = record
    parent_class: TGtkWidgetClass;
  end;
  PGtkEditableLabelClass = ^TGtkEditableLabelClass;

function gtk_editable_label_get_type: TGType; cdecl; external gtklib;
function gtk_editable_label_new(str: PChar): PGtkWidget; cdecl; external gtklib;
function gtk_editable_label_get_editing(self: PGtkEditableLabel): Tgboolean; cdecl; external gtklib;
procedure gtk_editable_label_start_editing(self: PGtkEditableLabel); cdecl; external gtklib;
procedure gtk_editable_label_stop_editing(self: PGtkEditableLabel; commit: Tgboolean); cdecl; external gtklib;

// === Konventiert am: 24-7-24 19:55:13 ===

function GTK_TYPE_EDITABLE_LABEL: TGType;
function GTK_EDITABLE_LABEL(obj: Pointer): PGtkEditableLabel;
function GTK_IS_EDITABLE_LABEL(obj: Pointer): Tgboolean;

implementation

function GTK_TYPE_EDITABLE_LABEL: TGType;
begin
  Result := gtk_editable_label_get_type;
end;

function GTK_EDITABLE_LABEL(obj: Pointer): PGtkEditableLabel;
begin
  Result := PGtkEditableLabel(g_type_check_instance_cast(obj, GTK_TYPE_EDITABLE_LABEL));
end;

function GTK_IS_EDITABLE_LABEL(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_EDITABLE_LABEL);
end;




end.
