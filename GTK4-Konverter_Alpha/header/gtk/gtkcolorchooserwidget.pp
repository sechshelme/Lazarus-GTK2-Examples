
unit gtkcolorchooserwidget;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkcolorchooserwidget.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkcolorchooserwidget.h
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
PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_COLOR_CHOOSER_WIDGET_H__}
{$define __GTK_COLOR_CHOOSER_WIDGET_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}


function GTK_TYPE_COLOR_CHOOSER_WIDGET : longint; { return type might be wrong }

function GTK_COLOR_CHOOSER_WIDGET(obj : longint) : longint;

function GTK_IS_COLOR_CHOOSER_WIDGET(obj : longint) : longint;

type


function gtk_color_chooser_widget_get_type:TGType;cdecl;external;

function gtk_color_chooser_widget_new:PGtkWidget;cdecl;external;

{$endif}


implementation

function GTK_TYPE_COLOR_CHOOSER_WIDGET : longint; { return type might be wrong }
  begin
    GTK_TYPE_COLOR_CHOOSER_WIDGET:=gtk_color_chooser_widget_get_type;
  end;

function GTK_COLOR_CHOOSER_WIDGET(obj : longint) : longint;
begin
  GTK_COLOR_CHOOSER_WIDGET:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_COLOR_CHOOSER_WIDGET,GtkColorChooserWidget);
end;

function GTK_IS_COLOR_CHOOSER_WIDGET(obj : longint) : longint;
begin
  GTK_IS_COLOR_CHOOSER_WIDGET:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_COLOR_CHOOSER_WIDGET);
end;


end.
