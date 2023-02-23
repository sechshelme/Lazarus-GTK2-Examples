
unit gtkshortcutswindow;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkshortcutswindow.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkshortcutswindow.h
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

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_SHORTCUTS_WINDOW_H__}
{$define __GTK_SHORTCUTS_WINDOW_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwindow.h>}


function GTK_TYPE_SHORTCUTS_WINDOW : longint; { return type might be wrong }

function GTK_SHORTCUTS_WINDOW(obj : longint) : longint;

function GTK_IS_SHORTCUTS_WINDOW(obj : longint) : longint;

type


function gtk_shortcuts_window_get_type:TGType;cdecl;external;


{$endif}


implementation

function GTK_TYPE_SHORTCUTS_WINDOW : longint; { return type might be wrong }
  begin
    GTK_TYPE_SHORTCUTS_WINDOW:=gtk_shortcuts_window_get_type;
  end;

function GTK_SHORTCUTS_WINDOW(obj : longint) : longint;
begin
  GTK_SHORTCUTS_WINDOW:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_SHORTCUTS_WINDOW,GtkShortcutsWindow);
end;

function GTK_IS_SHORTCUTS_WINDOW(obj : longint) : longint;
begin
  GTK_IS_SHORTCUTS_WINDOW:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_SHORTCUTS_WINDOW);
end;


end.
