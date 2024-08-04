unit gtkseparator;

interface

uses
  glib2, common_GTK, gtkenums, gtktypes, gtkwidget;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

type
  TGtkSeparator = record // _GtkSeparator
  end;
  PGtkSeparator = ^TGtkSeparator;

function gtk_separator_get_type: TGType; cdecl; external gtklib;
function gtk_separator_new(orientation: TGtkOrientation): PGtkWidget; cdecl; external gtklib;

// === Konventiert am: 28-7-24 15:48:44 ===

function GTK_TYPE_SEPARATOR: TGType;
function GTK_SEPARATOR(obj: Pointer): PGtkSeparator;
function GTK_IS_SEPARATOR(obj: Pointer): Tgboolean;

implementation

function GTK_TYPE_SEPARATOR: TGType;
begin
  GTK_TYPE_SEPARATOR := gtk_separator_get_type;
end;

function GTK_SEPARATOR(obj: Pointer): PGtkSeparator;
begin
  Result := PGtkSeparator(g_type_check_instance_cast(obj, GTK_TYPE_SEPARATOR));
end;

function GTK_IS_SEPARATOR(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_SEPARATOR);
end;



end.
