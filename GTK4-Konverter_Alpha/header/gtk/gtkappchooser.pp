
unit gtkappchooser;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkappchooser.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkappchooser.h
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
PGAppInfo  = ^GAppInfo;
PGtkAppChooser  = ^GtkAppChooser;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_APP_CHOOSER_H__}
{$define __GTK_APP_CHOOSER_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <glib.h>}
{$include <gio/gio.h>}
{$include <gdk/gdk.h>}


function GTK_TYPE_APP_CHOOSER : longint; { return type might be wrong }

function GTK_APP_CHOOSER(obj : longint) : longint;

function GTK_IS_APP_CHOOSER(obj : longint) : longint;

type


function gtk_app_chooser_get_type:TGType;cdecl;external;

function gtk_app_chooser_get_app_info(self:PGtkAppChooser):PGAppInfo;cdecl;external;

function gtk_app_chooser_get_content_type(self:PGtkAppChooser):Pchar;cdecl;external;

procedure gtk_app_chooser_refresh(self:PGtkAppChooser);cdecl;external;

{$endif}


implementation

function GTK_TYPE_APP_CHOOSER : longint; { return type might be wrong }
  begin
    GTK_TYPE_APP_CHOOSER:=gtk_app_chooser_get_type;
  end;

function GTK_APP_CHOOSER(obj : longint) : longint;
begin
  GTK_APP_CHOOSER:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_APP_CHOOSER,GtkAppChooser);
end;

function GTK_IS_APP_CHOOSER(obj : longint) : longint;
begin
  GTK_IS_APP_CHOOSER:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_APP_CHOOSER);
end;


end.
