
unit gtkinfobar;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkinfobar.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkinfobar.h
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
PGtkInfoBar  = ^GtkInfoBar;
PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef __GTK_INFO_BAR_H__}
{$define __GTK_INFO_BAR_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}
{$include <gtk/gtkenums.h>}


function GTK_TYPE_INFO_BAR : longint; { return type might be wrong }

function GTK_INFO_BAR(obj : longint) : longint;

function GTK_IS_INFO_BAR(obj : longint) : longint;

type


function gtk_info_bar_get_type:TGType;cdecl;external;

function gtk_info_bar_new:PGtkWidget;cdecl;external;

function gtk_info_bar_new_with_buttons(first_button_text:Pchar; args:array of const):PGtkWidget;cdecl;external;
function gtk_info_bar_new_with_buttons(first_button_text:Pchar):PGtkWidget;cdecl;external;

procedure gtk_info_bar_add_action_widget(info_bar:PGtkInfoBar; child:PGtkWidget; response_id:longint);cdecl;external;

procedure gtk_info_bar_remove_action_widget(info_bar:PGtkInfoBar; widget:PGtkWidget);cdecl;external;

function gtk_info_bar_add_button(info_bar:PGtkInfoBar; button_text:Pchar; response_id:longint):PGtkWidget;cdecl;external;

procedure gtk_info_bar_add_buttons(info_bar:PGtkInfoBar; first_button_text:Pchar; args:array of const);cdecl;external;
procedure gtk_info_bar_add_buttons(info_bar:PGtkInfoBar; first_button_text:Pchar);cdecl;external;

procedure gtk_info_bar_add_child(info_bar:PGtkInfoBar; widget:PGtkWidget);cdecl;external;

procedure gtk_info_bar_remove_child(info_bar:PGtkInfoBar; widget:PGtkWidget);cdecl;external;

procedure gtk_info_bar_set_response_sensitive(info_bar:PGtkInfoBar; response_id:longint; setting:Tgboolean);cdecl;external;

procedure gtk_info_bar_set_default_response(info_bar:PGtkInfoBar; response_id:longint);cdecl;external;

procedure gtk_info_bar_response(info_bar:PGtkInfoBar; response_id:longint);cdecl;external;

procedure gtk_info_bar_set_message_type(info_bar:PGtkInfoBar; message_type:TGtkMessageType);cdecl;external;

function gtk_info_bar_get_message_type(info_bar:PGtkInfoBar):TGtkMessageType;cdecl;external;

procedure gtk_info_bar_set_show_close_button(info_bar:PGtkInfoBar; setting:Tgboolean);cdecl;external;

function gtk_info_bar_get_show_close_button(info_bar:PGtkInfoBar):Tgboolean;cdecl;external;

procedure gtk_info_bar_set_revealed(info_bar:PGtkInfoBar; revealed:Tgboolean);cdecl;external;

function gtk_info_bar_get_revealed(info_bar:PGtkInfoBar):Tgboolean;cdecl;external;

{$endif}


implementation

function GTK_TYPE_INFO_BAR : longint; { return type might be wrong }
  begin
    GTK_TYPE_INFO_BAR:=gtk_info_bar_get_type;
  end;

function GTK_INFO_BAR(obj : longint) : longint;
begin
  GTK_INFO_BAR:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_INFO_BAR,GtkInfoBar);
end;

function GTK_IS_INFO_BAR(obj : longint) : longint;
begin
  GTK_IS_INFO_BAR:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_INFO_BAR);
end;


end.
