
unit gtkbuilderlistitemfactory;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkbuilderlistitemfactory.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkbuilderlistitemfactory.h
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
PGBytes  = ^GBytes;
PGtkBuilderScope  = ^GtkBuilderScope;
PGtkListItemFactory  = ^GtkListItemFactory;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_BUILDER_LIST_ITEM_FACTORY_H__}
{$define __GTK_BUILDER_LIST_ITEM_FACTORY_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtklistitemfactory.h>}


function GTK_TYPE_BUILDER_LIST_ITEM_FACTORY : longint; { return type might be wrong }

function GTK_BUILDER_LIST_ITEM_FACTORY(o : longint) : longint;

function GTK_BUILDER_LIST_ITEM_FACTORY_CLASS(k : longint) : longint;

function GTK_IS_BUILDER_LIST_ITEM_FACTORY(o : longint) : longint;

function GTK_IS_BUILDER_LIST_ITEM_FACTORY_CLASS(k : longint) : longint;

function GTK_BUILDER_LIST_ITEM_FACTORY_GET_CLASS(o : longint) : longint;

type


function gtk_builder_list_item_factory_get_type:TGType;cdecl;external;

function gtk_builder_list_item_factory_new_from_bytes(var scope:TGtkBuilderScope; var bytes:TGBytes):PGtkListItemFactory;cdecl;external;

function gtk_builder_list_item_factory_new_from_resource(var scope:TGtkBuilderScope; resource_path:Pchar):PGtkListItemFactory;cdecl;external;

function gtk_builder_list_item_factory_get_bytes(var self:TGtkBuilderListItemFactory):PGBytes;cdecl;external;

function gtk_builder_list_item_factory_get_resource(var self:TGtkBuilderListItemFactory):Pchar;cdecl;external;

function gtk_builder_list_item_factory_get_scope(var self:TGtkBuilderListItemFactory):PGtkBuilderScope;cdecl;external;

{$endif}


implementation

function GTK_TYPE_BUILDER_LIST_ITEM_FACTORY : longint; { return type might be wrong }
  begin
    GTK_TYPE_BUILDER_LIST_ITEM_FACTORY:=gtk_builder_list_item_factory_get_type;
  end;

function GTK_BUILDER_LIST_ITEM_FACTORY(o : longint) : longint;
begin
  GTK_BUILDER_LIST_ITEM_FACTORY:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_BUILDER_LIST_ITEM_FACTORY,GtkBuilderListItemFactory);
end;

function GTK_BUILDER_LIST_ITEM_FACTORY_CLASS(k : longint) : longint;
begin
  GTK_BUILDER_LIST_ITEM_FACTORY_CLASS:=G_TYPE_CHECK_CLASS_CAST(k,GTK_TYPE_BUILDER_LIST_ITEM_FACTORY,GtkBuilderListItemFactoryClass);
end;

function GTK_IS_BUILDER_LIST_ITEM_FACTORY(o : longint) : longint;
begin
  GTK_IS_BUILDER_LIST_ITEM_FACTORY:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_BUILDER_LIST_ITEM_FACTORY);
end;

function GTK_IS_BUILDER_LIST_ITEM_FACTORY_CLASS(k : longint) : longint;
begin
  GTK_IS_BUILDER_LIST_ITEM_FACTORY_CLASS:=G_TYPE_CHECK_CLASS_TYPE(k,GTK_TYPE_BUILDER_LIST_ITEM_FACTORY);
end;

function GTK_BUILDER_LIST_ITEM_FACTORY_GET_CLASS(o : longint) : longint;
begin
  GTK_BUILDER_LIST_ITEM_FACTORY_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GTK_TYPE_BUILDER_LIST_ITEM_FACTORY,GtkBuilderListItemFactoryClass);
end;


end.
