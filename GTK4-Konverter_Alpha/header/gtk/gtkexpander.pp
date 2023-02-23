
unit gtkexpander;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkexpander.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkexpander.h
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
PGtkExpander  = ^GtkExpander;
PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_EXPANDER_H__}
{$define __GTK_EXPANDER_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}


function GTK_TYPE_EXPANDER : longint; { return type might be wrong }

function GTK_EXPANDER(obj : longint) : longint;

function GTK_IS_EXPANDER(obj : longint) : longint;

type


function gtk_expander_get_type:TGType;cdecl;external;

function gtk_expander_new(_label:Pchar):PGtkWidget;cdecl;external;

function gtk_expander_new_with_mnemonic(_label:Pchar):PGtkWidget;cdecl;external;

procedure gtk_expander_set_expanded(expander:PGtkExpander; expanded:Tgboolean);cdecl;external;

function gtk_expander_get_expanded(expander:PGtkExpander):Tgboolean;cdecl;external;

procedure gtk_expander_set_label(expander:PGtkExpander; _label:Pchar);cdecl;external;

function gtk_expander_get_label(expander:PGtkExpander):Pchar;cdecl;external;

procedure gtk_expander_set_use_underline(expander:PGtkExpander; use_underline:Tgboolean);cdecl;external;

function gtk_expander_get_use_underline(expander:PGtkExpander):Tgboolean;cdecl;external;

procedure gtk_expander_set_use_markup(expander:PGtkExpander; use_markup:Tgboolean);cdecl;external;

function gtk_expander_get_use_markup(expander:PGtkExpander):Tgboolean;cdecl;external;

procedure gtk_expander_set_label_widget(expander:PGtkExpander; label_widget:PGtkWidget);cdecl;external;

function gtk_expander_get_label_widget(expander:PGtkExpander):PGtkWidget;cdecl;external;

procedure gtk_expander_set_resize_toplevel(expander:PGtkExpander; resize_toplevel:Tgboolean);cdecl;external;

function gtk_expander_get_resize_toplevel(expander:PGtkExpander):Tgboolean;cdecl;external;

procedure gtk_expander_set_child(expander:PGtkExpander; child:PGtkWidget);cdecl;external;

function gtk_expander_get_child(expander:PGtkExpander):PGtkWidget;cdecl;external;

{$endif}


implementation

function GTK_TYPE_EXPANDER : longint; { return type might be wrong }
  begin
    GTK_TYPE_EXPANDER:=gtk_expander_get_type;
  end;

function GTK_EXPANDER(obj : longint) : longint;
begin
  GTK_EXPANDER:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_EXPANDER,GtkExpander);
end;

function GTK_IS_EXPANDER(obj : longint) : longint;
begin
  GTK_IS_EXPANDER:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_EXPANDER);
end;


end.
