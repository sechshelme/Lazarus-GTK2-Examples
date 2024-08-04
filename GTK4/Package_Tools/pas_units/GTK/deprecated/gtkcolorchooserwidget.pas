unit gtkcolorchooserwidget;

interface

uses
  glib2, common_GTK, gtktypes, gtkwidget;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  TGtkColorChooserWidget = record
  end;
  PGtkColorChooserWidget = ^TGtkColorChooserWidget;

function gtk_color_chooser_widget_get_type: TGType; cdecl; external gtklib;
function gtk_color_chooser_widget_new: PGtkWidget; cdecl; external gtklib;

// === Konventiert am: 29-7-24 19:34:21 ===

function GTK_TYPE_COLOR_CHOOSER_WIDGET: TGType;
function GTK_COLOR_CHOOSER_WIDGET(obj: Pointer): PGtkColorChooserWidget;
function GTK_IS_COLOR_CHOOSER_WIDGET(obj: Pointer): Tgboolean;

implementation

function GTK_TYPE_COLOR_CHOOSER_WIDGET: TGType;
begin
  GTK_TYPE_COLOR_CHOOSER_WIDGET := gtk_color_chooser_widget_get_type;
end;

function GTK_COLOR_CHOOSER_WIDGET(obj: Pointer): PGtkColorChooserWidget;
begin
  Result := PGtkColorChooserWidget(g_type_check_instance_cast(obj, GTK_TYPE_COLOR_CHOOSER_WIDGET));
end;

function GTK_IS_COLOR_CHOOSER_WIDGET(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_COLOR_CHOOSER_WIDGET);
end;



end.
