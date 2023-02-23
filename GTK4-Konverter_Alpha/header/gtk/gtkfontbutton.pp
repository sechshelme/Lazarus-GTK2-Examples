
unit gtkfontbutton;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkfontbutton.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkfontbutton.h
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
PGtkFontButton  = ^GtkFontButton;
PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef __GTK_FONT_BUTTON_H__}
{$define __GTK_FONT_BUTTON_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkbutton.h>}


function GTK_TYPE_FONT_BUTTON : longint; { return type might be wrong }

function GTK_FONT_BUTTON(obj : longint) : longint;

function GTK_IS_FONT_BUTTON(obj : longint) : longint;

type


function gtk_font_button_get_type:TGType;cdecl;external;

function gtk_font_button_new:PGtkWidget;cdecl;external;

function gtk_font_button_new_with_font(fontname:Pchar):PGtkWidget;cdecl;external;

function gtk_font_button_get_title(font_button:PGtkFontButton):Pchar;cdecl;external;

procedure gtk_font_button_set_title(font_button:PGtkFontButton; title:Pchar);cdecl;external;

function gtk_font_button_get_modal(font_button:PGtkFontButton):Tgboolean;cdecl;external;

procedure gtk_font_button_set_modal(font_button:PGtkFontButton; modal:Tgboolean);cdecl;external;

function gtk_font_button_get_use_font(font_button:PGtkFontButton):Tgboolean;cdecl;external;

procedure gtk_font_button_set_use_font(font_button:PGtkFontButton; use_font:Tgboolean);cdecl;external;

function gtk_font_button_get_use_size(font_button:PGtkFontButton):Tgboolean;cdecl;external;

procedure gtk_font_button_set_use_size(font_button:PGtkFontButton; use_size:Tgboolean);cdecl;external;

{$endif}


implementation

function GTK_TYPE_FONT_BUTTON : longint; { return type might be wrong }
  begin
    GTK_TYPE_FONT_BUTTON:=gtk_font_button_get_type;
  end;

function GTK_FONT_BUTTON(obj : longint) : longint;
begin
  GTK_FONT_BUTTON:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_FONT_BUTTON,GtkFontButton);
end;

function GTK_IS_FONT_BUTTON(obj : longint) : longint;
begin
  GTK_IS_FONT_BUTTON:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_FONT_BUTTON);
end;


end.
