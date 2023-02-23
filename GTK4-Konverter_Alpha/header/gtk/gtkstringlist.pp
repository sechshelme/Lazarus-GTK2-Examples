
unit gtkstringlist;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkstringlist.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkstringlist.h
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
PGtkStringList  = ^GtkStringList;
PGtkStringObject  = ^GtkStringObject;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_STRING_LIST_H__}
{$define __GTK_STRING_LIST_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gio/gio.h>}

{$include <gdk/gdk.h>}


function GTK_TYPE_STRING_OBJECT : longint; { return type might be wrong }




function gtk_string_object_new(_string:Pchar):PGtkStringObject;cdecl;external;

function gtk_string_object_get_string(self:PGtkStringObject):Pchar;cdecl;external;
function GTK_TYPE_STRING_LIST : longint; { return type might be wrong }




function gtk_string_list_new(strings:PPchar):PGtkStringList;cdecl;external;

procedure gtk_string_list_append(self:PGtkStringList; _string:Pchar);cdecl;external;

procedure gtk_string_list_take(self:PGtkStringList; _string:Pchar);cdecl;external;

procedure gtk_string_list_remove(self:PGtkStringList; position:Tguint);cdecl;external;

procedure gtk_string_list_splice(self:PGtkStringList; position:Tguint; n_removals:Tguint; additions:PPchar);cdecl;external;

function gtk_string_list_get_string(self:PGtkStringList; position:Tguint):Pchar;cdecl;external;

{$endif}


implementation

function GTK_TYPE_STRING_OBJECT : longint; { return type might be wrong }
  begin
    GTK_TYPE_STRING_OBJECT:=gtk_string_object_get_type;
  end;

function GTK_TYPE_STRING_LIST : longint; { return type might be wrong }
  begin
    GTK_TYPE_STRING_LIST:=gtk_string_list_get_type;
  end;


end.
