
unit gtktooltip;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtktooltip.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtktooltip.h
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
PGdkPaintable  = ^GdkPaintable;
PGdkRectangle  = ^GdkRectangle;
PGIcon  = ^GIcon;
PGtkTooltip  = ^GtkTooltip;
PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_TOOLTIP_H__}
{$define __GTK_TOOLTIP_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwindow.h>}


function GTK_TYPE_TOOLTIP : longint; { return type might be wrong }

function GTK_TOOLTIP(obj : longint) : longint;

function GTK_IS_TOOLTIP(obj : longint) : longint;


function gtk_tooltip_get_type:TGType;cdecl;external;

procedure gtk_tooltip_set_markup(tooltip:PGtkTooltip; markup:Pchar);cdecl;external;

procedure gtk_tooltip_set_text(tooltip:PGtkTooltip; text:Pchar);cdecl;external;

procedure gtk_tooltip_set_icon(tooltip:PGtkTooltip; paintable:PGdkPaintable);cdecl;external;

procedure gtk_tooltip_set_icon_from_icon_name(tooltip:PGtkTooltip; icon_name:Pchar);cdecl;external;

procedure gtk_tooltip_set_icon_from_gicon(tooltip:PGtkTooltip; gicon:PGIcon);cdecl;external;

procedure gtk_tooltip_set_custom(tooltip:PGtkTooltip; custom_widget:PGtkWidget);cdecl;external;

procedure gtk_tooltip_set_tip_area(tooltip:PGtkTooltip; rect:PGdkRectangle);cdecl;external;

{$endif}


implementation

function GTK_TYPE_TOOLTIP : longint; { return type might be wrong }
  begin
    GTK_TYPE_TOOLTIP:=gtk_tooltip_get_type;
  end;

function GTK_TOOLTIP(obj : longint) : longint;
begin
  GTK_TOOLTIP:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_TOOLTIP,GtkTooltip);
end;

function GTK_IS_TOOLTIP(obj : longint) : longint;
begin
  GTK_IS_TOOLTIP:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_TOOLTIP);
end;


end.
