
unit gtkimmulticontext;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkimmulticontext.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkimmulticontext.h
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
PGtkIMContext  = ^GtkIMContext;
PGtkIMMulticontext  = ^GtkIMMulticontext;
PGtkIMMulticontextClass  = ^GtkIMMulticontextClass;
PGtkIMMulticontextPrivate  = ^GtkIMMulticontextPrivate;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_IM_MULTICONTEXT_H__}
{$define __GTK_IM_MULTICONTEXT_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkimcontext.h>}


function GTK_TYPE_IM_MULTICONTEXT : longint; { return type might be wrong }

function GTK_IM_MULTICONTEXT(obj : longint) : longint;

function GTK_IM_MULTICONTEXT_CLASS(klass : longint) : longint;

function GTK_IS_IM_MULTICONTEXT(obj : longint) : longint;

function GTK_IS_IM_MULTICONTEXT_CLASS(klass : longint) : longint;

function GTK_IM_MULTICONTEXT_GET_CLASS(obj : longint) : longint;

type

  PGtkIMMulticontext = ^TGtkIMMulticontext;
  TGtkIMMulticontext = record
      object : TGtkIMContext;
      priv : PGtkIMMulticontextPrivate;
    end;


  PGtkIMMulticontextClass = ^TGtkIMMulticontextClass;
  TGtkIMMulticontextClass = record
      parent_class : TGtkIMContextClass;
      _gtk_reserved1 : procedure ;cdecl;
      _gtk_reserved2 : procedure ;cdecl;
      _gtk_reserved3 : procedure ;cdecl;
      _gtk_reserved4 : procedure ;cdecl;
    end;



function gtk_im_multicontext_get_type:TGType;cdecl;external;

function gtk_im_multicontext_new:PGtkIMContext;cdecl;external;

function gtk_im_multicontext_get_context_id(context:PGtkIMMulticontext):Pchar;cdecl;external;

procedure gtk_im_multicontext_set_context_id(context:PGtkIMMulticontext; context_id:Pchar);cdecl;external;

{$endif}


implementation

function GTK_TYPE_IM_MULTICONTEXT : longint; { return type might be wrong }
  begin
    GTK_TYPE_IM_MULTICONTEXT:=gtk_im_multicontext_get_type;
  end;

function GTK_IM_MULTICONTEXT(obj : longint) : longint;
begin
  GTK_IM_MULTICONTEXT:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_IM_MULTICONTEXT,GtkIMMulticontext);
end;

function GTK_IM_MULTICONTEXT_CLASS(klass : longint) : longint;
begin
  GTK_IM_MULTICONTEXT_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_IM_MULTICONTEXT,GtkIMMulticontextClass);
end;

function GTK_IS_IM_MULTICONTEXT(obj : longint) : longint;
begin
  GTK_IS_IM_MULTICONTEXT:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_IM_MULTICONTEXT);
end;

function GTK_IS_IM_MULTICONTEXT_CLASS(klass : longint) : longint;
begin
  GTK_IS_IM_MULTICONTEXT_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_IM_MULTICONTEXT);
end;

function GTK_IM_MULTICONTEXT_GET_CLASS(obj : longint) : longint;
begin
  GTK_IM_MULTICONTEXT_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_IM_MULTICONTEXT,GtkIMMulticontextClass);
end;


end.
