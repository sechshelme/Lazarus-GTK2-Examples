
unit gtksettings;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtksettings.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtksettings.h
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
PGdkDisplay  = ^GdkDisplay;
PGtkSettings  = ^GtkSettings;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_SETTINGS_H__}
{$define __GTK_SETTINGS_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}
{$include <gtk/gtktypes.h>}



function GTK_TYPE_SETTINGS : longint; { return type might be wrong }

function GTK_SETTINGS(obj : longint) : longint;

function GTK_IS_SETTINGS(obj : longint) : longint;



function gtk_settings_get_type:TGType;cdecl;external;

function gtk_settings_get_default:PGtkSettings;cdecl;external;

function gtk_settings_get_for_display(display:PGdkDisplay):PGtkSettings;cdecl;external;

procedure gtk_settings_reset_property(settings:PGtkSettings; name:Pchar);cdecl;external;

{$endif}


implementation

function GTK_TYPE_SETTINGS : longint; { return type might be wrong }
  begin
    GTK_TYPE_SETTINGS:=gtk_settings_get_type;
  end;

function GTK_SETTINGS(obj : longint) : longint;
begin
  GTK_SETTINGS:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_SETTINGS,GtkSettings);
end;

function GTK_IS_SETTINGS(obj : longint) : longint;
begin
  GTK_IS_SETTINGS:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_SETTINGS);
end;


end.
