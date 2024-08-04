unit gtkspinner;

interface

uses
  glib2, common_GTK, gtktypes, gtkwidget;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  TGtkSpinner = record // _GtkSpinner
  end;
  PGtkSpinner = ^TGtkSpinner;

function gtk_spinner_get_type: TGType; cdecl; external gtklib;
function gtk_spinner_new: PGtkWidget; cdecl; external gtklib;
procedure gtk_spinner_start(spinner: PGtkSpinner); cdecl; external gtklib;
procedure gtk_spinner_stop(spinner: PGtkSpinner); cdecl; external gtklib;
procedure gtk_spinner_set_spinning(spinner: PGtkSpinner; spinning: Tgboolean); cdecl; external gtklib;
function gtk_spinner_get_spinning(spinner: PGtkSpinner): Tgboolean; cdecl; external gtklib;

// === Konventiert am: 23-7-24 13:37:49 ===

function GTK_TYPE_SPINNER: TGType;
function GTK_SPINNER(obj: Pointer): PGtkSpinner;
function GTK_IS_SPINNER(obj: Pointer): Tgboolean;

implementation

function GTK_TYPE_SPINNER: TGType;
begin
  GTK_TYPE_SPINNER := gtk_spinner_get_type;
end;

function GTK_SPINNER(obj: Pointer): PGtkSpinner;
begin
  Result := PGtkSpinner(g_type_check_instance_cast(obj, GTK_TYPE_SPINNER));
end;

function GTK_IS_SPINNER(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_SPINNER);
end;



end.
