
unit gtkoverlay;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkoverlay.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkoverlay.h
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
PGtkOverlay  = ^GtkOverlay;
PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_OVERLAY_H__}
{$define __GTK_OVERLAY_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}


function GTK_TYPE_OVERLAY : longint; { return type might be wrong }

function GTK_OVERLAY(obj : longint) : longint;

function GTK_IS_OVERLAY(obj : longint) : longint;

type


function gtk_overlay_get_type:TGType;cdecl;external;

function gtk_overlay_new:PGtkWidget;cdecl;external;

procedure gtk_overlay_add_overlay(overlay:PGtkOverlay; widget:PGtkWidget);cdecl;external;

procedure gtk_overlay_remove_overlay(overlay:PGtkOverlay; widget:PGtkWidget);cdecl;external;

procedure gtk_overlay_set_child(overlay:PGtkOverlay; child:PGtkWidget);cdecl;external;

function gtk_overlay_get_child(overlay:PGtkOverlay):PGtkWidget;cdecl;external;

function gtk_overlay_get_measure_overlay(overlay:PGtkOverlay; widget:PGtkWidget):Tgboolean;cdecl;external;

procedure gtk_overlay_set_measure_overlay(overlay:PGtkOverlay; widget:PGtkWidget; measure:Tgboolean);cdecl;external;

function gtk_overlay_get_clip_overlay(overlay:PGtkOverlay; widget:PGtkWidget):Tgboolean;cdecl;external;

procedure gtk_overlay_set_clip_overlay(overlay:PGtkOverlay; widget:PGtkWidget; clip_overlay:Tgboolean);cdecl;external;

{$endif}


implementation

function GTK_TYPE_OVERLAY : longint; { return type might be wrong }
  begin
    GTK_TYPE_OVERLAY:=gtk_overlay_get_type;
  end;

function GTK_OVERLAY(obj : longint) : longint;
begin
  GTK_OVERLAY:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_OVERLAY,GtkOverlay);
end;

function GTK_IS_OVERLAY(obj : longint) : longint;
begin
  GTK_IS_OVERLAY:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_OVERLAY);
end;


end.
