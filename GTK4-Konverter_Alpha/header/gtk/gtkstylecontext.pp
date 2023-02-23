
unit gtkstylecontext;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkstylecontext.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkstylecontext.h
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
PGdkDisplay  = ^GdkDisplay;
PGdkRGBA  = ^GdkRGBA;
PGtkBorder  = ^GtkBorder;
PGtkStyleContext  = ^GtkStyleContext;
PGtkStyleContextClass  = ^GtkStyleContextClass;
PGtkStyleContextPrintFlags  = ^GtkStyleContextPrintFlags;
PGtkStyleProvider  = ^GtkStyleProvider;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_STYLE_CONTEXT_H__}
{$define __GTK_STYLE_CONTEXT_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/css/gtkcss.h>}
{$include <gtk/gtkborder.h>}
{$include <gtk/gtkstyleprovider.h>}
{$include <gtk/gtktypes.h>}


function GTK_TYPE_STYLE_CONTEXT : longint; { return type might be wrong }

function GTK_STYLE_CONTEXT(o : longint) : longint;

function GTK_STYLE_CONTEXT_CLASS(c : longint) : longint;

function GTK_IS_STYLE_CONTEXT(o : longint) : longint;

function GTK_IS_STYLE_CONTEXT_CLASS(c : longint) : longint;

function GTK_STYLE_CONTEXT_GET_CLASS(o : longint) : longint;

type
  PGtkStyleContext = ^TGtkStyleContext;
  TGtkStyleContext = record
      parent_object : TGObject;
    end;


  PGtkStyleContextClass = ^TGtkStyleContextClass;
  TGtkStyleContextClass = record
      parent_class : TGObjectClass;
      changed : procedure (context:PGtkStyleContext);cdecl;
      _gtk_reserved1 : procedure ;cdecl;
      _gtk_reserved2 : procedure ;cdecl;
      _gtk_reserved3 : procedure ;cdecl;
      _gtk_reserved4 : procedure ;cdecl;
    end;



function gtk_style_context_get_type:TGType;cdecl;external;

procedure gtk_style_context_add_provider_for_display(display:PGdkDisplay; provider:PGtkStyleProvider; priority:Tguint);cdecl;external;

procedure gtk_style_context_remove_provider_for_display(display:PGdkDisplay; provider:PGtkStyleProvider);cdecl;external;

procedure gtk_style_context_add_provider(context:PGtkStyleContext; provider:PGtkStyleProvider; priority:Tguint);cdecl;external;

procedure gtk_style_context_remove_provider(context:PGtkStyleContext; provider:PGtkStyleProvider);cdecl;external;

procedure gtk_style_context_save(context:PGtkStyleContext);cdecl;external;

procedure gtk_style_context_restore(context:PGtkStyleContext);cdecl;external;

procedure gtk_style_context_set_state(context:PGtkStyleContext; flags:TGtkStateFlags);cdecl;external;

function gtk_style_context_get_state(context:PGtkStyleContext):TGtkStateFlags;cdecl;external;

procedure gtk_style_context_set_scale(context:PGtkStyleContext; scale:longint);cdecl;external;

function gtk_style_context_get_scale(context:PGtkStyleContext):longint;cdecl;external;

procedure gtk_style_context_add_class(context:PGtkStyleContext; class_name:Pchar);cdecl;external;

procedure gtk_style_context_remove_class(context:PGtkStyleContext; class_name:Pchar);cdecl;external;

function gtk_style_context_has_class(context:PGtkStyleContext; class_name:Pchar):Tgboolean;cdecl;external;

procedure gtk_style_context_set_display(context:PGtkStyleContext; display:PGdkDisplay);cdecl;external;

function gtk_style_context_get_display(context:PGtkStyleContext):PGdkDisplay;cdecl;external;

function gtk_style_context_lookup_color(context:PGtkStyleContext; color_name:Pchar; color:PGdkRGBA):Tgboolean;cdecl;external;


procedure gtk_style_context_get_color(context:PGtkStyleContext; color:PGdkRGBA);cdecl;external;

procedure gtk_style_context_get_border(context:PGtkStyleContext; border:PGtkBorder);cdecl;external;

procedure gtk_style_context_get_padding(context:PGtkStyleContext; padding:PGtkBorder);cdecl;external;

procedure gtk_style_context_get_margin(context:PGtkStyleContext; margin:PGtkBorder);cdecl;external;
type
  PGtkStyleContextPrintFlags = ^TGtkStyleContextPrintFlags;
  TGtkStyleContextPrintFlags = (GTK_STYLE_CONTEXT_PRINT_NONE := 0,GTK_STYLE_CONTEXT_PRINT_RECURSE := 1 shl 0,
    GTK_STYLE_CONTEXT_PRINT_SHOW_STYLE := 1 shl 1,
    GTK_STYLE_CONTEXT_PRINT_SHOW_CHANGE := 1 shl 2
    );


function gtk_style_context_to_string(context:PGtkStyleContext; flags:TGtkStyleContextPrintFlags):Pchar;cdecl;external;

{$endif}


implementation

function GTK_TYPE_STYLE_CONTEXT : longint; { return type might be wrong }
  begin
    GTK_TYPE_STYLE_CONTEXT:=gtk_style_context_get_type;
  end;

function GTK_STYLE_CONTEXT(o : longint) : longint;
begin
  GTK_STYLE_CONTEXT:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_STYLE_CONTEXT,GtkStyleContext);
end;

function GTK_STYLE_CONTEXT_CLASS(c : longint) : longint;
begin
  GTK_STYLE_CONTEXT_CLASS:=G_TYPE_CHECK_CLASS_CAST(c,GTK_TYPE_STYLE_CONTEXT,GtkStyleContextClass);
end;

function GTK_IS_STYLE_CONTEXT(o : longint) : longint;
begin
  GTK_IS_STYLE_CONTEXT:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_STYLE_CONTEXT);
end;

function GTK_IS_STYLE_CONTEXT_CLASS(c : longint) : longint;
begin
  GTK_IS_STYLE_CONTEXT_CLASS:=G_TYPE_CHECK_CLASS_TYPE(c,GTK_TYPE_STYLE_CONTEXT);
end;

function GTK_STYLE_CONTEXT_GET_CLASS(o : longint) : longint;
begin
  GTK_STYLE_CONTEXT_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GTK_TYPE_STYLE_CONTEXT,GtkStyleContextClass);
end;


end.
