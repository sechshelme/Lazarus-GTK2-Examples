
unit gtkadjustment;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkadjustment.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkadjustment.h
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
PGtkAdjustment  = ^GtkAdjustment;
PGtkAdjustmentClass  = ^GtkAdjustmentClass;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef __GTK_ADJUSTMENT_H__}
{$define __GTK_ADJUSTMENT_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}
{$include <gtk/gtktypes.h>}


function GTK_TYPE_ADJUSTMENT : longint; { return type might be wrong }

function GTK_ADJUSTMENT(obj : longint) : longint;

function GTK_ADJUSTMENT_CLASS(klass : longint) : longint;

function GTK_IS_ADJUSTMENT(obj : longint) : longint;

function GTK_IS_ADJUSTMENT_CLASS(klass : longint) : longint;

function GTK_ADJUSTMENT_GET_CLASS(obj : longint) : longint;

type
  PGtkAdjustment = ^TGtkAdjustment;
  TGtkAdjustment = record
      parent_instance : TGInitiallyUnowned;
    end;


  PGtkAdjustmentClass = ^TGtkAdjustmentClass;
  TGtkAdjustmentClass = record
      parent_class : TGInitiallyUnownedClass;
      changed : procedure (adjustment:PGtkAdjustment);cdecl;
      value_changed : procedure (adjustment:PGtkAdjustment);cdecl;
      _gtk_reserved1 : procedure ;cdecl;
      _gtk_reserved2 : procedure ;cdecl;
      _gtk_reserved3 : procedure ;cdecl;
      _gtk_reserved4 : procedure ;cdecl;
    end;



function gtk_adjustment_get_type:TGType;cdecl;external;

function gtk_adjustment_new(value:Tdouble; lower:Tdouble; upper:Tdouble; step_increment:Tdouble; page_increment:Tdouble; 
           page_size:Tdouble):PGtkAdjustment;cdecl;external;

procedure gtk_adjustment_clamp_page(adjustment:PGtkAdjustment; lower:Tdouble; upper:Tdouble);cdecl;external;

function gtk_adjustment_get_value(adjustment:PGtkAdjustment):Tdouble;cdecl;external;

procedure gtk_adjustment_set_value(adjustment:PGtkAdjustment; value:Tdouble);cdecl;external;

function gtk_adjustment_get_lower(adjustment:PGtkAdjustment):Tdouble;cdecl;external;

procedure gtk_adjustment_set_lower(adjustment:PGtkAdjustment; lower:Tdouble);cdecl;external;

function gtk_adjustment_get_upper(adjustment:PGtkAdjustment):Tdouble;cdecl;external;

procedure gtk_adjustment_set_upper(adjustment:PGtkAdjustment; upper:Tdouble);cdecl;external;

function gtk_adjustment_get_step_increment(adjustment:PGtkAdjustment):Tdouble;cdecl;external;

procedure gtk_adjustment_set_step_increment(adjustment:PGtkAdjustment; step_increment:Tdouble);cdecl;external;

function gtk_adjustment_get_page_increment(adjustment:PGtkAdjustment):Tdouble;cdecl;external;

procedure gtk_adjustment_set_page_increment(adjustment:PGtkAdjustment; page_increment:Tdouble);cdecl;external;

function gtk_adjustment_get_page_size(adjustment:PGtkAdjustment):Tdouble;cdecl;external;

procedure gtk_adjustment_set_page_size(adjustment:PGtkAdjustment; page_size:Tdouble);cdecl;external;

procedure gtk_adjustment_configure(adjustment:PGtkAdjustment; value:Tdouble; lower:Tdouble; upper:Tdouble; step_increment:Tdouble; 
            page_increment:Tdouble; page_size:Tdouble);cdecl;external;

function gtk_adjustment_get_minimum_increment(adjustment:PGtkAdjustment):Tdouble;cdecl;external;

{$endif}


implementation

function GTK_TYPE_ADJUSTMENT : longint; { return type might be wrong }
  begin
    GTK_TYPE_ADJUSTMENT:=gtk_adjustment_get_type;
  end;

function GTK_ADJUSTMENT(obj : longint) : longint;
begin
  GTK_ADJUSTMENT:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_ADJUSTMENT,GtkAdjustment);
end;

function GTK_ADJUSTMENT_CLASS(klass : longint) : longint;
begin
  GTK_ADJUSTMENT_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_ADJUSTMENT,GtkAdjustmentClass);
end;

function GTK_IS_ADJUSTMENT(obj : longint) : longint;
begin
  GTK_IS_ADJUSTMENT:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_ADJUSTMENT);
end;

function GTK_IS_ADJUSTMENT_CLASS(klass : longint) : longint;
begin
  GTK_IS_ADJUSTMENT_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_ADJUSTMENT);
end;

function GTK_ADJUSTMENT_GET_CLASS(obj : longint) : longint;
begin
  GTK_ADJUSTMENT_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_ADJUSTMENT,GtkAdjustmentClass);
end;


end.
