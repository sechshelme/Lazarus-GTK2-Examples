
unit gtkrange;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkrange.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkrange.h
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
PGdkRectangle  = ^GdkRectangle;
PGtkAdjustment  = ^GtkAdjustment;
PGtkBorder  = ^GtkBorder;
PGtkRange  = ^GtkRange;
PGtkRangeClass  = ^GtkRangeClass;
Plongint  = ^longint;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef __GTK_RANGE_H__}
{$define __GTK_RANGE_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}


function GTK_TYPE_RANGE : longint; { return type might be wrong }

function GTK_RANGE(obj : longint) : longint;

function GTK_RANGE_CLASS(klass : longint) : longint;

function GTK_IS_RANGE(obj : longint) : longint;

function GTK_IS_RANGE_CLASS(klass : longint) : longint;

function GTK_RANGE_GET_CLASS(obj : longint) : longint;

type
  PGtkRange = ^TGtkRange;
  TGtkRange = record
      parent_instance : TGtkWidget;
    end;




  PGtkRangeClass = ^TGtkRangeClass;
  TGtkRangeClass = record
      parent_class : TGtkWidgetClass;
      value_changed : procedure (range:PGtkRange);cdecl;
      adjust_bounds : procedure (range:PGtkRange; new_value:Tdouble);cdecl;
      move_slider : procedure (range:PGtkRange; scroll:TGtkScrollType);cdecl;
      get_range_border : procedure (range:PGtkRange; border_:PGtkBorder);cdecl;
      change_value : function (range:PGtkRange; scroll:TGtkScrollType; new_value:Tdouble):Tgboolean;cdecl;
      padding : array[0..7] of Tgpointer;
    end;



function gtk_range_get_type:TGType;cdecl;external;

procedure gtk_range_set_adjustment(range:PGtkRange; adjustment:PGtkAdjustment);cdecl;external;

function gtk_range_get_adjustment(range:PGtkRange):PGtkAdjustment;cdecl;external;

procedure gtk_range_set_inverted(range:PGtkRange; setting:Tgboolean);cdecl;external;

function gtk_range_get_inverted(range:PGtkRange):Tgboolean;cdecl;external;

procedure gtk_range_set_flippable(range:PGtkRange; flippable:Tgboolean);cdecl;external;

function gtk_range_get_flippable(range:PGtkRange):Tgboolean;cdecl;external;

procedure gtk_range_set_slider_size_fixed(range:PGtkRange; size_fixed:Tgboolean);cdecl;external;

function gtk_range_get_slider_size_fixed(range:PGtkRange):Tgboolean;cdecl;external;

procedure gtk_range_get_range_rect(range:PGtkRange; range_rect:PGdkRectangle);cdecl;external;

procedure gtk_range_get_slider_range(range:PGtkRange; slider_start:Plongint; slider_end:Plongint);cdecl;external;

procedure gtk_range_set_increments(range:PGtkRange; step:Tdouble; page:Tdouble);cdecl;external;

procedure gtk_range_set_range(range:PGtkRange; min:Tdouble; max:Tdouble);cdecl;external;

procedure gtk_range_set_value(range:PGtkRange; value:Tdouble);cdecl;external;

function gtk_range_get_value(range:PGtkRange):Tdouble;cdecl;external;

procedure gtk_range_set_show_fill_level(range:PGtkRange; show_fill_level:Tgboolean);cdecl;external;

function gtk_range_get_show_fill_level(range:PGtkRange):Tgboolean;cdecl;external;

procedure gtk_range_set_restrict_to_fill_level(range:PGtkRange; restrict_to_fill_level:Tgboolean);cdecl;external;

function gtk_range_get_restrict_to_fill_level(range:PGtkRange):Tgboolean;cdecl;external;

procedure gtk_range_set_fill_level(range:PGtkRange; fill_level:Tdouble);cdecl;external;

function gtk_range_get_fill_level(range:PGtkRange):Tdouble;cdecl;external;

procedure gtk_range_set_round_digits(range:PGtkRange; round_digits:longint);cdecl;external;

function gtk_range_get_round_digits(range:PGtkRange):longint;cdecl;external;

{$endif}


implementation

function GTK_TYPE_RANGE : longint; { return type might be wrong }
  begin
    GTK_TYPE_RANGE:=gtk_range_get_type;
  end;

function GTK_RANGE(obj : longint) : longint;
begin
  GTK_RANGE:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_RANGE,GtkRange);
end;

function GTK_RANGE_CLASS(klass : longint) : longint;
begin
  GTK_RANGE_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_RANGE,GtkRangeClass);
end;

function GTK_IS_RANGE(obj : longint) : longint;
begin
  GTK_IS_RANGE:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_RANGE);
end;

function GTK_IS_RANGE_CLASS(klass : longint) : longint;
begin
  GTK_IS_RANGE_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_RANGE);
end;

function GTK_RANGE_GET_CLASS(obj : longint) : longint;
begin
  GTK_RANGE_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_RANGE,GtkRangeClass);
end;


end.
