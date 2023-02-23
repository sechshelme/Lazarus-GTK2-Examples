
unit gtkstyleprovider;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkstyleprovider.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkstyleprovider.h
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

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_STYLE_PROVIDER_H__}
{$define __GTK_STYLE_PROVIDER_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}
{$include <gtk/gtkenums.h>}
{$include <gtk/gtktypes.h>}


function GTK_TYPE_STYLE_PROVIDER : longint; { return type might be wrong }

function GTK_STYLE_PROVIDER(o : longint) : longint;

function GTK_IS_STYLE_PROVIDER(o : longint) : longint;


const
  GTK_STYLE_PROVIDER_PRIORITY_FALLBACK = 1;  

  GTK_STYLE_PROVIDER_PRIORITY_THEME = 200;  

  GTK_STYLE_PROVIDER_PRIORITY_SETTINGS = 400;  

  GTK_STYLE_PROVIDER_PRIORITY_APPLICATION = 600;  

  GTK_STYLE_PROVIDER_PRIORITY_USER = 800;  
type



function gtk_style_provider_get_type:TGType;cdecl;external;

{$endif}


implementation

function GTK_TYPE_STYLE_PROVIDER : longint; { return type might be wrong }
  begin
    GTK_TYPE_STYLE_PROVIDER:=gtk_style_provider_get_type;
  end;

function GTK_STYLE_PROVIDER(o : longint) : longint;
begin
  GTK_STYLE_PROVIDER:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_STYLE_PROVIDER,GtkStyleProvider);
end;

function GTK_IS_STYLE_PROVIDER(o : longint) : longint;
begin
  GTK_IS_STYLE_PROVIDER:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_STYLE_PROVIDER);
end;


end.
