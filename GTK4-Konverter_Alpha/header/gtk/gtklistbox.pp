
unit gtklistbox;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtklistbox.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtklistbox.h
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
PGList  = ^GList;
PGListModel  = ^GListModel;
PGtkAdjustment  = ^GtkAdjustment;
PGtkListBox  = ^GtkListBox;
PGtkListBoxCreateWidgetFunc  = ^GtkListBoxCreateWidgetFunc;
PGtkListBoxRow  = ^GtkListBoxRow;
PGtkListBoxRowClass  = ^GtkListBoxRowClass;
PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_LIST_BOX_H__}
{$define __GTK_LIST_BOX_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}


function GTK_TYPE_LIST_BOX : longint; { return type might be wrong }

function GTK_LIST_BOX(obj : longint) : longint;

function GTK_IS_LIST_BOX(obj : longint) : longint;

type

function GTK_TYPE_LIST_BOX_ROW : longint; { return type might be wrong }

function GTK_LIST_BOX_ROW(obj : longint) : longint;

function GTK_LIST_BOX_ROW_CLASS(klass : longint) : longint;

function GTK_IS_LIST_BOX_ROW(obj : longint) : longint;

function GTK_IS_LIST_BOX_ROW_CLASS(klass : longint) : longint;

function GTK_LIST_BOX_ROW_GET_CLASS(obj : longint) : longint;

type
  PGtkListBoxRow = ^TGtkListBoxRow;
  TGtkListBoxRow = record
      parent_instance : TGtkWidget;
    end;




  PGtkListBoxRowClass = ^TGtkListBoxRowClass;
  TGtkListBoxRowClass = record
      parent_class : TGtkWidgetClass;
      activate : procedure (row:PGtkListBoxRow);cdecl;
      padding : array[0..7] of Tgpointer;
    end;



  TGtkListBoxFilterFunc = function (row:PGtkListBoxRow; user_data:Tgpointer):Tgboolean;cdecl;


  TGtkListBoxSortFunc = function (row1:PGtkListBoxRow; row2:PGtkListBoxRow; user_data:Tgpointer):longint;cdecl;


  TGtkListBoxUpdateHeaderFunc = procedure (row:PGtkListBoxRow; before:PGtkListBoxRow; user_data:Tgpointer);cdecl;


  PGtkListBoxCreateWidgetFunc = ^TGtkListBoxCreateWidgetFunc;
  TGtkListBoxCreateWidgetFunc = function (item:Tgpointer; user_data:Tgpointer):PGtkWidget;cdecl;


function gtk_list_box_row_get_type:TGType;cdecl;external;

function gtk_list_box_row_new:PGtkWidget;cdecl;external;

procedure gtk_list_box_row_set_child(row:PGtkListBoxRow; child:PGtkWidget);cdecl;external;

function gtk_list_box_row_get_child(row:PGtkListBoxRow):PGtkWidget;cdecl;external;

function gtk_list_box_row_get_header(row:PGtkListBoxRow):PGtkWidget;cdecl;external;

procedure gtk_list_box_row_set_header(row:PGtkListBoxRow; header:PGtkWidget);cdecl;external;

function gtk_list_box_row_get_index(row:PGtkListBoxRow):longint;cdecl;external;

procedure gtk_list_box_row_changed(row:PGtkListBoxRow);cdecl;external;

function gtk_list_box_row_is_selected(row:PGtkListBoxRow):Tgboolean;cdecl;external;

procedure gtk_list_box_row_set_selectable(row:PGtkListBoxRow; selectable:Tgboolean);cdecl;external;

function gtk_list_box_row_get_selectable(row:PGtkListBoxRow):Tgboolean;cdecl;external;

procedure gtk_list_box_row_set_activatable(row:PGtkListBoxRow; activatable:Tgboolean);cdecl;external;

function gtk_list_box_row_get_activatable(row:PGtkListBoxRow):Tgboolean;cdecl;external;

function gtk_list_box_get_type:TGType;cdecl;external;

procedure gtk_list_box_prepend(box:PGtkListBox; child:PGtkWidget);cdecl;external;

procedure gtk_list_box_append(box:PGtkListBox; child:PGtkWidget);cdecl;external;

procedure gtk_list_box_insert(box:PGtkListBox; child:PGtkWidget; position:longint);cdecl;external;

procedure gtk_list_box_remove(box:PGtkListBox; child:PGtkWidget);cdecl;external;

function gtk_list_box_get_selected_row(box:PGtkListBox):PGtkListBoxRow;cdecl;external;

function gtk_list_box_get_row_at_index(box:PGtkListBox; index_:longint):PGtkListBoxRow;cdecl;external;

function gtk_list_box_get_row_at_y(box:PGtkListBox; y:longint):PGtkListBoxRow;cdecl;external;

procedure gtk_list_box_select_row(box:PGtkListBox; row:PGtkListBoxRow);cdecl;external;

procedure gtk_list_box_set_placeholder(box:PGtkListBox; placeholder:PGtkWidget);cdecl;external;

procedure gtk_list_box_set_adjustment(box:PGtkListBox; adjustment:PGtkAdjustment);cdecl;external;

function gtk_list_box_get_adjustment(box:PGtkListBox):PGtkAdjustment;cdecl;external;
type

  TGtkListBoxForeachFunc = procedure (box:PGtkListBox; row:PGtkListBoxRow; user_data:Tgpointer);cdecl;


procedure gtk_list_box_selected_foreach(box:PGtkListBox; func:TGtkListBoxForeachFunc; data:Tgpointer);cdecl;external;

function gtk_list_box_get_selected_rows(box:PGtkListBox):PGList;cdecl;external;

procedure gtk_list_box_unselect_row(box:PGtkListBox; row:PGtkListBoxRow);cdecl;external;

procedure gtk_list_box_select_all(box:PGtkListBox);cdecl;external;

procedure gtk_list_box_unselect_all(box:PGtkListBox);cdecl;external;

procedure gtk_list_box_set_selection_mode(box:PGtkListBox; mode:TGtkSelectionMode);cdecl;external;

function gtk_list_box_get_selection_mode(box:PGtkListBox):TGtkSelectionMode;cdecl;external;

procedure gtk_list_box_set_filter_func(box:PGtkListBox; filter_func:TGtkListBoxFilterFunc; user_data:Tgpointer; destroy:TGDestroyNotify);cdecl;external;

procedure gtk_list_box_set_header_func(box:PGtkListBox; update_header:TGtkListBoxUpdateHeaderFunc; user_data:Tgpointer; destroy:TGDestroyNotify);cdecl;external;

procedure gtk_list_box_invalidate_filter(box:PGtkListBox);cdecl;external;

procedure gtk_list_box_invalidate_sort(box:PGtkListBox);cdecl;external;

procedure gtk_list_box_invalidate_headers(box:PGtkListBox);cdecl;external;

procedure gtk_list_box_set_sort_func(box:PGtkListBox; sort_func:TGtkListBoxSortFunc; user_data:Tgpointer; destroy:TGDestroyNotify);cdecl;external;

procedure gtk_list_box_set_activate_on_single_click(box:PGtkListBox; single:Tgboolean);cdecl;external;

function gtk_list_box_get_activate_on_single_click(box:PGtkListBox):Tgboolean;cdecl;external;

procedure gtk_list_box_drag_unhighlight_row(box:PGtkListBox);cdecl;external;

procedure gtk_list_box_drag_highlight_row(box:PGtkListBox; row:PGtkListBoxRow);cdecl;external;

function gtk_list_box_new:PGtkWidget;cdecl;external;

procedure gtk_list_box_bind_model(box:PGtkListBox; model:PGListModel; create_widget_func:TGtkListBoxCreateWidgetFunc; user_data:Tgpointer; user_data_free_func:TGDestroyNotify);cdecl;external;

procedure gtk_list_box_set_show_separators(box:PGtkListBox; show_separators:Tgboolean);cdecl;external;

function gtk_list_box_get_show_separators(box:PGtkListBox):Tgboolean;cdecl;external;



{$endif}

implementation

function GTK_TYPE_LIST_BOX : longint; { return type might be wrong }
  begin
    GTK_TYPE_LIST_BOX:=gtk_list_box_get_type;
  end;

function GTK_LIST_BOX(obj : longint) : longint;
begin
  GTK_LIST_BOX:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_LIST_BOX,GtkListBox);
end;

function GTK_IS_LIST_BOX(obj : longint) : longint;
begin
  GTK_IS_LIST_BOX:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_LIST_BOX);
end;

function GTK_TYPE_LIST_BOX_ROW : longint; { return type might be wrong }
  begin
    GTK_TYPE_LIST_BOX_ROW:=gtk_list_box_row_get_type;
  end;

function GTK_LIST_BOX_ROW(obj : longint) : longint;
begin
  GTK_LIST_BOX_ROW:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_LIST_BOX_ROW,GtkListBoxRow);
end;

function GTK_LIST_BOX_ROW_CLASS(klass : longint) : longint;
begin
  GTK_LIST_BOX_ROW_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_LIST_BOX_ROW,GtkListBoxRowClass);
end;

function GTK_IS_LIST_BOX_ROW(obj : longint) : longint;
begin
  GTK_IS_LIST_BOX_ROW:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_LIST_BOX_ROW);
end;

function GTK_IS_LIST_BOX_ROW_CLASS(klass : longint) : longint;
begin
  GTK_IS_LIST_BOX_ROW_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_LIST_BOX_ROW);
end;

function GTK_LIST_BOX_ROW_GET_CLASS(obj : longint) : longint;
begin
  GTK_LIST_BOX_ROW_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_LIST_BOX_ROW,GtkListBoxRowClass);
end;


end.
