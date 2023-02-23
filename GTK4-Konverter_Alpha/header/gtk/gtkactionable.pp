
unit gtkactionable;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkactionable.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkactionable.h
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
PGtkActionable  = ^GtkActionable;
PGtkActionableInterface  = ^GtkActionableInterface;
PGVariant  = ^GVariant;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_ACTIONABLE_H__}
{$define __GTK_ACTIONABLE_H__}
{$include <glib-object.h>}
{$include <gdk/gdk.h>}


function GTK_TYPE_ACTIONABLE : longint; { return type might be wrong }

function GTK_ACTIONABLE(inst : longint) : longint;

function GTK_IS_ACTIONABLE(inst : longint) : longint;

function GTK_ACTIONABLE_GET_IFACE(inst : longint) : longint;

type


  PGtkActionableInterface = ^TGtkActionableInterface;
  TGtkActionableInterface = record
      g_iface : TGTypeInterface;
      get_action_name : function (actionable:PGtkActionable):Pchar;cdecl;
      set_action_name : procedure (actionable:PGtkActionable; action_name:Pchar);cdecl;
      get_action_target_value : function (actionable:PGtkActionable):PGVariant;cdecl;
      set_action_target_value : procedure (actionable:PGtkActionable; target_value:PGVariant);cdecl;
    end;



function gtk_actionable_get_type:TGType;cdecl;external;

function gtk_actionable_get_action_name(actionable:PGtkActionable):Pchar;cdecl;external;

procedure gtk_actionable_set_action_name(actionable:PGtkActionable; action_name:Pchar);cdecl;external;

function gtk_actionable_get_action_target_value(actionable:PGtkActionable):PGVariant;cdecl;external;

procedure gtk_actionable_set_action_target_value(actionable:PGtkActionable; target_value:PGVariant);cdecl;external;

procedure gtk_actionable_set_action_target(actionable:PGtkActionable; format_string:Pchar; args:array of const);cdecl;external;
procedure gtk_actionable_set_action_target(actionable:PGtkActionable; format_string:Pchar);cdecl;external;

procedure gtk_actionable_set_detailed_action_name(actionable:PGtkActionable; detailed_action_name:Pchar);cdecl;external;

{$endif}


implementation

function GTK_TYPE_ACTIONABLE : longint; { return type might be wrong }
  begin
    GTK_TYPE_ACTIONABLE:=gtk_actionable_get_type;
  end;

function GTK_ACTIONABLE(inst : longint) : longint;
begin
  GTK_ACTIONABLE:=G_TYPE_CHECK_INSTANCE_CAST(inst,GTK_TYPE_ACTIONABLE,GtkActionable);
end;

function GTK_IS_ACTIONABLE(inst : longint) : longint;
begin
  GTK_IS_ACTIONABLE:=G_TYPE_CHECK_INSTANCE_TYPE(inst,GTK_TYPE_ACTIONABLE);
end;

function GTK_ACTIONABLE_GET_IFACE(inst : longint) : longint;
begin
  GTK_ACTIONABLE_GET_IFACE:=G_TYPE_INSTANCE_GET_INTERFACE(inst,GTK_TYPE_ACTIONABLE,GtkActionableInterface);
end;


end.
