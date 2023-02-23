
unit gtkshortcuttrigger;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkshortcuttrigger.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkshortcuttrigger.h
    -p
    -T
    -S
    -d
    -c
}

{ Pointers to basic pascal types, inserted by h2pas conversion program.}
Type
  PLongint  = ^Longint;
  PSmallInt = ^SmallInt;
  PByte     = ^Byte;
  PWord     = ^Word;
  PDWord    = ^DWord;
  PDouble   = ^Double;

Type
Pchar  = ^char;
PGdkDisplay  = ^GdkDisplay;
PGdkEvent  = ^GdkEvent;
PGString  = ^GString;
PGtkAlternativeTrigger  = ^GtkAlternativeTrigger;
PGtkKeyvalTrigger  = ^GtkKeyvalTrigger;
PGtkMnemonicTrigger  = ^GtkMnemonicTrigger;
PGtkShortcutTrigger  = ^GtkShortcutTrigger;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_SHORTCUT_TRIGGER_H__}
{$define __GTK_SHORTCUT_TRIGGER_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtktypes.h>}


function GTK_TYPE_SHORTCUT_TRIGGER : longint; { return type might be wrong }




function gtk_shortcut_trigger_parse_string(_string:Pchar):PGtkShortcutTrigger;cdecl;external;

function gtk_shortcut_trigger_to_string(self:PGtkShortcutTrigger):Pchar;cdecl;external;

procedure gtk_shortcut_trigger_print(self:PGtkShortcutTrigger; _string:PGString);cdecl;external;

function gtk_shortcut_trigger_to_label(self:PGtkShortcutTrigger; display:PGdkDisplay):Pchar;cdecl;external;

function gtk_shortcut_trigger_print_label(self:PGtkShortcutTrigger; display:PGdkDisplay; _string:PGString):Tgboolean;cdecl;external;

function gtk_shortcut_trigger_hash(trigger:Tgconstpointer):Tguint;cdecl;external;

function gtk_shortcut_trigger_equal(trigger1:Tgconstpointer; trigger2:Tgconstpointer):Tgboolean;cdecl;external;

function gtk_shortcut_trigger_compare(trigger1:Tgconstpointer; trigger2:Tgconstpointer):longint;cdecl;external;

function gtk_shortcut_trigger_trigger(self:PGtkShortcutTrigger; event:PGdkEvent; enable_mnemonics:Tgboolean):TGdkKeyMatch;cdecl;external;
function GTK_TYPE_NEVER_TRIGGER : longint; { return type might be wrong }





function gtk_never_trigger_get:PGtkShortcutTrigger;cdecl;external;
function GTK_TYPE_KEYVAL_TRIGGER : longint; { return type might be wrong }





function gtk_keyval_trigger_new(keyval:Tguint; modifiers:TGdkModifierType):PGtkShortcutTrigger;cdecl;external;

function gtk_keyval_trigger_get_modifiers(self:PGtkKeyvalTrigger):TGdkModifierType;cdecl;external;

function gtk_keyval_trigger_get_keyval(self:PGtkKeyvalTrigger):Tguint;cdecl;external;
function GTK_TYPE_MNEMONIC_TRIGGER : longint; { return type might be wrong }





function gtk_mnemonic_trigger_new(keyval:Tguint):PGtkShortcutTrigger;cdecl;external;

function gtk_mnemonic_trigger_get_keyval(self:PGtkMnemonicTrigger):Tguint;cdecl;external;
function GTK_TYPE_ALTERNATIVE_TRIGGER : longint; { return type might be wrong }





function gtk_alternative_trigger_new(first:PGtkShortcutTrigger; second:PGtkShortcutTrigger):PGtkShortcutTrigger;cdecl;external;

function gtk_alternative_trigger_get_first(self:PGtkAlternativeTrigger):PGtkShortcutTrigger;cdecl;external;

function gtk_alternative_trigger_get_second(self:PGtkAlternativeTrigger):PGtkShortcutTrigger;cdecl;external;

{$endif}


implementation

function GTK_TYPE_SHORTCUT_TRIGGER : longint; { return type might be wrong }
  begin
    GTK_TYPE_SHORTCUT_TRIGGER:=gtk_shortcut_trigger_get_type;
  end;

function GTK_TYPE_NEVER_TRIGGER : longint; { return type might be wrong }
  begin
    GTK_TYPE_NEVER_TRIGGER:=gtk_never_trigger_get_type;
  end;

function GTK_TYPE_KEYVAL_TRIGGER : longint; { return type might be wrong }
  begin
    GTK_TYPE_KEYVAL_TRIGGER:=gtk_keyval_trigger_get_type;
  end;

function GTK_TYPE_MNEMONIC_TRIGGER : longint; { return type might be wrong }
  begin
    GTK_TYPE_MNEMONIC_TRIGGER:=gtk_mnemonic_trigger_get_type;
  end;

function GTK_TYPE_ALTERNATIVE_TRIGGER : longint; { return type might be wrong }
  begin
    GTK_TYPE_ALTERNATIVE_TRIGGER:=gtk_alternative_trigger_get_type;
  end;


end.
