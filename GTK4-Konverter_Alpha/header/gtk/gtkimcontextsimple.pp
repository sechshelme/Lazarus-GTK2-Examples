
unit gtkimcontextsimple;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkimcontextsimple.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkimcontextsimple.h
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
PGtkIMContextSimple  = ^GtkIMContextSimple;
PGtkIMContextSimpleClass  = ^GtkIMContextSimpleClass;
PGtkIMContextSimplePrivate  = ^GtkIMContextSimplePrivate;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_IM_CONTEXT_SIMPLE_H__}
{$define __GTK_IM_CONTEXT_SIMPLE_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkimcontext.h>}



const
  GTK_MAX_COMPOSE_LEN = 7;  

function GTK_TYPE_IM_CONTEXT_SIMPLE : longint; { return type might be wrong }

function GTK_IM_CONTEXT_SIMPLE(obj : longint) : longint;

function GTK_IM_CONTEXT_SIMPLE_CLASS(klass : longint) : longint;

function GTK_IS_IM_CONTEXT_SIMPLE(obj : longint) : longint;

function GTK_IS_IM_CONTEXT_SIMPLE_CLASS(klass : longint) : longint;

function GTK_IM_CONTEXT_SIMPLE_GET_CLASS(obj : longint) : longint;

type

  PGtkIMContextSimple = ^TGtkIMContextSimple;
  TGtkIMContextSimple = record
      object : TGtkIMContext;
      priv : PGtkIMContextSimplePrivate;
    end;

  PGtkIMContextSimpleClass = ^TGtkIMContextSimpleClass;
  TGtkIMContextSimpleClass = record
      parent_class : TGtkIMContextClass;
    end;



function gtk_im_context_simple_get_type:TGType;cdecl;external;

function gtk_im_context_simple_new:PGtkIMContext;cdecl;external;
(* error 
void          gtk_im_context_simple_add_table (GtkIMContextSimple *context_simple,
(* error 
                                               guint16            *data,
(* error 
                                               int                 max_seq_len,
(* error 
                                               int                 n_seqs);
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)

procedure gtk_im_context_simple_add_compose_file(context_simple:PGtkIMContextSimple; compose_file:Pchar);cdecl;external;

{$endif}


implementation

function GTK_TYPE_IM_CONTEXT_SIMPLE : longint; { return type might be wrong }
  begin
    GTK_TYPE_IM_CONTEXT_SIMPLE:=gtk_im_context_simple_get_type;
  end;

function GTK_IM_CONTEXT_SIMPLE(obj : longint) : longint;
begin
  GTK_IM_CONTEXT_SIMPLE:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_IM_CONTEXT_SIMPLE,GtkIMContextSimple);
end;

function GTK_IM_CONTEXT_SIMPLE_CLASS(klass : longint) : longint;
begin
  GTK_IM_CONTEXT_SIMPLE_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_IM_CONTEXT_SIMPLE,GtkIMContextSimpleClass);
end;

function GTK_IS_IM_CONTEXT_SIMPLE(obj : longint) : longint;
begin
  GTK_IS_IM_CONTEXT_SIMPLE:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_IM_CONTEXT_SIMPLE);
end;

function GTK_IS_IM_CONTEXT_SIMPLE_CLASS(klass : longint) : longint;
begin
  GTK_IS_IM_CONTEXT_SIMPLE_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_IM_CONTEXT_SIMPLE);
end;

function GTK_IM_CONTEXT_SIMPLE_GET_CLASS(obj : longint) : longint;
begin
  GTK_IM_CONTEXT_SIMPLE_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_IM_CONTEXT_SIMPLE,GtkIMContextSimpleClass);
end;


end.
