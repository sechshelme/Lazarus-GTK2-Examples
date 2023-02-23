
unit gtkviewport;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkviewport.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkviewport.h
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
PGtkAdjustment  = ^GtkAdjustment;
PGtkViewport  = ^GtkViewport;
PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef __GTK_VIEWPORT_H__}
{$define __GTK_VIEWPORT_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}


function GTK_TYPE_VIEWPORT : longint; { return type might be wrong }

function GTK_VIEWPORT(obj : longint) : longint;

function GTK_IS_VIEWPORT(obj : longint) : longint;

type


function gtk_viewport_get_type:TGType;cdecl;external;

function gtk_viewport_new(hadjustment:PGtkAdjustment; vadjustment:PGtkAdjustment):PGtkWidget;cdecl;external;

function gtk_viewport_get_scroll_to_focus(viewport:PGtkViewport):Tgboolean;cdecl;external;

procedure gtk_viewport_set_scroll_to_focus(viewport:PGtkViewport; scroll_to_focus:Tgboolean);cdecl;external;

procedure gtk_viewport_set_child(viewport:PGtkViewport; child:PGtkWidget);cdecl;external;

function gtk_viewport_get_child(viewport:PGtkViewport):PGtkWidget;cdecl;external;

{$endif}


implementation

function GTK_TYPE_VIEWPORT : longint; { return type might be wrong }
  begin
    GTK_TYPE_VIEWPORT:=gtk_viewport_get_type;
  end;

function GTK_VIEWPORT(obj : longint) : longint;
begin
  GTK_VIEWPORT:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_VIEWPORT,GtkViewport);
end;

function GTK_IS_VIEWPORT(obj : longint) : longint;
begin
  GTK_IS_VIEWPORT:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_VIEWPORT);
end;


end.
