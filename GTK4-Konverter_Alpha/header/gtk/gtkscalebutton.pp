
unit gtkscalebutton;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkscalebutton.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkscalebutton.h
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
PGtkAdjustment  = ^GtkAdjustment;
PGtkScaleButton  = ^GtkScaleButton;
PGtkScaleButtonClass  = ^GtkScaleButtonClass;
PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef __GTK_SCALE_BUTTON_H__}
{$define __GTK_SCALE_BUTTON_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}


function GTK_TYPE_SCALE_BUTTON : longint; { return type might be wrong }

function GTK_SCALE_BUTTON(obj : longint) : longint;

function GTK_SCALE_BUTTON_CLASS(klass : longint) : longint;

function GTK_IS_SCALE_BUTTON(obj : longint) : longint;

function GTK_IS_SCALE_BUTTON_CLASS(klass : longint) : longint;

function GTK_SCALE_BUTTON_GET_CLASS(obj : longint) : longint;

type
  PGtkScaleButton = ^TGtkScaleButton;
  TGtkScaleButton = record
      parent_instance : TGtkWidget;
    end;



  PGtkScaleButtonClass = ^TGtkScaleButtonClass;
  TGtkScaleButtonClass = record
      parent_class : TGtkWidgetClass;
      value_changed : procedure (button:PGtkScaleButton; value:Tdouble);cdecl;
      padding : array[0..7] of Tgpointer;
    end;



function gtk_scale_button_get_type:TGType;cdecl;external;

function gtk_scale_button_new(min:Tdouble; max:Tdouble; step:Tdouble; icons:PPchar):PGtkWidget;cdecl;external;

procedure gtk_scale_button_set_icons(button:PGtkScaleButton; icons:PPchar);cdecl;external;

function gtk_scale_button_get_value(button:PGtkScaleButton):Tdouble;cdecl;external;

procedure gtk_scale_button_set_value(button:PGtkScaleButton; value:Tdouble);cdecl;external;

function gtk_scale_button_get_adjustment(button:PGtkScaleButton):PGtkAdjustment;cdecl;external;

procedure gtk_scale_button_set_adjustment(button:PGtkScaleButton; adjustment:PGtkAdjustment);cdecl;external;

function gtk_scale_button_get_plus_button(button:PGtkScaleButton):PGtkWidget;cdecl;external;

function gtk_scale_button_get_minus_button(button:PGtkScaleButton):PGtkWidget;cdecl;external;

function gtk_scale_button_get_popup(button:PGtkScaleButton):PGtkWidget;cdecl;external;

{$endif}


implementation

function GTK_TYPE_SCALE_BUTTON : longint; { return type might be wrong }
  begin
    GTK_TYPE_SCALE_BUTTON:=gtk_scale_button_get_type;
  end;

function GTK_SCALE_BUTTON(obj : longint) : longint;
begin
  GTK_SCALE_BUTTON:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_SCALE_BUTTON,GtkScaleButton);
end;

function GTK_SCALE_BUTTON_CLASS(klass : longint) : longint;
begin
  GTK_SCALE_BUTTON_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_SCALE_BUTTON,GtkScaleButtonClass);
end;

function GTK_IS_SCALE_BUTTON(obj : longint) : longint;
begin
  GTK_IS_SCALE_BUTTON:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_SCALE_BUTTON);
end;

function GTK_IS_SCALE_BUTTON_CLASS(klass : longint) : longint;
begin
  GTK_IS_SCALE_BUTTON_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_SCALE_BUTTON);
end;

function GTK_SCALE_BUTTON_GET_CLASS(obj : longint) : longint;
begin
  GTK_SCALE_BUTTON_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_SCALE_BUTTON,GtkScaleButtonClass);
end;


end.
