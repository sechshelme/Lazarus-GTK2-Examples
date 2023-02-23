
unit gtktreeviewcolumn;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtktreeviewcolumn.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtktreeviewcolumn.h
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
Pchar  = ^char;
PGtkCellArea  = ^GtkCellArea;
PGtkCellRenderer  = ^GtkCellRenderer;
PGtkTreeIter  = ^GtkTreeIter;
PGtkTreeModel  = ^GtkTreeModel;
PGtkTreeViewColumn  = ^GtkTreeViewColumn;
PGtkTreeViewColumnSizing  = ^GtkTreeViewColumnSizing;
PGtkWidget  = ^GtkWidget;
Plongint  = ^longint;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_TREE_VIEW_COLUMN_H__}
{$define __GTK_TREE_VIEW_COLUMN_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkcellrenderer.h>}
{$include <gtk/gtktreemodel.h>}
{$include <gtk/gtktreesortable.h>}
{$include <gtk/gtkcellarea.h>}


function GTK_TYPE_TREE_VIEW_COLUMN : longint; { return type might be wrong }

function GTK_TREE_VIEW_COLUMN(obj : longint) : longint;

function GTK_IS_TREE_VIEW_COLUMN(obj : longint) : longint;

type


  PGtkTreeViewColumnSizing = ^TGtkTreeViewColumnSizing;
  TGtkTreeViewColumnSizing = (GTK_TREE_VIEW_COLUMN_GROW_ONLY,GTK_TREE_VIEW_COLUMN_AUTOSIZE,
    GTK_TREE_VIEW_COLUMN_FIXED);


  TGtkTreeCellDataFunc = procedure (tree_column:PGtkTreeViewColumn; cell:PGtkCellRenderer; tree_model:PGtkTreeModel; iter:PGtkTreeIter; data:Tgpointer);cdecl;


function gtk_tree_view_column_get_type:TGType;cdecl;external;

function gtk_tree_view_column_new:PGtkTreeViewColumn;cdecl;external;

function gtk_tree_view_column_new_with_area(area:PGtkCellArea):PGtkTreeViewColumn;cdecl;external;

function gtk_tree_view_column_new_with_attributes(title:Pchar; cell:PGtkCellRenderer; args:array of const):PGtkTreeViewColumn;cdecl;external;
function gtk_tree_view_column_new_with_attributes(title:Pchar; cell:PGtkCellRenderer):PGtkTreeViewColumn;cdecl;external;

procedure gtk_tree_view_column_pack_start(tree_column:PGtkTreeViewColumn; cell:PGtkCellRenderer; expand:Tgboolean);cdecl;external;

procedure gtk_tree_view_column_pack_end(tree_column:PGtkTreeViewColumn; cell:PGtkCellRenderer; expand:Tgboolean);cdecl;external;

procedure gtk_tree_view_column_clear(tree_column:PGtkTreeViewColumn);cdecl;external;

procedure gtk_tree_view_column_add_attribute(tree_column:PGtkTreeViewColumn; cell_renderer:PGtkCellRenderer; attribute:Pchar; column:longint);cdecl;external;

procedure gtk_tree_view_column_set_attributes(tree_column:PGtkTreeViewColumn; cell_renderer:PGtkCellRenderer; args:array of const);cdecl;external;
procedure gtk_tree_view_column_set_attributes(tree_column:PGtkTreeViewColumn; cell_renderer:PGtkCellRenderer);cdecl;external;

procedure gtk_tree_view_column_set_cell_data_func(tree_column:PGtkTreeViewColumn; cell_renderer:PGtkCellRenderer; func:TGtkTreeCellDataFunc; func_data:Tgpointer; destroy:TGDestroyNotify);cdecl;external;

procedure gtk_tree_view_column_clear_attributes(tree_column:PGtkTreeViewColumn; cell_renderer:PGtkCellRenderer);cdecl;external;

procedure gtk_tree_view_column_set_spacing(tree_column:PGtkTreeViewColumn; spacing:longint);cdecl;external;

function gtk_tree_view_column_get_spacing(tree_column:PGtkTreeViewColumn):longint;cdecl;external;

procedure gtk_tree_view_column_set_visible(tree_column:PGtkTreeViewColumn; visible:Tgboolean);cdecl;external;

function gtk_tree_view_column_get_visible(tree_column:PGtkTreeViewColumn):Tgboolean;cdecl;external;

procedure gtk_tree_view_column_set_resizable(tree_column:PGtkTreeViewColumn; resizable:Tgboolean);cdecl;external;

function gtk_tree_view_column_get_resizable(tree_column:PGtkTreeViewColumn):Tgboolean;cdecl;external;

procedure gtk_tree_view_column_set_sizing(tree_column:PGtkTreeViewColumn; _type:TGtkTreeViewColumnSizing);cdecl;external;

function gtk_tree_view_column_get_sizing(tree_column:PGtkTreeViewColumn):TGtkTreeViewColumnSizing;cdecl;external;

function gtk_tree_view_column_get_x_offset(tree_column:PGtkTreeViewColumn):longint;cdecl;external;

function gtk_tree_view_column_get_width(tree_column:PGtkTreeViewColumn):longint;cdecl;external;

function gtk_tree_view_column_get_fixed_width(tree_column:PGtkTreeViewColumn):longint;cdecl;external;

procedure gtk_tree_view_column_set_fixed_width(tree_column:PGtkTreeViewColumn; fixed_width:longint);cdecl;external;

procedure gtk_tree_view_column_set_min_width(tree_column:PGtkTreeViewColumn; min_width:longint);cdecl;external;

function gtk_tree_view_column_get_min_width(tree_column:PGtkTreeViewColumn):longint;cdecl;external;

procedure gtk_tree_view_column_set_max_width(tree_column:PGtkTreeViewColumn; max_width:longint);cdecl;external;

function gtk_tree_view_column_get_max_width(tree_column:PGtkTreeViewColumn):longint;cdecl;external;

procedure gtk_tree_view_column_clicked(tree_column:PGtkTreeViewColumn);cdecl;external;


procedure gtk_tree_view_column_set_title(tree_column:PGtkTreeViewColumn; title:Pchar);cdecl;external;

function gtk_tree_view_column_get_title(tree_column:PGtkTreeViewColumn):Pchar;cdecl;external;

procedure gtk_tree_view_column_set_expand(tree_column:PGtkTreeViewColumn; expand:Tgboolean);cdecl;external;

function gtk_tree_view_column_get_expand(tree_column:PGtkTreeViewColumn):Tgboolean;cdecl;external;

procedure gtk_tree_view_column_set_clickable(tree_column:PGtkTreeViewColumn; clickable:Tgboolean);cdecl;external;

function gtk_tree_view_column_get_clickable(tree_column:PGtkTreeViewColumn):Tgboolean;cdecl;external;

procedure gtk_tree_view_column_set_widget(tree_column:PGtkTreeViewColumn; widget:PGtkWidget);cdecl;external;

function gtk_tree_view_column_get_widget(tree_column:PGtkTreeViewColumn):PGtkWidget;cdecl;external;

procedure gtk_tree_view_column_set_alignment(tree_column:PGtkTreeViewColumn; xalign:single);cdecl;external;

function gtk_tree_view_column_get_alignment(tree_column:PGtkTreeViewColumn):single;cdecl;external;

procedure gtk_tree_view_column_set_reorderable(tree_column:PGtkTreeViewColumn; reorderable:Tgboolean);cdecl;external;

function gtk_tree_view_column_get_reorderable(tree_column:PGtkTreeViewColumn):Tgboolean;cdecl;external;


procedure gtk_tree_view_column_set_sort_column_id(tree_column:PGtkTreeViewColumn; sort_column_id:longint);cdecl;external;

function gtk_tree_view_column_get_sort_column_id(tree_column:PGtkTreeViewColumn):longint;cdecl;external;

procedure gtk_tree_view_column_set_sort_indicator(tree_column:PGtkTreeViewColumn; setting:Tgboolean);cdecl;external;

function gtk_tree_view_column_get_sort_indicator(tree_column:PGtkTreeViewColumn):Tgboolean;cdecl;external;

procedure gtk_tree_view_column_set_sort_order(tree_column:PGtkTreeViewColumn; order:TGtkSortType);cdecl;external;

function gtk_tree_view_column_get_sort_order(tree_column:PGtkTreeViewColumn):TGtkSortType;cdecl;external;


procedure gtk_tree_view_column_cell_set_cell_data(tree_column:PGtkTreeViewColumn; tree_model:PGtkTreeModel; iter:PGtkTreeIter; is_expander:Tgboolean; is_expanded:Tgboolean);cdecl;external;

procedure gtk_tree_view_column_cell_get_size(tree_column:PGtkTreeViewColumn; x_offset:Plongint; y_offset:Plongint; width:Plongint; height:Plongint);cdecl;external;

function gtk_tree_view_column_cell_is_visible(tree_column:PGtkTreeViewColumn):Tgboolean;cdecl;external;

procedure gtk_tree_view_column_focus_cell(tree_column:PGtkTreeViewColumn; cell:PGtkCellRenderer);cdecl;external;

function gtk_tree_view_column_cell_get_position(tree_column:PGtkTreeViewColumn; cell_renderer:PGtkCellRenderer; x_offset:Plongint; width:Plongint):Tgboolean;cdecl;external;

procedure gtk_tree_view_column_queue_resize(tree_column:PGtkTreeViewColumn);cdecl;external;

function gtk_tree_view_column_get_tree_view(tree_column:PGtkTreeViewColumn):PGtkWidget;cdecl;external;

function gtk_tree_view_column_get_button(tree_column:PGtkTreeViewColumn):PGtkWidget;cdecl;external;

{$endif}


implementation

function GTK_TYPE_TREE_VIEW_COLUMN : longint; { return type might be wrong }
  begin
    GTK_TYPE_TREE_VIEW_COLUMN:=gtk_tree_view_column_get_type;
  end;

function GTK_TREE_VIEW_COLUMN(obj : longint) : longint;
begin
  GTK_TREE_VIEW_COLUMN:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_TREE_VIEW_COLUMN,GtkTreeViewColumn);
end;

function GTK_IS_TREE_VIEW_COLUMN(obj : longint) : longint;
begin
  GTK_IS_TREE_VIEW_COLUMN:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_TREE_VIEW_COLUMN);
end;


end.
