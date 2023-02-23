
unit gtklockbutton;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtklockbutton.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtklockbutton.h
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
PGPermission  = ^GPermission;
PGtkLockButton  = ^GtkLockButton;
PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_LOCK_BUTTON_H__}
{$define __GTK_LOCK_BUTTON_H__}
{$include <gtk/gtkbutton.h>}
{$include <gio/gio.h>}


function GTK_TYPE_LOCK_BUTTON : longint; { return type might be wrong }

function GTK_LOCK_BUTTON(o : longint) : longint;

function GTK_IS_LOCK_BUTTON(o : longint) : longint;

type


function gtk_lock_button_get_type:TGType;cdecl;external;

function gtk_lock_button_new(permission:PGPermission):PGtkWidget;cdecl;external;

function gtk_lock_button_get_permission(button:PGtkLockButton):PGPermission;cdecl;external;

procedure gtk_lock_button_set_permission(button:PGtkLockButton; permission:PGPermission);cdecl;external;

{$endif}


implementation

function GTK_TYPE_LOCK_BUTTON : longint; { return type might be wrong }
  begin
    GTK_TYPE_LOCK_BUTTON:=gtk_lock_button_get_type;
  end;

function GTK_LOCK_BUTTON(o : longint) : longint;
begin
  GTK_LOCK_BUTTON:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_LOCK_BUTTON,GtkLockButton);
end;

function GTK_IS_LOCK_BUTTON(o : longint) : longint;
begin
  GTK_IS_LOCK_BUTTON:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_LOCK_BUTTON);
end;


end.
