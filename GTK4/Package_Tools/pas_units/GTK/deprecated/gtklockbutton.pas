unit gtklockbutton;

interface

uses
  glib2, common_GTK, gtktypes, gtkwidget;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  TGtkLockButton = record
  end;
  PGtkLockButton = ^TGtkLockButton;

function gtk_lock_button_get_type: TGType; cdecl; external gtklib;
function gtk_lock_button_new(permission: PGPermission): PGtkWidget; cdecl; external gtklib;
function gtk_lock_button_get_permission(button: PGtkLockButton): PGPermission; cdecl; external gtklib;
procedure gtk_lock_button_set_permission(button: PGtkLockButton; permission: PGPermission); cdecl; external gtklib;

// === Konventiert am: 30-7-24 16:04:22 ===

function GTK_TYPE_LOCK_BUTTON: TGType;
function GTK_LOCK_BUTTON(obj: Pointer): PGtkLockButton;
function GTK_IS_LOCK_BUTTON(obj: Pointer): Tgboolean;

implementation

function GTK_TYPE_LOCK_BUTTON: TGType;
begin
  GTK_TYPE_LOCK_BUTTON := gtk_lock_button_get_type;
end;

function GTK_LOCK_BUTTON(obj: Pointer): PGtkLockButton;
begin
  Result := PGtkLockButton(g_type_check_instance_cast(obj, GTK_TYPE_LOCK_BUTTON));
end;

function GTK_IS_LOCK_BUTTON(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_LOCK_BUTTON);
end;



end.
