
unit gtkdragicon;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkdragicon.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkdragicon.h
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
PGdkDrag  = ^GdkDrag;
PGdkPaintable  = ^GdkPaintable;
PGtkDragIcon  = ^GtkDragIcon;
PGtkWidget  = ^GtkWidget;
PGValue  = ^GValue;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_DRAG_ICON_H__}
{$define __GTK_DRAG_ICON_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gio/gio.h>}
{$include <gtk/gtkwidget.h>}


function GTK_TYPE_DRAG_ICON : longint; { return type might be wrong }




function gtk_drag_icon_get_for_drag(drag:PGdkDrag):PGtkWidget;cdecl;external;

procedure gtk_drag_icon_set_child(self:PGtkDragIcon; child:PGtkWidget);cdecl;external;

function gtk_drag_icon_get_child(self:PGtkDragIcon):PGtkWidget;cdecl;external;

procedure gtk_drag_icon_set_from_paintable(drag:PGdkDrag; paintable:PGdkPaintable; hot_x:longint; hot_y:longint);cdecl;external;

function gtk_drag_icon_create_widget_for_value(value:PGValue):PGtkWidget;cdecl;external;

{$endif}


implementation

function GTK_TYPE_DRAG_ICON : longint; { return type might be wrong }
  begin
    GTK_TYPE_DRAG_ICON:=gtk_drag_icon_get_type;
  end;


end.
