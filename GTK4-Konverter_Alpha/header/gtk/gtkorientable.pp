
unit gtkorientable;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkorientable.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkorientable.h
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
PGtkOrientable  = ^GtkOrientable;
PGtkOrientableIface  = ^GtkOrientableIface;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_ORIENTABLE_H__}
{$define __GTK_ORIENTABLE_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}


function GTK_TYPE_ORIENTABLE : longint; { return type might be wrong }

function GTK_ORIENTABLE(obj : longint) : longint;

function GTK_IS_ORIENTABLE(obj : longint) : longint;

function GTK_ORIENTABLE_GET_IFACE(inst : longint) : longint;

type

  PGtkOrientableIface = ^TGtkOrientableIface;
  TGtkOrientableIface = record
      base_iface : TGTypeInterface;
    end;



function gtk_orientable_get_type:TGType;cdecl;external;

procedure gtk_orientable_set_orientation(orientable:PGtkOrientable; orientation:TGtkOrientation);cdecl;external;

function gtk_orientable_get_orientation(orientable:PGtkOrientable):TGtkOrientation;cdecl;external;

{$endif}


implementation

function GTK_TYPE_ORIENTABLE : longint; { return type might be wrong }
  begin
    GTK_TYPE_ORIENTABLE:=gtk_orientable_get_type;
  end;

function GTK_ORIENTABLE(obj : longint) : longint;
begin
  GTK_ORIENTABLE:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_ORIENTABLE,GtkOrientable);
end;

function GTK_IS_ORIENTABLE(obj : longint) : longint;
begin
  GTK_IS_ORIENTABLE:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_ORIENTABLE);
end;

function GTK_ORIENTABLE_GET_IFACE(inst : longint) : longint;
begin
  GTK_ORIENTABLE_GET_IFACE:=G_TYPE_INSTANCE_GET_INTERFACE(inst,GTK_TYPE_ORIENTABLE,GtkOrientableIface);
end;


end.
