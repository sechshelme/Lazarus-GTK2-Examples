
unit gtkpasswordentry;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkpasswordentry.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkpasswordentry.h
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
PGMenuModel  = ^GMenuModel;
PGtkPasswordEntry  = ^GtkPasswordEntry;
PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_PASSWORD_ENTRY_H__}
{$define __GTK_PASSWORD_ENTRY_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkentry.h>}


function GTK_TYPE_PASSWORD_ENTRY : longint; { return type might be wrong }

function GTK_PASSWORD_ENTRY(obj : longint) : longint;

function GTK_IS_PASSWORD_ENTRY(obj : longint) : longint;

type


function gtk_password_entry_get_type:TGType;cdecl;external;

function gtk_password_entry_new:PGtkWidget;cdecl;external;

procedure gtk_password_entry_set_show_peek_icon(entry:PGtkPasswordEntry; show_peek_icon:Tgboolean);cdecl;external;

function gtk_password_entry_get_show_peek_icon(entry:PGtkPasswordEntry):Tgboolean;cdecl;external;

procedure gtk_password_entry_set_extra_menu(entry:PGtkPasswordEntry; model:PGMenuModel);cdecl;external;

function gtk_password_entry_get_extra_menu(entry:PGtkPasswordEntry):PGMenuModel;cdecl;external;

{$endif}


implementation

function GTK_TYPE_PASSWORD_ENTRY : longint; { return type might be wrong }
  begin
    GTK_TYPE_PASSWORD_ENTRY:=gtk_password_entry_get_type;
  end;

function GTK_PASSWORD_ENTRY(obj : longint) : longint;
begin
  GTK_PASSWORD_ENTRY:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_PASSWORD_ENTRY,GtkPasswordEntry);
end;

function GTK_IS_PASSWORD_ENTRY(obj : longint) : longint;
begin
  GTK_IS_PASSWORD_ENTRY:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_PASSWORD_ENTRY);
end;


end.
