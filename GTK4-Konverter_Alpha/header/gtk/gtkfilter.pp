
unit gtkfilter;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkfilter.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkfilter.h
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
PGtkFilter  = ^GtkFilter;
PGtkFilterChange  = ^GtkFilterChange;
PGtkFilterClass  = ^GtkFilterClass;
PGtkFilterMatch  = ^GtkFilterMatch;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_FILTER_H__}
{$define __GTK_FILTER_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}


type
  PGtkFilterMatch = ^TGtkFilterMatch;
  TGtkFilterMatch = (GTK_FILTER_MATCH_SOME := 0,GTK_FILTER_MATCH_NONE,
    GTK_FILTER_MATCH_ALL);


  PGtkFilterChange = ^TGtkFilterChange;
  TGtkFilterChange = (GTK_FILTER_CHANGE_DIFFERENT := 0,GTK_FILTER_CHANGE_LESS_STRICT,
    GTK_FILTER_CHANGE_MORE_STRICT);

function GTK_TYPE_FILTER : longint; { return type might be wrong }





type
  PGtkFilterClass = ^TGtkFilterClass;
  TGtkFilterClass = record
      parent_class : TGObjectClass;
      match : function (self:PGtkFilter; item:Tgpointer):Tgboolean;cdecl;
      get_strictness : function (self:PGtkFilter):TGtkFilterMatch;cdecl;
      _gtk_reserved1 : procedure ;cdecl;
      _gtk_reserved2 : procedure ;cdecl;
      _gtk_reserved3 : procedure ;cdecl;
      _gtk_reserved4 : procedure ;cdecl;
      _gtk_reserved5 : procedure ;cdecl;
      _gtk_reserved6 : procedure ;cdecl;
      _gtk_reserved7 : procedure ;cdecl;
      _gtk_reserved8 : procedure ;cdecl;
    end;



function gtk_filter_match(self:PGtkFilter; item:Tgpointer):Tgboolean;cdecl;external;

function gtk_filter_get_strictness(self:PGtkFilter):TGtkFilterMatch;cdecl;external;


procedure gtk_filter_changed(self:PGtkFilter; change:TGtkFilterChange);cdecl;external;

{$endif}


implementation

function GTK_TYPE_FILTER : longint; { return type might be wrong }
  begin
    GTK_TYPE_FILTER:=gtk_filter_get_type;
  end;


end.
