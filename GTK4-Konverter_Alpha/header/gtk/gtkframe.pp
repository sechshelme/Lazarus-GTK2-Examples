
unit gtkframe;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkframe.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkframe.h
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
PGtkAllocation  = ^GtkAllocation;
PGtkFrame  = ^GtkFrame;
PGtkFrameClass  = ^GtkFrameClass;
PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef __GTK_FRAME_H__}
{$define __GTK_FRAME_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}


function GTK_TYPE_FRAME : longint; { return type might be wrong }

function GTK_FRAME(obj : longint) : longint;

function GTK_FRAME_CLASS(klass : longint) : longint;

function GTK_IS_FRAME(obj : longint) : longint;

function GTK_IS_FRAME_CLASS(klass : longint) : longint;

function GTK_FRAME_GET_CLASS(obj : longint) : longint;

type
  PGtkFrame = ^TGtkFrame;
  TGtkFrame = record
      parent_instance : TGtkWidget;
    end;




  PGtkFrameClass = ^TGtkFrameClass;
  TGtkFrameClass = record
      parent_class : TGtkWidgetClass;
      compute_child_allocation : procedure (frame:PGtkFrame; allocation:PGtkAllocation);cdecl;
      padding : array[0..7] of Tgpointer;
    end;



function gtk_frame_get_type:TGType;cdecl;external;

function gtk_frame_new(_label:Pchar):PGtkWidget;cdecl;external;

procedure gtk_frame_set_label(frame:PGtkFrame; _label:Pchar);cdecl;external;

function gtk_frame_get_label(frame:PGtkFrame):Pchar;cdecl;external;

procedure gtk_frame_set_label_widget(frame:PGtkFrame; label_widget:PGtkWidget);cdecl;external;

function gtk_frame_get_label_widget(frame:PGtkFrame):PGtkWidget;cdecl;external;

procedure gtk_frame_set_label_align(frame:PGtkFrame; xalign:single);cdecl;external;

function gtk_frame_get_label_align(frame:PGtkFrame):single;cdecl;external;

procedure gtk_frame_set_child(frame:PGtkFrame; child:PGtkWidget);cdecl;external;

function gtk_frame_get_child(frame:PGtkFrame):PGtkWidget;cdecl;external;

{$endif}


implementation

function GTK_TYPE_FRAME : longint; { return type might be wrong }
  begin
    GTK_TYPE_FRAME:=gtk_frame_get_type;
  end;

function GTK_FRAME(obj : longint) : longint;
begin
  GTK_FRAME:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_FRAME,GtkFrame);
end;

function GTK_FRAME_CLASS(klass : longint) : longint;
begin
  GTK_FRAME_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_FRAME,GtkFrameClass);
end;

function GTK_IS_FRAME(obj : longint) : longint;
begin
  GTK_IS_FRAME:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_FRAME);
end;

function GTK_IS_FRAME_CLASS(klass : longint) : longint;
begin
  GTK_IS_FRAME_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_FRAME);
end;

function GTK_FRAME_GET_CLASS(obj : longint) : longint;
begin
  GTK_FRAME_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_FRAME,GtkFrameClass);
end;


end.
