
unit gtkpopovermenubar;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkpopovermenubar.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkpopovermenubar.h
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
PGMenuModel  = ^GMenuModel;
PGtkPopoverMenuBar  = ^GtkPopoverMenuBar;
PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_POPOVER_MENU_BAR_H__}
{$define __GTK_POPOVER_MENU_BAR_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkpopover.h>}


function GTK_TYPE_POPOVER_MENU_BAR : longint; { return type might be wrong }

function GTK_POPOVER_MENU_BAR(obj : longint) : longint;

function GTK_IS_POPOVER_MENU_BAR(obj : longint) : longint;

type


function gtk_popover_menu_bar_get_type:TGType;cdecl;external;

function gtk_popover_menu_bar_new_from_model(model:PGMenuModel):PGtkWidget;cdecl;external;

procedure gtk_popover_menu_bar_set_menu_model(bar:PGtkPopoverMenuBar; model:PGMenuModel);cdecl;external;

function gtk_popover_menu_bar_get_menu_model(bar:PGtkPopoverMenuBar):PGMenuModel;cdecl;external;

function gtk_popover_menu_bar_add_child(bar:PGtkPopoverMenuBar; child:PGtkWidget; id:Pchar):Tgboolean;cdecl;external;

function gtk_popover_menu_bar_remove_child(bar:PGtkPopoverMenuBar; child:PGtkWidget):Tgboolean;cdecl;external;

{$endif}


implementation

function GTK_TYPE_POPOVER_MENU_BAR : longint; { return type might be wrong }
  begin
    GTK_TYPE_POPOVER_MENU_BAR:=gtk_popover_menu_bar_get_type;
  end;

function GTK_POPOVER_MENU_BAR(obj : longint) : longint;
begin
  GTK_POPOVER_MENU_BAR:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_POPOVER_MENU_BAR,GtkPopoverMenuBar);
end;

function GTK_IS_POPOVER_MENU_BAR(obj : longint) : longint;
begin
  GTK_IS_POPOVER_MENU_BAR:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_POPOVER_MENU_BAR);
end;


end.
