unit gtkshortcut;

interface

uses
  glib2, common_GTK, gtktypes, gtkwidget, gtkshortcuttrigger, gtkshortcutaction;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}


  {G_DECLARE_FINAL_TYPE (GtkShortcut, gtk_shortcut, GTK, SHORTCUT, GObject) }
type
  // ausgelagert wegwen gtkwidget
  //TGtkShortcut = record
  //end;
  //PGtkShortcut = ^TGtkShortcut;

  TGtkShortcutClass = record
    parent_class: TGObjectClass;
  end;
  PGtkShortcutClass = ^TGtkShortcutClass;

function gtk_shortcut_get_type: TGType; cdecl; external gtklib;
function gtk_shortcut_new(trigger: PGtkShortcutTrigger; action: PGtkShortcutAction): PGtkShortcut; cdecl; external gtklib;
function gtk_shortcut_new_with_arguments(trigger: PGtkShortcutTrigger; action: PGtkShortcutAction; format_string: PChar; args: array of const): PGtkShortcut; cdecl; external gtklib;
function gtk_shortcut_new_with_arguments(trigger: PGtkShortcutTrigger; action: PGtkShortcutAction; format_string: PChar): PGtkShortcut; cdecl; external gtklib;
function gtk_shortcut_get_trigger(self: PGtkShortcut): PGtkShortcutTrigger; cdecl; external gtklib;
procedure gtk_shortcut_set_trigger(self: PGtkShortcut; trigger: PGtkShortcutTrigger); cdecl; external gtklib;
function gtk_shortcut_get_action(self: PGtkShortcut): PGtkShortcutAction; cdecl; external gtklib;
procedure gtk_shortcut_set_action(self: PGtkShortcut; action: PGtkShortcutAction); cdecl; external gtklib;
function gtk_shortcut_get_arguments(self: PGtkShortcut): PGVariant; cdecl; external gtklib;
procedure gtk_shortcut_set_arguments(self: PGtkShortcut; args: PGVariant); cdecl; external gtklib;

// === Konventiert am: 16-7-24 19:19:33 ===

function GTK_TYPE_SHORTCUT: TGType;
function GTK_SHORTCUT(obj: Pointer): PGtkShortcut;
function GTK_IS_SHORTCUT(obj: Pointer): Tgboolean;

implementation

function GTK_TYPE_SHORTCUT: TGType;
begin
  Result := gtk_shortcut_get_type;
end;

function GTK_SHORTCUT(obj: Pointer): PGtkShortcut;
begin
  Result := PGtkShortcut(g_type_check_instance_cast(obj, GTK_TYPE_SHORTCUT));
end;

function GTK_IS_SHORTCUT(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_SHORTCUT);
end;


end.
