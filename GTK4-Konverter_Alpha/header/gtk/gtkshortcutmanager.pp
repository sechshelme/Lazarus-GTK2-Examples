
unit gtkshortcutmanager;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkshortcutmanager.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkshortcutmanager.h
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
PGtkShortcutController  = ^GtkShortcutController;
PGtkShortcutManager  = ^GtkShortcutManager;
PGtkShortcutManagerInterface  = ^GtkShortcutManagerInterface;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_SHORTCUT_MANAGER_H__}
{$define __GTK_SHORTCUT_MANAGER_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkshortcutcontroller.h>}
{$include <gtk/gtkwidget.h>}


function GTK_TYPE_SHORTCUT_MANAGER : longint; { return type might be wrong }






type
  PGtkShortcutManagerInterface = ^TGtkShortcutManagerInterface;
  TGtkShortcutManagerInterface = record
      g_iface : TGTypeInterface;
      add_controller : procedure (self:PGtkShortcutManager; controller:PGtkShortcutController);cdecl;
      remove_controller : procedure (self:PGtkShortcutManager; controller:PGtkShortcutController);cdecl;
    end;


{$endif}


implementation

function GTK_TYPE_SHORTCUT_MANAGER : longint; { return type might be wrong }
  begin
    GTK_TYPE_SHORTCUT_MANAGER:=gtk_shortcut_manager_get_type;
  end;


end.
