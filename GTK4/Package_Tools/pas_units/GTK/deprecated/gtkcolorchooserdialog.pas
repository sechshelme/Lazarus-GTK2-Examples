unit gtkcolorchooserdialog;

interface

uses
  glib2, common_GTK, gtkwidget, gtktypes, gtkwindow;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  TGtkColorChooserDialog = record
  end;
  PGtkColorChooserDialog = ^TGtkColorChooserDialog;

function gtk_color_chooser_dialog_get_type: TGType; cdecl; external gtklib;
function gtk_color_chooser_dialog_new(title: PChar; parent: PGtkWindow): PGtkWidget; cdecl; external gtklib;

// === Konventiert am: 29-7-24 19:34:12 ===

function GTK_TYPE_COLOR_CHOOSER_DIALOG: TGType;
function GTK_COLOR_CHOOSER_DIALOG(obj: Pointer): PGtkColorChooserDialog;
function GTK_IS_COLOR_CHOOSER_DIALOG(obj: Pointer): Tgboolean;

implementation

function GTK_TYPE_COLOR_CHOOSER_DIALOG: TGType;
begin
  GTK_TYPE_COLOR_CHOOSER_DIALOG := gtk_color_chooser_dialog_get_type;
end;

function GTK_COLOR_CHOOSER_DIALOG(obj: Pointer): PGtkColorChooserDialog;
begin
  Result := PGtkColorChooserDialog(g_type_check_instance_cast(obj, GTK_TYPE_COLOR_CHOOSER_DIALOG));
end;

function GTK_IS_COLOR_CHOOSER_DIALOG(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_COLOR_CHOOSER_DIALOG);
end;



end.
