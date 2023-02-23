
unit gtkcenterbox;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkcenterbox.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkcenterbox.h
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
PGtkCenterBox  = ^GtkCenterBox;
PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_CENTER_BOX_H__}
{$define __GTK_CENTER_BOX_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include "gtkwidget.h"}


function GTK_TYPE_CENTER_BOX : longint; { return type might be wrong }

function GTK_CENTER_BOX(obj : longint) : longint;

function GTK_CENTER_BOX_CLASS(klass : longint) : longint;

function GTK_IS_CENTER_BOX(obj : longint) : longint;

function GTK_IS_CENTER_BOX_CLASS(klass : longint) : longint;

function GTK_CENTER_BOX_GET_CLASS(obj : longint) : longint;

type


function gtk_center_box_get_type:TGType;cdecl;external;

function gtk_center_box_new:PGtkWidget;cdecl;external;

procedure gtk_center_box_set_start_widget(self:PGtkCenterBox; child:PGtkWidget);cdecl;external;

procedure gtk_center_box_set_center_widget(self:PGtkCenterBox; child:PGtkWidget);cdecl;external;

procedure gtk_center_box_set_end_widget(self:PGtkCenterBox; child:PGtkWidget);cdecl;external;

function gtk_center_box_get_start_widget(self:PGtkCenterBox):PGtkWidget;cdecl;external;

function gtk_center_box_get_center_widget(self:PGtkCenterBox):PGtkWidget;cdecl;external;

function gtk_center_box_get_end_widget(self:PGtkCenterBox):PGtkWidget;cdecl;external;

procedure gtk_center_box_set_baseline_position(self:PGtkCenterBox; position:TGtkBaselinePosition);cdecl;external;

function gtk_center_box_get_baseline_position(self:PGtkCenterBox):TGtkBaselinePosition;cdecl;external;

{$endif}

implementation

function GTK_TYPE_CENTER_BOX : longint; { return type might be wrong }
  begin
    GTK_TYPE_CENTER_BOX:=gtk_center_box_get_type;
  end;

function GTK_CENTER_BOX(obj : longint) : longint;
begin
  GTK_CENTER_BOX:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_CENTER_BOX,GtkCenterBox);
end;

function GTK_CENTER_BOX_CLASS(klass : longint) : longint;
begin
  GTK_CENTER_BOX_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_CENTER_BOX,GtkCenterBoxClass);
end;

function GTK_IS_CENTER_BOX(obj : longint) : longint;
begin
  GTK_IS_CENTER_BOX:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_CENTER_BOX);
end;

function GTK_IS_CENTER_BOX_CLASS(klass : longint) : longint;
begin
  GTK_IS_CENTER_BOX_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_CENTER_BOX);
end;

function GTK_CENTER_BOX_GET_CLASS(obj : longint) : longint;
begin
  GTK_CENTER_BOX_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_CENTER_BOX,GtkCenterBoxClass);
end;


end.
