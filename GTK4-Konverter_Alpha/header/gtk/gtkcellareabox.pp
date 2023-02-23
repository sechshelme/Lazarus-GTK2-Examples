
unit gtkcellareabox;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkcellareabox.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkcellareabox.h
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
PGtkCellArea  = ^GtkCellArea;
PGtkCellAreaBox  = ^GtkCellAreaBox;
PGtkCellRenderer  = ^GtkCellRenderer;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_CELL_AREA_BOX_H__}
{$define __GTK_CELL_AREA_BOX_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkcellarea.h>}


function GTK_TYPE_CELL_AREA_BOX : longint; { return type might be wrong }

function GTK_CELL_AREA_BOX(obj : longint) : longint;

function GTK_IS_CELL_AREA_BOX(obj : longint) : longint;

type


function gtk_cell_area_box_get_type:TGType;cdecl;external;

function gtk_cell_area_box_new:PGtkCellArea;cdecl;external;

procedure gtk_cell_area_box_pack_start(box:PGtkCellAreaBox; renderer:PGtkCellRenderer; expand:Tgboolean; align:Tgboolean; fixed:Tgboolean);cdecl;external;

procedure gtk_cell_area_box_pack_end(box:PGtkCellAreaBox; renderer:PGtkCellRenderer; expand:Tgboolean; align:Tgboolean; fixed:Tgboolean);cdecl;external;

function gtk_cell_area_box_get_spacing(box:PGtkCellAreaBox):longint;cdecl;external;

procedure gtk_cell_area_box_set_spacing(box:PGtkCellAreaBox; spacing:longint);cdecl;external;

function _gtk_cell_area_box_group_visible(box:PGtkCellAreaBox; group_idx:longint):Tgboolean;cdecl;external;

{$endif}


implementation

function GTK_TYPE_CELL_AREA_BOX : longint; { return type might be wrong }
  begin
    GTK_TYPE_CELL_AREA_BOX:=gtk_cell_area_box_get_type;
  end;

function GTK_CELL_AREA_BOX(obj : longint) : longint;
begin
  GTK_CELL_AREA_BOX:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_CELL_AREA_BOX,GtkCellAreaBox);
end;

function GTK_IS_CELL_AREA_BOX(obj : longint) : longint;
begin
  GTK_IS_CELL_AREA_BOX:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_CELL_AREA_BOX);
end;


end.
