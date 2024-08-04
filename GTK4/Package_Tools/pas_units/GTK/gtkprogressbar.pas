unit gtkprogressbar;

interface

uses
  glib2, pango, common_GTK, gtktypes, gtkwidget;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  TGtkProgressBar = record // _GtkProgressBar
  end;
  PGtkProgressBar = ^TGtkProgressBar;

function gtk_progress_bar_get_type: TGType; cdecl; external gtklib;
function gtk_progress_bar_new: PGtkWidget; cdecl; external gtklib;
procedure gtk_progress_bar_pulse(pbar: PGtkProgressBar); cdecl; external gtklib;
procedure gtk_progress_bar_set_text(pbar: PGtkProgressBar; Text: PChar); cdecl; external gtklib;
procedure gtk_progress_bar_set_fraction(pbar: PGtkProgressBar; fraction: Tdouble); cdecl; external gtklib;
procedure gtk_progress_bar_set_pulse_step(pbar: PGtkProgressBar; fraction: Tdouble); cdecl; external gtklib;
procedure gtk_progress_bar_set_inverted(pbar: PGtkProgressBar; inverted: Tgboolean); cdecl; external gtklib;
function gtk_progress_bar_get_text(pbar: PGtkProgressBar): PChar; cdecl; external gtklib;
function gtk_progress_bar_get_fraction(pbar: PGtkProgressBar): Tdouble; cdecl; external gtklib;
function gtk_progress_bar_get_pulse_step(pbar: PGtkProgressBar): Tdouble; cdecl; external gtklib;
function gtk_progress_bar_get_inverted(pbar: PGtkProgressBar): Tgboolean; cdecl; external gtklib;
procedure gtk_progress_bar_set_ellipsize(pbar: PGtkProgressBar; mode: TPangoEllipsizeMode); cdecl; external gtklib;
function gtk_progress_bar_get_ellipsize(pbar: PGtkProgressBar): TPangoEllipsizeMode; cdecl; external gtklib;
procedure gtk_progress_bar_set_show_text(pbar: PGtkProgressBar; show_text: Tgboolean); cdecl; external gtklib;
function gtk_progress_bar_get_show_text(pbar: PGtkProgressBar): Tgboolean; cdecl; external gtklib;

// === Konventiert am: 28-7-24 15:26:53 ===

function GTK_TYPE_PROGRESS_BAR: TGType;
function GTK_PROGRESS_BAR(obj: Pointer): PGtkProgressBar;
function GTK_IS_PROGRESS_BAR(obj: Pointer): Tgboolean;

implementation

function GTK_TYPE_PROGRESS_BAR: TGType;
begin
  GTK_TYPE_PROGRESS_BAR := gtk_progress_bar_get_type;
end;

function GTK_PROGRESS_BAR(obj: Pointer): PGtkProgressBar;
begin
  Result := PGtkProgressBar(g_type_check_instance_cast(obj, GTK_TYPE_PROGRESS_BAR));
end;

function GTK_IS_PROGRESS_BAR(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_PROGRESS_BAR);
end;



end.
