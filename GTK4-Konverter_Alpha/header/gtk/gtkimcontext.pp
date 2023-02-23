
unit gtkimcontext;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkimcontext.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkimcontext.h
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
PGdkDevice  = ^GdkDevice;
PGdkEvent  = ^GdkEvent;
PGdkRectangle  = ^GdkRectangle;
PGdkSurface  = ^GdkSurface;
PGtkIMContext  = ^GtkIMContext;
PGtkIMContextClass  = ^GtkIMContextClass;
PGtkWidget  = ^GtkWidget;
Plongint  = ^longint;
PPangoAttrList  = ^PangoAttrList;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_IM_CONTEXT_H__}
{$define __GTK_IM_CONTEXT_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}


function GTK_TYPE_IM_CONTEXT : longint; { return type might be wrong }

function GTK_IM_CONTEXT(obj : longint) : longint;

function GTK_IM_CONTEXT_CLASS(klass : longint) : longint;

function GTK_IS_IM_CONTEXT(obj : longint) : longint;

function GTK_IS_IM_CONTEXT_CLASS(klass : longint) : longint;

function GTK_IM_CONTEXT_GET_CLASS(obj : longint) : longint;

type
  PGtkIMContext = ^TGtkIMContext;
  TGtkIMContext = record
      parent_instance : TGObject;
    end;







  PGtkIMContextClass = ^TGtkIMContextClass;
  TGtkIMContextClass = record
      parent_class : TGObjectClass;
      preedit_start : procedure (context:PGtkIMContext);cdecl;
      preedit_end : procedure (context:PGtkIMContext);cdecl;
      preedit_changed : procedure (context:PGtkIMContext);cdecl;
      commit : procedure (context:PGtkIMContext; str:Pchar);cdecl;
      retrieve_surrounding : function (context:PGtkIMContext):Tgboolean;cdecl;
      delete_surrounding : function (context:PGtkIMContext; offset:longint; n_chars:longint):Tgboolean;cdecl;
      set_client_widget : procedure (context:PGtkIMContext; widget:PGtkWidget);cdecl;
      get_preedit_string : procedure (context:PGtkIMContext; str:PPchar; attrs:PPPangoAttrList; cursor_pos:Plongint);cdecl;
      filter_keypress : function (context:PGtkIMContext; event:PGdkEvent):Tgboolean;cdecl;
      focus_in : procedure (context:PGtkIMContext);cdecl;
      focus_out : procedure (context:PGtkIMContext);cdecl;
      reset : procedure (context:PGtkIMContext);cdecl;
      set_cursor_location : procedure (context:PGtkIMContext; area:PGdkRectangle);cdecl;
      set_use_preedit : procedure (context:PGtkIMContext; use_preedit:Tgboolean);cdecl;
      set_surrounding : procedure (context:PGtkIMContext; text:Pchar; len:longint; cursor_index:longint);cdecl;
      get_surrounding : function (context:PGtkIMContext; text:PPchar; cursor_index:Plongint):Tgboolean;cdecl;
      set_surrounding_with_selection : procedure (context:PGtkIMContext; text:Pchar; len:longint; cursor_index:longint; anchor_index:longint);cdecl;
      get_surrounding_with_selection : function (context:PGtkIMContext; text:PPchar; cursor_index:Plongint; anchor_index:Plongint):Tgboolean;cdecl;
      _gtk_reserved1 : procedure ;cdecl;
      _gtk_reserved2 : procedure ;cdecl;
      _gtk_reserved3 : procedure ;cdecl;
      _gtk_reserved4 : procedure ;cdecl;
      _gtk_reserved5 : procedure ;cdecl;
    end;



function gtk_im_context_get_type:TGType;cdecl;external;

procedure gtk_im_context_set_client_widget(context:PGtkIMContext; widget:PGtkWidget);cdecl;external;

procedure gtk_im_context_get_preedit_string(context:PGtkIMContext; str:PPchar; attrs:PPPangoAttrList; cursor_pos:Plongint);cdecl;external;

function gtk_im_context_filter_keypress(context:PGtkIMContext; event:PGdkEvent):Tgboolean;cdecl;external;

function gtk_im_context_filter_key(context:PGtkIMContext; press:Tgboolean; surface:PGdkSurface; device:PGdkDevice; time:Tguint32; 
           keycode:Tguint; state:TGdkModifierType; group:longint):Tgboolean;cdecl;external;

procedure gtk_im_context_focus_in(context:PGtkIMContext);cdecl;external;

procedure gtk_im_context_focus_out(context:PGtkIMContext);cdecl;external;

procedure gtk_im_context_reset(context:PGtkIMContext);cdecl;external;

procedure gtk_im_context_set_cursor_location(context:PGtkIMContext; area:PGdkRectangle);cdecl;external;

procedure gtk_im_context_set_use_preedit(context:PGtkIMContext; use_preedit:Tgboolean);cdecl;external;
(* error 
void     gtk_im_context_set_surrounding     (GtkIMContext       *context,
(* error 
                                             const char         *text,
(* error 
                                             int                 len,
(* error 
                                             int                 cursor_index);
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
gboolean gtk_im_context_get_surrounding     (GtkIMContext       *context,
(* error 
                                             char              **text,
(* error 
                                             int                *cursor_index);
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)

procedure gtk_im_context_set_surrounding_with_selection(context:PGtkIMContext; text:Pchar; len:longint; cursor_index:longint; anchor_index:longint);cdecl;external;

function gtk_im_context_get_surrounding_with_selection(context:PGtkIMContext; text:PPchar; cursor_index:Plongint; anchor_index:Plongint):Tgboolean;cdecl;external;

function gtk_im_context_delete_surrounding(context:PGtkIMContext; offset:longint; n_chars:longint):Tgboolean;cdecl;external;

{$endif}


implementation

function GTK_TYPE_IM_CONTEXT : longint; { return type might be wrong }
  begin
    GTK_TYPE_IM_CONTEXT:=gtk_im_context_get_type;
  end;

function GTK_IM_CONTEXT(obj : longint) : longint;
begin
  GTK_IM_CONTEXT:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_IM_CONTEXT,GtkIMContext);
end;

function GTK_IM_CONTEXT_CLASS(klass : longint) : longint;
begin
  GTK_IM_CONTEXT_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_IM_CONTEXT,GtkIMContextClass);
end;

function GTK_IS_IM_CONTEXT(obj : longint) : longint;
begin
  GTK_IS_IM_CONTEXT:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_IM_CONTEXT);
end;

function GTK_IS_IM_CONTEXT_CLASS(klass : longint) : longint;
begin
  GTK_IS_IM_CONTEXT_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_IM_CONTEXT);
end;

function GTK_IM_CONTEXT_GET_CLASS(obj : longint) : longint;
begin
  GTK_IM_CONTEXT_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_IM_CONTEXT,GtkIMContextClass);
end;


end.
