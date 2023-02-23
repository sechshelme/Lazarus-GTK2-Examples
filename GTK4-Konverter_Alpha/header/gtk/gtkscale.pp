
unit gtkscale;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkscale.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkscale.h
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
PGtkScale  = ^GtkScale;
PGtkScaleClass  = ^GtkScaleClass;
PGtkScaleFormatValueFunc  = ^GtkScaleFormatValueFunc;
PGtkWidget  = ^GtkWidget;
Plongint  = ^longint;
PPangoLayout  = ^PangoLayout;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef __GTK_SCALE_H__}
{$define __GTK_SCALE_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkrange.h>}


function GTK_TYPE_SCALE : longint; { return type might be wrong }

function GTK_SCALE(obj : longint) : longint;

function GTK_SCALE_CLASS(klass : longint) : longint;

function GTK_IS_SCALE(obj : longint) : longint;

function GTK_IS_SCALE_CLASS(klass : longint) : longint;

function GTK_SCALE_GET_CLASS(obj : longint) : longint;

type
  PGtkScale = ^TGtkScale;
  TGtkScale = record
      parent_instance : TGtkRange;
    end;


  PGtkScaleClass = ^TGtkScaleClass;
  TGtkScaleClass = record
      parent_class : TGtkRangeClass;
      get_layout_offsets : procedure (scale:PGtkScale; x:Plongint; y:Plongint);cdecl;
      padding : array[0..7] of Tgpointer;
    end;



  PGtkScaleFormatValueFunc = ^TGtkScaleFormatValueFunc;
  TGtkScaleFormatValueFunc = function (scale:PGtkScale; value:Tdouble; user_data:Tgpointer):Pchar;cdecl;


function gtk_scale_get_type:TGType;cdecl;external;

function gtk_scale_new(orientation:TGtkOrientation; adjustment:PGtkAdjustment):PGtkWidget;cdecl;external;

function gtk_scale_new_with_range(orientation:TGtkOrientation; min:Tdouble; max:Tdouble; step:Tdouble):PGtkWidget;cdecl;external;

procedure gtk_scale_set_digits(scale:PGtkScale; digits:longint);cdecl;external;

function gtk_scale_get_digits(scale:PGtkScale):longint;cdecl;external;

procedure gtk_scale_set_draw_value(scale:PGtkScale; draw_value:Tgboolean);cdecl;external;

function gtk_scale_get_draw_value(scale:PGtkScale):Tgboolean;cdecl;external;

procedure gtk_scale_set_has_origin(scale:PGtkScale; has_origin:Tgboolean);cdecl;external;

function gtk_scale_get_has_origin(scale:PGtkScale):Tgboolean;cdecl;external;

procedure gtk_scale_set_value_pos(scale:PGtkScale; pos:TGtkPositionType);cdecl;external;

function gtk_scale_get_value_pos(scale:PGtkScale):TGtkPositionType;cdecl;external;

function gtk_scale_get_layout(scale:PGtkScale):PPangoLayout;cdecl;external;

procedure gtk_scale_get_layout_offsets(scale:PGtkScale; x:Plongint; y:Plongint);cdecl;external;

procedure gtk_scale_add_mark(scale:PGtkScale; value:Tdouble; position:TGtkPositionType; markup:Pchar);cdecl;external;

procedure gtk_scale_clear_marks(scale:PGtkScale);cdecl;external;

procedure gtk_scale_set_format_value_func(scale:PGtkScale; func:TGtkScaleFormatValueFunc; user_data:Tgpointer; destroy_notify:TGDestroyNotify);cdecl;external;

{$endif}


implementation

function GTK_TYPE_SCALE : longint; { return type might be wrong }
  begin
    GTK_TYPE_SCALE:=gtk_scale_get_type;
  end;

function GTK_SCALE(obj : longint) : longint;
begin
  GTK_SCALE:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_SCALE,GtkScale);
end;

function GTK_SCALE_CLASS(klass : longint) : longint;
begin
  GTK_SCALE_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_SCALE,GtkScaleClass);
end;

function GTK_IS_SCALE(obj : longint) : longint;
begin
  GTK_IS_SCALE:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_SCALE);
end;

function GTK_IS_SCALE_CLASS(klass : longint) : longint;
begin
  GTK_IS_SCALE_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_SCALE);
end;

function GTK_SCALE_GET_CLASS(obj : longint) : longint;
begin
  GTK_SCALE_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_SCALE,GtkScaleClass);
end;


end.
