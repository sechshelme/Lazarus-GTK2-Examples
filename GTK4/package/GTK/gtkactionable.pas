unit gtkactionable;

interface

uses
  glib2, common_GTK;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}


type
  TGtkActionable = record // _GtkActionable
  end;
  PGtkActionable = ^TGtkActionable;

  TGtkActionableInterface = record
    g_iface: TGTypeInterface;
    get_action_name: function(actionable: PGtkActionable): PChar; cdecl;
    set_action_name: procedure(actionable: PGtkActionable; action_name: PChar); cdecl;
    get_action_target_value: function(actionable: PGtkActionable): PGVariant; cdecl;
    set_action_target_value: procedure(actionable: PGtkActionable; target_value: PGVariant); cdecl;
  end;
  PGtkActionableInterface = ^TGtkActionableInterface;


function gtk_actionable_get_type: TGType; cdecl; external gtklib;
function gtk_actionable_get_action_name(actionable: PGtkActionable): PChar; cdecl; external gtklib;
procedure gtk_actionable_set_action_name(actionable: PGtkActionable; action_name: PChar); cdecl; external gtklib;
function gtk_actionable_get_action_target_value(actionable: PGtkActionable): PGVariant; cdecl; external gtklib;
procedure gtk_actionable_set_action_target_value(actionable: PGtkActionable; target_value: PGVariant); cdecl; external gtklib;
procedure gtk_actionable_set_action_target(actionable: PGtkActionable; format_string: PChar; args: array of const); cdecl; external gtklib;
procedure gtk_actionable_set_action_target(actionable: PGtkActionable; format_string: PChar); cdecl; external gtklib;
procedure gtk_actionable_set_detailed_action_name(actionable: PGtkActionable; detailed_action_name: PChar); cdecl; external gtklib;


// === Konventiert am: 11-7-24 22:32:43 ===

function GTK_TYPE_ACTIONABLE: TGType;
function GTK_ACTIONABLE(inst: Pointer): PGtkActionable;
function GTK_IS_ACTIONABLE(inst: Pointer): Tgboolean;
function GTK_ACTIONABLE_GET_IFACE(inst: Pointer): PGtkActionableInterface;

implementation

function GTK_TYPE_ACTIONABLE: TGType;
begin
  GTK_TYPE_ACTIONABLE := gtk_actionable_get_type;
end;

function GTK_ACTIONABLE(inst: Pointer): PGtkActionable;
begin
  Result := PGtkActionable(g_type_check_instance_cast(inst, GTK_TYPE_ACTIONABLE));
end;

function GTK_IS_ACTIONABLE(inst: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(inst, GTK_TYPE_ACTIONABLE);
end;

function GTK_ACTIONABLE_GET_IFACE(inst: Pointer): PGtkActionableInterface;
begin
  Result := g_type_interface_peek(inst, GTK_TYPE_ACTIONABLE);
end;


end.
