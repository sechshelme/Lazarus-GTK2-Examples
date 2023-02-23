
unit gtkappchooserbutton;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkappchooserbutton.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkappchooserbutton.h
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
PGIcon  = ^GIcon;
PGtkAppChooserButton  = ^GtkAppChooserButton;
PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_APP_CHOOSER_BUTTON_H__}
{$define __GTK_APP_CHOOSER_BUTTON_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}
{$include <gio/gio.h>}


function GTK_TYPE_APP_CHOOSER_BUTTON : longint; { return type might be wrong }

function GTK_APP_CHOOSER_BUTTON(obj : longint) : longint;

function GTK_IS_APP_CHOOSER_BUTTON(obj : longint) : longint;

type


function gtk_app_chooser_button_get_type:TGType;cdecl;external;

function gtk_app_chooser_button_new(content_type:Pchar):PGtkWidget;cdecl;external;

procedure gtk_app_chooser_button_append_separator(self:PGtkAppChooserButton);cdecl;external;

procedure gtk_app_chooser_button_append_custom_item(self:PGtkAppChooserButton; name:Pchar; _label:Pchar; icon:PGIcon);cdecl;external;

procedure gtk_app_chooser_button_set_active_custom_item(self:PGtkAppChooserButton; name:Pchar);cdecl;external;

procedure gtk_app_chooser_button_set_show_dialog_item(self:PGtkAppChooserButton; setting:Tgboolean);cdecl;external;

function gtk_app_chooser_button_get_show_dialog_item(self:PGtkAppChooserButton):Tgboolean;cdecl;external;

procedure gtk_app_chooser_button_set_heading(self:PGtkAppChooserButton; heading:Pchar);cdecl;external;

function gtk_app_chooser_button_get_heading(self:PGtkAppChooserButton):Pchar;cdecl;external;

procedure gtk_app_chooser_button_set_show_default_item(self:PGtkAppChooserButton; setting:Tgboolean);cdecl;external;

function gtk_app_chooser_button_get_show_default_item(self:PGtkAppChooserButton):Tgboolean;cdecl;external;

function gtk_app_chooser_button_get_modal(self:PGtkAppChooserButton):Tgboolean;cdecl;external;

procedure gtk_app_chooser_button_set_modal(self:PGtkAppChooserButton; modal:Tgboolean);cdecl;external;

{$endif}


implementation

function GTK_TYPE_APP_CHOOSER_BUTTON : longint; { return type might be wrong }
  begin
    GTK_TYPE_APP_CHOOSER_BUTTON:=gtk_app_chooser_button_get_type;
  end;

function GTK_APP_CHOOSER_BUTTON(obj : longint) : longint;
begin
  GTK_APP_CHOOSER_BUTTON:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_APP_CHOOSER_BUTTON,GtkAppChooserButton);
end;

function GTK_IS_APP_CHOOSER_BUTTON(obj : longint) : longint;
begin
  GTK_IS_APP_CHOOSER_BUTTON:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_APP_CHOOSER_BUTTON);
end;


end.
