unit gtkmain;

interface

uses
  {$ifdef windows}
  glib2, gtkwindow, gtkbox,
  {$endif}
  pango, common_GTK, gtkenums;


  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}


const
  GTK_PRIORITY_RESIZE = G_PRIORITY_HIGH_IDLE + 10;

{$ifdef linux}
procedure gtk_init; cdecl; external gtklib;
function gtk_init_check: Tgboolean; cdecl; external gtklib;
{$endif}

function gtk_is_initialized: Tgboolean; cdecl; external gtklib;

//{$ifdef G_OS_WIN32}
{$ifdef windows}
procedure gtk_init_abi_check(num_checks: longint; sizeof_GtkWindow: Tsize_t; sizeof_GtkBox: Tsize_t); cdecl; external gtklib;
function gtk_init_check_abi_check(num_checks: longint; sizeof_GtkWindow: Tsize_t; sizeof_GtkBox: Tsize_t): Tgboolean; cdecl; external gtklib;

procedure gtk_init;
function gtk_init_check: Tgboolean;
{$endif}

procedure gtk_disable_setlocale; cdecl; external gtklib;
function gtk_get_default_language: PPangoLanguage; cdecl; external gtklib;
function gtk_get_locale_direction: TGtkTextDirection; cdecl; external gtklib;

implementation

{$ifdef windows}
procedure gtk_init;
begin
  gtk_init_abi_check(2, sizeof(TGtkWindow), sizeof(TGtkBox));
end;

function gtk_init_check: Tgboolean;
begin
  gtk_init_check := gtk_init_check_abi_check(2, sizeof(TGtkWindow), sizeof(TGtkBox));
end;
{$endif}


end.
