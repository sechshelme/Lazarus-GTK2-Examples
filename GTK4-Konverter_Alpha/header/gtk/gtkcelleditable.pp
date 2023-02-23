
unit gtkcelleditable;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkcelleditable.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkcelleditable.h
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
PGdkEvent  = ^GdkEvent;
PGtkCellEditable  = ^GtkCellEditable;
PGtkCellEditableIface  = ^GtkCellEditableIface;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_CELL_EDITABLE_H__}
{$define __GTK_CELL_EDITABLE_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}


function GTK_TYPE_CELL_EDITABLE : longint; { return type might be wrong }

function GTK_CELL_EDITABLE(obj : longint) : longint;

function GTK_IS_CELL_EDITABLE(obj : longint) : longint;

function GTK_CELL_EDITABLE_GET_IFACE(obj : longint) : longint;

type






  PGtkCellEditableIface = ^TGtkCellEditableIface;
  TGtkCellEditableIface = record
      g_iface : TGTypeInterface;
      editing_done : procedure (cell_editable:PGtkCellEditable);cdecl;
      remove_widget : procedure (cell_editable:PGtkCellEditable);cdecl;
      start_editing : procedure (cell_editable:PGtkCellEditable; event:PGdkEvent);cdecl;
    end;



function gtk_cell_editable_get_type:TGType;cdecl;external;

procedure gtk_cell_editable_start_editing(cell_editable:PGtkCellEditable; event:PGdkEvent);cdecl;external;

procedure gtk_cell_editable_editing_done(cell_editable:PGtkCellEditable);cdecl;external;

procedure gtk_cell_editable_remove_widget(cell_editable:PGtkCellEditable);cdecl;external;

{$endif}


implementation

function GTK_TYPE_CELL_EDITABLE : longint; { return type might be wrong }
  begin
    GTK_TYPE_CELL_EDITABLE:=gtk_cell_editable_get_type;
  end;

function GTK_CELL_EDITABLE(obj : longint) : longint;
begin
  GTK_CELL_EDITABLE:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_CELL_EDITABLE,GtkCellEditable);
end;

function GTK_IS_CELL_EDITABLE(obj : longint) : longint;
begin
  GTK_IS_CELL_EDITABLE:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_CELL_EDITABLE);
end;

function GTK_CELL_EDITABLE_GET_IFACE(obj : longint) : longint;
begin
  GTK_CELL_EDITABLE_GET_IFACE:=G_TYPE_INSTANCE_GET_INTERFACE(obj,GTK_TYPE_CELL_EDITABLE,GtkCellEditableIface);
end;


end.
