
unit gtkfilechoosernative;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkfilechoosernative.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkfilechoosernative.h
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
PGtkFileChooserNative  = ^GtkFileChooserNative;
PGtkWindow  = ^GtkWindow;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_FILE_CHOOSER_NATIVE_H__}
{$define __GTK_FILE_CHOOSER_NATIVE_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkfilechooser.h>}
{$include <gtk/gtknativedialog.h>}


function GTK_TYPE_FILE_CHOOSER_NATIVE : longint; { return type might be wrong }




function gtk_file_chooser_native_new(title:Pchar; parent:PGtkWindow; action:TGtkFileChooserAction; accept_label:Pchar; cancel_label:Pchar):PGtkFileChooserNative;cdecl;external;

function gtk_file_chooser_native_get_accept_label(self:PGtkFileChooserNative):Pchar;cdecl;external;

procedure gtk_file_chooser_native_set_accept_label(self:PGtkFileChooserNative; accept_label:Pchar);cdecl;external;

function gtk_file_chooser_native_get_cancel_label(self:PGtkFileChooserNative):Pchar;cdecl;external;

procedure gtk_file_chooser_native_set_cancel_label(self:PGtkFileChooserNative; cancel_label:Pchar);cdecl;external;

{$endif}


implementation

function GTK_TYPE_FILE_CHOOSER_NATIVE : longint; { return type might be wrong }
  begin
    GTK_TYPE_FILE_CHOOSER_NATIVE:=gtk_file_chooser_native_get_type;
  end;


end.
