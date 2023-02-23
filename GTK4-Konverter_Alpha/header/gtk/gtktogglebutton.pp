
unit gtktogglebutton;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtktogglebutton.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtktogglebutton.h
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
PGtkToggleButton  = ^GtkToggleButton;
PGtkToggleButtonClass  = ^GtkToggleButtonClass;
PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef __GTK_TOGGLE_BUTTON_H__}
{$define __GTK_TOGGLE_BUTTON_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkbutton.h>}


function GTK_TYPE_TOGGLE_BUTTON : longint; { return type might be wrong }

function GTK_TOGGLE_BUTTON(obj : longint) : longint;

function GTK_TOGGLE_BUTTON_CLASS(klass : longint) : longint;

function GTK_IS_TOGGLE_BUTTON(obj : longint) : longint;

function GTK_IS_TOGGLE_BUTTON_CLASS(klass : longint) : longint;

function GTK_TOGGLE_BUTTON_GET_CLASS(obj : longint) : longint;

type

  PGtkToggleButton = ^TGtkToggleButton;
  TGtkToggleButton = record
      button : TGtkButton;
    end;


  PGtkToggleButtonClass = ^TGtkToggleButtonClass;
  TGtkToggleButtonClass = record
      parent_class : TGtkButtonClass;
      toggled : procedure (toggle_button:PGtkToggleButton);cdecl;
      padding : array[0..7] of Tgpointer;
    end;



function gtk_toggle_button_get_type:TGType;cdecl;external;

function gtk_toggle_button_new:PGtkWidget;cdecl;external;

function gtk_toggle_button_new_with_label(_label:Pchar):PGtkWidget;cdecl;external;

function gtk_toggle_button_new_with_mnemonic(_label:Pchar):PGtkWidget;cdecl;external;

procedure gtk_toggle_button_set_active(toggle_button:PGtkToggleButton; is_active:Tgboolean);cdecl;external;

function gtk_toggle_button_get_active(toggle_button:PGtkToggleButton):Tgboolean;cdecl;external;

procedure gtk_toggle_button_toggled(toggle_button:PGtkToggleButton);cdecl;external;

procedure gtk_toggle_button_set_group(toggle_button:PGtkToggleButton; group:PGtkToggleButton);cdecl;external;

{$endif}


implementation

function GTK_TYPE_TOGGLE_BUTTON : longint; { return type might be wrong }
  begin
    GTK_TYPE_TOGGLE_BUTTON:=gtk_toggle_button_get_type;
  end;

function GTK_TOGGLE_BUTTON(obj : longint) : longint;
begin
  GTK_TOGGLE_BUTTON:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_TOGGLE_BUTTON,GtkToggleButton);
end;

function GTK_TOGGLE_BUTTON_CLASS(klass : longint) : longint;
begin
  GTK_TOGGLE_BUTTON_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_TOGGLE_BUTTON,GtkToggleButtonClass);
end;

function GTK_IS_TOGGLE_BUTTON(obj : longint) : longint;
begin
  GTK_IS_TOGGLE_BUTTON:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_TOGGLE_BUTTON);
end;

function GTK_IS_TOGGLE_BUTTON_CLASS(klass : longint) : longint;
begin
  GTK_IS_TOGGLE_BUTTON_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_TOGGLE_BUTTON);
end;

function GTK_TOGGLE_BUTTON_GET_CLASS(obj : longint) : longint;
begin
  GTK_TOGGLE_BUTTON_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_TOGGLE_BUTTON,GtkToggleButtonClass);
end;


end.
