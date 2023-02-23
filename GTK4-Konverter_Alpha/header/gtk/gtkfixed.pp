
unit gtkfixed;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkfixed.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkfixed.h
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
PGskTransform  = ^GskTransform;
PGtkFixed  = ^GtkFixed;
PGtkFixedClass  = ^GtkFixedClass;
PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef __GTK_FIXED_H__}
{$define __GTK_FIXED_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}


function GTK_TYPE_FIXED : longint; { return type might be wrong }

function GTK_FIXED(obj : longint) : longint;

function GTK_FIXED_CLASS(klass : longint) : longint;

function GTK_IS_FIXED(obj : longint) : longint;

function GTK_IS_FIXED_CLASS(klass : longint) : longint;

function GTK_FIXED_GET_CLASS(obj : longint) : longint;

type
  PGtkFixed = ^TGtkFixed;
  TGtkFixed = record
      parent_instance : TGtkWidget;
    end;


  PGtkFixedClass = ^TGtkFixedClass;
  TGtkFixedClass = record
      parent_class : TGtkWidgetClass;
      padding : array[0..7] of Tgpointer;
    end;



function gtk_fixed_get_type:TGType;cdecl;external;

function gtk_fixed_new:PGtkWidget;cdecl;external;

procedure gtk_fixed_put(fixed:PGtkFixed; widget:PGtkWidget; x:Tdouble; y:Tdouble);cdecl;external;

procedure gtk_fixed_remove(fixed:PGtkFixed; widget:PGtkWidget);cdecl;external;

procedure gtk_fixed_move(fixed:PGtkFixed; widget:PGtkWidget; x:Tdouble; y:Tdouble);cdecl;external;

procedure gtk_fixed_get_child_position(fixed:PGtkFixed; widget:PGtkWidget; x:Pdouble; y:Pdouble);cdecl;external;

procedure gtk_fixed_set_child_transform(fixed:PGtkFixed; widget:PGtkWidget; transform:PGskTransform);cdecl;external;

function gtk_fixed_get_child_transform(fixed:PGtkFixed; widget:PGtkWidget):PGskTransform;cdecl;external;

{$endif}


implementation

function GTK_TYPE_FIXED : longint; { return type might be wrong }
  begin
    GTK_TYPE_FIXED:=gtk_fixed_get_type;
  end;

function GTK_FIXED(obj : longint) : longint;
begin
  GTK_FIXED:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_FIXED,GtkFixed);
end;

function GTK_FIXED_CLASS(klass : longint) : longint;
begin
  GTK_FIXED_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_FIXED,GtkFixedClass);
end;

function GTK_IS_FIXED(obj : longint) : longint;
begin
  GTK_IS_FIXED:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_FIXED);
end;

function GTK_IS_FIXED_CLASS(klass : longint) : longint;
begin
  GTK_IS_FIXED_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_FIXED);
end;

function GTK_FIXED_GET_CLASS(obj : longint) : longint;
begin
  GTK_FIXED_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_FIXED,GtkFixedClass);
end;


end.
