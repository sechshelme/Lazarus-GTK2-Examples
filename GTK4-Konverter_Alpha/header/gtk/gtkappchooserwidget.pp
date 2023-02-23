
unit gtkappchooserwidget;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkappchooserwidget.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkappchooserwidget.h
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
PGtkAppChooserWidget  = ^GtkAppChooserWidget;
PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_APP_CHOOSER_WIDGET_H__}
{$define __GTK_APP_CHOOSER_WIDGET_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}
{$include <gio/gio.h>}


function GTK_TYPE_APP_CHOOSER_WIDGET : longint; { return type might be wrong }

function GTK_APP_CHOOSER_WIDGET(obj : longint) : longint;

function GTK_IS_APP_CHOOSER_WIDGET(obj : longint) : longint;

type


function gtk_app_chooser_widget_get_type:TGType;cdecl;external;

function gtk_app_chooser_widget_new(content_type:Pchar):PGtkWidget;cdecl;external;

procedure gtk_app_chooser_widget_set_show_default(self:PGtkAppChooserWidget; setting:Tgboolean);cdecl;external;

function gtk_app_chooser_widget_get_show_default(self:PGtkAppChooserWidget):Tgboolean;cdecl;external;

procedure gtk_app_chooser_widget_set_show_recommended(self:PGtkAppChooserWidget; setting:Tgboolean);cdecl;external;

function gtk_app_chooser_widget_get_show_recommended(self:PGtkAppChooserWidget):Tgboolean;cdecl;external;

procedure gtk_app_chooser_widget_set_show_fallback(self:PGtkAppChooserWidget; setting:Tgboolean);cdecl;external;

function gtk_app_chooser_widget_get_show_fallback(self:PGtkAppChooserWidget):Tgboolean;cdecl;external;

procedure gtk_app_chooser_widget_set_show_other(self:PGtkAppChooserWidget; setting:Tgboolean);cdecl;external;

function gtk_app_chooser_widget_get_show_other(self:PGtkAppChooserWidget):Tgboolean;cdecl;external;

procedure gtk_app_chooser_widget_set_show_all(self:PGtkAppChooserWidget; setting:Tgboolean);cdecl;external;

function gtk_app_chooser_widget_get_show_all(self:PGtkAppChooserWidget):Tgboolean;cdecl;external;

procedure gtk_app_chooser_widget_set_default_text(self:PGtkAppChooserWidget; text:Pchar);cdecl;external;

function gtk_app_chooser_widget_get_default_text(self:PGtkAppChooserWidget):Pchar;cdecl;external;

{$endif}


implementation

function GTK_TYPE_APP_CHOOSER_WIDGET : longint; { return type might be wrong }
  begin
    GTK_TYPE_APP_CHOOSER_WIDGET:=gtk_app_chooser_widget_get_type;
  end;

function GTK_APP_CHOOSER_WIDGET(obj : longint) : longint;
begin
  GTK_APP_CHOOSER_WIDGET:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_APP_CHOOSER_WIDGET,GtkAppChooserWidget);
end;

function GTK_IS_APP_CHOOSER_WIDGET(obj : longint) : longint;
begin
  GTK_IS_APP_CHOOSER_WIDGET:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_APP_CHOOSER_WIDGET);
end;


end.
