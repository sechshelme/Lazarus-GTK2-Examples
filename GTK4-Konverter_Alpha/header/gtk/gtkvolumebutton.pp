
unit gtkvolumebutton;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkvolumebutton.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkvolumebutton.h
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
PGtkVolumeButton  = ^GtkVolumeButton;
PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef __GTK_VOLUME_BUTTON_H__}
{$define __GTK_VOLUME_BUTTON_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkscalebutton.h>}


function GTK_TYPE_VOLUME_BUTTON : longint; { return type might be wrong }

function GTK_VOLUME_BUTTON(obj : longint) : longint;

function GTK_IS_VOLUME_BUTTON(obj : longint) : longint;

type
  PGtkVolumeButton = ^TGtkVolumeButton;
  TGtkVolumeButton = record
      parent : TGtkScaleButton;
    end;



function gtk_volume_button_get_type:TGType;cdecl;external;

function gtk_volume_button_new:PGtkWidget;cdecl;external;

{$endif}


implementation

function GTK_TYPE_VOLUME_BUTTON : longint; { return type might be wrong }
  begin
    GTK_TYPE_VOLUME_BUTTON:=gtk_volume_button_get_type;
  end;

function GTK_VOLUME_BUTTON(obj : longint) : longint;
begin
  GTK_VOLUME_BUTTON:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_VOLUME_BUTTON,GtkVolumeButton);
end;

function GTK_IS_VOLUME_BUTTON(obj : longint) : longint;
begin
  GTK_IS_VOLUME_BUTTON:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_VOLUME_BUTTON);
end;


end.
