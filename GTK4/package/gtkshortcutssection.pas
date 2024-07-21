unit gtkshortcutssection;

interface

uses
  glib2, common_GTK, gtkshortcutsgroup;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}



type
  TGtkShortcutsSection = record // _GtkShortcutsSection
  end;
  PGtkShortcutsSection = ^TGtkShortcutsSection;

  TGtkShortcutsSectionClass = record // _GtkShortcutsSectionClass
  end;
  PGtkShortcutsSectionClass = ^TGtkShortcutsSectionClass;

function gtk_shortcuts_section_get_type: TGType; cdecl; external gtklib;
procedure gtk_shortcuts_section_add_group(self: PGtkShortcutsSection; group: PGtkShortcutsGroup); cdecl; external gtklib;

// === Konventiert am: 21-7-24 13:27:07 ===

function GTK_TYPE_SHORTCUTS_SECTION: TGType;
function GTK_SHORTCUTS_SECTION(obj: Pointer): PGtkShortcutsSection;
function GTK_IS_SHORTCUTS_SECTION(obj: Pointer): Tgboolean;

implementation

function GTK_TYPE_SHORTCUTS_SECTION: TGType;
begin
  GTK_TYPE_SHORTCUTS_SECTION := gtk_shortcuts_section_get_type;
end;

function GTK_SHORTCUTS_SECTION(obj: Pointer): PGtkShortcutsSection;
begin
  Result := PGtkShortcutsSection(g_type_check_instance_cast(obj, GTK_TYPE_SHORTCUTS_SECTION));
end;

function GTK_IS_SHORTCUTS_SECTION(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_SHORTCUTS_SECTION);
end;



end.
