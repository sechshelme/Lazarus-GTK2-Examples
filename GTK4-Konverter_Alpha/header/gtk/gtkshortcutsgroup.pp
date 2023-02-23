
unit gtkshortcutsgroup;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkshortcutsgroup.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkshortcutsgroup.h
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



{$ifndef __GTK_SHORTCUTS_GROUP_H__}
{$define __GTK_SHORTCUTS_GROUP_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}


function GTK_TYPE_SHORTCUTS_GROUP : longint; { return type might be wrong }

function GTK_SHORTCUTS_GROUP(obj : longint) : longint;

function GTK_IS_SHORTCUTS_GROUP(obj : longint) : longint;

type


function gtk_shortcuts_group_get_type:TGType;cdecl;external;

{$endif}


implementation

function GTK_TYPE_SHORTCUTS_GROUP : longint; { return type might be wrong }
  begin
    GTK_TYPE_SHORTCUTS_GROUP:=gtk_shortcuts_group_get_type;
  end;

function GTK_SHORTCUTS_GROUP(obj : longint) : longint;
begin
  GTK_SHORTCUTS_GROUP:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_SHORTCUTS_GROUP,GtkShortcutsGroup);
end;

function GTK_IS_SHORTCUTS_GROUP(obj : longint) : longint;
begin
  GTK_IS_SHORTCUTS_GROUP:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_SHORTCUTS_GROUP);
end;


end.
