
unit gtkfilefilter;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkfilefilter.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkfilefilter.h
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
PGtkFileFilter  = ^GtkFileFilter;
PGVariant  = ^GVariant;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_FILE_FILTER_H__}
{$define __GTK_FILE_FILTER_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <glib-object.h>}
{$include <gdk/gdk.h>}


function GTK_TYPE_FILE_FILTER : longint; { return type might be wrong }

function GTK_FILE_FILTER(obj : longint) : longint;

function GTK_IS_FILE_FILTER(obj : longint) : longint;

type


function gtk_file_filter_get_type:TGType;cdecl;external;

function gtk_file_filter_new:PGtkFileFilter;cdecl;external;

procedure gtk_file_filter_set_name(filter:PGtkFileFilter; name:Pchar);cdecl;external;

function gtk_file_filter_get_name(filter:PGtkFileFilter):Pchar;cdecl;external;

procedure gtk_file_filter_add_mime_type(filter:PGtkFileFilter; mime_type:Pchar);cdecl;external;

procedure gtk_file_filter_add_pattern(filter:PGtkFileFilter; pattern:Pchar);cdecl;external;

procedure gtk_file_filter_add_suffix(filter:PGtkFileFilter; suffix:Pchar);cdecl;external;

procedure gtk_file_filter_add_pixbuf_formats(filter:PGtkFileFilter);cdecl;external;

function gtk_file_filter_get_attributes(filter:PGtkFileFilter):^Pchar;cdecl;external;

function gtk_file_filter_to_gvariant(filter:PGtkFileFilter):PGVariant;cdecl;external;

function gtk_file_filter_new_from_gvariant(variant:PGVariant):PGtkFileFilter;cdecl;external;

{$endif}


implementation

function GTK_TYPE_FILE_FILTER : longint; { return type might be wrong }
  begin
    GTK_TYPE_FILE_FILTER:=gtk_file_filter_get_type;
  end;

function GTK_FILE_FILTER(obj : longint) : longint;
begin
  GTK_FILE_FILTER:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_FILE_FILTER,GtkFileFilter);
end;

function GTK_IS_FILE_FILTER(obj : longint) : longint;
begin
  GTK_IS_FILE_FILTER:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_FILE_FILTER);
end;


end.
