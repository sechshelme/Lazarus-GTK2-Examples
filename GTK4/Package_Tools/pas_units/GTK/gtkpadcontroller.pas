unit gtkpadcontroller;

interface

uses
  glib2, common_GTK, GDK4;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  PGtkPadActionType = ^TGtkPadActionType;
  TGtkPadActionType = longint;

const
  GTK_PAD_ACTION_BUTTON = 0;
  GTK_PAD_ACTION_RING = 1;
  GTK_PAD_ACTION_STRIP = 2;

type
  TGtkPadActionEntry = record
    _type: TGtkPadActionType;
    index: longint;
    mode: longint;
    _label: PChar;
    action_name: PChar;
  end;
  PGtkPadActionEntry = ^TGtkPadActionEntry;

  TGtkPadController = record //_GtkPadController
  end;
  PGtkPadController = ^TGtkPadController;

  TGtkPadControllerClass = record //_GtkPadControllerClass
  end;
  PGtkPadControllerClass = ^TGtkPadControllerClass;


function gtk_pad_controller_get_type: TGType; cdecl; external gtklib;
function gtk_pad_controller_new(group: PGActionGroup; pad: PGdkDevice): PGtkPadController; cdecl; external gtklib;
procedure gtk_pad_controller_set_action_entries(controller: PGtkPadController; entries: PGtkPadActionEntry; n_entries: longint); cdecl; external gtklib;
procedure gtk_pad_controller_set_action(controller: PGtkPadController; _type: TGtkPadActionType; index: longint; mode: longint; _label: PChar;
  action_name: PChar); cdecl; external gtklib;

// === Konventiert am: 28-7-24 15:13:56 ===

function GTK_TYPE_PAD_CONTROLLER: TGType;
function GTK_PAD_CONTROLLER(obj: Pointer): PGtkPadController;
function GTK_PAD_CONTROLLER_CLASS(klass: Pointer): PGtkPadControllerClass;
function GTK_IS_PAD_CONTROLLER(obj: Pointer): Tgboolean;
function GTK_IS_PAD_CONTROLLER_CLASS(klass: Pointer): Tgboolean;
function GTK_PAD_CONTROLLER_GET_CLASS(obj: Pointer): PGtkPadControllerClass;

implementation

function GTK_TYPE_PAD_CONTROLLER: TGType;
begin
  GTK_TYPE_PAD_CONTROLLER := gtk_pad_controller_get_type;
end;

function GTK_PAD_CONTROLLER(obj: Pointer): PGtkPadController;
begin
  Result := PGtkPadController(g_type_check_instance_cast(obj, GTK_TYPE_PAD_CONTROLLER));
end;

function GTK_PAD_CONTROLLER_CLASS(klass: Pointer): PGtkPadControllerClass;
begin
  Result := PGtkPadControllerClass(g_type_check_class_cast(klass, GTK_TYPE_PAD_CONTROLLER));
end;

function GTK_IS_PAD_CONTROLLER(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_PAD_CONTROLLER);
end;

function GTK_IS_PAD_CONTROLLER_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_PAD_CONTROLLER);
end;

function GTK_PAD_CONTROLLER_GET_CLASS(obj: Pointer): PGtkPadControllerClass;
begin
  Result := PGtkPadControllerClass(PGTypeInstance(obj)^.g_class);
end;



end.
