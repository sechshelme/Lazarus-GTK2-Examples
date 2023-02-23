
unit gtkbutton;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkbutton.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkbutton.h
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
PGtkButton  = ^GtkButton;
PGtkButtonClass  = ^GtkButtonClass;
PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef __GTK_BUTTON_H__}
{$define __GTK_BUTTON_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}


function GTK_TYPE_BUTTON : longint; { return type might be wrong }

function GTK_BUTTON(obj : longint) : longint;

function GTK_BUTTON_CLASS(klass : longint) : longint;

function GTK_IS_BUTTON(obj : longint) : longint;

function GTK_IS_BUTTON_CLASS(klass : longint) : longint;

function GTK_BUTTON_GET_CLASS(obj : longint) : longint;

type

  PGtkButton = ^TGtkButton;
  TGtkButton = record
      parent_instance : TGtkWidget;
    end;




  PGtkButtonClass = ^TGtkButtonClass;
  TGtkButtonClass = record
      parent_class : TGtkWidgetClass;
      clicked : procedure (var button:TGtkButton);cdecl;
      activate : procedure (var button:TGtkButton);cdecl;
      padding : array[0..7] of Tgpointer;
    end;



function gtk_button_get_type:TGType;cdecl;external;

function gtk_button_new:PGtkWidget;cdecl;external;

function gtk_button_new_with_label(_label:Pchar):PGtkWidget;cdecl;external;

function gtk_button_new_from_icon_name(icon_name:Pchar):PGtkWidget;cdecl;external;

function gtk_button_new_with_mnemonic(_label:Pchar):PGtkWidget;cdecl;external;

procedure gtk_button_set_has_frame(var button:TGtkButton; has_frame:Tgboolean);cdecl;external;

function gtk_button_get_has_frame(var button:TGtkButton):Tgboolean;cdecl;external;

procedure gtk_button_set_label(var button:TGtkButton; _label:Pchar);cdecl;external;

function gtk_button_get_label(var button:TGtkButton):Pchar;cdecl;external;

procedure gtk_button_set_use_underline(var button:TGtkButton; use_underline:Tgboolean);cdecl;external;

function gtk_button_get_use_underline(var button:TGtkButton):Tgboolean;cdecl;external;

procedure gtk_button_set_icon_name(var button:TGtkButton; icon_name:Pchar);cdecl;external;

function gtk_button_get_icon_name(var button:TGtkButton):Pchar;cdecl;external;

procedure gtk_button_set_child(var button:TGtkButton; var child:TGtkWidget);cdecl;external;

function gtk_button_get_child(var button:TGtkButton):PGtkWidget;cdecl;external;

{$endif}


implementation

function GTK_TYPE_BUTTON : longint; { return type might be wrong }
  begin
    GTK_TYPE_BUTTON:=gtk_button_get_type;
  end;

function GTK_BUTTON(obj : longint) : longint;
begin
  GTK_BUTTON:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_BUTTON,GtkButton);
end;

function GTK_BUTTON_CLASS(klass : longint) : longint;
begin
  GTK_BUTTON_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_BUTTON,GtkButtonClass);
end;

function GTK_IS_BUTTON(obj : longint) : longint;
begin
  GTK_IS_BUTTON:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_BUTTON);
end;

function GTK_IS_BUTTON_CLASS(klass : longint) : longint;
begin
  GTK_IS_BUTTON_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_BUTTON);
end;

function GTK_BUTTON_GET_CLASS(obj : longint) : longint;
begin
  GTK_BUTTON_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_BUTTON,GtkButtonClass);
end;


end.
