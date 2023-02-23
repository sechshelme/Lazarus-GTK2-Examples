
unit gtkswitch;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkswitch.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkswitch.h
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
PGtkSwitch  = ^GtkSwitch;
PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_SWITCH_H__}
{$define __GTK_SWITCH_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}


function GTK_TYPE_SWITCH : longint; { return type might be wrong }

function GTK_SWITCH(obj : longint) : longint;

function GTK_IS_SWITCH(obj : longint) : longint;

type


function gtk_switch_get_type:TGType;cdecl;external;

function gtk_switch_new:PGtkWidget;cdecl;external;

procedure gtk_switch_set_active(self:PGtkSwitch; is_active:Tgboolean);cdecl;external;

function gtk_switch_get_active(self:PGtkSwitch):Tgboolean;cdecl;external;

procedure gtk_switch_set_state(self:PGtkSwitch; state:Tgboolean);cdecl;external;

function gtk_switch_get_state(self:PGtkSwitch):Tgboolean;cdecl;external;

{$endif}


implementation

function GTK_TYPE_SWITCH : longint; { return type might be wrong }
  begin
    GTK_TYPE_SWITCH:=gtk_switch_get_type;
  end;

function GTK_SWITCH(obj : longint) : longint;
begin
  GTK_SWITCH:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_SWITCH,GtkSwitch);
end;

function GTK_IS_SWITCH(obj : longint) : longint;
begin
  GTK_IS_SWITCH:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_SWITCH);
end;


end.
