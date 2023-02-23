
unit gtkstacksidebar;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkstacksidebar.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkstacksidebar.h
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
PGtkStack  = ^GtkStack;
PGtkStackSidebar  = ^GtkStackSidebar;
PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_STACK_SIDEBAR_H__}
{$define __GTK_STACK_SIDEBAR_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkstack.h>}


function GTK_TYPE_STACK_SIDEBAR : longint; { return type might be wrong }

function GTK_STACK_SIDEBAR(obj : longint) : longint;

function GTK_IS_STACK_SIDEBAR(obj : longint) : longint;

type


function gtk_stack_sidebar_get_type:TGType;cdecl;external;

function gtk_stack_sidebar_new:PGtkWidget;cdecl;external;

procedure gtk_stack_sidebar_set_stack(self:PGtkStackSidebar; stack:PGtkStack);cdecl;external;

function gtk_stack_sidebar_get_stack(self:PGtkStackSidebar):PGtkStack;cdecl;external;

{$endif}


implementation

function GTK_TYPE_STACK_SIDEBAR : longint; { return type might be wrong }
  begin
    GTK_TYPE_STACK_SIDEBAR:=gtk_stack_sidebar_get_type;
  end;

function GTK_STACK_SIDEBAR(obj : longint) : longint;
begin
  GTK_STACK_SIDEBAR:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_STACK_SIDEBAR,GtkStackSidebar);
end;

function GTK_IS_STACK_SIDEBAR(obj : longint) : longint;
begin
  GTK_IS_STACK_SIDEBAR:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_STACK_SIDEBAR);
end;


end.
