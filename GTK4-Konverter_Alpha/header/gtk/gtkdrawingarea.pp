
unit gtkdrawingarea;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkdrawingarea.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkdrawingarea.h
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
Pcairo_t  = ^cairo_t;
PGtkDrawingArea  = ^GtkDrawingArea;
PGtkDrawingAreaClass  = ^GtkDrawingAreaClass;
PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef __GTK_DRAWING_AREA_H__}
{$define __GTK_DRAWING_AREA_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}


function GTK_TYPE_DRAWING_AREA : longint; { return type might be wrong }

function GTK_DRAWING_AREA(obj : longint) : longint;

function GTK_DRAWING_AREA_CLASS(klass : longint) : longint;

function GTK_IS_DRAWING_AREA(obj : longint) : longint;

function GTK_IS_DRAWING_AREA_CLASS(klass : longint) : longint;

function GTK_DRAWING_AREA_GET_CLASS(obj : longint) : longint;

type


  TGtkDrawingAreaDrawFunc = procedure (drawing_area:PGtkDrawingArea; cr:Pcairo_t; width:longint; height:longint; user_data:Tgpointer);cdecl;
  PGtkDrawingArea = ^TGtkDrawingArea;
  TGtkDrawingArea = record
      widget : TGtkWidget;cdecl;
    end;


  PGtkDrawingAreaClass = ^TGtkDrawingAreaClass;
  TGtkDrawingAreaClass = record
      parent_class : TGtkWidgetClass;
      resize : procedure (area:PGtkDrawingArea; width:longint; height:longint);cdecl;
      padding : array[0..7] of Tgpointer;
    end;



function gtk_drawing_area_get_type:TGType;cdecl;external;

function gtk_drawing_area_new:PGtkWidget;cdecl;external;

procedure gtk_drawing_area_set_content_width(self:PGtkDrawingArea; width:longint);cdecl;external;

function gtk_drawing_area_get_content_width(self:PGtkDrawingArea):longint;cdecl;external;

procedure gtk_drawing_area_set_content_height(self:PGtkDrawingArea; height:longint);cdecl;external;

function gtk_drawing_area_get_content_height(self:PGtkDrawingArea):longint;cdecl;external;

procedure gtk_drawing_area_set_draw_func(self:PGtkDrawingArea; draw_func:TGtkDrawingAreaDrawFunc; user_data:Tgpointer; destroy:TGDestroyNotify);cdecl;external;

{$endif}


implementation

function GTK_TYPE_DRAWING_AREA : longint; { return type might be wrong }
  begin
    GTK_TYPE_DRAWING_AREA:=gtk_drawing_area_get_type;
  end;

function GTK_DRAWING_AREA(obj : longint) : longint;
begin
  GTK_DRAWING_AREA:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_DRAWING_AREA,GtkDrawingArea);
end;

function GTK_DRAWING_AREA_CLASS(klass : longint) : longint;
begin
  GTK_DRAWING_AREA_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_DRAWING_AREA,GtkDrawingAreaClass);
end;

function GTK_IS_DRAWING_AREA(obj : longint) : longint;
begin
  GTK_IS_DRAWING_AREA:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_DRAWING_AREA);
end;

function GTK_IS_DRAWING_AREA_CLASS(klass : longint) : longint;
begin
  GTK_IS_DRAWING_AREA_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_DRAWING_AREA);
end;

function GTK_DRAWING_AREA_GET_CLASS(obj : longint) : longint;
begin
  GTK_DRAWING_AREA_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_DRAWING_AREA,GtkDrawingAreaClass);
end;


end.
