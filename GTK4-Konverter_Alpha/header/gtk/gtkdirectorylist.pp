
unit gtkdirectorylist;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkdirectorylist.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkdirectorylist.h
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
PGError  = ^GError;
PGFile  = ^GFile;
PGtkDirectoryList  = ^GtkDirectoryList;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_DIRECTORY_LIST_H__}
{$define __GTK_DIRECTORY_LIST_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gio/gio.h>}

{$include <gdk/gdk.h>}


function GTK_TYPE_DIRECTORY_LIST : longint; { return type might be wrong }




function gtk_directory_list_new(attributes:Pchar; file:PGFile):PGtkDirectoryList;cdecl;external;

procedure gtk_directory_list_set_file(self:PGtkDirectoryList; file:PGFile);cdecl;external;

function gtk_directory_list_get_file(self:PGtkDirectoryList):PGFile;cdecl;external;

procedure gtk_directory_list_set_attributes(self:PGtkDirectoryList; attributes:Pchar);cdecl;external;

function gtk_directory_list_get_attributes(self:PGtkDirectoryList):Pchar;cdecl;external;

procedure gtk_directory_list_set_io_priority(self:PGtkDirectoryList; io_priority:longint);cdecl;external;

function gtk_directory_list_get_io_priority(self:PGtkDirectoryList):longint;cdecl;external;

function gtk_directory_list_is_loading(self:PGtkDirectoryList):Tgboolean;cdecl;external;

function gtk_directory_list_get_error(self:PGtkDirectoryList):PGError;cdecl;external;

procedure gtk_directory_list_set_monitored(self:PGtkDirectoryList; monitored:Tgboolean);cdecl;external;

function gtk_directory_list_get_monitored(self:PGtkDirectoryList):Tgboolean;cdecl;external;

{$endif}


implementation

function GTK_TYPE_DIRECTORY_LIST : longint; { return type might be wrong }
  begin
    GTK_TYPE_DIRECTORY_LIST:=gtk_directory_list_get_type;
  end;


end.
