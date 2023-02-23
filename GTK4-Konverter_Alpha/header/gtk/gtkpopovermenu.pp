
unit gtkpopovermenu;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkpopovermenu.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkpopovermenu.h
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
PGtkPopoverMenu  = ^GtkPopoverMenu;
PGtkPopoverMenuFlags  = ^GtkPopoverMenuFlags;
PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_POPOVER_MENU_H__}
{$define __GTK_POPOVER_MENU_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkpopover.h>}


function GTK_TYPE_POPOVER_MENU : longint; { return type might be wrong }

function GTK_POPOVER_MENU(o : longint) : longint;

function GTK_IS_POPOVER_MENU(o : longint) : longint;

type


function gtk_popover_menu_get_type:TGType;cdecl;external;

function gtk_popover_menu_new_from_model(model:PGMenuModel):PGtkWidget;cdecl;external;

type
  PGtkPopoverMenuFlags = ^TGtkPopoverMenuFlags;
  TGtkPopoverMenuFlags = (GTK_POPOVER_MENU_NESTED := 1 shl 0);


function gtk_popover_menu_new_from_model_full(model:PGMenuModel; flags:TGtkPopoverMenuFlags):PGtkWidget;cdecl;external;

procedure gtk_popover_menu_set_menu_model(popover:PGtkPopoverMenu; model:PGMenuModel);cdecl;external;

function gtk_popover_menu_get_menu_model(popover:PGtkPopoverMenu):PGMenuModel;cdecl;external;

function gtk_popover_menu_add_child(popover:PGtkPopoverMenu; child:PGtkWidget; id:Pchar):Tgboolean;cdecl;external;

function gtk_popover_menu_remove_child(popover:PGtkPopoverMenu; child:PGtkWidget):Tgboolean;cdecl;external;

{$endif}


implementation

function GTK_TYPE_POPOVER_MENU : longint; { return type might be wrong }
  begin
    GTK_TYPE_POPOVER_MENU:=gtk_popover_menu_get_type;
  end;

function GTK_POPOVER_MENU(o : longint) : longint;
begin
  GTK_POPOVER_MENU:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_POPOVER_MENU,GtkPopoverMenu);
end;

function GTK_IS_POPOVER_MENU(o : longint) : longint;
begin
  GTK_IS_POPOVER_MENU:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_POPOVER_MENU);
end;


end.
