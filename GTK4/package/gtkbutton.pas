unit gtkbutton;

interface

uses  // gtk2,
  common_GTK;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

// {$include <gtk/gtkwidget.h>}
{ // G_BEGIN_DECLS }

type
  PGtkButton = ^TGtkButton;
  TGtkButton = record
      parent_instance : TGtkWidget;
    end;

  PGtkButtonClass = ^TGtkButtonClass;
  TGtkButtonClass = record
      parent_class : TGtkWidgetClass;
      clicked : procedure (button:PGtkButton);cdecl;
      activate : procedure (button:PGtkButton);cdecl;
      padding : array[0..7] of Tgpointer;
    end;

function gtk_button_get_type:TGType;cdecl;external gtklib;
function gtk_button_new:PGtkWidget;cdecl;external gtklib;
function gtk_button_new_with_label(_label:Pchar):PGtkWidget;cdecl;external gtklib;
function gtk_button_new_from_icon_name(icon_name:Pchar):PGtkWidget;cdecl;external gtklib;
function gtk_button_new_with_mnemonic(_label:Pchar):PGtkWidget;cdecl;external gtklib;
procedure gtk_button_set_has_frame(button:PGtkButton; has_frame:Tgboolean);cdecl;external gtklib;
function gtk_button_get_has_frame(button:PGtkButton):Tgboolean;cdecl;external gtklib;
procedure gtk_button_set_label(button:PGtkButton; _label:Pchar);cdecl;external gtklib;
function gtk_button_get_label(button:PGtkButton):Pchar;cdecl;external gtklib;
procedure gtk_button_set_use_underline(button:PGtkButton; use_underline:Tgboolean);cdecl;external gtklib;
function gtk_button_get_use_underline(button:PGtkButton):Tgboolean;cdecl;external gtklib;
procedure gtk_button_set_icon_name(button:PGtkButton; icon_name:Pchar);cdecl;external gtklib;
function gtk_button_get_icon_name(button:PGtkButton):Pchar;cdecl;external gtklib;
procedure gtk_button_set_child(button:PGtkButton; child:PGtkWidget);cdecl;external gtklib;
function gtk_button_get_child(button:PGtkButton):PGtkWidget;cdecl;external gtklib;

function GTK_TYPE_BUTTON : TGType;
function GTK_BUTTON(obj : Pointer) : PGtkButton;
function GTK_BUTTON_CLASS(klass : Pointer) : PGtkButtonClass;
function GTK_IS_BUTTON(obj : Pointer) : Tgboolean;
function GTK_IS_BUTTON_CLASS(klass : Pointer) : Tgboolean;
function GTK_BUTTON_GET_CLASS(obj : Pointer) : PGtkButtonClass;

implementation

function GTK_TYPE_BUTTON: TGType;
  begin
    GTK_TYPE_BUTTON:=gtk_button_get_type;
  end;

function GTK_BUTTON(obj : Pointer) : PGtkButton;
begin
//  GTK_BUTTON:=PGtkButton(GTK_CHECK_CAST(obj,GTK_TYPE_BUTTON));
  GTK_BUTTON:=PGtkButton(obj);
end;

function GTK_BUTTON_CLASS(klass: Pointer): PGtkButtonClass;
begin
//  GTK_BUTTON_CLASS:=PGtkButtonClass(GTK_CHECK_CLASS_CAST(klass,GTK_TYPE_BUTTON));
  GTK_BUTTON_CLASS:=PGtkButtonClass(klass);
end;

function GTK_IS_BUTTON(obj: Pointer): Tgboolean;
begin
  Result:=True;
//   GTK_IS_BUTTON:=GTK_CHECK_TYPE(obj,GTK_TYPE_BUTTON);
end;

function GTK_IS_BUTTON_CLASS(klass: Pointer): Tgboolean;
begin
  Result:=True;
//   GTK_IS_BUTTON_CLASS:=GTK_CHECK_CLASS_TYPE(klass,GTK_TYPE_BUTTON);
end;

function GTK_BUTTON_GET_CLASS(obj: Pointer): PGtkButtonClass;
begin
//  GTK_BUTTON_GET_CLASS:=PGtkButtonClass(GTK_CHECK_GET_CLASS(obj,GTK_TYPE_BUTTON));
  GTK_BUTTON_GET_CLASS:=PGtkButtonClass(obj);
end;

// ==============
end.
