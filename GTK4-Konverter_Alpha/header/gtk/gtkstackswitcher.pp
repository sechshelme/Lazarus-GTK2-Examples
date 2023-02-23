
unit gtkstackswitcher;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkstackswitcher.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkstackswitcher.h
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
PGtkStackSwitcher  = ^GtkStackSwitcher;
PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_STACK_SWITCHER_H__}
{$define __GTK_STACK_SWITCHER_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkstack.h>}


function GTK_TYPE_STACK_SWITCHER : longint; { return type might be wrong }

function GTK_STACK_SWITCHER(obj : longint) : longint;

function GTK_IS_STACK_SWITCHER(obj : longint) : longint;

type


function gtk_stack_switcher_get_type:TGType;cdecl;external;

function gtk_stack_switcher_new:PGtkWidget;cdecl;external;

procedure gtk_stack_switcher_set_stack(switcher:PGtkStackSwitcher; stack:PGtkStack);cdecl;external;

function gtk_stack_switcher_get_stack(switcher:PGtkStackSwitcher):PGtkStack;cdecl;external;

{$endif}


implementation

function GTK_TYPE_STACK_SWITCHER : longint; { return type might be wrong }
  begin
    GTK_TYPE_STACK_SWITCHER:=gtk_stack_switcher_get_type;
  end;

function GTK_STACK_SWITCHER(obj : longint) : longint;
begin
  GTK_STACK_SWITCHER:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_STACK_SWITCHER,GtkStackSwitcher);
end;

function GTK_IS_STACK_SWITCHER(obj : longint) : longint;
begin
  GTK_IS_STACK_SWITCHER:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_STACK_SWITCHER);
end;


end.
