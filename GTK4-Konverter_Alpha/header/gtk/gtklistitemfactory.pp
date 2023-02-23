
unit gtklistitemfactory;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtklistitemfactory.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtklistitemfactory.h
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



{$ifndef __GTK_LIST_ITEM_FACTORY_H__}
{$define __GTK_LIST_ITEM_FACTORY_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
type
{$include <gdk/gdk.h>}
{$include <gtk/gtktypes.h>}


function GTK_TYPE_LIST_ITEM_FACTORY : longint; { return type might be wrong }

function GTK_LIST_ITEM_FACTORY(o : longint) : longint;

function GTK_LIST_ITEM_FACTORY_CLASS(k : longint) : longint;

function GTK_IS_LIST_ITEM_FACTORY(o : longint) : longint;

function GTK_IS_LIST_ITEM_FACTORY_CLASS(k : longint) : longint;

function GTK_LIST_ITEM_FACTORY_GET_CLASS(o : longint) : longint;


function gtk_list_item_factory_get_type:TGType;cdecl;external;

{$endif}


implementation

function GTK_TYPE_LIST_ITEM_FACTORY : longint; { return type might be wrong }
  begin
    GTK_TYPE_LIST_ITEM_FACTORY:=gtk_list_item_factory_get_type;
  end;

function GTK_LIST_ITEM_FACTORY(o : longint) : longint;
begin
  GTK_LIST_ITEM_FACTORY:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_LIST_ITEM_FACTORY,GtkListItemFactory);
end;

function GTK_LIST_ITEM_FACTORY_CLASS(k : longint) : longint;
begin
  GTK_LIST_ITEM_FACTORY_CLASS:=G_TYPE_CHECK_CLASS_CAST(k,GTK_TYPE_LIST_ITEM_FACTORY,GtkListItemFactoryClass);
end;

function GTK_IS_LIST_ITEM_FACTORY(o : longint) : longint;
begin
  GTK_IS_LIST_ITEM_FACTORY:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_LIST_ITEM_FACTORY);
end;

function GTK_IS_LIST_ITEM_FACTORY_CLASS(k : longint) : longint;
begin
  GTK_IS_LIST_ITEM_FACTORY_CLASS:=G_TYPE_CHECK_CLASS_TYPE(k,GTK_TYPE_LIST_ITEM_FACTORY);
end;

function GTK_LIST_ITEM_FACTORY_GET_CLASS(o : longint) : longint;
begin
  GTK_LIST_ITEM_FACTORY_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GTK_TYPE_LIST_ITEM_FACTORY,GtkListItemFactoryClass);
end;


end.
