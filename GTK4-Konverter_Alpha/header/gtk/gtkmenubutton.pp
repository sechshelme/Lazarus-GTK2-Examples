
unit gtkmenubutton;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkmenubutton.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkmenubutton.h
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
PGtkMenuButton  = ^GtkMenuButton;
PGtkPopover  = ^GtkPopover;
PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_MENU_BUTTON_H__}
{$define __GTK_MENU_BUTTON_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtktogglebutton.h>}
{$include <gtk/gtkpopover.h>}


function GTK_TYPE_MENU_BUTTON : longint; { return type might be wrong }

function GTK_MENU_BUTTON(obj : longint) : longint;

function GTK_IS_MENU_BUTTON(obj : longint) : longint;

type


  TGtkMenuButtonCreatePopupFunc = procedure (menu_button:PGtkMenuButton; user_data:Tgpointer);cdecl;


function gtk_menu_button_get_type:TGType;cdecl;external;

function gtk_menu_button_new:PGtkWidget;cdecl;external;

procedure gtk_menu_button_set_popover(menu_button:PGtkMenuButton; popover:PGtkWidget);cdecl;external;

function gtk_menu_button_get_popover(menu_button:PGtkMenuButton):PGtkPopover;cdecl;external;

procedure gtk_menu_button_set_direction(menu_button:PGtkMenuButton; direction:TGtkArrowType);cdecl;external;

function gtk_menu_button_get_direction(menu_button:PGtkMenuButton):TGtkArrowType;cdecl;external;

procedure gtk_menu_button_set_menu_model(menu_button:PGtkMenuButton; menu_model:PGMenuModel);cdecl;external;

function gtk_menu_button_get_menu_model(menu_button:PGtkMenuButton):PGMenuModel;cdecl;external;

procedure gtk_menu_button_set_icon_name(menu_button:PGtkMenuButton; icon_name:Pchar);cdecl;external;

function gtk_menu_button_get_icon_name(menu_button:PGtkMenuButton):Pchar;cdecl;external;

procedure gtk_menu_button_set_always_show_arrow(menu_button:PGtkMenuButton; always_show_arrow:Tgboolean);cdecl;external;

function gtk_menu_button_get_always_show_arrow(menu_button:PGtkMenuButton):Tgboolean;cdecl;external;

procedure gtk_menu_button_set_label(menu_button:PGtkMenuButton; _label:Pchar);cdecl;external;

function gtk_menu_button_get_label(menu_button:PGtkMenuButton):Pchar;cdecl;external;

procedure gtk_menu_button_set_use_underline(menu_button:PGtkMenuButton; use_underline:Tgboolean);cdecl;external;

function gtk_menu_button_get_use_underline(menu_button:PGtkMenuButton):Tgboolean;cdecl;external;

procedure gtk_menu_button_set_has_frame(menu_button:PGtkMenuButton; has_frame:Tgboolean);cdecl;external;

function gtk_menu_button_get_has_frame(menu_button:PGtkMenuButton):Tgboolean;cdecl;external;

procedure gtk_menu_button_popup(menu_button:PGtkMenuButton);cdecl;external;

procedure gtk_menu_button_popdown(menu_button:PGtkMenuButton);cdecl;external;

procedure gtk_menu_button_set_create_popup_func(menu_button:PGtkMenuButton; func:TGtkMenuButtonCreatePopupFunc; user_data:Tgpointer; destroy_notify:TGDestroyNotify);cdecl;external;

procedure gtk_menu_button_set_primary(menu_button:PGtkMenuButton; primary:Tgboolean);cdecl;external;

function gtk_menu_button_get_primary(menu_button:PGtkMenuButton):Tgboolean;cdecl;external;

procedure gtk_menu_button_set_child(menu_button:PGtkMenuButton; child:PGtkWidget);cdecl;external;

function gtk_menu_button_get_child(menu_button:PGtkMenuButton):PGtkWidget;cdecl;external;

{$endif}


implementation

function GTK_TYPE_MENU_BUTTON : longint; { return type might be wrong }
  begin
    GTK_TYPE_MENU_BUTTON:=gtk_menu_button_get_type;
  end;

function GTK_MENU_BUTTON(obj : longint) : longint;
begin
  GTK_MENU_BUTTON:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_MENU_BUTTON,GtkMenuButton);
end;

function GTK_IS_MENU_BUTTON(obj : longint) : longint;
begin
  GTK_IS_MENU_BUTTON:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_MENU_BUTTON);
end;


end.
