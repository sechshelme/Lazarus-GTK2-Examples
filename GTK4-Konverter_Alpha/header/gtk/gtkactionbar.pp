
unit gtkactionbar;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkactionbar.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkactionbar.h
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
PGtkActionBar  = ^GtkActionBar;
PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_ACTION_BAR_H__}
{$define __GTK_ACTION_BAR_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}


function GTK_TYPE_ACTION_BAR : longint; { return type might be wrong }

function GTK_ACTION_BAR(obj : longint) : longint;

function GTK_IS_ACTION_BAR(obj : longint) : longint;

type


function gtk_action_bar_get_type:TGType;cdecl;external;

function gtk_action_bar_new:PGtkWidget;cdecl;external;

function gtk_action_bar_get_center_widget(action_bar:PGtkActionBar):PGtkWidget;cdecl;external;

procedure gtk_action_bar_set_center_widget(action_bar:PGtkActionBar; center_widget:PGtkWidget);cdecl;external;

procedure gtk_action_bar_pack_start(action_bar:PGtkActionBar; child:PGtkWidget);cdecl;external;

procedure gtk_action_bar_pack_end(action_bar:PGtkActionBar; child:PGtkWidget);cdecl;external;

procedure gtk_action_bar_remove(action_bar:PGtkActionBar; child:PGtkWidget);cdecl;external;

procedure gtk_action_bar_set_revealed(action_bar:PGtkActionBar; revealed:Tgboolean);cdecl;external;

function gtk_action_bar_get_revealed(action_bar:PGtkActionBar):Tgboolean;cdecl;external;

{$endif}


implementation

function GTK_TYPE_ACTION_BAR : longint; { return type might be wrong }
  begin
    GTK_TYPE_ACTION_BAR:=gtk_action_bar_get_type;
  end;

function GTK_ACTION_BAR(obj : longint) : longint;
begin
  GTK_ACTION_BAR:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_ACTION_BAR,GtkActionBar);
end;

function GTK_IS_ACTION_BAR(obj : longint) : longint;
begin
  GTK_IS_ACTION_BAR:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_ACTION_BAR);
end;


end.
