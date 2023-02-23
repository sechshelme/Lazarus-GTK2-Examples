
unit gtkcheckbutton;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkcheckbutton.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkcheckbutton.h
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
PGtkCheckButton  = ^GtkCheckButton;
PGtkCheckButtonClass  = ^GtkCheckButtonClass;
PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef __GTK_CHECK_BUTTON_H__}
{$define __GTK_CHECK_BUTTON_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtktogglebutton.h>}


function GTK_TYPE_CHECK_BUTTON : longint; { return type might be wrong }

function GTK_CHECK_BUTTON(obj : longint) : longint;

function GTK_CHECK_BUTTON_CLASS(klass : longint) : longint;

function GTK_IS_CHECK_BUTTON(obj : longint) : longint;

function GTK_IS_CHECK_BUTTON_CLASS(klass : longint) : longint;

function GTK_CHECK_BUTTON_GET_CLASS(obj : longint) : longint;

type
  PGtkCheckButton = ^TGtkCheckButton;
  TGtkCheckButton = record
      parent_instance : TGtkWidget;
    end;


  PGtkCheckButtonClass = ^TGtkCheckButtonClass;
  TGtkCheckButtonClass = record
      parent_class : TGtkWidgetClass;
      toggled : procedure (check_button:PGtkCheckButton);cdecl;
      activate : procedure (check_button:PGtkCheckButton);cdecl;
      padding : array[0..6] of Tgpointer;
    end;



function gtk_check_button_get_type:TGType;cdecl;external;

function gtk_check_button_new:PGtkWidget;cdecl;external;

function gtk_check_button_new_with_label(_label:Pchar):PGtkWidget;cdecl;external;

function gtk_check_button_new_with_mnemonic(_label:Pchar):PGtkWidget;cdecl;external;

procedure gtk_check_button_set_inconsistent(check_button:PGtkCheckButton; inconsistent:Tgboolean);cdecl;external;

function gtk_check_button_get_inconsistent(check_button:PGtkCheckButton):Tgboolean;cdecl;external;

function gtk_check_button_get_active(self:PGtkCheckButton):Tgboolean;cdecl;external;

procedure gtk_check_button_set_active(self:PGtkCheckButton; setting:Tgboolean);cdecl;external;

function gtk_check_button_get_label(self:PGtkCheckButton):Pchar;cdecl;external;

procedure gtk_check_button_set_label(self:PGtkCheckButton; _label:Pchar);cdecl;external;

procedure gtk_check_button_set_group(self:PGtkCheckButton; group:PGtkCheckButton);cdecl;external;

function gtk_check_button_get_use_underline(self:PGtkCheckButton):Tgboolean;cdecl;external;

procedure gtk_check_button_set_use_underline(self:PGtkCheckButton; setting:Tgboolean);cdecl;external;

{$endif}


implementation

function GTK_TYPE_CHECK_BUTTON : longint; { return type might be wrong }
  begin
    GTK_TYPE_CHECK_BUTTON:=gtk_check_button_get_type;
  end;

function GTK_CHECK_BUTTON(obj : longint) : longint;
begin
  GTK_CHECK_BUTTON:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_CHECK_BUTTON,GtkCheckButton);
end;

function GTK_CHECK_BUTTON_CLASS(klass : longint) : longint;
begin
  GTK_CHECK_BUTTON_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_CHECK_BUTTON,GtkCheckButtonClass);
end;

function GTK_IS_CHECK_BUTTON(obj : longint) : longint;
begin
  GTK_IS_CHECK_BUTTON:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_CHECK_BUTTON);
end;

function GTK_IS_CHECK_BUTTON_CLASS(klass : longint) : longint;
begin
  GTK_IS_CHECK_BUTTON_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_CHECK_BUTTON);
end;

function GTK_CHECK_BUTTON_GET_CLASS(obj : longint) : longint;
begin
  GTK_CHECK_BUTTON_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_CHECK_BUTTON,GtkCheckButtonClass);
end;


end.
