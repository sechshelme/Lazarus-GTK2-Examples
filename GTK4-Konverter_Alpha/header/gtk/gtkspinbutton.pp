
unit gtkspinbutton;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkspinbutton.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkspinbutton.h
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
Pdouble  = ^double;
PGtkAdjustment  = ^GtkAdjustment;
PGtkSpinButton  = ^GtkSpinButton;
PGtkSpinButtonUpdatePolicy  = ^GtkSpinButtonUpdatePolicy;
PGtkSpinType  = ^GtkSpinType;
PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef __GTK_SPIN_BUTTON_H__}
{$define __GTK_SPIN_BUTTON_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}


function GTK_TYPE_SPIN_BUTTON : longint; { return type might be wrong }

function GTK_SPIN_BUTTON(obj : longint) : longint;

function GTK_IS_SPIN_BUTTON(obj : longint) : longint;


const
  GTK_INPUT_ERROR = -(1);  

type
  PGtkSpinButtonUpdatePolicy = ^TGtkSpinButtonUpdatePolicy;
  TGtkSpinButtonUpdatePolicy = (GTK_UPDATE_ALWAYS,GTK_UPDATE_IF_VALID);


  PGtkSpinType = ^TGtkSpinType;
  TGtkSpinType = (GTK_SPIN_STEP_FORWARD,GTK_SPIN_STEP_BACKWARD,
    GTK_SPIN_PAGE_FORWARD,GTK_SPIN_PAGE_BACKWARD,
    GTK_SPIN_HOME,GTK_SPIN_END,GTK_SPIN_USER_DEFINED
    );


function gtk_spin_button_get_type:TGType;cdecl;external;

procedure gtk_spin_button_configure(spin_button:PGtkSpinButton; adjustment:PGtkAdjustment; climb_rate:Tdouble; digits:Tguint);cdecl;external;

function gtk_spin_button_new(adjustment:PGtkAdjustment; climb_rate:Tdouble; digits:Tguint):PGtkWidget;cdecl;external;

function gtk_spin_button_new_with_range(min:Tdouble; max:Tdouble; step:Tdouble):PGtkWidget;cdecl;external;

procedure gtk_spin_button_set_adjustment(spin_button:PGtkSpinButton; adjustment:PGtkAdjustment);cdecl;external;

function gtk_spin_button_get_adjustment(spin_button:PGtkSpinButton):PGtkAdjustment;cdecl;external;

procedure gtk_spin_button_set_digits(spin_button:PGtkSpinButton; digits:Tguint);cdecl;external;

function gtk_spin_button_get_digits(spin_button:PGtkSpinButton):Tguint;cdecl;external;

procedure gtk_spin_button_set_increments(spin_button:PGtkSpinButton; step:Tdouble; page:Tdouble);cdecl;external;

procedure gtk_spin_button_get_increments(spin_button:PGtkSpinButton; step:Pdouble; page:Pdouble);cdecl;external;

procedure gtk_spin_button_set_range(spin_button:PGtkSpinButton; min:Tdouble; max:Tdouble);cdecl;external;

procedure gtk_spin_button_get_range(spin_button:PGtkSpinButton; min:Pdouble; max:Pdouble);cdecl;external;

function gtk_spin_button_get_value(spin_button:PGtkSpinButton):Tdouble;cdecl;external;

function gtk_spin_button_get_value_as_int(spin_button:PGtkSpinButton):longint;cdecl;external;

procedure gtk_spin_button_set_value(spin_button:PGtkSpinButton; value:Tdouble);cdecl;external;

procedure gtk_spin_button_set_update_policy(spin_button:PGtkSpinButton; policy:TGtkSpinButtonUpdatePolicy);cdecl;external;

function gtk_spin_button_get_update_policy(spin_button:PGtkSpinButton):TGtkSpinButtonUpdatePolicy;cdecl;external;

procedure gtk_spin_button_set_numeric(spin_button:PGtkSpinButton; numeric:Tgboolean);cdecl;external;

function gtk_spin_button_get_numeric(spin_button:PGtkSpinButton):Tgboolean;cdecl;external;

procedure gtk_spin_button_spin(spin_button:PGtkSpinButton; direction:TGtkSpinType; increment:Tdouble);cdecl;external;

procedure gtk_spin_button_set_wrap(spin_button:PGtkSpinButton; wrap:Tgboolean);cdecl;external;

function gtk_spin_button_get_wrap(spin_button:PGtkSpinButton):Tgboolean;cdecl;external;

procedure gtk_spin_button_set_snap_to_ticks(spin_button:PGtkSpinButton; snap_to_ticks:Tgboolean);cdecl;external;

function gtk_spin_button_get_snap_to_ticks(spin_button:PGtkSpinButton):Tgboolean;cdecl;external;

procedure gtk_spin_button_set_climb_rate(spin_button:PGtkSpinButton; climb_rate:Tdouble);cdecl;external;

function gtk_spin_button_get_climb_rate(spin_button:PGtkSpinButton):Tdouble;cdecl;external;

procedure gtk_spin_button_update(spin_button:PGtkSpinButton);cdecl;external;

{$endif}


implementation

function GTK_TYPE_SPIN_BUTTON : longint; { return type might be wrong }
  begin
    GTK_TYPE_SPIN_BUTTON:=gtk_spin_button_get_type;
  end;

function GTK_SPIN_BUTTON(obj : longint) : longint;
begin
  GTK_SPIN_BUTTON:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_SPIN_BUTTON,GtkSpinButton);
end;

function GTK_IS_SPIN_BUTTON(obj : longint) : longint;
begin
  GTK_IS_SPIN_BUTTON:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_SPIN_BUTTON);
end;


end.
