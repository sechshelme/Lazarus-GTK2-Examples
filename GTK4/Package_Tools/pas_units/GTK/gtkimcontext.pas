unit gtkimcontext;

interface

uses
  glib2, GDK4, common_GTK, gtktypes, gtkwidget;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  TGtkIMContext = record
    parent_instance: TGObject;
  end;
  PGtkIMContext = ^TGtkIMContext;

  TGtkIMContextClass = record
    parent_class: TGObjectClass;
    preedit_start: procedure(context: PGtkIMContext); cdecl;
    preedit_end: procedure(context: PGtkIMContext); cdecl;
    preedit_changed: procedure(context: PGtkIMContext); cdecl;
    commit: procedure(context: PGtkIMContext; str: PChar); cdecl;
    retrieve_surrounding: function(context: PGtkIMContext): Tgboolean; cdecl;
    delete_surrounding: function(context: PGtkIMContext; offset: longint; n_chars: longint): Tgboolean; cdecl;
    set_client_widget: procedure(context: PGtkIMContext; widget: PGtkWidget); cdecl;
    get_preedit_string: procedure(context: PGtkIMContext; str: PPchar; attrs: PPPangoAttrList; cursor_pos: Plongint); cdecl;
    filter_keypress: function(context: PGtkIMContext; event: PGdkEvent): Tgboolean; cdecl;
    focus_in: procedure(context: PGtkIMContext); cdecl;
    focus_out: procedure(context: PGtkIMContext); cdecl;
    reset: procedure(context: PGtkIMContext); cdecl;
    set_cursor_location: procedure(context: PGtkIMContext; area: PGdkRectangle); cdecl;
    set_use_preedit: procedure(context: PGtkIMContext; use_preedit: Tgboolean); cdecl;
    set_surrounding: procedure(context: PGtkIMContext; Text: PChar; len: longint; cursor_index: longint); cdecl;
    get_surrounding: function(context: PGtkIMContext; Text: PPchar; cursor_index: Plongint): Tgboolean; cdecl;
    set_surrounding_with_selection: procedure(context: PGtkIMContext; Text: PChar; len: longint; cursor_index: longint; anchor_index: longint); cdecl;
    get_surrounding_with_selection: function(context: PGtkIMContext; Text: PPchar; cursor_index: Plongint; anchor_index: Plongint): Tgboolean; cdecl;
    activate_osk: procedure(context: PGtkIMContext); cdecl;
    activate_osk_with_event: function(context: PGtkIMContext; event: PGdkEvent): Tgboolean; cdecl;
    _gtk_reserved2: procedure; cdecl;
    _gtk_reserved3: procedure; cdecl;
    _gtk_reserved4: procedure; cdecl;
  end;
  PGtkIMContextClass = ^TGtkIMContextClass;


function gtk_im_context_get_type: TGType; cdecl; external gtklib;
procedure gtk_im_context_set_client_widget(context: PGtkIMContext; widget: PGtkWidget); cdecl; external gtklib;
procedure gtk_im_context_get_preedit_string(context: PGtkIMContext; str: PPchar; attrs: PPPangoAttrList; cursor_pos: Plongint); cdecl; external gtklib;
function gtk_im_context_filter_keypress(context: PGtkIMContext; event: PGdkEvent): Tgboolean; cdecl; external gtklib;
function gtk_im_context_filter_key(context: PGtkIMContext; press: Tgboolean; surface: PGdkSurface; device: PGdkDevice; time: Tguint32;
  keycode: Tguint; state: TGdkModifierType; group: longint): Tgboolean; cdecl; external gtklib;
procedure gtk_im_context_focus_in(context: PGtkIMContext); cdecl; external gtklib;
procedure gtk_im_context_focus_out(context: PGtkIMContext); cdecl; external gtklib;
procedure gtk_im_context_reset(context: PGtkIMContext); cdecl; external gtklib;
procedure gtk_im_context_set_cursor_location(context: PGtkIMContext; area: PGdkRectangle); cdecl; external gtklib;
procedure gtk_im_context_set_use_preedit(context: PGtkIMContext; use_preedit: Tgboolean); cdecl; external gtklib;
procedure gtk_im_context_set_surrounding(context: PGtkIMContext; Text: PChar; len: longint; cursor_index: longint); cdecl; external gtklib;
function gtk_im_context_get_surrounding(context: PGtkIMContext; Text: PPchar; cursor_index: Plongint): Tgboolean; cdecl; external gtklib;
procedure gtk_im_context_set_surrounding_with_selection(context: PGtkIMContext; Text: PChar; len: longint; cursor_index: longint; anchor_index: longint); cdecl; external gtklib;
function gtk_im_context_get_surrounding_with_selection(context: PGtkIMContext; Text: PPchar; cursor_index: Plongint; anchor_index: Plongint): Tgboolean; cdecl; external gtklib;
function gtk_im_context_delete_surrounding(context: PGtkIMContext; offset: longint; n_chars: longint): Tgboolean; cdecl; external gtklib;
function gtk_im_context_activate_osk(context: PGtkIMContext; event: PGdkEvent): Tgboolean; cdecl; external gtklib;

// === Konventiert am: 23-7-24 16:41:55 ===

function GTK_TYPE_IM_CONTEXT: TGType;
function GTK_IM_CONTEXT(obj: Pointer): PGtkIMContext;
function GTK_IM_CONTEXT_CLASS(klass: Pointer): PGtkIMContextClass;
function GTK_IS_IM_CONTEXT(obj: Pointer): Tgboolean;
function GTK_IS_IM_CONTEXT_CLASS(klass: Pointer): Tgboolean;
function GTK_IM_CONTEXT_GET_CLASS(obj: Pointer): PGtkIMContextClass;

implementation

function GTK_TYPE_IM_CONTEXT: TGType;
begin
  GTK_TYPE_IM_CONTEXT := gtk_im_context_get_type;
end;

function GTK_IM_CONTEXT(obj: Pointer): PGtkIMContext;
begin
  Result := PGtkIMContext(g_type_check_instance_cast(obj, GTK_TYPE_IM_CONTEXT));
end;

function GTK_IM_CONTEXT_CLASS(klass: Pointer): PGtkIMContextClass;
begin
  Result := PGtkIMContextClass(g_type_check_class_cast(klass, GTK_TYPE_IM_CONTEXT));
end;

function GTK_IS_IM_CONTEXT(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_IM_CONTEXT);
end;

function GTK_IS_IM_CONTEXT_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_IM_CONTEXT);
end;

function GTK_IM_CONTEXT_GET_CLASS(obj: Pointer): PGtkIMContextClass;
begin
  Result := PGtkIMContextClass(PGTypeInstance(obj)^.g_class);
end;



end.
