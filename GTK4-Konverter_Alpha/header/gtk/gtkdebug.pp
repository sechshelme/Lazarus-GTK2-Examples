
unit gtkdebug;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkdebug.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkdebug.h
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
    PGtkDebugFlags  = ^GtkDebugFlags;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef __GTK_DEBUG_H__}
{$define __GTK_DEBUG_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <glib.h>}
{$include <gdk/gdk.h>}


type
  PGtkDebugFlags = ^TGtkDebugFlags;
  TGtkDebugFlags = (GTK_DEBUG_TEXT := 1 shl 0,GTK_DEBUG_TREE := 1 shl 1,
    GTK_DEBUG_KEYBINDINGS := 1 shl 2,GTK_DEBUG_MODULES := 1 shl 3,
    GTK_DEBUG_GEOMETRY := 1 shl 4,GTK_DEBUG_ICONTHEME := 1 shl 5,
    GTK_DEBUG_PRINTING := 1 shl 6,GTK_DEBUG_BUILDER := 1 shl 7,
    GTK_DEBUG_SIZE_REQUEST := 1 shl 8,GTK_DEBUG_NO_CSS_CACHE := 1 shl 9,
    GTK_DEBUG_INTERACTIVE := 1 shl 10,GTK_DEBUG_TOUCHSCREEN := 1 shl 11,
    GTK_DEBUG_ACTIONS := 1 shl 12,GTK_DEBUG_LAYOUT := 1 shl 13,
    GTK_DEBUG_SNAPSHOT := 1 shl 14,GTK_DEBUG_CONSTRAINTS := 1 shl 15,
    GTK_DEBUG_BUILDER_OBJECTS := 1 shl 16,GTK_DEBUG_A11Y := 1 shl 17,
    GTK_DEBUG_ICONFALLBACK := 1 shl 18);
{$ifdef G_ENABLE_DEBUG}
(* error 
#define GTK_DEBUG_CHECK(type)  (gtk_get_debug_flags () & GTK_DEBUG_##type)
in define line 89 *)
(* error 
#define GTK_NOTE(type,action)                 {     \
in declaration at line 93 *)
(* error 
       { action; };                          } 
in declaration at line 93 *)
(* error 
       { action; };                          } 
{$else}

in define line 97 *)
(* error 
#define GTK_NOTE(type, action)
in define line 98 *)
{$endif}



function gtk_get_debug_flags:TGtkDebugFlags;cdecl;external;

procedure gtk_set_debug_flags(flags:TGtkDebugFlags);cdecl;external;

{$endif}


implementation


end.
