
unit gtksearchbar;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtksearchbar.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtksearchbar.h
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
PGtkEditable  = ^GtkEditable;
PGtkSearchBar  = ^GtkSearchBar;
PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef __GTK_SEARCH_BAR_H__}
{$define __GTK_SEARCH_BAR_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}
{$include <gtk/gtkeditable.h>}


function GTK_TYPE_SEARCH_BAR : longint; { return type might be wrong }

function GTK_SEARCH_BAR(obj : longint) : longint;

function GTK_IS_SEARCH_BAR(obj : longint) : longint;

type


function gtk_search_bar_get_type:TGType;cdecl;external;

function gtk_search_bar_new:PGtkWidget;cdecl;external;

procedure gtk_search_bar_connect_entry(bar:PGtkSearchBar; entry:PGtkEditable);cdecl;external;

function gtk_search_bar_get_search_mode(bar:PGtkSearchBar):Tgboolean;cdecl;external;

procedure gtk_search_bar_set_search_mode(bar:PGtkSearchBar; search_mode:Tgboolean);cdecl;external;

function gtk_search_bar_get_show_close_button(bar:PGtkSearchBar):Tgboolean;cdecl;external;

procedure gtk_search_bar_set_show_close_button(bar:PGtkSearchBar; visible:Tgboolean);cdecl;external;

procedure gtk_search_bar_set_key_capture_widget(bar:PGtkSearchBar; widget:PGtkWidget);cdecl;external;

function gtk_search_bar_get_key_capture_widget(bar:PGtkSearchBar):PGtkWidget;cdecl;external;

procedure gtk_search_bar_set_child(bar:PGtkSearchBar; child:PGtkWidget);cdecl;external;

function gtk_search_bar_get_child(bar:PGtkSearchBar):PGtkWidget;cdecl;external;

{$endif}


implementation

function GTK_TYPE_SEARCH_BAR : longint; { return type might be wrong }
  begin
    GTK_TYPE_SEARCH_BAR:=gtk_search_bar_get_type;
  end;

function GTK_SEARCH_BAR(obj : longint) : longint;
begin
  GTK_SEARCH_BAR:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_SEARCH_BAR,GtkSearchBar);
end;

function GTK_IS_SEARCH_BAR(obj : longint) : longint;
begin
  GTK_IS_SEARCH_BAR:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_SEARCH_BAR);
end;


end.
