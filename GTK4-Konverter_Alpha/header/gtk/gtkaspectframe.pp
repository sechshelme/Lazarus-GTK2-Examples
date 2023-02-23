
unit gtkaspectframe;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkaspectframe.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkaspectframe.h
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
PGtkAspectFrame  = ^GtkAspectFrame;
PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef __GTK_ASPECT_FRAME_H__}
{$define __GTK_ASPECT_FRAME_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}


function GTK_TYPE_ASPECT_FRAME : longint; { return type might be wrong }

function GTK_ASPECT_FRAME(obj : longint) : longint;

function GTK_IS_ASPECT_FRAME(obj : longint) : longint;

type


function gtk_aspect_frame_get_type:TGType;cdecl;external;

function gtk_aspect_frame_new(xalign:single; yalign:single; ratio:single; obey_child:Tgboolean):PGtkWidget;cdecl;external;

procedure gtk_aspect_frame_set_xalign(self:PGtkAspectFrame; xalign:single);cdecl;external;

function gtk_aspect_frame_get_xalign(self:PGtkAspectFrame):single;cdecl;external;

procedure gtk_aspect_frame_set_yalign(self:PGtkAspectFrame; yalign:single);cdecl;external;

function gtk_aspect_frame_get_yalign(self:PGtkAspectFrame):single;cdecl;external;

procedure gtk_aspect_frame_set_ratio(self:PGtkAspectFrame; ratio:single);cdecl;external;

function gtk_aspect_frame_get_ratio(self:PGtkAspectFrame):single;cdecl;external;

procedure gtk_aspect_frame_set_obey_child(self:PGtkAspectFrame; obey_child:Tgboolean);cdecl;external;

function gtk_aspect_frame_get_obey_child(self:PGtkAspectFrame):Tgboolean;cdecl;external;

procedure gtk_aspect_frame_set_child(self:PGtkAspectFrame; child:PGtkWidget);cdecl;external;

function gtk_aspect_frame_get_child(self:PGtkAspectFrame):PGtkWidget;cdecl;external;

{$endif}


implementation

function GTK_TYPE_ASPECT_FRAME : longint; { return type might be wrong }
  begin
    GTK_TYPE_ASPECT_FRAME:=gtk_aspect_frame_get_type;
  end;

function GTK_ASPECT_FRAME(obj : longint) : longint;
begin
  GTK_ASPECT_FRAME:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_ASPECT_FRAME,GtkAspectFrame);
end;

function GTK_IS_ASPECT_FRAME(obj : longint) : longint;
begin
  GTK_IS_ASPECT_FRAME:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_ASPECT_FRAME);
end;


end.
