
unit gtkscrolledwindow;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkscrolledwindow.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkscrolledwindow.h
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
PGtkCornerType  = ^GtkCornerType;
PGtkPolicyType  = ^GtkPolicyType;
PGtkScrolledWindow  = ^GtkScrolledWindow;
PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef __GTK_SCROLLED_WINDOW_H__}
{$define __GTK_SCROLLED_WINDOW_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}


function GTK_TYPE_SCROLLED_WINDOW : longint; { return type might be wrong }

function GTK_SCROLLED_WINDOW(obj : longint) : longint;

function GTK_IS_SCROLLED_WINDOW(obj : longint) : longint;

type


  PGtkCornerType = ^TGtkCornerType;
  TGtkCornerType = (GTK_CORNER_TOP_LEFT,GTK_CORNER_BOTTOM_LEFT,
    GTK_CORNER_TOP_RIGHT,GTK_CORNER_BOTTOM_RIGHT
    );


  PGtkPolicyType = ^TGtkPolicyType;
  TGtkPolicyType = (GTK_POLICY_ALWAYS,GTK_POLICY_AUTOMATIC,
    GTK_POLICY_NEVER,GTK_POLICY_EXTERNAL);


function gtk_scrolled_window_get_type:TGType;cdecl;external;

function gtk_scrolled_window_new:PGtkWidget;cdecl;external;

procedure gtk_scrolled_window_set_hadjustment(scrolled_window:PGtkScrolledWindow; hadjustment:PGtkAdjustment);cdecl;external;

procedure gtk_scrolled_window_set_vadjustment(scrolled_window:PGtkScrolledWindow; vadjustment:PGtkAdjustment);cdecl;external;

function gtk_scrolled_window_get_hadjustment(scrolled_window:PGtkScrolledWindow):PGtkAdjustment;cdecl;external;

function gtk_scrolled_window_get_vadjustment(scrolled_window:PGtkScrolledWindow):PGtkAdjustment;cdecl;external;

function gtk_scrolled_window_get_hscrollbar(scrolled_window:PGtkScrolledWindow):PGtkWidget;cdecl;external;

function gtk_scrolled_window_get_vscrollbar(scrolled_window:PGtkScrolledWindow):PGtkWidget;cdecl;external;

procedure gtk_scrolled_window_set_policy(scrolled_window:PGtkScrolledWindow; hscrollbar_policy:TGtkPolicyType; vscrollbar_policy:TGtkPolicyType);cdecl;external;

procedure gtk_scrolled_window_get_policy(scrolled_window:PGtkScrolledWindow; hscrollbar_policy:PGtkPolicyType; vscrollbar_policy:PGtkPolicyType);cdecl;external;

procedure gtk_scrolled_window_set_placement(scrolled_window:PGtkScrolledWindow; window_placement:TGtkCornerType);cdecl;external;

procedure gtk_scrolled_window_unset_placement(scrolled_window:PGtkScrolledWindow);cdecl;external;

function gtk_scrolled_window_get_placement(scrolled_window:PGtkScrolledWindow):TGtkCornerType;cdecl;external;

procedure gtk_scrolled_window_set_has_frame(scrolled_window:PGtkScrolledWindow; has_frame:Tgboolean);cdecl;external;

function gtk_scrolled_window_get_has_frame(scrolled_window:PGtkScrolledWindow):Tgboolean;cdecl;external;

function gtk_scrolled_window_get_min_content_width(scrolled_window:PGtkScrolledWindow):longint;cdecl;external;

procedure gtk_scrolled_window_set_min_content_width(scrolled_window:PGtkScrolledWindow; width:longint);cdecl;external;

function gtk_scrolled_window_get_min_content_height(scrolled_window:PGtkScrolledWindow):longint;cdecl;external;

procedure gtk_scrolled_window_set_min_content_height(scrolled_window:PGtkScrolledWindow; height:longint);cdecl;external;

procedure gtk_scrolled_window_set_kinetic_scrolling(scrolled_window:PGtkScrolledWindow; kinetic_scrolling:Tgboolean);cdecl;external;

function gtk_scrolled_window_get_kinetic_scrolling(scrolled_window:PGtkScrolledWindow):Tgboolean;cdecl;external;

procedure gtk_scrolled_window_set_overlay_scrolling(scrolled_window:PGtkScrolledWindow; overlay_scrolling:Tgboolean);cdecl;external;

function gtk_scrolled_window_get_overlay_scrolling(scrolled_window:PGtkScrolledWindow):Tgboolean;cdecl;external;

procedure gtk_scrolled_window_set_max_content_width(scrolled_window:PGtkScrolledWindow; width:longint);cdecl;external;

function gtk_scrolled_window_get_max_content_width(scrolled_window:PGtkScrolledWindow):longint;cdecl;external;

procedure gtk_scrolled_window_set_max_content_height(scrolled_window:PGtkScrolledWindow; height:longint);cdecl;external;

function gtk_scrolled_window_get_max_content_height(scrolled_window:PGtkScrolledWindow):longint;cdecl;external;

procedure gtk_scrolled_window_set_propagate_natural_width(scrolled_window:PGtkScrolledWindow; propagate:Tgboolean);cdecl;external;

function gtk_scrolled_window_get_propagate_natural_width(scrolled_window:PGtkScrolledWindow):Tgboolean;cdecl;external;

procedure gtk_scrolled_window_set_propagate_natural_height(scrolled_window:PGtkScrolledWindow; propagate:Tgboolean);cdecl;external;

function gtk_scrolled_window_get_propagate_natural_height(scrolled_window:PGtkScrolledWindow):Tgboolean;cdecl;external;

procedure gtk_scrolled_window_set_child(scrolled_window:PGtkScrolledWindow; child:PGtkWidget);cdecl;external;

function gtk_scrolled_window_get_child(scrolled_window:PGtkScrolledWindow):PGtkWidget;cdecl;external;

{$endif}


implementation

function GTK_TYPE_SCROLLED_WINDOW : longint; { return type might be wrong }
  begin
    GTK_TYPE_SCROLLED_WINDOW:=gtk_scrolled_window_get_type;
  end;

function GTK_SCROLLED_WINDOW(obj : longint) : longint;
begin
  GTK_SCROLLED_WINDOW:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_SCROLLED_WINDOW,GtkScrolledWindow);
end;

function GTK_IS_SCROLLED_WINDOW(obj : longint) : longint;
begin
  GTK_IS_SCROLLED_WINDOW:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_SCROLLED_WINDOW);
end;


end.
