
unit gtkscrollable;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkscrollable.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkscrollable.h
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
PGtkBorder  = ^GtkBorder;
PGtkScrollable  = ^GtkScrollable;
PGtkScrollableInterface  = ^GtkScrollableInterface;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_SCROLLABLE_H__}
{$define __GTK_SCROLLABLE_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}
{$include <gtk/gtkenums.h>}
{$include <gtk/gtktypes.h>}
{$include <gtk/gtkborder.h>}


function GTK_TYPE_SCROLLABLE : longint; { return type might be wrong }

function GTK_SCROLLABLE(obj : longint) : longint;

function GTK_IS_SCROLLABLE(obj : longint) : longint;

function GTK_SCROLLABLE_GET_IFACE(inst : longint) : longint;

type

  PGtkScrollableInterface = ^TGtkScrollableInterface;
  TGtkScrollableInterface = record
      base_iface : TGTypeInterface;
      get_border : function (scrollable:PGtkScrollable; border:PGtkBorder):Tgboolean;cdecl;
    end;




function gtk_scrollable_get_type:TGType;cdecl;external;

function gtk_scrollable_get_hadjustment(scrollable:PGtkScrollable):PGtkAdjustment;cdecl;external;

procedure gtk_scrollable_set_hadjustment(scrollable:PGtkScrollable; hadjustment:PGtkAdjustment);cdecl;external;

function gtk_scrollable_get_vadjustment(scrollable:PGtkScrollable):PGtkAdjustment;cdecl;external;

procedure gtk_scrollable_set_vadjustment(scrollable:PGtkScrollable; vadjustment:PGtkAdjustment);cdecl;external;

function gtk_scrollable_get_hscroll_policy(scrollable:PGtkScrollable):TGtkScrollablePolicy;cdecl;external;

procedure gtk_scrollable_set_hscroll_policy(scrollable:PGtkScrollable; policy:TGtkScrollablePolicy);cdecl;external;

function gtk_scrollable_get_vscroll_policy(scrollable:PGtkScrollable):TGtkScrollablePolicy;cdecl;external;

procedure gtk_scrollable_set_vscroll_policy(scrollable:PGtkScrollable; policy:TGtkScrollablePolicy);cdecl;external;

function gtk_scrollable_get_border(scrollable:PGtkScrollable; border:PGtkBorder):Tgboolean;cdecl;external;

{$endif}


implementation

function GTK_TYPE_SCROLLABLE : longint; { return type might be wrong }
  begin
    GTK_TYPE_SCROLLABLE:=gtk_scrollable_get_type;
  end;

function GTK_SCROLLABLE(obj : longint) : longint;
begin
  GTK_SCROLLABLE:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_SCROLLABLE,GtkScrollable);
end;

function GTK_IS_SCROLLABLE(obj : longint) : longint;
begin
  GTK_IS_SCROLLABLE:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_SCROLLABLE);
end;

function GTK_SCROLLABLE_GET_IFACE(inst : longint) : longint;
begin
  GTK_SCROLLABLE_GET_IFACE:=G_TYPE_INSTANCE_GET_INTERFACE(inst,GTK_TYPE_SCROLLABLE,GtkScrollableInterface);
end;


end.
