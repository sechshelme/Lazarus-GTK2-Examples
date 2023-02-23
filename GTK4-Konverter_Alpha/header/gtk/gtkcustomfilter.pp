
unit gtkcustomfilter;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkcustomfilter.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkcustomfilter.h
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
PGtkCustomFilter  = ^GtkCustomFilter;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_CUSTOM_FILTER_H__}
{$define __GTK_CUSTOM_FILTER_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkfilter.h>}


type

  TGtkCustomFilterFunc = function (item:Tgpointer; user_data:Tgpointer):Tgboolean;cdecl;

function GTK_TYPE_CUSTOM_FILTER : longint; { return type might be wrong }




function gtk_custom_filter_new(match_func:TGtkCustomFilterFunc; user_data:Tgpointer; user_destroy:TGDestroyNotify):PGtkCustomFilter;cdecl;external;

procedure gtk_custom_filter_set_filter_func(self:PGtkCustomFilter; match_func:TGtkCustomFilterFunc; user_data:Tgpointer; user_destroy:TGDestroyNotify);cdecl;external;

{$endif}


implementation

function GTK_TYPE_CUSTOM_FILTER : longint; { return type might be wrong }
  begin
    GTK_TYPE_CUSTOM_FILTER:=gtk_custom_filter_get_type;
  end;


end.
