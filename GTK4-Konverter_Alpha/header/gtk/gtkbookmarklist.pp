
unit gtkbookmarklist;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkbookmarklist.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkbookmarklist.h
    -v
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
PGtkBookmarkList  = ^GtkBookmarkList;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_BOOKMARK_LIST_H__}
{$define __GTK_BOOKMARK_LIST_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gio/gio.h>}

{$include <gdk/gdk.h>}


function GTK_TYPE_BOOKMARK_LIST : longint; { return type might be wrong }




function gtk_bookmark_list_new(filename:Pchar; attributes:Pchar):PGtkBookmarkList;cdecl;external;

function gtk_bookmark_list_get_filename(var self:TGtkBookmarkList):Pchar;cdecl;external;

procedure gtk_bookmark_list_set_attributes(var self:TGtkBookmarkList; attributes:Pchar);cdecl;external;

function gtk_bookmark_list_get_attributes(var self:TGtkBookmarkList):Pchar;cdecl;external;

procedure gtk_bookmark_list_set_io_priority(var self:TGtkBookmarkList; io_priority:longint);cdecl;external;

function gtk_bookmark_list_get_io_priority(var self:TGtkBookmarkList):longint;cdecl;external;

function gtk_bookmark_list_is_loading(var self:TGtkBookmarkList):Tgboolean;cdecl;external;

{$endif}


implementation

function GTK_TYPE_BOOKMARK_LIST : longint; { return type might be wrong }
  begin
    GTK_TYPE_BOOKMARK_LIST:=gtk_bookmark_list_get_type;
  end;


end.
