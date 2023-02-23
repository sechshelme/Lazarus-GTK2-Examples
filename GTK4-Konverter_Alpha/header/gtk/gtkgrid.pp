
unit gtkgrid;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkgrid.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkgrid.h
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
PGtkGrid  = ^GtkGrid;
PGtkGridClass  = ^GtkGridClass;
PGtkWidget  = ^GtkWidget;
Plongint  = ^longint;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_GRID_H__}
{$define __GTK_GRID_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}


function GTK_TYPE_GRID : longint; { return type might be wrong }

function GTK_GRID(obj : longint) : longint;

function GTK_GRID_CLASS(klass : longint) : longint;

function GTK_IS_GRID(obj : longint) : longint;

function GTK_IS_GRID_CLASS(klass : longint) : longint;

function GTK_GRID_GET_CLASS(obj : longint) : longint;

type

  PGtkGrid = ^TGtkGrid;
  TGtkGrid = record
      parent_instance : TGtkWidget;
    end;



  PGtkGridClass = ^TGtkGridClass;
  TGtkGridClass = record
      parent_class : TGtkWidgetClass;
      padding : array[0..7] of Tgpointer;
    end;



function gtk_grid_get_type:TGType;cdecl;external;

function gtk_grid_new:PGtkWidget;cdecl;external;

procedure gtk_grid_attach(grid:PGtkGrid; child:PGtkWidget; column:longint; row:longint; width:longint; 
            height:longint);cdecl;external;

procedure gtk_grid_attach_next_to(grid:PGtkGrid; child:PGtkWidget; sibling:PGtkWidget; side:TGtkPositionType; width:longint; 
            height:longint);cdecl;external;

function gtk_grid_get_child_at(grid:PGtkGrid; column:longint; row:longint):PGtkWidget;cdecl;external;

procedure gtk_grid_remove(grid:PGtkGrid; child:PGtkWidget);cdecl;external;

procedure gtk_grid_insert_row(grid:PGtkGrid; position:longint);cdecl;external;

procedure gtk_grid_insert_column(grid:PGtkGrid; position:longint);cdecl;external;

procedure gtk_grid_remove_row(grid:PGtkGrid; position:longint);cdecl;external;

procedure gtk_grid_remove_column(grid:PGtkGrid; position:longint);cdecl;external;

procedure gtk_grid_insert_next_to(grid:PGtkGrid; sibling:PGtkWidget; side:TGtkPositionType);cdecl;external;

procedure gtk_grid_set_row_homogeneous(grid:PGtkGrid; homogeneous:Tgboolean);cdecl;external;

function gtk_grid_get_row_homogeneous(grid:PGtkGrid):Tgboolean;cdecl;external;

procedure gtk_grid_set_row_spacing(grid:PGtkGrid; spacing:Tguint);cdecl;external;

function gtk_grid_get_row_spacing(grid:PGtkGrid):Tguint;cdecl;external;

procedure gtk_grid_set_column_homogeneous(grid:PGtkGrid; homogeneous:Tgboolean);cdecl;external;

function gtk_grid_get_column_homogeneous(grid:PGtkGrid):Tgboolean;cdecl;external;

procedure gtk_grid_set_column_spacing(grid:PGtkGrid; spacing:Tguint);cdecl;external;

function gtk_grid_get_column_spacing(grid:PGtkGrid):Tguint;cdecl;external;

procedure gtk_grid_set_row_baseline_position(grid:PGtkGrid; row:longint; pos:TGtkBaselinePosition);cdecl;external;

function gtk_grid_get_row_baseline_position(grid:PGtkGrid; row:longint):TGtkBaselinePosition;cdecl;external;

procedure gtk_grid_set_baseline_row(grid:PGtkGrid; row:longint);cdecl;external;

function gtk_grid_get_baseline_row(grid:PGtkGrid):longint;cdecl;external;

procedure gtk_grid_query_child(grid:PGtkGrid; child:PGtkWidget; column:Plongint; row:Plongint; width:Plongint; 
            height:Plongint);cdecl;external;

{$endif}


implementation

function GTK_TYPE_GRID : longint; { return type might be wrong }
  begin
    GTK_TYPE_GRID:=gtk_grid_get_type;
  end;

function GTK_GRID(obj : longint) : longint;
begin
  GTK_GRID:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_GRID,GtkGrid);
end;

function GTK_GRID_CLASS(klass : longint) : longint;
begin
  GTK_GRID_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_GRID,GtkGridClass);
end;

function GTK_IS_GRID(obj : longint) : longint;
begin
  GTK_IS_GRID:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_GRID);
end;

function GTK_IS_GRID_CLASS(klass : longint) : longint;
begin
  GTK_IS_GRID_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_GRID);
end;

function GTK_GRID_GET_CLASS(obj : longint) : longint;
begin
  GTK_GRID_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_GRID,GtkGridClass);
end;


end.
