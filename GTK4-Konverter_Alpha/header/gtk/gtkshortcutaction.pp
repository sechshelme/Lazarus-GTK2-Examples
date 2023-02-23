
unit gtkshortcutaction;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkshortcutaction.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkshortcutaction.h
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
PGString  = ^GString;
PGtkNamedAction  = ^GtkNamedAction;
PGtkShortcutAction  = ^GtkShortcutAction;
PGtkShortcutActionFlags  = ^GtkShortcutActionFlags;
PGtkSignalAction  = ^GtkSignalAction;
PGtkWidget  = ^GtkWidget;
PGVariant  = ^GVariant;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_SHORTCUT_ACTION_H__}
{$define __GTK_SHORTCUT_ACTION_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtktypes.h>}


function GTK_TYPE_SHORTCUT_ACTION : longint; { return type might be wrong }


type

  TGtkShortcutFunc = function (widget:PGtkWidget; args:PGVariant; user_data:Tgpointer):Tgboolean;cdecl;


  PGtkShortcutActionFlags = ^TGtkShortcutActionFlags;
  TGtkShortcutActionFlags = (GTK_SHORTCUT_ACTION_EXCLUSIVE := 1 shl 0);




function gtk_shortcut_action_to_string(self:PGtkShortcutAction):Pchar;cdecl;external;

function gtk_shortcut_action_parse_string(_string:Pchar):PGtkShortcutAction;cdecl;external;

procedure gtk_shortcut_action_print(self:PGtkShortcutAction; _string:PGString);cdecl;external;

function gtk_shortcut_action_activate(self:PGtkShortcutAction; flags:TGtkShortcutActionFlags; widget:PGtkWidget; args:PGVariant):Tgboolean;cdecl;external;
function GTK_TYPE_NOTHING_ACTION : longint; { return type might be wrong }





function gtk_nothing_action_get:PGtkShortcutAction;cdecl;external;
function GTK_TYPE_CALLBACK_ACTION : longint; { return type might be wrong }





function gtk_callback_action_new(callback:TGtkShortcutFunc; data:Tgpointer; destroy:TGDestroyNotify):PGtkShortcutAction;cdecl;external;
function GTK_TYPE_MNEMONIC_ACTION : longint; { return type might be wrong }





function gtk_mnemonic_action_get:PGtkShortcutAction;cdecl;external;
function GTK_TYPE_ACTIVATE_ACTION : longint; { return type might be wrong }





function gtk_activate_action_get:PGtkShortcutAction;cdecl;external;
function GTK_TYPE_SIGNAL_ACTION : longint; { return type might be wrong }





function gtk_signal_action_new(signal_name:Pchar):PGtkShortcutAction;cdecl;external;

function gtk_signal_action_get_signal_name(self:PGtkSignalAction):Pchar;cdecl;external;
function GTK_TYPE_NAMED_ACTION : longint; { return type might be wrong }





function gtk_named_action_new(name:Pchar):PGtkShortcutAction;cdecl;external;

function gtk_named_action_get_action_name(self:PGtkNamedAction):Pchar;cdecl;external;

{$endif}


implementation

function GTK_TYPE_SHORTCUT_ACTION : longint; { return type might be wrong }
  begin
    GTK_TYPE_SHORTCUT_ACTION:=gtk_shortcut_action_get_type;
  end;

function GTK_TYPE_NOTHING_ACTION : longint; { return type might be wrong }
  begin
    GTK_TYPE_NOTHING_ACTION:=gtk_nothing_action_get_type;
  end;

function GTK_TYPE_CALLBACK_ACTION : longint; { return type might be wrong }
  begin
    GTK_TYPE_CALLBACK_ACTION:=gtk_callback_action_get_type;
  end;

function GTK_TYPE_MNEMONIC_ACTION : longint; { return type might be wrong }
  begin
    GTK_TYPE_MNEMONIC_ACTION:=gtk_mnemonic_action_get_type;
  end;

function GTK_TYPE_ACTIVATE_ACTION : longint; { return type might be wrong }
  begin
    GTK_TYPE_ACTIVATE_ACTION:=gtk_activate_action_get_type;
  end;

function GTK_TYPE_SIGNAL_ACTION : longint; { return type might be wrong }
  begin
    GTK_TYPE_SIGNAL_ACTION:=gtk_signal_action_get_type;
  end;

function GTK_TYPE_NAMED_ACTION : longint; { return type might be wrong }
  begin
    GTK_TYPE_NAMED_ACTION:=gtk_named_action_get_type;
  end;


end.
