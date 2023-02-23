
unit gtkshortcut;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkshortcut.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkshortcut.h
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
PGtkShortcut  = ^GtkShortcut;
PGtkShortcutAction  = ^GtkShortcutAction;
PGtkShortcutTrigger  = ^GtkShortcutTrigger;
PGVariant  = ^GVariant;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_SHORTCUT_H__}
{$define __GTK_SHORTCUT_H__}
{$include <gtk/gtktypes.h>}


function GTK_TYPE_SHORTCUT : longint; { return type might be wrong }




function gtk_shortcut_new(trigger:PGtkShortcutTrigger; action:PGtkShortcutAction):PGtkShortcut;cdecl;external;

function gtk_shortcut_new_with_arguments(trigger:PGtkShortcutTrigger; action:PGtkShortcutAction; format_string:Pchar; args:array of const):PGtkShortcut;cdecl;external;
function gtk_shortcut_new_with_arguments(trigger:PGtkShortcutTrigger; action:PGtkShortcutAction; format_string:Pchar):PGtkShortcut;cdecl;external;

function gtk_shortcut_get_trigger(self:PGtkShortcut):PGtkShortcutTrigger;cdecl;external;

procedure gtk_shortcut_set_trigger(self:PGtkShortcut; trigger:PGtkShortcutTrigger);cdecl;external;

function gtk_shortcut_get_action(self:PGtkShortcut):PGtkShortcutAction;cdecl;external;

procedure gtk_shortcut_set_action(self:PGtkShortcut; action:PGtkShortcutAction);cdecl;external;

function gtk_shortcut_get_arguments(self:PGtkShortcut):PGVariant;cdecl;external;

procedure gtk_shortcut_set_arguments(self:PGtkShortcut; args:PGVariant);cdecl;external;

{$endif}


implementation

function GTK_TYPE_SHORTCUT : longint; { return type might be wrong }
  begin
    GTK_TYPE_SHORTCUT:=gtk_shortcut_get_type;
  end;


end.
