
unit gtkshortcutcontroller;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkshortcutcontroller.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkshortcutcontroller.h
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
PGListModel  = ^GListModel;
PGtkEventController  = ^GtkEventController;
PGtkShortcut  = ^GtkShortcut;
PGtkShortcutController  = ^GtkShortcutController;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_SHORTCUT_CONTROLLER_H__}
{$define __GTK_SHORTCUT_CONTROLLER_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkeventcontroller.h>}


function GTK_TYPE_SHORTCUT_CONTROLLER : longint; { return type might be wrong }

function GTK_SHORTCUT_CONTROLLER(o : longint) : longint;

function GTK_SHORTCUT_CONTROLLER_CLASS(k : longint) : longint;

function GTK_IS_SHORTCUT_CONTROLLER(o : longint) : longint;

function GTK_IS_SHORTCUT_CONTROLLER_CLASS(k : longint) : longint;

function GTK_SHORTCUT_CONTROLLER_GET_CLASS(o : longint) : longint;

type


function gtk_shortcut_controller_get_type:TGType;cdecl;external;

function gtk_shortcut_controller_new:PGtkEventController;cdecl;external;

function gtk_shortcut_controller_new_for_model(model:PGListModel):PGtkEventController;cdecl;external;

procedure gtk_shortcut_controller_set_mnemonics_modifiers(self:PGtkShortcutController; modifiers:TGdkModifierType);cdecl;external;

function gtk_shortcut_controller_get_mnemonics_modifiers(self:PGtkShortcutController):TGdkModifierType;cdecl;external;

procedure gtk_shortcut_controller_set_scope(self:PGtkShortcutController; scope:TGtkShortcutScope);cdecl;external;

function gtk_shortcut_controller_get_scope(self:PGtkShortcutController):TGtkShortcutScope;cdecl;external;

procedure gtk_shortcut_controller_add_shortcut(self:PGtkShortcutController; shortcut:PGtkShortcut);cdecl;external;

procedure gtk_shortcut_controller_remove_shortcut(self:PGtkShortcutController; shortcut:PGtkShortcut);cdecl;external;

{$endif}


implementation

function GTK_TYPE_SHORTCUT_CONTROLLER : longint; { return type might be wrong }
  begin
    GTK_TYPE_SHORTCUT_CONTROLLER:=gtk_shortcut_controller_get_type;
  end;

function GTK_SHORTCUT_CONTROLLER(o : longint) : longint;
begin
  GTK_SHORTCUT_CONTROLLER:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_SHORTCUT_CONTROLLER,GtkShortcutController);
end;

function GTK_SHORTCUT_CONTROLLER_CLASS(k : longint) : longint;
begin
  GTK_SHORTCUT_CONTROLLER_CLASS:=G_TYPE_CHECK_CLASS_CAST(k,GTK_TYPE_SHORTCUT_CONTROLLER,GtkShortcutControllerClass);
end;

function GTK_IS_SHORTCUT_CONTROLLER(o : longint) : longint;
begin
  GTK_IS_SHORTCUT_CONTROLLER:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_SHORTCUT_CONTROLLER);
end;

function GTK_IS_SHORTCUT_CONTROLLER_CLASS(k : longint) : longint;
begin
  GTK_IS_SHORTCUT_CONTROLLER_CLASS:=G_TYPE_CHECK_CLASS_TYPE(k,GTK_TYPE_SHORTCUT_CONTROLLER);
end;

function GTK_SHORTCUT_CONTROLLER_GET_CLASS(o : longint) : longint;
begin
  GTK_SHORTCUT_CONTROLLER_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GTK_TYPE_SHORTCUT_CONTROLLER,GtkShortcutControllerClass);
end;


end.
