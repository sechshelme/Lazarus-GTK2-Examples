unit gtkfilechooserwidget;

interface

uses
  glib2, common_GTK, gtktypes, gtkwidget, gtkfilechooser;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  TGtkFileChooserWidget = record
  end;
  PGtkFileChooserWidget = ^TGtkFileChooserWidget;

function gtk_file_chooser_widget_get_type: TGType; cdecl; external gtklib;
function gtk_file_chooser_widget_new(action: TGtkFileChooserAction): PGtkWidget; cdecl; external gtklib;

// === Konventiert am: 29-7-24 19:42:52 ===

function GTK_TYPE_FILE_CHOOSER_WIDGET: TGType;
function GTK_FILE_CHOOSER_WIDGET(obj: Pointer): PGtkFileChooserWidget;
function GTK_IS_FILE_CHOOSER_WIDGET(obj: Pointer): Tgboolean;

implementation

function GTK_TYPE_FILE_CHOOSER_WIDGET: TGType;
begin
  GTK_TYPE_FILE_CHOOSER_WIDGET := gtk_file_chooser_widget_get_type;
end;

function GTK_FILE_CHOOSER_WIDGET(obj: Pointer): PGtkFileChooserWidget;
begin
  Result := PGtkFileChooserWidget(g_type_check_instance_cast(obj, GTK_TYPE_FILE_CHOOSER_WIDGET));
end;

function GTK_IS_FILE_CHOOSER_WIDGET(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_FILE_CHOOSER_WIDGET);
end;



end.
