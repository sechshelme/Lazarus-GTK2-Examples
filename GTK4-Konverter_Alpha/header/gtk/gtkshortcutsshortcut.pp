
unit gtkshortcutsshortcut;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkshortcutsshortcut.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkshortcutsshortcut.h
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
PGtkShortcutType  = ^GtkShortcutType;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef GTK_SHORTCUTS_SHORTCUT_H}
{$define GTK_SHORTCUTS_SHORTCUT_H}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}


function GTK_TYPE_SHORTCUTS_SHORTCUT : longint; { return type might be wrong }

function GTK_SHORTCUTS_SHORTCUT(obj : longint) : longint;

function GTK_IS_SHORTCUTS_SHORTCUT(obj : longint) : longint;

type


  PGtkShortcutType = ^TGtkShortcutType;
  TGtkShortcutType = (GTK_SHORTCUT_ACCELERATOR,GTK_SHORTCUT_GESTURE_PINCH,
    GTK_SHORTCUT_GESTURE_STRETCH,GTK_SHORTCUT_GESTURE_ROTATE_CLOCKWISE,
    GTK_SHORTCUT_GESTURE_ROTATE_COUNTERCLOCKWISE,
    GTK_SHORTCUT_GESTURE_TWO_FINGER_SWIPE_LEFT,
    GTK_SHORTCUT_GESTURE_TWO_FINGER_SWIPE_RIGHT,
    GTK_SHORTCUT_GESTURE,GTK_SHORTCUT_GESTURE_SWIPE_LEFT,
    GTK_SHORTCUT_GESTURE_SWIPE_RIGHT);


function gtk_shortcuts_shortcut_get_type:TGType;cdecl;external;

{$endif}


implementation

function GTK_TYPE_SHORTCUTS_SHORTCUT : longint; { return type might be wrong }
  begin
    GTK_TYPE_SHORTCUTS_SHORTCUT:=gtk_shortcuts_shortcut_get_type;
  end;

function GTK_SHORTCUTS_SHORTCUT(obj : longint) : longint;
begin
  GTK_SHORTCUTS_SHORTCUT:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_SHORTCUTS_SHORTCUT,GtkShortcutsShortcut);
end;

function GTK_IS_SHORTCUTS_SHORTCUT(obj : longint) : longint;
begin
  GTK_IS_SHORTCUTS_SHORTCUT:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_SHORTCUTS_SHORTCUT);
end;


end.
