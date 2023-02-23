
unit gtkboolfilter;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkboolfilter.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkboolfilter.h
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
PGtkBoolFilter  = ^GtkBoolFilter;
PGtkExpression  = ^GtkExpression;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_BOOL_FILTER_H__}
{$define __GTK_BOOL_FILTER_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkexpression.h>}
{$include <gtk/gtkfilter.h>}


function GTK_TYPE_BOOL_FILTER : longint; { return type might be wrong }




function gtk_bool_filter_new(var expression:TGtkExpression):PGtkBoolFilter;cdecl;external;

function gtk_bool_filter_get_expression(var self:TGtkBoolFilter):PGtkExpression;cdecl;external;

procedure gtk_bool_filter_set_expression(var self:TGtkBoolFilter; var expression:TGtkExpression);cdecl;external;

function gtk_bool_filter_get_invert(var self:TGtkBoolFilter):Tgboolean;cdecl;external;

procedure gtk_bool_filter_set_invert(var self:TGtkBoolFilter; invert:Tgboolean);cdecl;external;

{$endif}


implementation

function GTK_TYPE_BOOL_FILTER : longint; { return type might be wrong }
  begin
    GTK_TYPE_BOOL_FILTER:=gtk_bool_filter_get_type;
  end;


end.
