
unit gtkgridlayout;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkgridlayout.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkgridlayout.h
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
PGtkGridLayout  = ^GtkGridLayout;
PGtkGridLayoutChild  = ^GtkGridLayoutChild;
PGtkLayoutManager  = ^GtkLayoutManager;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$include <gtk/gtklayoutmanager.h>}


function GTK_TYPE_GRID_LAYOUT : longint; { return type might be wrong }

function GTK_TYPE_GRID_LAYOUT_CHILD : longint; { return type might be wrong }




function gtk_grid_layout_new:PGtkLayoutManager;cdecl;external;

procedure gtk_grid_layout_set_row_homogeneous(grid:PGtkGridLayout; homogeneous:Tgboolean);cdecl;external;

function gtk_grid_layout_get_row_homogeneous(grid:PGtkGridLayout):Tgboolean;cdecl;external;

procedure gtk_grid_layout_set_row_spacing(grid:PGtkGridLayout; spacing:Tguint);cdecl;external;

function gtk_grid_layout_get_row_spacing(grid:PGtkGridLayout):Tguint;cdecl;external;

procedure gtk_grid_layout_set_column_homogeneous(grid:PGtkGridLayout; homogeneous:Tgboolean);cdecl;external;

function gtk_grid_layout_get_column_homogeneous(grid:PGtkGridLayout):Tgboolean;cdecl;external;

procedure gtk_grid_layout_set_column_spacing(grid:PGtkGridLayout; spacing:Tguint);cdecl;external;

function gtk_grid_layout_get_column_spacing(grid:PGtkGridLayout):Tguint;cdecl;external;

procedure gtk_grid_layout_set_row_baseline_position(grid:PGtkGridLayout; row:longint; pos:TGtkBaselinePosition);cdecl;external;

function gtk_grid_layout_get_row_baseline_position(grid:PGtkGridLayout; row:longint):TGtkBaselinePosition;cdecl;external;

procedure gtk_grid_layout_set_baseline_row(grid:PGtkGridLayout; row:longint);cdecl;external;

function gtk_grid_layout_get_baseline_row(grid:PGtkGridLayout):longint;cdecl;external;



procedure gtk_grid_layout_child_set_row(child:PGtkGridLayoutChild; row:longint);cdecl;external;

function gtk_grid_layout_child_get_row(child:PGtkGridLayoutChild):longint;cdecl;external;

procedure gtk_grid_layout_child_set_column(child:PGtkGridLayoutChild; column:longint);cdecl;external;

function gtk_grid_layout_child_get_column(child:PGtkGridLayoutChild):longint;cdecl;external;

procedure gtk_grid_layout_child_set_column_span(child:PGtkGridLayoutChild; span:longint);cdecl;external;

function gtk_grid_layout_child_get_column_span(child:PGtkGridLayoutChild):longint;cdecl;external;

procedure gtk_grid_layout_child_set_row_span(child:PGtkGridLayoutChild; span:longint);cdecl;external;

function gtk_grid_layout_child_get_row_span(child:PGtkGridLayoutChild):longint;cdecl;external;


implementation

function GTK_TYPE_GRID_LAYOUT : longint; { return type might be wrong }
  begin
    GTK_TYPE_GRID_LAYOUT:=gtk_grid_layout_get_type;
  end;

function GTK_TYPE_GRID_LAYOUT_CHILD : longint; { return type might be wrong }
  begin
    GTK_TYPE_GRID_LAYOUT_CHILD:=gtk_grid_layout_child_get_type;
  end;


end.
