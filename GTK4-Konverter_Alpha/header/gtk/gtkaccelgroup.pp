
unit gtkaccelgroup;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkaccelgroup.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkaccelgroup.h
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
PGdkModifierType  = ^GdkModifierType;
Pguint  = ^guint;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef __GTK_ACCEL_GROUP_H__}
{$define __GTK_ACCEL_GROUP_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}
{$include <gtk/gtkenums.h>}




function gtk_accelerator_valid(keyval:Tguint; modifiers:TGdkModifierType):Tgboolean;cdecl;external;

function gtk_accelerator_parse(accelerator:Pchar; accelerator_key:Pguint; accelerator_mods:PGdkModifierType):Tgboolean;cdecl;external;

function gtk_accelerator_parse_with_keycode(accelerator:Pchar; display:PGdkDisplay; accelerator_key:Pguint; accelerator_codes:PPguint; accelerator_mods:PGdkModifierType):Tgboolean;cdecl;external;

function gtk_accelerator_name(accelerator_key:Tguint; accelerator_mods:TGdkModifierType):Pchar;cdecl;external;

function gtk_accelerator_name_with_keycode(display:PGdkDisplay; accelerator_key:Tguint; keycode:Tguint; accelerator_mods:TGdkModifierType):Pchar;cdecl;external;

function gtk_accelerator_get_label(accelerator_key:Tguint; accelerator_mods:TGdkModifierType):Pchar;cdecl;external;

function gtk_accelerator_get_label_with_keycode(display:PGdkDisplay; accelerator_key:Tguint; keycode:Tguint; accelerator_mods:TGdkModifierType):Pchar;cdecl;external;

function gtk_accelerator_get_default_mod_mask:TGdkModifierType;cdecl;external;

{$endif}


implementation


end.
