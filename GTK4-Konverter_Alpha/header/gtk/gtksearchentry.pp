
unit gtksearchentry;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtksearchentry.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtksearchentry.h
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
PGtkSearchEntry  = ^GtkSearchEntry;
PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef __GTK_SEARCH_ENTRY_H__}
{$define __GTK_SEARCH_ENTRY_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkentry.h>}


function GTK_TYPE_SEARCH_ENTRY : longint; { return type might be wrong }

function GTK_SEARCH_ENTRY(obj : longint) : longint;

function GTK_IS_SEARCH_ENTRY(obj : longint) : longint;

type


function gtk_search_entry_get_type:TGType;cdecl;external;

function gtk_search_entry_new:PGtkWidget;cdecl;external;

procedure gtk_search_entry_set_key_capture_widget(entry:PGtkSearchEntry; widget:PGtkWidget);cdecl;external;

function gtk_search_entry_get_key_capture_widget(entry:PGtkSearchEntry):PGtkWidget;cdecl;external;

{$endif}


implementation

function GTK_TYPE_SEARCH_ENTRY : longint; { return type might be wrong }
  begin
    GTK_TYPE_SEARCH_ENTRY:=gtk_search_entry_get_type;
  end;

function GTK_SEARCH_ENTRY(obj : longint) : longint;
begin
  GTK_SEARCH_ENTRY:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_SEARCH_ENTRY,GtkSearchEntry);
end;

function GTK_IS_SEARCH_ENTRY(obj : longint) : longint;
begin
  GTK_IS_SEARCH_ENTRY:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_SEARCH_ENTRY);
end;


end.
