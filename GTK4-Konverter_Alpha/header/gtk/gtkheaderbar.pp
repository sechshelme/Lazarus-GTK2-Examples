
unit gtkheaderbar;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkheaderbar.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkheaderbar.h
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
PGtkHeaderBar  = ^GtkHeaderBar;
PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_HEADER_BAR_H__}
{$define __GTK_HEADER_BAR_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}


function GTK_TYPE_HEADER_BAR : longint; { return type might be wrong }

function GTK_HEADER_BAR(obj : longint) : longint;

function GTK_IS_HEADER_BAR(obj : longint) : longint;

type


function gtk_header_bar_get_type:TGType;cdecl;external;

function gtk_header_bar_new:PGtkWidget;cdecl;external;

procedure gtk_header_bar_set_title_widget(bar:PGtkHeaderBar; title_widget:PGtkWidget);cdecl;external;

function gtk_header_bar_get_title_widget(bar:PGtkHeaderBar):PGtkWidget;cdecl;external;

procedure gtk_header_bar_pack_start(bar:PGtkHeaderBar; child:PGtkWidget);cdecl;external;

procedure gtk_header_bar_pack_end(bar:PGtkHeaderBar; child:PGtkWidget);cdecl;external;

procedure gtk_header_bar_remove(bar:PGtkHeaderBar; child:PGtkWidget);cdecl;external;

function gtk_header_bar_get_show_title_buttons(bar:PGtkHeaderBar):Tgboolean;cdecl;external;

procedure gtk_header_bar_set_show_title_buttons(bar:PGtkHeaderBar; setting:Tgboolean);cdecl;external;

procedure gtk_header_bar_set_decoration_layout(bar:PGtkHeaderBar; layout:Pchar);cdecl;external;

function gtk_header_bar_get_decoration_layout(bar:PGtkHeaderBar):Pchar;cdecl;external;

{$endif}


implementation

function GTK_TYPE_HEADER_BAR : longint; { return type might be wrong }
  begin
    GTK_TYPE_HEADER_BAR:=gtk_header_bar_get_type;
  end;

function GTK_HEADER_BAR(obj : longint) : longint;
begin
  GTK_HEADER_BAR:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_HEADER_BAR,GtkHeaderBar);
end;

function GTK_IS_HEADER_BAR(obj : longint) : longint;
begin
  GTK_IS_HEADER_BAR:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_HEADER_BAR);
end;


end.
