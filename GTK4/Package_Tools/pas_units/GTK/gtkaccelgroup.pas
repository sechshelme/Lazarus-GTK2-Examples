unit gtkaccelgroup;

interface

uses
  glib2, GDK4, common_GTK;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

function gtk_accelerator_valid(keyval: Tguint; modifiers: TGdkModifierType): Tgboolean; cdecl; external gtklib;
function gtk_accelerator_parse(accelerator: PChar; accelerator_key: Pguint; accelerator_mods: PGdkModifierType): Tgboolean; cdecl; external gtklib;
function gtk_accelerator_parse_with_keycode(accelerator: PChar; display: PGdkDisplay; accelerator_key: Pguint; accelerator_codes: PPguint; accelerator_mods: PGdkModifierType): Tgboolean; cdecl; external gtklib;
function gtk_accelerator_name(accelerator_key: Tguint; accelerator_mods: TGdkModifierType): PChar; cdecl; external gtklib;
function gtk_accelerator_name_with_keycode(display: PGdkDisplay; accelerator_key: Tguint; keycode: Tguint; accelerator_mods: TGdkModifierType): PChar; cdecl; external gtklib;
function gtk_accelerator_get_label(accelerator_key: Tguint; accelerator_mods: TGdkModifierType): PChar; cdecl; external gtklib;
function gtk_accelerator_get_label_with_keycode(display: PGdkDisplay; accelerator_key: Tguint; keycode: Tguint; accelerator_mods: TGdkModifierType): PChar; cdecl; external gtklib;
function gtk_accelerator_get_default_mod_mask: TGdkModifierType; cdecl; external gtklib;

implementation


end.
