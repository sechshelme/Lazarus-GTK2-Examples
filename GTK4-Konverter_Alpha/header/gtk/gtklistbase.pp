
unit gtklistbase;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtklistbase.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtklistbase.h
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

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_LIST_BASE_H__}
{$define __GTK_LIST_BASE_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}
{$include <gtk/gtkselectionmodel.h>}


function GTK_TYPE_LIST_BASE : longint; { return type might be wrong }

function GTK_LIST_BASE(o : longint) : longint;

function GTK_LIST_BASE_CLASS(k : longint) : longint;

function GTK_IS_LIST_BASE(o : longint) : longint;

function GTK_IS_LIST_BASE_CLASS(k : longint) : longint;

function GTK_LIST_BASE_GET_CLASS(o : longint) : longint;


type


function gtk_list_base_get_type:TGType;cdecl;external;

{$endif}


implementation

function GTK_TYPE_LIST_BASE : longint; { return type might be wrong }
  begin
    GTK_TYPE_LIST_BASE:=gtk_list_base_get_type;
  end;

function GTK_LIST_BASE(o : longint) : longint;
begin
  GTK_LIST_BASE:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_LIST_BASE,GtkListBase);
end;

function GTK_LIST_BASE_CLASS(k : longint) : longint;
begin
  GTK_LIST_BASE_CLASS:=G_TYPE_CHECK_CLASS_CAST(k,GTK_TYPE_LIST_BASE,GtkListBaseClass);
end;

function GTK_IS_LIST_BASE(o : longint) : longint;
begin
  GTK_IS_LIST_BASE:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_LIST_BASE);
end;

function GTK_IS_LIST_BASE_CLASS(k : longint) : longint;
begin
  GTK_IS_LIST_BASE_CLASS:=G_TYPE_CHECK_CLASS_TYPE(k,GTK_TYPE_LIST_BASE);
end;

function GTK_LIST_BASE_GET_CLASS(o : longint) : longint;
begin
  GTK_LIST_BASE_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GTK_TYPE_LIST_BASE,GtkListBaseClass);
end;


end.
