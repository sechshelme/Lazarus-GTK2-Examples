
unit gtkcolorbutton;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkcolorbutton.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkcolorbutton.h
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
PGdkRGBA  = ^GdkRGBA;
PGtkColorButton  = ^GtkColorButton;
PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef __GTK_COLOR_BUTTON_H__}
{$define __GTK_COLOR_BUTTON_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkbutton.h>}


function GTK_TYPE_COLOR_BUTTON : longint; { return type might be wrong }

function GTK_COLOR_BUTTON(obj : longint) : longint;

function GTK_IS_COLOR_BUTTON(obj : longint) : longint;

type


function gtk_color_button_get_type:TGType;cdecl;external;

function gtk_color_button_new:PGtkWidget;cdecl;external;

function gtk_color_button_new_with_rgba(rgba:PGdkRGBA):PGtkWidget;cdecl;external;

procedure gtk_color_button_set_title(button:PGtkColorButton; title:Pchar);cdecl;external;

function gtk_color_button_get_title(button:PGtkColorButton):Pchar;cdecl;external;

function gtk_color_button_get_modal(button:PGtkColorButton):Tgboolean;cdecl;external;

procedure gtk_color_button_set_modal(button:PGtkColorButton; modal:Tgboolean);cdecl;external;

{$endif}


implementation

function GTK_TYPE_COLOR_BUTTON : longint; { return type might be wrong }
  begin
    GTK_TYPE_COLOR_BUTTON:=gtk_color_button_get_type;
  end;

function GTK_COLOR_BUTTON(obj : longint) : longint;
begin
  GTK_COLOR_BUTTON:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_COLOR_BUTTON,GtkColorButton);
end;

function GTK_IS_COLOR_BUTTON(obj : longint) : longint;
begin
  GTK_IS_COLOR_BUTTON:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_COLOR_BUTTON);
end;


end.
