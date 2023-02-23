
unit gtktexttag;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtktexttag.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtktexttag.h
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
PGtkTextTag  = ^GtkTextTag;
PGtkTextTagClass  = ^GtkTextTagClass;
PGtkTextTagPrivate  = ^GtkTextTagPrivate;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_TEXT_TAG_H__}
{$define __GTK_TEXT_TAG_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}
{$include <gtk/gtkenums.h>}

type

function GTK_TYPE_TEXT_TAG : longint; { return type might be wrong }

function GTK_TEXT_TAG(obj : longint) : longint;

function GTK_TEXT_TAG_CLASS(klass : longint) : longint;

function GTK_IS_TEXT_TAG(obj : longint) : longint;

function GTK_IS_TEXT_TAG_CLASS(klass : longint) : longint;

function GTK_TEXT_TAG_GET_CLASS(obj : longint) : longint;

type
  PGtkTextTag = ^TGtkTextTag;
  TGtkTextTag = record
      parent_instance : TGObject;
      priv : PGtkTextTagPrivate;
    end;


  PGtkTextTagClass = ^TGtkTextTagClass;
  TGtkTextTagClass = record
      parent_class : TGObjectClass;
      padding : array[0..7] of Tgpointer;
    end;



function gtk_text_tag_get_type:TGType;cdecl;external;

function gtk_text_tag_new(name:Pchar):PGtkTextTag;cdecl;external;

function gtk_text_tag_get_priority(tag:PGtkTextTag):longint;cdecl;external;

procedure gtk_text_tag_set_priority(tag:PGtkTextTag; priority:longint);cdecl;external;

procedure gtk_text_tag_changed(tag:PGtkTextTag; size_changed:Tgboolean);cdecl;external;

{$endif}

implementation

function GTK_TYPE_TEXT_TAG : longint; { return type might be wrong }
  begin
    GTK_TYPE_TEXT_TAG:=gtk_text_tag_get_type;
  end;

function GTK_TEXT_TAG(obj : longint) : longint;
begin
  GTK_TEXT_TAG:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_TEXT_TAG,GtkTextTag);
end;

function GTK_TEXT_TAG_CLASS(klass : longint) : longint;
begin
  GTK_TEXT_TAG_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_TEXT_TAG,GtkTextTagClass);
end;

function GTK_IS_TEXT_TAG(obj : longint) : longint;
begin
  GTK_IS_TEXT_TAG:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_TEXT_TAG);
end;

function GTK_IS_TEXT_TAG_CLASS(klass : longint) : longint;
begin
  GTK_IS_TEXT_TAG_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_TEXT_TAG);
end;

function GTK_TEXT_TAG_GET_CLASS(obj : longint) : longint;
begin
  GTK_TEXT_TAG_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_TEXT_TAG,GtkTextTagClass);
end;


end.
