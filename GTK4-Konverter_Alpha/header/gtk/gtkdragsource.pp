
unit gtkdragsource;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkdragsource.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkdragsource.h
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
PGdkContentProvider  = ^GdkContentProvider;
PGdkDrag  = ^GdkDrag;
PGdkPaintable  = ^GdkPaintable;
PGtkDragSource  = ^GtkDragSource;
PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}





{$ifndef __GTK_DRAG_SOURCE_H__}
{$define __GTK_DRAG_SOURCE_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}


function GTK_TYPE_DRAG_SOURCE : longint; { return type might be wrong }

function GTK_DRAG_SOURCE(o : longint) : longint;

function GTK_DRAG_SOURCE_CLASS(k : longint) : longint;

function GTK_IS_DRAG_SOURCE(o : longint) : longint;

function GTK_IS_DRAG_SOURCE_CLASS(k : longint) : longint;

function GTK_DRAG_SOURCE_GET_CLASS(o : longint) : longint;

type


function gtk_drag_source_get_type:TGType;cdecl;external;

function gtk_drag_source_new:PGtkDragSource;cdecl;external;

procedure gtk_drag_source_set_content(source:PGtkDragSource; content:PGdkContentProvider);cdecl;external;

function gtk_drag_source_get_content(source:PGtkDragSource):PGdkContentProvider;cdecl;external;

procedure gtk_drag_source_set_actions(source:PGtkDragSource; actions:TGdkDragAction);cdecl;external;

function gtk_drag_source_get_actions(source:PGtkDragSource):TGdkDragAction;cdecl;external;

procedure gtk_drag_source_set_icon(source:PGtkDragSource; paintable:PGdkPaintable; hot_x:longint; hot_y:longint);cdecl;external;

procedure gtk_drag_source_drag_cancel(source:PGtkDragSource);cdecl;external;

function gtk_drag_source_get_drag(source:PGtkDragSource):PGdkDrag;cdecl;external;

function gtk_drag_check_threshold(widget:PGtkWidget; start_x:longint; start_y:longint; current_x:longint; current_y:longint):Tgboolean;cdecl;external;

{$endif}


implementation

function GTK_TYPE_DRAG_SOURCE : longint; { return type might be wrong }
  begin
    GTK_TYPE_DRAG_SOURCE:=gtk_drag_source_get_type;
  end;

function GTK_DRAG_SOURCE(o : longint) : longint;
begin
  GTK_DRAG_SOURCE:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_DRAG_SOURCE,GtkDragSource);
end;

function GTK_DRAG_SOURCE_CLASS(k : longint) : longint;
begin
  GTK_DRAG_SOURCE_CLASS:=G_TYPE_CHECK_CLASS_CAST(k,GTK_TYPE_DRAG_SOURCE,GtkDragSourceClass);
end;

function GTK_IS_DRAG_SOURCE(o : longint) : longint;
begin
  GTK_IS_DRAG_SOURCE:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_DRAG_SOURCE);
end;

function GTK_IS_DRAG_SOURCE_CLASS(k : longint) : longint;
begin
  GTK_IS_DRAG_SOURCE_CLASS:=G_TYPE_CHECK_CLASS_TYPE(k,GTK_TYPE_DRAG_SOURCE);
end;

function GTK_DRAG_SOURCE_GET_CLASS(o : longint) : longint;
begin
  GTK_DRAG_SOURCE_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GTK_TYPE_DRAG_SOURCE,GtkDragSourceClass);
end;


end.
