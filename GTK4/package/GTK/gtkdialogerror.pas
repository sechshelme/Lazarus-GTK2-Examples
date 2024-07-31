unit gtkdialogerror;

interface

uses
  glib2, common_GTK;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}


type
  PGtkDialogError = ^TGtkDialogError;
  TGtkDialogError = longint;

const
  GTK_DIALOG_ERROR_FAILED = 0;
  GTK_DIALOG_ERROR_CANCELLED = 1;
  GTK_DIALOG_ERROR_DISMISSED = 2;

function gtk_dialog_error_quark: TGQuark; cdecl; external gtklib;

// === Konventiert am: 24-7-24 19:50:29 ===

function GTK_DIALOG_ERROR: TGType;

implementation

function GTK_DIALOG_ERROR: TGType;
begin
  GTK_DIALOG_ERROR := gtk_dialog_error_quark;
end;



end.
