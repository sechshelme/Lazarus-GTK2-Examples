
unit gtklinkbutton;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtklinkbutton.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtklinkbutton.h
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
PGtkLinkButton  = ^GtkLinkButton;
PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_LINK_BUTTON_H__}
{$define __GTK_LINK_BUTTON_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkbutton.h>}


function GTK_TYPE_LINK_BUTTON : longint; { return type might be wrong }

function GTK_LINK_BUTTON(obj : longint) : longint;

function GTK_IS_LINK_BUTTON(obj : longint) : longint;

type


function gtk_link_button_get_type:TGType;cdecl;external;

function gtk_link_button_new(uri:Pchar):PGtkWidget;cdecl;external;

function gtk_link_button_new_with_label(uri:Pchar; _label:Pchar):PGtkWidget;cdecl;external;

function gtk_link_button_get_uri(link_button:PGtkLinkButton):Pchar;cdecl;external;

procedure gtk_link_button_set_uri(link_button:PGtkLinkButton; uri:Pchar);cdecl;external;

function gtk_link_button_get_visited(link_button:PGtkLinkButton):Tgboolean;cdecl;external;

procedure gtk_link_button_set_visited(link_button:PGtkLinkButton; visited:Tgboolean);cdecl;external;

{$endif}


implementation

function GTK_TYPE_LINK_BUTTON : longint; { return type might be wrong }
  begin
    GTK_TYPE_LINK_BUTTON:=gtk_link_button_get_type;
  end;

function GTK_LINK_BUTTON(obj : longint) : longint;
begin
  GTK_LINK_BUTTON:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_LINK_BUTTON,GtkLinkButton);
end;

function GTK_IS_LINK_BUTTON(obj : longint) : longint;
begin
  GTK_IS_LINK_BUTTON:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_LINK_BUTTON);
end;


end.
