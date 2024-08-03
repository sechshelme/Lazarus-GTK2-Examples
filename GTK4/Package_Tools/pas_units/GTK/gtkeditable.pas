unit gtkeditable;

interface

uses
  glib2, common_GTK, gtkaccessible;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}


type
  TGtkEditable = record // _GtkEditable
  end;
  PGtkEditable = ^TGtkEditable;

  TGtkEditableInterface = record
    base_iface: TGTypeInterface;
    insert_text: procedure(editable: PGtkEditable; Text: PChar; length: longint; position: Plongint); cdecl;
    delete_text: procedure(editable: PGtkEditable; start_pos: longint; end_pos: longint); cdecl;
    changed: procedure(editable: PGtkEditable); cdecl;
    get_text: function(editable: PGtkEditable): PChar; cdecl;
    do_insert_text: procedure(editable: PGtkEditable; Text: PChar; length: longint; position: Plongint); cdecl;
    do_delete_text: procedure(editable: PGtkEditable; start_pos: longint; end_pos: longint); cdecl;
    get_selection_bounds: function(editable: PGtkEditable; start_pos: Plongint; end_pos: Plongint): Tgboolean; cdecl;
    set_selection_bounds: procedure(editable: PGtkEditable; start_pos: longint; end_pos: longint); cdecl;
    get_delegate: function(editable: PGtkEditable): PGtkEditable; cdecl;
  end;
  PGtkEditableInterface = ^TGtkEditableInterface;


function gtk_editable_get_type: TGType; cdecl; external gtklib;
function gtk_editable_get_text(editable: PGtkEditable): PChar; cdecl; external gtklib;
procedure gtk_editable_set_text(editable: PGtkEditable; Text: PChar); cdecl; external gtklib;
function gtk_editable_get_chars(editable: PGtkEditable; start_pos: longint; end_pos: longint): PChar; cdecl; external gtklib;
procedure gtk_editable_insert_text(editable: PGtkEditable; Text: PChar; length: longint; position: Plongint); cdecl; external gtklib;
procedure gtk_editable_delete_text(editable: PGtkEditable; start_pos: longint; end_pos: longint); cdecl; external gtklib;
function gtk_editable_get_selection_bounds(editable: PGtkEditable; start_pos: Plongint; end_pos: Plongint): Tgboolean; cdecl; external gtklib;
procedure gtk_editable_delete_selection(editable: PGtkEditable); cdecl; external gtklib;
procedure gtk_editable_select_region(editable: PGtkEditable; start_pos: longint; end_pos: longint); cdecl; external gtklib;
procedure gtk_editable_set_position(editable: PGtkEditable; position: longint); cdecl; external gtklib;
function gtk_editable_get_position(editable: PGtkEditable): longint; cdecl; external gtklib;
function gtk_editable_get_editable(editable: PGtkEditable): Tgboolean; cdecl; external gtklib;
procedure gtk_editable_set_editable(editable: PGtkEditable; is_editable: Tgboolean); cdecl; external gtklib;
function gtk_editable_get_alignment(editable: PGtkEditable): single; cdecl; external gtklib;
procedure gtk_editable_set_alignment(editable: PGtkEditable; xalign: single); cdecl; external gtklib;
function gtk_editable_get_width_chars(editable: PGtkEditable): longint; cdecl; external gtklib;
procedure gtk_editable_set_width_chars(editable: PGtkEditable; n_chars: longint); cdecl; external gtklib;
function gtk_editable_get_max_width_chars(editable: PGtkEditable): longint; cdecl; external gtklib;
procedure gtk_editable_set_max_width_chars(editable: PGtkEditable; n_chars: longint); cdecl; external gtklib;
function gtk_editable_get_enable_undo(editable: PGtkEditable): Tgboolean; cdecl; external gtklib;
procedure gtk_editable_set_enable_undo(editable: PGtkEditable; enable_undo: Tgboolean); cdecl; external gtklib;

type
  PGtkEditableProperties = ^TGtkEditableProperties;
  TGtkEditableProperties = longint;

const
  GTK_EDITABLE_PROP_TEXT = 0;
  GTK_EDITABLE_PROP_CURSOR_POSITION = 1;
  GTK_EDITABLE_PROP_SELECTION_BOUND = 2;
  GTK_EDITABLE_PROP_EDITABLE = 3;
  GTK_EDITABLE_PROP_WIDTH_CHARS = 4;
  GTK_EDITABLE_PROP_MAX_WIDTH_CHARS = 5;
  GTK_EDITABLE_PROP_XALIGN = 6;
  GTK_EDITABLE_PROP_ENABLE_UNDO = 7;
  GTK_EDITABLE_NUM_PROPERTIES = 8;


function gtk_editable_install_properties(object_class: PGObjectClass; first_prop: Tguint): Tguint; cdecl; external gtklib;
function gtk_editable_get_delegate(editable: PGtkEditable): PGtkEditable; cdecl; external gtklib;
procedure gtk_editable_init_delegate(editable: PGtkEditable); cdecl; external gtklib;
procedure gtk_editable_finish_delegate(editable: PGtkEditable); cdecl; external gtklib;
function gtk_editable_delegate_set_property(obj: PGObject; prop_id: Tguint; Value: PGValue; pspec: PGParamSpec): Tgboolean; cdecl; external gtklib;
function gtk_editable_delegate_get_property(obj: PGObject; prop_id: Tguint; Value: PGValue; pspec: PGParamSpec): Tgboolean; cdecl; external gtklib;
function gtk_editable_delegate_get_accessible_platform_state(editable: PGtkEditable; state: TGtkAccessiblePlatformState): Tgboolean; cdecl; external gtklib;

// === Konventiert am: 22-7-24 19:35:24 ===

function GTK_TYPE_EDITABLE: TGType;
function GTK_EDITABLE(obj: Pointer): PGtkEditable;
function GTK_IS_EDITABLE(obj: Pointer): Tgboolean;
function GTK_EDITABLE_GET_IFACE(inst: Pointer): PGtkEditableInterface;


implementation

function GTK_TYPE_EDITABLE: TGType;
begin
  GTK_TYPE_EDITABLE := gtk_editable_get_type;
end;

function GTK_EDITABLE(obj: Pointer): PGtkEditable;
begin
  Result := PGtkEditable(g_type_check_instance_cast(obj, GTK_TYPE_EDITABLE));
end;

function GTK_IS_EDITABLE(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_EDITABLE);
end;

function GTK_EDITABLE_GET_IFACE(inst: Pointer): PGtkEditableInterface;
begin
  Result := g_type_interface_peek(inst, GTK_TYPE_EDITABLE);
end;


end.
