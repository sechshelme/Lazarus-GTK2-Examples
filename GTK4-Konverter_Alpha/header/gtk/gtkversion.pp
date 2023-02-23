
unit gtkversion;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkversion.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkversion.h
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
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$ifndef __GTK_VERSION_H__}
{$define __GTK_VERSION_H__}
{$include <gdk/gdk.h>}



const
  GTK_MAJOR_VERSION = 4;  

  GTK_MINOR_VERSION = 6;  

  GTK_MICRO_VERSION = 6;  

  GTK_BINARY_AGE = 606;  

  GTK_INTERFACE_AGE = 6;  

(* error 
    (GTK_MAJOR_VERSION > (major) ||                                   \
in define line 96 *)


function gtk_get_major_version:Tguint;cdecl;external;

function gtk_get_minor_version:Tguint;cdecl;external;

function gtk_get_micro_version:Tguint;cdecl;external;

function gtk_get_binary_age:Tguint;cdecl;external;

function gtk_get_interface_age:Tguint;cdecl;external;

function gtk_check_version(required_major:Tguint; required_minor:Tguint; required_micro:Tguint):Pchar;cdecl;external;

{$endif}


implementation


end.
