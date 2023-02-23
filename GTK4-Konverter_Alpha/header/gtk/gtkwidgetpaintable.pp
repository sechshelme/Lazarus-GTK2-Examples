
unit gtkwidgetpaintable;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkwidgetpaintable.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkwidgetpaintable.h
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
PGdkPaintable  = ^GdkPaintable;
PGtkWidget  = ^GtkWidget;
PGtkWidgetPaintable  = ^GtkWidgetPaintable;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_WIDGET_PAINTABLE_H__}
{$define __GTK_WIDGET_PAINTABLE_H__}
{$include <gtk/gtktypes.h>}


function GTK_TYPE_WIDGET_PAINTABLE : longint; { return type might be wrong }




function gtk_widget_paintable_new(widget:PGtkWidget):PGdkPaintable;cdecl;external;

function gtk_widget_paintable_get_widget(self:PGtkWidgetPaintable):PGtkWidget;cdecl;external;

procedure gtk_widget_paintable_set_widget(self:PGtkWidgetPaintable; widget:PGtkWidget);cdecl;external;

{$endif}


implementation

function GTK_TYPE_WIDGET_PAINTABLE : longint; { return type might be wrong }
  begin
    GTK_TYPE_WIDGET_PAINTABLE:=gtk_widget_paintable_get_type;
  end;


end.
