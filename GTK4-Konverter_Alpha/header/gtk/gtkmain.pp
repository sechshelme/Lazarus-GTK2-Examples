
unit gtkmain;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkmain.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkmain.h
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
PPangoLanguage  = ^PangoLanguage;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef __GTK_MAIN_H__}
{$define __GTK_MAIN_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}
{$include <gtk/gtkwidget.h>}
{$ifdef G_PLATFORM_WIN32}
{$include <gtk/gtkbox.h>}
{$include <gtk/gtkwindow.h>}
{$endif}



const
  GTK_PRIORITY_RESIZE = G_PRIORITY_HIGH_IDLE+10;  



procedure gtk_init;cdecl;external;

function gtk_init_check:Tgboolean;cdecl;external;

function gtk_is_initialized:Tgboolean;cdecl;external;
{$ifdef G_OS_WIN32}


procedure gtk_init_abi_check(num_checks:longint; sizeof_GtkWindow:Tsize_t; sizeof_GtkBox:Tsize_t);cdecl;external;

function gtk_init_check_abi_check(num_checks:longint; sizeof_GtkWindow:Tsize_t; sizeof_GtkBox:Tsize_t):Tgboolean;cdecl;external;
function gtk_init : longint;

function gtk_init_check : longint;

{$endif}


procedure gtk_disable_setlocale;cdecl;external;

function gtk_get_default_language:PPangoLanguage;cdecl;external;

function gtk_get_locale_direction:TGtkTextDirection;cdecl;external;

{$endif}


implementation

function gtk_init : longint;
begin
  gtk_init:=gtk_init_abi_check(2,sizeof(GtkWindow),sizeof(GtkBox));
end;

function gtk_init_check : longint;
begin
  gtk_init_check:=gtk_init_check_abi_check(2,sizeof(GtkWindow),sizeof(GtkBox));
end;


end.
