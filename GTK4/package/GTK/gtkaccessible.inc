/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  TGtkAccessiblePlatformState = longint;
  PGtkAccessiblePlatformState = ^TGtkAccessiblePlatformState;

const
  GTK_ACCESSIBLE_PLATFORM_STATE_FOCUSABLE = 0;
  GTK_ACCESSIBLE_PLATFORM_STATE_FOCUSED = 1;
  GTK_ACCESSIBLE_PLATFORM_STATE_ACTIVE = 2;

  {G_DECLARE_INTERFACE (GtkAccessible, gtk_accessible, GTK, ACCESSIBLE, GObject) }
type
  // ausgelagert wegen gtkatcontext.h
  //TGtkAccessible = record
  //end;
  //PGtkAccessible = ^TGtkAccessible;

  TGtkAccessibleList = record // _GtkAccessibleList
  end;
  PGtkAccessibleList = ^TGtkAccessibleList;

  TGtkAccessibleInterface = record
    g_iface: TGTypeInterface;
    get_at_context: function(self: PGtkAccessible): PGtkATContext; cdecl;
    get_platform_state: function(self: PGtkAccessible; state: TGtkAccessiblePlatformState): Tgboolean; cdecl;
    get_accessible_parent: function(self: PGtkAccessible): PGtkAccessible; cdecl;
    get_first_accessible_child: function(self: PGtkAccessible): PGtkAccessible; cdecl;
    get_next_accessible_sibling: function(self: PGtkAccessible): PGtkAccessible; cdecl;
    get_bounds: function(self: PGtkAccessible; x: Plongint; y: Plongint; Width: Plongint; Height: Plongint): Tgboolean; cdecl;
  end;
  PGtkAccessibleInterface = ^TGtkAccessibleInterface;

function gtk_accessible_get_type: TGType; cdecl; external gtklib;
function gtk_accessible_get_at_context(self: PGtkAccessible): PGtkATContext; cdecl; external gtklib;
function gtk_accessible_get_platform_state(self: PGtkAccessible; state: TGtkAccessiblePlatformState): Tgboolean; cdecl; external gtklib;
function gtk_accessible_get_accessible_parent(self: PGtkAccessible): PGtkAccessible; cdecl; external gtklib;
procedure gtk_accessible_set_accessible_parent(self: PGtkAccessible; parent: PGtkAccessible; next_sibling: PGtkAccessible); cdecl; external gtklib;
function gtk_accessible_get_first_accessible_child(self: PGtkAccessible): PGtkAccessible; cdecl; external gtklib;
function gtk_accessible_get_next_accessible_sibling(self: PGtkAccessible): PGtkAccessible; cdecl; external gtklib;
procedure gtk_accessible_update_next_accessible_sibling(self: PGtkAccessible; new_sibling: PGtkAccessible); cdecl; external gtklib;
function gtk_accessible_get_bounds(self: PGtkAccessible; x: Plongint; y: Plongint; Width: Plongint; Height: Plongint): Tgboolean; cdecl; external gtklib;
function gtk_accessible_get_accessible_role(self: PGtkAccessible): TGtkAccessibleRole; cdecl; external gtklib;
procedure gtk_accessible_update_state(self: PGtkAccessible; first_state: TGtkAccessibleState; args: array of const); cdecl; external gtklib;
procedure gtk_accessible_update_state(self: PGtkAccessible; first_state: TGtkAccessibleState); cdecl; external gtklib;
procedure gtk_accessible_update_property(self: PGtkAccessible; first_property: TGtkAccessibleProperty; args: array of const); cdecl; external gtklib;
procedure gtk_accessible_update_property(self: PGtkAccessible; first_property: TGtkAccessibleProperty); cdecl; external gtklib;
procedure gtk_accessible_update_relation(self: PGtkAccessible; first_relation: TGtkAccessibleRelation; args: array of const); cdecl; external gtklib;
procedure gtk_accessible_update_relation(self: PGtkAccessible; first_relation: TGtkAccessibleRelation); cdecl; external gtklib;
procedure gtk_accessible_update_state_value(self: PGtkAccessible; n_states: longint; states: PGtkAccessibleState; values: PGValue); cdecl; external gtklib;
procedure gtk_accessible_update_property_value(self: PGtkAccessible; n_properties: longint; properties: PGtkAccessibleProperty; values: PGValue); cdecl; external gtklib;
procedure gtk_accessible_update_relation_value(self: PGtkAccessible; n_relations: longint; relations: PGtkAccessibleRelation; values: PGValue); cdecl; external gtklib;
procedure gtk_accessible_reset_state(self: PGtkAccessible; state: TGtkAccessibleState); cdecl; external gtklib;
procedure gtk_accessible_reset_property(self: PGtkAccessible; _property: TGtkAccessibleProperty); cdecl; external gtklib;
procedure gtk_accessible_reset_relation(self: PGtkAccessible; relation: TGtkAccessibleRelation); cdecl; external gtklib;
procedure gtk_accessible_state_init_value(state: TGtkAccessibleState; Value: PGValue); cdecl; external gtklib;
procedure gtk_accessible_property_init_value(_property: TGtkAccessibleProperty; Value: PGValue); cdecl; external gtklib;
procedure gtk_accessible_relation_init_value(relation: TGtkAccessibleRelation; Value: PGValue); cdecl; external gtklib;

function gtk_accessible_list_get_type: TGType; cdecl; external gtklib;
function gtk_accessible_list_get_objects(accessible_list: PGtkAccessibleList): PGList; cdecl; external gtklib;
function gtk_accessible_list_new_from_list(list: PGList): PGtkAccessibleList; cdecl; external gtklib;
function gtk_accessible_list_new_from_array(accessibles: PPGtkAccessible; n_accessibles: Tgsize): PGtkAccessibleList; cdecl; external gtklib;
procedure gtk_accessible_announce(self: PGtkAccessible; message: PChar; priority: TGtkAccessibleAnnouncementPriority); cdecl; external gtklib;

function GTK_ACCESSIBLE_LIST: TGType;

// === Konventiert am: 27-7-24 13:58:48 ===

function GTK_TYPE_ACCESSIBLE: TGType;
function GTK_ACCESSIBLE(obj: Pointer): PGtkAccessible;
function GTK_IS_ACCESSIBLE(obj: Pointer): Tgboolean;
function GTK_ACCESSIBLE_GET_IFACE(obj: Pointer): PGtkAccessibleInterface;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_ACCESSIBLE: TGType;
begin
  Result := gtk_accessible_get_type;
end;

function GTK_ACCESSIBLE(obj: Pointer): PGtkAccessible;
begin
  Result := PGtkAccessible(g_type_check_instance_cast(obj, GTK_TYPE_ACCESSIBLE));
end;

function GTK_IS_ACCESSIBLE(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_ACCESSIBLE);
end;

function GTK_ACCESSIBLE_GET_IFACE(obj: Pointer): PGtkAccessibleInterface;
begin
  Result := g_type_interface_peek(obj, GTK_TYPE_ACCESSIBLE);
end;

// ====

function GTK_ACCESSIBLE_LIST: TGType;
begin
  GTK_ACCESSIBLE_LIST := gtk_accessible_list_get_type;
end;


{$ENDIF read_implementation}
