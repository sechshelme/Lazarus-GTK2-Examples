
unit gtktextmark;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtktextmark.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtktextmark.h
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
PGtkTextBuffer  = ^GtkTextBuffer;
PGtkTextMark  = ^GtkTextMark;
PGtkTextMarkClass  = ^GtkTextMarkClass;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_TEXT_MARK_H__}
{$define __GTK_TEXT_MARK_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}

type

function GTK_TYPE_TEXT_MARK : longint; { return type might be wrong }

function GTK_TEXT_MARK(object : longint) : longint;

function GTK_TEXT_MARK_CLASS(klass : longint) : longint;

function GTK_IS_TEXT_MARK(object : longint) : longint;

function GTK_IS_TEXT_MARK_CLASS(klass : longint) : longint;

function GTK_TEXT_MARK_GET_CLASS(obj : longint) : longint;


type
  PGtkTextMark = ^TGtkTextMark;
  TGtkTextMark = record
      parent_instance : TGObject;
      segment : Tgpointer;
    end;


  PGtkTextMarkClass = ^TGtkTextMarkClass;
  TGtkTextMarkClass = record
      parent_class : TGObjectClass;
      padding : array[0..7] of Tgpointer;
    end;



function gtk_text_mark_get_type:TGType;cdecl;external;

function gtk_text_mark_new(name:Pchar; left_gravity:Tgboolean):PGtkTextMark;cdecl;external;

procedure gtk_text_mark_set_visible(mark:PGtkTextMark; setting:Tgboolean);cdecl;external;

function gtk_text_mark_get_visible(mark:PGtkTextMark):Tgboolean;cdecl;external;

function gtk_text_mark_get_name(mark:PGtkTextMark):Pchar;cdecl;external;

function gtk_text_mark_get_deleted(mark:PGtkTextMark):Tgboolean;cdecl;external;

function gtk_text_mark_get_buffer(mark:PGtkTextMark):PGtkTextBuffer;cdecl;external;

function gtk_text_mark_get_left_gravity(mark:PGtkTextMark):Tgboolean;cdecl;external;

{$endif}


implementation

function GTK_TYPE_TEXT_MARK : longint; { return type might be wrong }
  begin
    GTK_TYPE_TEXT_MARK:=gtk_text_mark_get_type;
  end;

function GTK_TEXT_MARK(object : longint) : longint;
begin
  GTK_TEXT_MARK:=G_TYPE_CHECK_INSTANCE_CAST(object,GTK_TYPE_TEXT_MARK,GtkTextMark);
end;

function GTK_TEXT_MARK_CLASS(klass : longint) : longint;
begin
  GTK_TEXT_MARK_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_TEXT_MARK,GtkTextMarkClass);
end;

function GTK_IS_TEXT_MARK(object : longint) : longint;
begin
  GTK_IS_TEXT_MARK:=G_TYPE_CHECK_INSTANCE_TYPE(object,GTK_TYPE_TEXT_MARK);
end;

function GTK_IS_TEXT_MARK_CLASS(klass : longint) : longint;
begin
  GTK_IS_TEXT_MARK_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_TEXT_MARK);
end;

function GTK_TEXT_MARK_GET_CLASS(obj : longint) : longint;
begin
  GTK_TEXT_MARK_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_TEXT_MARK,GtkTextMarkClass);
end;


end.
