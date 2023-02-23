
unit gtktextchild;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtktextchild.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtktextchild.h
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
PGtkTextChildAnchor  = ^GtkTextChildAnchor;
PGtkTextChildAnchorClass  = ^GtkTextChildAnchorClass;
PGtkWidget  = ^GtkWidget;
Pguint  = ^guint;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef __GTK_TEXT_CHILD_H__}
{$define __GTK_TEXT_CHILD_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}
{$include <glib-object.h>}
{$include <gtk/gtkwidget.h>}


type

function GTK_TYPE_TEXT_CHILD_ANCHOR : longint; { return type might be wrong }

function GTK_TEXT_CHILD_ANCHOR(object : longint) : longint;

function GTK_TEXT_CHILD_ANCHOR_CLASS(klass : longint) : longint;

function GTK_IS_TEXT_CHILD_ANCHOR(object : longint) : longint;

function GTK_IS_TEXT_CHILD_ANCHOR_CLASS(klass : longint) : longint;

function GTK_TEXT_CHILD_ANCHOR_GET_CLASS(obj : longint) : longint;


type
  PGtkTextChildAnchor = ^TGtkTextChildAnchor;
  TGtkTextChildAnchor = record
      parent_instance : TGObject;
      segment : Tgpointer;
    end;


  PGtkTextChildAnchorClass = ^TGtkTextChildAnchorClass;
  TGtkTextChildAnchorClass = record
      parent_class : TGObjectClass;
      _gtk_reserved1 : procedure ;cdecl;
      _gtk_reserved2 : procedure ;cdecl;
      _gtk_reserved3 : procedure ;cdecl;
      _gtk_reserved4 : procedure ;cdecl;
    end;



function gtk_text_child_anchor_get_type:TGType;cdecl;external;

function gtk_text_child_anchor_new:PGtkTextChildAnchor;cdecl;external;

function gtk_text_child_anchor_new_with_replacement(character:Pchar):PGtkTextChildAnchor;cdecl;external;

function gtk_text_child_anchor_get_widgets(anchor:PGtkTextChildAnchor; out_len:Pguint):^PGtkWidget;cdecl;external;

function gtk_text_child_anchor_get_deleted(anchor:PGtkTextChildAnchor):Tgboolean;cdecl;external;

{$endif}

implementation

function GTK_TYPE_TEXT_CHILD_ANCHOR : longint; { return type might be wrong }
  begin
    GTK_TYPE_TEXT_CHILD_ANCHOR:=gtk_text_child_anchor_get_type;
  end;

function GTK_TEXT_CHILD_ANCHOR(object : longint) : longint;
begin
  GTK_TEXT_CHILD_ANCHOR:=G_TYPE_CHECK_INSTANCE_CAST(object,GTK_TYPE_TEXT_CHILD_ANCHOR,GtkTextChildAnchor);
end;

function GTK_TEXT_CHILD_ANCHOR_CLASS(klass : longint) : longint;
begin
  GTK_TEXT_CHILD_ANCHOR_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_TEXT_CHILD_ANCHOR,GtkTextChildAnchorClass);
end;

function GTK_IS_TEXT_CHILD_ANCHOR(object : longint) : longint;
begin
  GTK_IS_TEXT_CHILD_ANCHOR:=G_TYPE_CHECK_INSTANCE_TYPE(object,GTK_TYPE_TEXT_CHILD_ANCHOR);
end;

function GTK_IS_TEXT_CHILD_ANCHOR_CLASS(klass : longint) : longint;
begin
  GTK_IS_TEXT_CHILD_ANCHOR_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_TEXT_CHILD_ANCHOR);
end;

function GTK_TEXT_CHILD_ANCHOR_GET_CLASS(obj : longint) : longint;
begin
  GTK_TEXT_CHILD_ANCHOR_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_TEXT_CHILD_ANCHOR,GtkTextChildAnchorClass);
end;


end.
