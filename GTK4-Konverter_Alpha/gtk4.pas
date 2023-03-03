unit GTK4;

interface

uses
  cairo, pango;
// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkeditablelabel.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkeditablelabel.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkeditablelabel.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGtkEditableLabel  = ^GtkEditableLabel;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_EDITABLE_LABEL_H__}
//// {$define __GTK_EDITABLE_LABEL_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkwidget.h>}

function GTK_TYPE_EDITABLE_LABEL : longint; { return type might be wrong }

function gtk_editable_label_new(str:Pchar):^TGtkWidget;cdecl;external;
function gtk_editable_label_get_editing(self:PTGtkEditableLabel):Tgboolean;cdecl;external;
procedure gtk_editable_label_start_editing(self:PTGtkEditableLabel);cdecl;external;
procedure gtk_editable_label_stop_editing(self:PTGtkEditableLabel; commit:Tgboolean);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtktreednd.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtktreednd.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtktreednd.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGdkContentProvider  = ^GdkContentProvider;
PGtkTreeDragDest  = ^GtkTreeDragDest;
PGtkTreeDragSource  = ^GtkTreeDragSource;
PGtkTreeModel  = ^GtkTreeModel;
PGtkTreePath  = ^GtkTreePath;
PGValue  = ^GValue;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_TREE_DND_H__}
//// {$define __GTK_TREE_DND_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtktreemodel.h>}


function GTK_TYPE_TREE_ROW_DATA : longint; { return type might be wrong }

function gtk_tree_row_data_get_type:TGType;cdecl;external;
function GTK_TYPE_TREE_DRAG_SOURCE : longint; { return type might be wrong }

function GTK_TREE_DRAG_SOURCE(obj : longint) : longint;

function GTK_IS_TREE_DRAG_SOURCE(obj : longint) : longint;

function GTK_TREE_DRAG_SOURCE_GET_IFACE(obj : longint) : longint;

type
  T_GtkTreeDragSource = TGtkTreeDragSource;

  T_GtkTreeDragSourceIface = TGtkTreeDragSourceIface;




  T_GtkTreeDragSourceIface = record
      g_iface : TGTypeInterface;
      row_draggable : function (drag_source:PTGtkTreeDragSource; path:PTGtkTreePath):Tgboolean;cdecl;
      drag_data_get : function (drag_source:PTGtkTreeDragSource; path:PTGtkTreePath):PTGdkContentProvider;cdecl;
      drag_data_delete : function (drag_source:PTGtkTreeDragSource; path:PTGtkTreePath):Tgboolean;cdecl;
    end;


function gtk_tree_drag_source_get_type:TGType;cdecl;external;

function gtk_tree_drag_source_row_draggable(drag_source:PTGtkTreeDragSource; path:PTGtkTreePath):Tgboolean;cdecl;external;

function gtk_tree_drag_source_drag_data_delete(drag_source:PTGtkTreeDragSource; path:PTGtkTreePath):Tgboolean;cdecl;external;

function gtk_tree_drag_source_drag_data_get(drag_source:PTGtkTreeDragSource; path:PTGtkTreePath):^TGdkContentProvider;cdecl;external;
function GTK_TYPE_TREE_DRAG_DEST : longint; { return type might be wrong }

function GTK_TREE_DRAG_DEST(obj : longint) : longint;

function GTK_IS_TREE_DRAG_DEST(obj : longint) : longint;

function GTK_TREE_DRAG_DEST_GET_IFACE(obj : longint) : longint;

type
  T_GtkTreeDragDest = TGtkTreeDragDest;

  T_GtkTreeDragDestIface = TGtkTreeDragDestIface;




  T_GtkTreeDragDestIface = record
      g_iface : TGTypeInterface;
      drag_data_received : function (drag_dest:PTGtkTreeDragDest; dest:PTGtkTreePath; value:PTGValue):Tgboolean;cdecl;
      row_drop_possible : function (drag_dest:PTGtkTreeDragDest; dest_path:PTGtkTreePath; value:PTGValue):Tgboolean;cdecl;
    end;


function gtk_tree_drag_dest_get_type:TGType;cdecl;external;

function gtk_tree_drag_dest_drag_data_received(drag_dest:PTGtkTreeDragDest; dest:PTGtkTreePath; value:PTGValue):Tgboolean;cdecl;external;

function gtk_tree_drag_dest_row_drop_possible(drag_dest:PTGtkTreeDragDest; dest_path:PTGtkTreePath; value:PTGValue):Tgboolean;cdecl;external;

function gtk_tree_create_row_drag_content(tree_model:PTGtkTreeModel; path:PTGtkTreePath):^TGdkContentProvider;cdecl;external;
function gtk_tree_get_row_drag_data(value:PTGValue; tree_model:PPTGtkTreeModel; path:PPTGtkTreePath):Tgboolean;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkcolorchooserdialog.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkcolorchooserdialog.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkcolorchooserdialog.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGtkWindow  = ^GtkWindow;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_COLOR_CHOOSER_DIALOG_H__}
//// {$define __GTK_COLOR_CHOOSER_DIALOG_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkdialog.h>}

function GTK_TYPE_COLOR_CHOOSER_DIALOG : longint; { return type might be wrong }

function GTK_COLOR_CHOOSER_DIALOG(obj : longint) : longint;

function GTK_IS_COLOR_CHOOSER_DIALOG(obj : longint) : longint;

type
  T_GtkColorChooserDialog = TGtkColorChooserDialog;

function gtk_color_chooser_dialog_get_type:TGType;cdecl;external;
function gtk_color_chooser_dialog_new(title:Pchar; parent:PTGtkWindow):^TGtkWidget;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkspinbutton.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkspinbutton.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkspinbutton.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pdouble  = ^double;
PGtkAdjustment  = ^GtkAdjustment;
PGtkSpinButton  = ^GtkSpinButton;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef __GTK_SPIN_BUTTON_H__}
//// {$define __GTK_SPIN_BUTTON_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkwidget.h>}

function GTK_TYPE_SPIN_BUTTON : longint; { return type might be wrong }

function GTK_SPIN_BUTTON(obj : longint) : longint;

function GTK_IS_SPIN_BUTTON(obj : longint) : longint;


const
  GTK_INPUT_ERROR = -(1);  

type
  TGtkSpinButtonUpdatePolicy = (GTK_UPDATE_ALWAYS,GTK_UPDATE_IF_VALID);


  TGtkSpinType = (GTK_SPIN_STEP_FORWARD,GTK_SPIN_STEP_BACKWARD,
    GTK_SPIN_PAGE_FORWARD,GTK_SPIN_PAGE_BACKWARD,
    GTK_SPIN_HOME,GTK_SPIN_END,GTK_SPIN_USER_DEFINED
    );
  T_GtkSpinButton = TGtkSpinButton;

function gtk_spin_button_get_type:TGType;cdecl;external;
procedure gtk_spin_button_configure(spin_button:PTGtkSpinButton; adjustment:PTGtkAdjustment; climb_rate:Tdouble; digits:Tguint);cdecl;external;
function gtk_spin_button_new(adjustment:PTGtkAdjustment; climb_rate:Tdouble; digits:Tguint):^TGtkWidget;cdecl;external;
function gtk_spin_button_new_with_range(min:Tdouble; max:Tdouble; step:Tdouble):^TGtkWidget;cdecl;external;
procedure gtk_spin_button_set_adjustment(spin_button:PTGtkSpinButton; adjustment:PTGtkAdjustment);cdecl;external;
function gtk_spin_button_get_adjustment(spin_button:PTGtkSpinButton):^TGtkAdjustment;cdecl;external;
procedure gtk_spin_button_set_digits(spin_button:PTGtkSpinButton; digits:Tguint);cdecl;external;
function gtk_spin_button_get_digits(spin_button:PTGtkSpinButton):Tguint;cdecl;external;
procedure gtk_spin_button_set_increments(spin_button:PTGtkSpinButton; step:Tdouble; page:Tdouble);cdecl;external;
procedure gtk_spin_button_get_increments(spin_button:PTGtkSpinButton; step:PTdouble; page:PTdouble);cdecl;external;
procedure gtk_spin_button_set_range(spin_button:PTGtkSpinButton; min:Tdouble; max:Tdouble);cdecl;external;
procedure gtk_spin_button_get_range(spin_button:PTGtkSpinButton; min:PTdouble; max:PTdouble);cdecl;external;
function gtk_spin_button_get_value(spin_button:PTGtkSpinButton):Tdouble;cdecl;external;
function gtk_spin_button_get_value_as_int(spin_button:PTGtkSpinButton):longint;cdecl;external;
procedure gtk_spin_button_set_value(spin_button:PTGtkSpinButton; value:Tdouble);cdecl;external;
procedure gtk_spin_button_set_update_policy(spin_button:PTGtkSpinButton; policy:TGtkSpinButtonUpdatePolicy);cdecl;external;
function gtk_spin_button_get_update_policy(spin_button:PTGtkSpinButton):TGtkSpinButtonUpdatePolicy;cdecl;external;
procedure gtk_spin_button_set_numeric(spin_button:PTGtkSpinButton; numeric:Tgboolean);cdecl;external;
function gtk_spin_button_get_numeric(spin_button:PTGtkSpinButton):Tgboolean;cdecl;external;
procedure gtk_spin_button_spin(spin_button:PTGtkSpinButton; direction:TGtkSpinType; increment:Tdouble);cdecl;external;
procedure gtk_spin_button_set_wrap(spin_button:PTGtkSpinButton; wrap:Tgboolean);cdecl;external;
function gtk_spin_button_get_wrap(spin_button:PTGtkSpinButton):Tgboolean;cdecl;external;
procedure gtk_spin_button_set_snap_to_ticks(spin_button:PTGtkSpinButton; snap_to_ticks:Tgboolean);cdecl;external;
function gtk_spin_button_get_snap_to_ticks(spin_button:PTGtkSpinButton):Tgboolean;cdecl;external;
procedure gtk_spin_button_set_climb_rate(spin_button:PTGtkSpinButton; climb_rate:Tdouble);cdecl;external;
function gtk_spin_button_get_climb_rate(spin_button:PTGtkSpinButton):Tdouble;cdecl;external;
procedure gtk_spin_button_update(spin_button:PTGtkSpinButton);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkcolorbutton.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkcolorbutton.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkcolorbutton.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGdkRGBA  = ^GdkRGBA;
PGtkColorButton  = ^GtkColorButton;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef __GTK_COLOR_BUTTON_H__}
//// {$define __GTK_COLOR_BUTTON_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkbutton.h>}

function GTK_TYPE_COLOR_BUTTON : longint; { return type might be wrong }

function GTK_COLOR_BUTTON(obj : longint) : longint;

function GTK_IS_COLOR_BUTTON(obj : longint) : longint;

type
  T_GtkColorButton = TGtkColorButton;

function gtk_color_button_get_type:TGType;cdecl;external;
function gtk_color_button_new:^TGtkWidget;cdecl;external;
function gtk_color_button_new_with_rgba(rgba:PTGdkRGBA):^TGtkWidget;cdecl;external;
procedure gtk_color_button_set_title(button:PTGtkColorButton; title:Pchar);cdecl;external;
function gtk_color_button_get_title(button:PTGtkColorButton):^char;cdecl;external;
function gtk_color_button_get_modal(button:PTGtkColorButton):Tgboolean;cdecl;external;
procedure gtk_color_button_set_modal(button:PTGtkColorButton; modal:Tgboolean);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkcellrendererspin.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkcellrendererspin.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkcellrendererspin.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_CELL_RENDERER_SPIN_H__}
//// {$define __GTK_CELL_RENDERER_SPIN_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkcellrenderertext.h>}

function GTK_TYPE_CELL_RENDERER_SPIN : longint; { return type might be wrong }

function GTK_CELL_RENDERER_SPIN(obj : longint) : longint;

function GTK_IS_CELL_RENDERER_SPIN(obj : longint) : longint;

type
  T_GtkCellRendererSpin = TGtkCellRendererSpin;

function gtk_cell_renderer_spin_get_type:TGType;cdecl;external;
function gtk_cell_renderer_spin_new:^TGtkCellRenderer;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkliststore.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkliststore.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkliststore.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGtkListStore  = ^GtkListStore;
PGtkTreeIter  = ^GtkTreeIter;
PGType  = ^GType;
PGValue  = ^GValue;
Plongint  = ^longint;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_LIST_STORE_H__}
//// {$define __GTK_LIST_STORE_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdk.h>}
//// {$include <gtk/gtktreemodel.h>}
//// {$include <gtk/gtktreesortable.h>}

function GTK_TYPE_LIST_STORE : longint; { return type might be wrong }

function GTK_LIST_STORE(obj : longint) : longint;

function GTK_LIST_STORE_CLASS(klass : longint) : longint;

function GTK_IS_LIST_STORE(obj : longint) : longint;

function GTK_IS_LIST_STORE_CLASS(klass : longint) : longint;

function GTK_LIST_STORE_GET_CLASS(obj : longint) : longint;

type
  T_GtkListStore = TGtkListStore;
  T_GtkListStorePrivate = TGtkListStorePrivate;
  T_GtkListStoreClass = TGtkListStoreClass;

  T_GtkListStore = record
      parent : TGObject;
      priv : ^TGtkListStorePrivate;
    end;


  T_GtkListStoreClass = record
      parent_class : TGObjectClass;
      padding : array[0..7] of Tgpointer;
    end;


function gtk_list_store_get_type:TGType;cdecl;external;
function gtk_list_store_new(n_columns:longint; args:array of const):^TGtkListStore;cdecl;external;
function gtk_list_store_new(n_columns:longint):^TGtkListStore;cdecl;external;
function gtk_list_store_newv(n_columns:longint; types:PTGType):^TGtkListStore;cdecl;external;
procedure gtk_list_store_set_column_types(list_store:PTGtkListStore; n_columns:longint; types:PTGType);cdecl;external;

procedure gtk_list_store_set_value(list_store:PTGtkListStore; iter:PTGtkTreeIter; column:longint; value:PTGValue);cdecl;external;
procedure gtk_list_store_set(list_store:PTGtkListStore; iter:PTGtkTreeIter; args:array of const);cdecl;external;
procedure gtk_list_store_set(list_store:PTGtkListStore; iter:PTGtkTreeIter);cdecl;external;
procedure gtk_list_store_set_valuesv(list_store:PTGtkListStore; iter:PTGtkTreeIter; columns:Plongint; values:PTGValue; n_values:longint);cdecl;external;
procedure gtk_list_store_set_valist(list_store:PTGtkListStore; iter:PTGtkTreeIter; var_args:Tva_list);cdecl;external;
function gtk_list_store_remove(list_store:PTGtkListStore; iter:PTGtkTreeIter):Tgboolean;cdecl;external;
procedure gtk_list_store_insert(list_store:PTGtkListStore; iter:PTGtkTreeIter; position:longint);cdecl;external;
procedure gtk_list_store_insert_before(list_store:PTGtkListStore; iter:PTGtkTreeIter; sibling:PTGtkTreeIter);cdecl;external;
procedure gtk_list_store_insert_after(list_store:PTGtkListStore; iter:PTGtkTreeIter; sibling:PTGtkTreeIter);cdecl;external;
procedure gtk_list_store_insert_with_values(list_store:PTGtkListStore; iter:PTGtkTreeIter; position:longint; args:array of const);cdecl;external;
procedure gtk_list_store_insert_with_values(list_store:PTGtkListStore; iter:PTGtkTreeIter; position:longint);cdecl;external;
procedure gtk_list_store_insert_with_valuesv(list_store:PTGtkListStore; iter:PTGtkTreeIter; position:longint; columns:Plongint; values:PTGValue; 
            n_values:longint);cdecl;external;
procedure gtk_list_store_prepend(list_store:PTGtkListStore; iter:PTGtkTreeIter);cdecl;external;
procedure gtk_list_store_append(list_store:PTGtkListStore; iter:PTGtkTreeIter);cdecl;external;
procedure gtk_list_store_clear(list_store:PTGtkListStore);cdecl;external;
function gtk_list_store_iter_is_valid(list_store:PTGtkListStore; iter:PTGtkTreeIter):Tgboolean;cdecl;external;
procedure gtk_list_store_reorder(store:PTGtkListStore; new_order:Plongint);cdecl;external;
procedure gtk_list_store_swap(store:PTGtkListStore; a:PTGtkTreeIter; b:PTGtkTreeIter);cdecl;external;
procedure gtk_list_store_move_after(store:PTGtkListStore; iter:PTGtkTreeIter; position:PTGtkTreeIter);cdecl;external;
procedure gtk_list_store_move_before(store:PTGtkListStore; iter:PTGtkTreeIter; position:PTGtkTreeIter);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkshortcutswindow.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkshortcutswindow.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkshortcutswindow.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_SHORTCUTS_WINDOW_H__}
//// {$define __GTK_SHORTCUTS_WINDOW_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkwindow.h>}

function GTK_TYPE_SHORTCUTS_WINDOW : longint; { return type might be wrong }

function GTK_SHORTCUTS_WINDOW(obj : longint) : longint;

function GTK_IS_SHORTCUTS_WINDOW(obj : longint) : longint;

type
  T_GtkShortcutsWindow = TGtkShortcutsWindow;

function gtk_shortcuts_window_get_type:TGType;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkdropdown.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkdropdown.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkdropdown.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGListModel  = ^GListModel;
PGtkDropDown  = ^GtkDropDown;
PGtkExpression  = ^GtkExpression;
PGtkListItemFactory  = ^GtkListItemFactory;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_DROP_DOWN_H__}
//// {$define __GTK_DROP_DOWN_H__}
//// {$include <gtk/gtkwidget.h>}
//// {$include <gtk/gtkexpression.h>}

function GTK_TYPE_DROP_DOWN : longint; { return type might be wrong }

function gtk_drop_down_new(model:PTGListModel; expression:PTGtkExpression):^TGtkWidget;cdecl;external;
function gtk_drop_down_new_from_strings(strings:PPchar):^TGtkWidget;cdecl;external;
procedure gtk_drop_down_set_model(self:PTGtkDropDown; model:PTGListModel);cdecl;external;
function gtk_drop_down_get_model(self:PTGtkDropDown):^TGListModel;cdecl;external;
procedure gtk_drop_down_set_selected(self:PTGtkDropDown; position:Tguint);cdecl;external;
function gtk_drop_down_get_selected(self:PTGtkDropDown):Tguint;cdecl;external;
function gtk_drop_down_get_selected_item(self:PTGtkDropDown):Tgpointer;cdecl;external;
procedure gtk_drop_down_set_factory(self:PTGtkDropDown; factory:PTGtkListItemFactory);cdecl;external;
function gtk_drop_down_get_factory(self:PTGtkDropDown):^TGtkListItemFactory;cdecl;external;
procedure gtk_drop_down_set_list_factory(self:PTGtkDropDown; factory:PTGtkListItemFactory);cdecl;external;
function gtk_drop_down_get_list_factory(self:PTGtkDropDown):^TGtkListItemFactory;cdecl;external;
procedure gtk_drop_down_set_expression(self:PTGtkDropDown; expression:PTGtkExpression);cdecl;external;
function gtk_drop_down_get_expression(self:PTGtkDropDown):^TGtkExpression;cdecl;external;
procedure gtk_drop_down_set_enable_search(self:PTGtkDropDown; enable_search:Tgboolean);cdecl;external;
function gtk_drop_down_get_enable_search(self:PTGtkDropDown):Tgboolean;cdecl;external;
procedure gtk_drop_down_set_show_arrow(self:PTGtkDropDown; show_arrow:Tgboolean);cdecl;external;
function gtk_drop_down_get_show_arrow(self:PTGtkDropDown):Tgboolean;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtklistbox.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtklistbox.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtklistbox.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGListModel  = ^GListModel;
PGtkAdjustment  = ^GtkAdjustment;
PGtkListBox  = ^GtkListBox;
PGtkListBoxRow  = ^GtkListBoxRow;
PGtkWidget  = ^GtkWidget;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_LIST_BOX_H__}
//// {$define __GTK_LIST_BOX_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkwidget.h>}

function GTK_TYPE_LIST_BOX : longint; { return type might be wrong }

function GTK_LIST_BOX(obj : longint) : longint;

function GTK_IS_LIST_BOX(obj : longint) : longint;

type
  T_GtkListBox = TGtkListBox;
  T_GtkListBoxRow = TGtkListBoxRow;
  T_GtkListBoxRowClass = TGtkListBoxRowClass;

function GTK_TYPE_LIST_BOX_ROW : longint; { return type might be wrong }

function GTK_LIST_BOX_ROW(obj : longint) : longint;

function GTK_LIST_BOX_ROW_CLASS(klass : longint) : longint;

function GTK_IS_LIST_BOX_ROW(obj : longint) : longint;

function GTK_IS_LIST_BOX_ROW_CLASS(klass : longint) : longint;

function GTK_LIST_BOX_ROW_GET_CLASS(obj : longint) : longint;

type
  T_GtkListBoxRow = record
      parent_instance : TGtkWidget;
    end;




  T_GtkListBoxRowClass = record
      parent_class : TGtkWidgetClass;
      activate : procedure (row:PTGtkListBoxRow);cdecl;
      padding : array[0..7] of Tgpointer;
    end;



  TGtkListBoxFilterFunc = function (row:PTGtkListBoxRow; user_data:Tgpointer):Tgboolean;cdecl;


  TGtkListBoxSortFunc = function (row1:PTGtkListBoxRow; row2:PTGtkListBoxRow; user_data:Tgpointer):longint;cdecl;


  TGtkListBoxUpdateHeaderFunc = procedure (row:PTGtkListBoxRow; before:PTGtkListBoxRow; user_data:Tgpointer);cdecl;


  TGtkListBoxCreateWidgetFunc = function (item:Tgpointer; user_data:Tgpointer):PTGtkWidget;cdecl;

function gtk_list_box_row_get_type:TGType;cdecl;external;
function gtk_list_box_row_new:^TGtkWidget;cdecl;external;
procedure gtk_list_box_row_set_child(row:PTGtkListBoxRow; child:PTGtkWidget);cdecl;external;
function gtk_list_box_row_get_child(row:PTGtkListBoxRow):^TGtkWidget;cdecl;external;
function gtk_list_box_row_get_header(row:PTGtkListBoxRow):^TGtkWidget;cdecl;external;
procedure gtk_list_box_row_set_header(row:PTGtkListBoxRow; header:PTGtkWidget);cdecl;external;
function gtk_list_box_row_get_index(row:PTGtkListBoxRow):longint;cdecl;external;
procedure gtk_list_box_row_changed(row:PTGtkListBoxRow);cdecl;external;
function gtk_list_box_row_is_selected(row:PTGtkListBoxRow):Tgboolean;cdecl;external;
procedure gtk_list_box_row_set_selectable(row:PTGtkListBoxRow; selectable:Tgboolean);cdecl;external;
function gtk_list_box_row_get_selectable(row:PTGtkListBoxRow):Tgboolean;cdecl;external;
procedure gtk_list_box_row_set_activatable(row:PTGtkListBoxRow; activatable:Tgboolean);cdecl;external;
function gtk_list_box_row_get_activatable(row:PTGtkListBoxRow):Tgboolean;cdecl;external;
function gtk_list_box_get_type:TGType;cdecl;external;
procedure gtk_list_box_prepend(box:PTGtkListBox; child:PTGtkWidget);cdecl;external;
procedure gtk_list_box_append(box:PTGtkListBox; child:PTGtkWidget);cdecl;external;
procedure gtk_list_box_insert(box:PTGtkListBox; child:PTGtkWidget; position:longint);cdecl;external;
procedure gtk_list_box_remove(box:PTGtkListBox; child:PTGtkWidget);cdecl;external;
function gtk_list_box_get_selected_row(box:PTGtkListBox):^TGtkListBoxRow;cdecl;external;
function gtk_list_box_get_row_at_index(box:PTGtkListBox; index_:longint):^TGtkListBoxRow;cdecl;external;
function gtk_list_box_get_row_at_y(box:PTGtkListBox; y:longint):^TGtkListBoxRow;cdecl;external;
procedure gtk_list_box_select_row(box:PTGtkListBox; row:PTGtkListBoxRow);cdecl;external;
procedure gtk_list_box_set_placeholder(box:PTGtkListBox; placeholder:PTGtkWidget);cdecl;external;
procedure gtk_list_box_set_adjustment(box:PTGtkListBox; adjustment:PTGtkAdjustment);cdecl;external;
function gtk_list_box_get_adjustment(box:PTGtkListBox):^TGtkAdjustment;cdecl;external;
type

  TGtkListBoxForeachFunc = procedure (box:PTGtkListBox; row:PTGtkListBoxRow; user_data:Tgpointer);cdecl;

procedure gtk_list_box_selected_foreach(box:PTGtkListBox; func:TGtkListBoxForeachFunc; data:Tgpointer);cdecl;external;
function gtk_list_box_get_selected_rows(box:PTGtkListBox):^TGList;cdecl;external;
procedure gtk_list_box_unselect_row(box:PTGtkListBox; row:PTGtkListBoxRow);cdecl;external;
procedure gtk_list_box_select_all(box:PTGtkListBox);cdecl;external;
procedure gtk_list_box_unselect_all(box:PTGtkListBox);cdecl;external;
procedure gtk_list_box_set_selection_mode(box:PTGtkListBox; mode:TGtkSelectionMode);cdecl;external;
function gtk_list_box_get_selection_mode(box:PTGtkListBox):TGtkSelectionMode;cdecl;external;
procedure gtk_list_box_set_filter_func(box:PTGtkListBox; filter_func:TGtkListBoxFilterFunc; user_data:Tgpointer; destroy:TGDestroyNotify);cdecl;external;
procedure gtk_list_box_set_header_func(box:PTGtkListBox; update_header:TGtkListBoxUpdateHeaderFunc; user_data:Tgpointer; destroy:TGDestroyNotify);cdecl;external;
procedure gtk_list_box_invalidate_filter(box:PTGtkListBox);cdecl;external;
procedure gtk_list_box_invalidate_sort(box:PTGtkListBox);cdecl;external;
procedure gtk_list_box_invalidate_headers(box:PTGtkListBox);cdecl;external;
procedure gtk_list_box_set_sort_func(box:PTGtkListBox; sort_func:TGtkListBoxSortFunc; user_data:Tgpointer; destroy:TGDestroyNotify);cdecl;external;
procedure gtk_list_box_set_activate_on_single_click(box:PTGtkListBox; single:Tgboolean);cdecl;external;
function gtk_list_box_get_activate_on_single_click(box:PTGtkListBox):Tgboolean;cdecl;external;
procedure gtk_list_box_drag_unhighlight_row(box:PTGtkListBox);cdecl;external;
procedure gtk_list_box_drag_highlight_row(box:PTGtkListBox; row:PTGtkListBoxRow);cdecl;external;
function gtk_list_box_new:^TGtkWidget;cdecl;external;
procedure gtk_list_box_bind_model(box:PTGtkListBox; model:PTGListModel; create_widget_func:TGtkListBoxCreateWidgetFunc; user_data:Tgpointer; user_data_free_func:TGDestroyNotify);cdecl;external;
procedure gtk_list_box_set_show_separators(box:PTGtkListBox; show_separators:Tgboolean);cdecl;external;
function gtk_list_box_get_show_separators(box:PTGtkListBox):Tgboolean;cdecl;external;
//// {$endif}

// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkgestureclick.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkgestureclick.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkgestureclick.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_GESTURE_CLICK_H__}
//// {$define __GTK_GESTURE_CLICK_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkwidget.h>}
//// {$include <gtk/gtkgesturesingle.h>}

function GTK_TYPE_GESTURE_CLICK : longint; { return type might be wrong }

function GTK_GESTURE_CLICK(o : longint) : longint;

function GTK_GESTURE_CLICK_CLASS(k : longint) : longint;

function GTK_IS_GESTURE_CLICK(o : longint) : longint;

function GTK_IS_GESTURE_CLICK_CLASS(k : longint) : longint;

function GTK_GESTURE_CLICK_GET_CLASS(o : longint) : longint;

type
  T_GtkGestureClick = TGtkGestureClick;
  T_GtkGestureClickClass = TGtkGestureClickClass;

function gtk_gesture_click_get_type:TGType;cdecl;external;
function gtk_gesture_click_new:^TGtkGesture;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtknativedialog.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtknativedialog.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtknativedialog.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGtkNativeDialog  = ^GtkNativeDialog;
PGtkWindow  = ^GtkWindow;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_NATIVE_DIALOG_H__}
//// {$define __GTK_NATIVE_DIALOG_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkwindow.h>}

function GTK_TYPE_NATIVE_DIALOG : longint; { return type might be wrong }






type
  T_GtkNativeDialogClass = record
      parent_class : TGObjectClass;
      response : procedure (self:PTGtkNativeDialog; response_id:longint);cdecl;
      show : procedure (self:PTGtkNativeDialog);cdecl;
      hide : procedure (self:PTGtkNativeDialog);cdecl;
      _gtk_reserved1 : procedure ;cdecl;
      _gtk_reserved2 : procedure ;cdecl;
      _gtk_reserved3 : procedure ;cdecl;
      _gtk_reserved4 : procedure ;cdecl;
    end;


procedure gtk_native_dialog_show(self:PTGtkNativeDialog);cdecl;external;
procedure gtk_native_dialog_hide(self:PTGtkNativeDialog);cdecl;external;
procedure gtk_native_dialog_destroy(self:PTGtkNativeDialog);cdecl;external;
function gtk_native_dialog_get_visible(self:PTGtkNativeDialog):Tgboolean;cdecl;external;
procedure gtk_native_dialog_set_modal(self:PTGtkNativeDialog; modal:Tgboolean);cdecl;external;
function gtk_native_dialog_get_modal(self:PTGtkNativeDialog):Tgboolean;cdecl;external;
procedure gtk_native_dialog_set_title(self:PTGtkNativeDialog; title:Pchar);cdecl;external;
function gtk_native_dialog_get_title(self:PTGtkNativeDialog):^char;cdecl;external;
procedure gtk_native_dialog_set_transient_for(self:PTGtkNativeDialog; parent:PTGtkWindow);cdecl;external;
function gtk_native_dialog_get_transient_for(self:PTGtkNativeDialog):^TGtkWindow;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkfontbutton.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkfontbutton.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkfontbutton.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGtkFontButton  = ^GtkFontButton;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef __GTK_FONT_BUTTON_H__}
//// {$define __GTK_FONT_BUTTON_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkbutton.h>}

function GTK_TYPE_FONT_BUTTON : longint; { return type might be wrong }

function GTK_FONT_BUTTON(obj : longint) : longint;

function GTK_IS_FONT_BUTTON(obj : longint) : longint;

type
  T_GtkFontButton = TGtkFontButton;

function gtk_font_button_get_type:TGType;cdecl;external;
function gtk_font_button_new:^TGtkWidget;cdecl;external;
function gtk_font_button_new_with_font(fontname:Pchar):^TGtkWidget;cdecl;external;
function gtk_font_button_get_title(font_button:PTGtkFontButton):^char;cdecl;external;
procedure gtk_font_button_set_title(font_button:PTGtkFontButton; title:Pchar);cdecl;external;
function gtk_font_button_get_modal(font_button:PTGtkFontButton):Tgboolean;cdecl;external;
procedure gtk_font_button_set_modal(font_button:PTGtkFontButton; modal:Tgboolean);cdecl;external;
function gtk_font_button_get_use_font(font_button:PTGtkFontButton):Tgboolean;cdecl;external;
procedure gtk_font_button_set_use_font(font_button:PTGtkFontButton; use_font:Tgboolean);cdecl;external;
function gtk_font_button_get_use_size(font_button:PTGtkFontButton):Tgboolean;cdecl;external;
procedure gtk_font_button_set_use_size(font_button:PTGtkFontButton; use_size:Tgboolean);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkmain.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkmain.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkmain.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef __GTK_MAIN_H__}
//// {$define __GTK_MAIN_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdk.h>}
//// {$include <gtk/gtkwidget.h>}
//// {$ifdef G_PLATFORM_WIN32}
//// {$include <gtk/gtkbox.h>}
//// {$include <gtk/gtkwindow.h>}
//// {$endif}


const
  GTK_PRIORITY_RESIZE = G_PRIORITY_HIGH_IDLE+10;  


procedure gtk_init;cdecl;external;
function gtk_init_check:Tgboolean;cdecl;external;
function gtk_is_initialized:Tgboolean;cdecl;external;
//// {$ifdef G_OS_WIN32}

procedure gtk_init_abi_check(num_checks:longint; sizeof_GtkWindow:Tsize_t; sizeof_GtkBox:Tsize_t);cdecl;external;
function gtk_init_check_abi_check(num_checks:longint; sizeof_GtkWindow:Tsize_t; sizeof_GtkBox:Tsize_t):Tgboolean;cdecl;external;
function gtk_init : longint;

function gtk_init_check : longint;

//// {$endif}

procedure gtk_disable_setlocale;cdecl;external;
function gtk_get_default_language:^TPangoLanguage;cdecl;external;
function gtk_get_locale_direction:TGtkTextDirection;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtklinkbutton.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtklinkbutton.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtklinkbutton.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGtkLinkButton  = ^GtkLinkButton;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_LINK_BUTTON_H__}
//// {$define __GTK_LINK_BUTTON_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkbutton.h>}

function GTK_TYPE_LINK_BUTTON : longint; { return type might be wrong }

function GTK_LINK_BUTTON(obj : longint) : longint;

function GTK_IS_LINK_BUTTON(obj : longint) : longint;

type
  T_GtkLinkButton = TGtkLinkButton;

function gtk_link_button_get_type:TGType;cdecl;external;
function gtk_link_button_new(uri:Pchar):^TGtkWidget;cdecl;external;
function gtk_link_button_new_with_label(uri:Pchar; _label:Pchar):^TGtkWidget;cdecl;external;
function gtk_link_button_get_uri(link_button:PTGtkLinkButton):^char;cdecl;external;
procedure gtk_link_button_set_uri(link_button:PTGtkLinkButton; uri:Pchar);cdecl;external;
function gtk_link_button_get_visited(link_button:PTGtkLinkButton):Tgboolean;cdecl;external;
procedure gtk_link_button_set_visited(link_button:PTGtkLinkButton; visited:Tgboolean);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkcolorchooserwidget.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkcolorchooserwidget.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkcolorchooserwidget.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_COLOR_CHOOSER_WIDGET_H__}
//// {$define __GTK_COLOR_CHOOSER_WIDGET_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkwidget.h>}

function GTK_TYPE_COLOR_CHOOSER_WIDGET : longint; { return type might be wrong }

function GTK_COLOR_CHOOSER_WIDGET(obj : longint) : longint;

function GTK_IS_COLOR_CHOOSER_WIDGET(obj : longint) : longint;

type
  T_GtkColorChooserWidget = TGtkColorChooserWidget;

function gtk_color_chooser_widget_get_type:TGType;cdecl;external;
function gtk_color_chooser_widget_new:^TGtkWidget;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtktreemodelsort.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtktreemodelsort.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtktreemodelsort.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGtkTreeIter  = ^GtkTreeIter;
PGtkTreeModel  = ^GtkTreeModel;
PGtkTreeModelSort  = ^GtkTreeModelSort;
PGtkTreePath  = ^GtkTreePath;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_TREE_MODEL_SORT_H__}
//// {$define __GTK_TREE_MODEL_SORT_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdk.h>}
//// {$include <gtk/gtktreemodel.h>}
//// {$include <gtk/gtktreesortable.h>}

function GTK_TYPE_TREE_MODEL_SORT : longint; { return type might be wrong }

function GTK_TREE_MODEL_SORT(obj : longint) : longint;

function GTK_TREE_MODEL_SORT_CLASS(klass : longint) : longint;

function GTK_IS_TREE_MODEL_SORT(obj : longint) : longint;

function GTK_IS_TREE_MODEL_SORT_CLASS(klass : longint) : longint;

function GTK_TREE_MODEL_SORT_GET_CLASS(obj : longint) : longint;

type
  T_GtkTreeModelSort = TGtkTreeModelSort;
  T_GtkTreeModelSortClass = TGtkTreeModelSortClass;
  T_GtkTreeModelSortPrivate = TGtkTreeModelSortPrivate;

  T_GtkTreeModelSort = record
      parent : TGObject;
      priv : ^TGtkTreeModelSortPrivate;
    end;


  T_GtkTreeModelSortClass = record
      parent_class : TGObjectClass;
      padding : array[0..7] of Tgpointer;
    end;


function gtk_tree_model_sort_get_type:TGType;cdecl;external;
function gtk_tree_model_sort_new_with_model(child_model:PTGtkTreeModel):^TGtkTreeModel;cdecl;external;
function gtk_tree_model_sort_get_model(tree_model:PTGtkTreeModelSort):^TGtkTreeModel;cdecl;external;
function gtk_tree_model_sort_convert_child_path_to_path(tree_model_sort:PTGtkTreeModelSort; child_path:PTGtkTreePath):^TGtkTreePath;cdecl;external;
function gtk_tree_model_sort_convert_child_iter_to_iter(tree_model_sort:PTGtkTreeModelSort; sort_iter:PTGtkTreeIter; child_iter:PTGtkTreeIter):Tgboolean;cdecl;external;
function gtk_tree_model_sort_convert_path_to_child_path(tree_model_sort:PTGtkTreeModelSort; sorted_path:PTGtkTreePath):^TGtkTreePath;cdecl;external;
procedure gtk_tree_model_sort_convert_iter_to_child_iter(tree_model_sort:PTGtkTreeModelSort; child_iter:PTGtkTreeIter; sorted_iter:PTGtkTreeIter);cdecl;external;
procedure gtk_tree_model_sort_reset_default_sort_func(tree_model_sort:PTGtkTreeModelSort);cdecl;external;
procedure gtk_tree_model_sort_clear_cache(tree_model_sort:PTGtkTreeModelSort);cdecl;external;
function gtk_tree_model_sort_iter_is_valid(tree_model_sort:PTGtkTreeModelSort; iter:PTGtkTreeIter):Tgboolean;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkbuildable.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkbuildable.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkbuildable.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGError  = ^GError;
PGObject  = ^GObject;
Pgpointer  = ^gpointer;
PGtkBuildable  = ^GtkBuildable;
PGtkBuildableParseContext  = ^GtkBuildableParseContext;
PGtkBuildableParser  = ^GtkBuildableParser;
PGtkBuilder  = ^GtkBuilder;
PGValue  = ^GValue;
Plongint  = ^longint;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_BUILDABLE_H__}
//// {$define __GTK_BUILDABLE_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkbuilder.h>}

function GTK_TYPE_BUILDABLE : longint; { return type might be wrong }

function GTK_BUILDABLE(obj : longint) : longint;

function GTK_IS_BUILDABLE(obj : longint) : longint;

function GTK_BUILDABLE_GET_IFACE(obj : longint) : longint;

type
  T_GtkBuildable = TGtkBuildable;

  T_GtkBuildableIface = TGtkBuildableIface;
  T_GtkBuildableParseContext = TGtkBuildableParseContext;
  T_GtkBuildableParser = TGtkBuildableParser;








  T_GtkBuildableParser = record
      start_element : procedure (context:PTGtkBuildableParseContext; element_name:Pchar; attribute_names:PPchar; attribute_values:PPchar; user_data:Tgpointer; 
                    error:PPTGError);cdecl;
      end_element : procedure (context:PTGtkBuildableParseContext; element_name:Pchar; user_data:Tgpointer; error:PPTGError);cdecl;
      text : procedure (context:PTGtkBuildableParseContext; text:Pchar; text_len:Tgsize; user_data:Tgpointer; error:PPTGError);cdecl;
      error : procedure (context:PTGtkBuildableParseContext; error:PTGError; user_data:Tgpointer);cdecl;
      padding : array[0..3] of Tgpointer;
    end;








  T_GtkBuildableIface = record
      g_iface : TGTypeInterface;
      set_id : procedure (buildable:PTGtkBuildable; id:Pchar);cdecl;
      get_id : function (buildable:PTGtkBuildable):Pchar;cdecl;
      add_child : procedure (buildable:PTGtkBuildable; builder:PTGtkBuilder; child:PTGObject; _type:Pchar);cdecl;
      set_buildable_property : procedure (buildable:PTGtkBuildable; builder:PTGtkBuilder; name:Pchar; value:PTGValue);cdecl;
      construct_child : function (buildable:PTGtkBuildable; builder:PTGtkBuilder; name:Pchar):PTGObject;cdecl;
      custom_tag_start : function (buildable:PTGtkBuildable; builder:PTGtkBuilder; child:PTGObject; tagname:Pchar; parser:PTGtkBuildableParser; 
                   data:PTgpointer):Tgboolean;cdecl;
      custom_tag_end : procedure (buildable:PTGtkBuildable; builder:PTGtkBuilder; child:PTGObject; tagname:Pchar; data:Tgpointer);cdecl;
      custom_finished : procedure (buildable:PTGtkBuildable; builder:PTGtkBuilder; child:PTGObject; tagname:Pchar; data:Tgpointer);cdecl;
      parser_finished : procedure (buildable:PTGtkBuildable; builder:PTGtkBuilder);cdecl;
      get_internal_child : function (buildable:PTGtkBuildable; builder:PTGtkBuilder; childname:Pchar):PTGObject;cdecl;
    end;


function gtk_buildable_get_type:TGType;cdecl;external;
function gtk_buildable_get_buildable_id(buildable:PTGtkBuildable):^char;cdecl;external;
procedure gtk_buildable_parse_context_push(context:PTGtkBuildableParseContext; parser:PTGtkBuildableParser; user_data:Tgpointer);cdecl;external;
function gtk_buildable_parse_context_pop(context:PTGtkBuildableParseContext):Tgpointer;cdecl;external;
function gtk_buildable_parse_context_get_element(context:PTGtkBuildableParseContext):^char;cdecl;external;
function gtk_buildable_parse_context_get_element_stack(context:PTGtkBuildableParseContext):^TGPtrArray;cdecl;external;
procedure gtk_buildable_parse_context_get_position(context:PTGtkBuildableParseContext; line_number:Plongint; char_number:Plongint);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkstringfilter.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkstringfilter.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkstringfilter.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGtkExpression  = ^GtkExpression;
PGtkStringFilter  = ^GtkStringFilter;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_STRING_FILTER_H__}
//// {$define __GTK_STRING_FILTER_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkexpression.h>}
//// {$include <gtk/gtkfilter.h>}

type
  TGtkStringFilterMatchMode = (GTK_STRING_FILTER_MATCH_MODE_EXACT,GTK_STRING_FILTER_MATCH_MODE_SUBSTRING,
    GTK_STRING_FILTER_MATCH_MODE_PREFIX);

function GTK_TYPE_STRING_FILTER : longint; { return type might be wrong }

function gtk_string_filter_new(expression:PTGtkExpression):^TGtkStringFilter;cdecl;external;
function gtk_string_filter_get_search(self:PTGtkStringFilter):^char;cdecl;external;
procedure gtk_string_filter_set_search(self:PTGtkStringFilter; search:Pchar);cdecl;external;
function gtk_string_filter_get_expression(self:PTGtkStringFilter):^TGtkExpression;cdecl;external;
procedure gtk_string_filter_set_expression(self:PTGtkStringFilter; expression:PTGtkExpression);cdecl;external;
function gtk_string_filter_get_ignore_case(self:PTGtkStringFilter):Tgboolean;cdecl;external;
procedure gtk_string_filter_set_ignore_case(self:PTGtkStringFilter; ignore_case:Tgboolean);cdecl;external;
function gtk_string_filter_get_match_mode(self:PTGtkStringFilter):TGtkStringFilterMatchMode;cdecl;external;
procedure gtk_string_filter_set_match_mode(self:PTGtkStringFilter; mode:TGtkStringFilterMatchMode);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkheaderbar.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkheaderbar.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkheaderbar.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGtkHeaderBar  = ^GtkHeaderBar;
PGtkWidget  = ^GtkWidget;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_HEADER_BAR_H__}
//// {$define __GTK_HEADER_BAR_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkwidget.h>}

function GTK_TYPE_HEADER_BAR : longint; { return type might be wrong }

function GTK_HEADER_BAR(obj : longint) : longint;

function GTK_IS_HEADER_BAR(obj : longint) : longint;

type
  T_GtkHeaderBar = TGtkHeaderBar;

function gtk_header_bar_get_type:TGType;cdecl;external;
function gtk_header_bar_new:^TGtkWidget;cdecl;external;
procedure gtk_header_bar_set_title_widget(bar:PTGtkHeaderBar; title_widget:PTGtkWidget);cdecl;external;
function gtk_header_bar_get_title_widget(bar:PTGtkHeaderBar):^TGtkWidget;cdecl;external;
procedure gtk_header_bar_pack_start(bar:PTGtkHeaderBar; child:PTGtkWidget);cdecl;external;
procedure gtk_header_bar_pack_end(bar:PTGtkHeaderBar; child:PTGtkWidget);cdecl;external;
procedure gtk_header_bar_remove(bar:PTGtkHeaderBar; child:PTGtkWidget);cdecl;external;
function gtk_header_bar_get_show_title_buttons(bar:PTGtkHeaderBar):Tgboolean;cdecl;external;
procedure gtk_header_bar_set_show_title_buttons(bar:PTGtkHeaderBar; setting:Tgboolean);cdecl;external;
procedure gtk_header_bar_set_decoration_layout(bar:PTGtkHeaderBar; layout:Pchar);cdecl;external;
function gtk_header_bar_get_decoration_layout(bar:PTGtkHeaderBar):^char;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkconstraintguide.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkconstraintguide.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkconstraintguide.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGtkConstraintGuide  = ^GtkConstraintGuide;
Plongint  = ^longint;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$include <gtk/gtktypes.h>}
//// {$include <gtk/gtkenums.h>}
//// {$include <gtk/gtktypebuiltins.h>}

function GTK_TYPE_CONSTRAINT_GUIDE : longint; { return type might be wrong }

function gtk_constraint_guide_new:^TGtkConstraintGuide;cdecl;external;
procedure gtk_constraint_guide_set_min_size(guide:PTGtkConstraintGuide; width:longint; height:longint);cdecl;external;
procedure gtk_constraint_guide_get_min_size(guide:PTGtkConstraintGuide; width:Plongint; height:Plongint);cdecl;external;
procedure gtk_constraint_guide_set_nat_size(guide:PTGtkConstraintGuide; width:longint; height:longint);cdecl;external;
procedure gtk_constraint_guide_get_nat_size(guide:PTGtkConstraintGuide; width:Plongint; height:Plongint);cdecl;external;
procedure gtk_constraint_guide_set_max_size(guide:PTGtkConstraintGuide; width:longint; height:longint);cdecl;external;
procedure gtk_constraint_guide_get_max_size(guide:PTGtkConstraintGuide; width:Plongint; height:Plongint);cdecl;external;
function gtk_constraint_guide_get_strength(guide:PTGtkConstraintGuide):TGtkConstraintStrength;cdecl;external;
procedure gtk_constraint_guide_set_strength(guide:PTGtkConstraintGuide; strength:TGtkConstraintStrength);cdecl;external;
procedure gtk_constraint_guide_set_name(guide:PTGtkConstraintGuide; name:Pchar);cdecl;external;
function gtk_constraint_guide_get_name(guide:PTGtkConstraintGuide):^char;cdecl;external;

// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkprintoperation.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkprintoperation.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkprintoperation.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGError  = ^GError;
PGtkPageSetup  = ^GtkPageSetup;
PGtkPrintContext  = ^GtkPrintContext;
PGtkPrintOperation  = ^GtkPrintOperation;
PGtkPrintOperationPreview  = ^GtkPrintOperationPreview;
PGtkPrintSettings  = ^GtkPrintSettings;
PGtkWidget  = ^GtkWidget;
PGtkWindow  = ^GtkWindow;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_PRINT_OPERATION_H__}
//// {$define __GTK_PRINT_OPERATION_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <cairo.h>}
//// {$include <gtk/gtkmain.h>}
//// {$include <gtk/gtkwindow.h>}
//// {$include <gtk/gtkpagesetup.h>}
//// {$include <gtk/gtkprintsettings.h>}
//// {$include <gtk/gtkprintcontext.h>}
//// {$include <gtk/gtkprintoperationpreview.h>}

function GTK_TYPE_PRINT_OPERATION : longint; { return type might be wrong }

function GTK_PRINT_OPERATION(obj : longint) : longint;

function GTK_PRINT_OPERATION_CLASS(klass : longint) : longint;

function GTK_IS_PRINT_OPERATION(obj : longint) : longint;

function GTK_IS_PRINT_OPERATION_CLASS(klass : longint) : longint;

function GTK_PRINT_OPERATION_GET_CLASS(obj : longint) : longint;

type
  T_GtkPrintOperationClass = TGtkPrintOperationClass;
  T_GtkPrintOperationPrivate = TGtkPrintOperationPrivate;
  T_GtkPrintOperation = TGtkPrintOperation;


  TGtkPrintStatus = (GTK_PRINT_STATUS_INITIAL,GTK_PRINT_STATUS_PREPARING,
    GTK_PRINT_STATUS_GENERATING_DATA,GTK_PRINT_STATUS_SENDING_DATA,
    GTK_PRINT_STATUS_PENDING,GTK_PRINT_STATUS_PENDING_ISSUE,
    GTK_PRINT_STATUS_PRINTING,GTK_PRINT_STATUS_FINISHED,
    GTK_PRINT_STATUS_FINISHED_ABORTED);


  TGtkPrintOperationResult = (GTK_PRINT_OPERATION_RESULT_ERROR,GTK_PRINT_OPERATION_RESULT_APPLY,
    GTK_PRINT_OPERATION_RESULT_CANCEL,GTK_PRINT_OPERATION_RESULT_IN_PROGRESS
    );


  TGtkPrintOperationAction = (GTK_PRINT_OPERATION_ACTION_PRINT_DIALOG,
    GTK_PRINT_OPERATION_ACTION_PRINT,GTK_PRINT_OPERATION_ACTION_PREVIEW,
    GTK_PRINT_OPERATION_ACTION_EXPORT);

  T_GtkPrintOperation = record
      parent_instance : TGObject;
      priv : ^TGtkPrintOperationPrivate;
    end;




  T_GtkPrintOperationClass = record
      parent_class : TGObjectClass;
      done : procedure (operation:PTGtkPrintOperation; result:TGtkPrintOperationResult);cdecl;
      begin_print : procedure (operation:PTGtkPrintOperation; context:PTGtkPrintContext);cdecl;
      paginate : function (operation:PTGtkPrintOperation; context:PTGtkPrintContext):Tgboolean;cdecl;
      request_page_setup : procedure (operation:PTGtkPrintOperation; context:PTGtkPrintContext; page_nr:longint; setup:PTGtkPageSetup);cdecl;
      draw_page : procedure (operation:PTGtkPrintOperation; context:PTGtkPrintContext; page_nr:longint);cdecl;
      end_print : procedure (operation:PTGtkPrintOperation; context:PTGtkPrintContext);cdecl;
      status_changed : procedure (operation:PTGtkPrintOperation);cdecl;
      create_custom_widget : function (operation:PTGtkPrintOperation):PTGtkWidget;cdecl;
      custom_widget_apply : procedure (operation:PTGtkPrintOperation; widget:PTGtkWidget);cdecl;
      preview : function (operation:PTGtkPrintOperation; preview:PTGtkPrintOperationPreview; context:PTGtkPrintContext; parent:PTGtkWindow):Tgboolean;cdecl;
      update_custom_widget : procedure (operation:PTGtkPrintOperation; widget:PTGtkWidget; setup:PTGtkPageSetup; settings:PTGtkPrintSettings);cdecl;
      padding : array[0..7] of Tgpointer;
    end;



function GTK_PRINT_ERROR : longint; { return type might be wrong }


type
  TGtkPrintError = (GTK_PRINT_ERROR_GENERAL,GTK_PRINT_ERROR_INTERNAL_ERROR,
    GTK_PRINT_ERROR_NOMEM,GTK_PRINT_ERROR_INVALID_FILE
    );

function gtk_print_error_quark:TGQuark;cdecl;external;
function gtk_print_operation_get_type:TGType;cdecl;external;
function gtk_print_operation_new:^TGtkPrintOperation;cdecl;external;
procedure gtk_print_operation_set_default_page_setup(op:PTGtkPrintOperation; default_page_setup:PTGtkPageSetup);cdecl;external;
function gtk_print_operation_get_default_page_setup(op:PTGtkPrintOperation):^TGtkPageSetup;cdecl;external;
procedure gtk_print_operation_set_print_settings(op:PTGtkPrintOperation; print_settings:PTGtkPrintSettings);cdecl;external;
function gtk_print_operation_get_print_settings(op:PTGtkPrintOperation):^TGtkPrintSettings;cdecl;external;
procedure gtk_print_operation_set_job_name(op:PTGtkPrintOperation; job_name:Pchar);cdecl;external;
procedure gtk_print_operation_set_n_pages(op:PTGtkPrintOperation; n_pages:longint);cdecl;external;
procedure gtk_print_operation_set_current_page(op:PTGtkPrintOperation; current_page:longint);cdecl;external;
procedure gtk_print_operation_set_use_full_page(op:PTGtkPrintOperation; full_page:Tgboolean);cdecl;external;
procedure gtk_print_operation_set_unit(op:PTGtkPrintOperation; unit:TGtkUnit);cdecl;external;
procedure gtk_print_operation_set_export_filename(op:PTGtkPrintOperation; filename:Pchar);cdecl;external;
procedure gtk_print_operation_set_track_print_status(op:PTGtkPrintOperation; track_status:Tgboolean);cdecl;external;
procedure gtk_print_operation_set_show_progress(op:PTGtkPrintOperation; show_progress:Tgboolean);cdecl;external;
procedure gtk_print_operation_set_allow_async(op:PTGtkPrintOperation; allow_async:Tgboolean);cdecl;external;
procedure gtk_print_operation_set_custom_tab_label(op:PTGtkPrintOperation; _label:Pchar);cdecl;external;
function gtk_print_operation_run(op:PTGtkPrintOperation; action:TGtkPrintOperationAction; parent:PTGtkWindow; error:PPTGError):TGtkPrintOperationResult;cdecl;external;
procedure gtk_print_operation_get_error(op:PTGtkPrintOperation; error:PPTGError);cdecl;external;
function gtk_print_operation_get_status(op:PTGtkPrintOperation):TGtkPrintStatus;cdecl;external;
function gtk_print_operation_get_status_string(op:PTGtkPrintOperation):^char;cdecl;external;
function gtk_print_operation_is_finished(op:PTGtkPrintOperation):Tgboolean;cdecl;external;
procedure gtk_print_operation_cancel(op:PTGtkPrintOperation);cdecl;external;
procedure gtk_print_operation_draw_page_finish(op:PTGtkPrintOperation);cdecl;external;
procedure gtk_print_operation_set_defer_drawing(op:PTGtkPrintOperation);cdecl;external;
procedure gtk_print_operation_set_support_selection(op:PTGtkPrintOperation; support_selection:Tgboolean);cdecl;external;
function gtk_print_operation_get_support_selection(op:PTGtkPrintOperation):Tgboolean;cdecl;external;
procedure gtk_print_operation_set_has_selection(op:PTGtkPrintOperation; has_selection:Tgboolean);cdecl;external;
function gtk_print_operation_get_has_selection(op:PTGtkPrintOperation):Tgboolean;cdecl;external;
procedure gtk_print_operation_set_embed_page_setup(op:PTGtkPrintOperation; embed:Tgboolean);cdecl;external;
function gtk_print_operation_get_embed_page_setup(op:PTGtkPrintOperation):Tgboolean;cdecl;external;
function gtk_print_operation_get_n_pages_to_print(op:PTGtkPrintOperation):longint;cdecl;external;
function gtk_print_run_page_setup_dialog(parent:PTGtkWindow; page_setup:PTGtkPageSetup; settings:PTGtkPrintSettings):^TGtkPageSetup;cdecl;external;

type

  TGtkPageSetupDoneFunc = procedure (page_setup:PTGtkPageSetup; data:Tgpointer);cdecl;

procedure gtk_print_run_page_setup_dialog_async(parent:PTGtkWindow; page_setup:PTGtkPageSetup; settings:PTGtkPrintSettings; done_cb:TGtkPageSetupDoneFunc; data:Tgpointer);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkorientable.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkorientable.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkorientable.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGtkOrientable  = ^GtkOrientable;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_ORIENTABLE_H__}
//// {$define __GTK_ORIENTABLE_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkwidget.h>}

function GTK_TYPE_ORIENTABLE : longint; { return type might be wrong }

function GTK_ORIENTABLE(obj : longint) : longint;

function GTK_IS_ORIENTABLE(obj : longint) : longint;

function GTK_ORIENTABLE_GET_IFACE(inst : longint) : longint;

type
  T_GtkOrientable = TGtkOrientable;

  T_GtkOrientableIface = TGtkOrientableIface;
  T_GtkOrientableIface = record
      base_iface : TGTypeInterface;
    end;


function gtk_orientable_get_type:TGType;cdecl;external;
procedure gtk_orientable_set_orientation(orientable:PTGtkOrientable; orientation:TGtkOrientation);cdecl;external;
function gtk_orientable_get_orientation(orientable:PTGtkOrientable):TGtkOrientation;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkenums.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkenums.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkenums.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef __GTK_ENUMS_H__}
//// {$define __GTK_ENUMS_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <glib-object.h>}

type
  TGtkAlign = (GTK_ALIGN_FILL,GTK_ALIGN_START,GTK_ALIGN_END,
    GTK_ALIGN_CENTER,GTK_ALIGN_BASELINE);


  TGtkArrowType = (GTK_ARROW_UP,GTK_ARROW_DOWN,GTK_ARROW_LEFT,
    GTK_ARROW_RIGHT,GTK_ARROW_NONE);


  TGtkBaselinePosition = (GTK_BASELINE_POSITION_TOP,GTK_BASELINE_POSITION_CENTER,
    GTK_BASELINE_POSITION_BOTTOM);


  TGtkContentFit = (GTK_CONTENT_FIT_FILL,GTK_CONTENT_FIT_CONTAIN,
    GTK_CONTENT_FIT_COVER,GTK_CONTENT_FIT_SCALE_DOWN
    );


  TGtkDeleteType = (GTK_DELETE_CHARS,GTK_DELETE_WORD_ENDS,GTK_DELETE_WORDS,
    GTK_DELETE_DISPLAY_LINES,GTK_DELETE_DISPLAY_LINE_ENDS,
    GTK_DELETE_PARAGRAPH_ENDS,GTK_DELETE_PARAGRAPHS,
    GTK_DELETE_WHITESPACE);



  TGtkDirectionType = (GTK_DIR_TAB_FORWARD,GTK_DIR_TAB_BACKWARD,
    GTK_DIR_UP,GTK_DIR_DOWN,GTK_DIR_LEFT,GTK_DIR_RIGHT
    );


  TGtkIconSize = (GTK_ICON_SIZE_INHERIT,GTK_ICON_SIZE_NORMAL,
    GTK_ICON_SIZE_LARGE);


  TGtkSensitivityType = (GTK_SENSITIVITY_AUTO,GTK_SENSITIVITY_ON,
    GTK_SENSITIVITY_OFF);



  TGtkTextDirection = (GTK_TEXT_DIR_NONE,GTK_TEXT_DIR_LTR,GTK_TEXT_DIR_RTL
    );


  TGtkJustification = (GTK_JUSTIFY_LEFT,GTK_JUSTIFY_RIGHT,GTK_JUSTIFY_CENTER,
    GTK_JUSTIFY_FILL);


  TGtkMessageType = (GTK_MESSAGE_INFO,GTK_MESSAGE_WARNING,GTK_MESSAGE_QUESTION,
    GTK_MESSAGE_ERROR,GTK_MESSAGE_OTHER);


  TGtkMovementStep = (GTK_MOVEMENT_LOGICAL_POSITIONS,GTK_MOVEMENT_VISUAL_POSITIONS,
    GTK_MOVEMENT_WORDS,GTK_MOVEMENT_DISPLAY_LINES,
    GTK_MOVEMENT_DISPLAY_LINE_ENDS,GTK_MOVEMENT_PARAGRAPHS,
    GTK_MOVEMENT_PARAGRAPH_ENDS,GTK_MOVEMENT_PAGES,
    GTK_MOVEMENT_BUFFER_ENDS,GTK_MOVEMENT_HORIZONTAL_PAGES
    );


  TGtkNaturalWrapMode = (GTK_NATURAL_WRAP_INHERIT,GTK_NATURAL_WRAP_NONE,
    GTK_NATURAL_WRAP_WORD);


  TGtkScrollStep = (GTK_SCROLL_STEPS,GTK_SCROLL_PAGES,GTK_SCROLL_ENDS,
    GTK_SCROLL_HORIZONTAL_STEPS,GTK_SCROLL_HORIZONTAL_PAGES,
    GTK_SCROLL_HORIZONTAL_ENDS);


  TGtkOrientation = (GTK_ORIENTATION_HORIZONTAL,GTK_ORIENTATION_VERTICAL
    );


  TGtkOverflow = (GTK_OVERFLOW_VISIBLE,GTK_OVERFLOW_HIDDEN
    );


  TGtkPackType = (GTK_PACK_START,GTK_PACK_END);


  TGtkPositionType = (GTK_POS_LEFT,GTK_POS_RIGHT,GTK_POS_TOP,GTK_POS_BOTTOM
    );


  TGtkScrollType = (GTK_SCROLL_NONE,GTK_SCROLL_JUMP,GTK_SCROLL_STEP_BACKWARD,
    GTK_SCROLL_STEP_FORWARD,GTK_SCROLL_PAGE_BACKWARD,
    GTK_SCROLL_PAGE_FORWARD,GTK_SCROLL_STEP_UP,
    GTK_SCROLL_STEP_DOWN,GTK_SCROLL_PAGE_UP,
    GTK_SCROLL_PAGE_DOWN,GTK_SCROLL_STEP_LEFT,
    GTK_SCROLL_STEP_RIGHT,GTK_SCROLL_PAGE_LEFT,
    GTK_SCROLL_PAGE_RIGHT,GTK_SCROLL_START,
    GTK_SCROLL_END);


  TGtkSelectionMode = (GTK_SELECTION_NONE,GTK_SELECTION_SINGLE,
    GTK_SELECTION_BROWSE,GTK_SELECTION_MULTIPLE
    );



  TGtkWrapMode = (GTK_WRAP_NONE,GTK_WRAP_CHAR,GTK_WRAP_WORD,
    GTK_WRAP_WORD_CHAR);


  TGtkSortType = (GTK_SORT_ASCENDING,GTK_SORT_DESCENDING
    );


  TGtkPrintPages = (GTK_PRINT_PAGES_ALL,GTK_PRINT_PAGES_CURRENT,
    GTK_PRINT_PAGES_RANGES,GTK_PRINT_PAGES_SELECTION
    );


  TGtkPageSet = (GTK_PAGE_SET_ALL,GTK_PAGE_SET_EVEN,GTK_PAGE_SET_ODD
    );










  TGtkNumberUpLayout = (GTK_NUMBER_UP_LAYOUT_LEFT_TO_RIGHT_TOP_TO_BOTTOM,
    GTK_NUMBER_UP_LAYOUT_LEFT_TO_RIGHT_BOTTOM_TO_TOP,
    GTK_NUMBER_UP_LAYOUT_RIGHT_TO_LEFT_TOP_TO_BOTTOM,
    GTK_NUMBER_UP_LAYOUT_RIGHT_TO_LEFT_BOTTOM_TO_TOP,
    GTK_NUMBER_UP_LAYOUT_TOP_TO_BOTTOM_LEFT_TO_RIGHT,
    GTK_NUMBER_UP_LAYOUT_TOP_TO_BOTTOM_RIGHT_TO_LEFT,
    GTK_NUMBER_UP_LAYOUT_BOTTOM_TO_TOP_LEFT_TO_RIGHT,
    GTK_NUMBER_UP_LAYOUT_BOTTOM_TO_TOP_RIGHT_TO_LEFT
    );


  TGtkOrdering = (GTK_ORDERING_SMALLER := -(1),GTK_ORDERING_EQUAL := 0,
    GTK_ORDERING_LARGER := 1);


  TGtkPageOrientation = (GTK_PAGE_ORIENTATION_PORTRAIT,GTK_PAGE_ORIENTATION_LANDSCAPE,
    GTK_PAGE_ORIENTATION_REVERSE_PORTRAIT,
    GTK_PAGE_ORIENTATION_REVERSE_LANDSCAPE
    );


  TGtkPrintQuality = (GTK_PRINT_QUALITY_LOW,GTK_PRINT_QUALITY_NORMAL,
    GTK_PRINT_QUALITY_HIGH,GTK_PRINT_QUALITY_DRAFT
    );


  TGtkPrintDuplex = (GTK_PRINT_DUPLEX_SIMPLEX,GTK_PRINT_DUPLEX_HORIZONTAL,
    GTK_PRINT_DUPLEX_VERTICAL);


  TGtkUnit = (GTK_UNIT_NONE,GTK_UNIT_POINTS,GTK_UNIT_INCH,
    GTK_UNIT_MM);

const
  GTK_UNIT_PIXEL = GTK_UNIT_NONE;  

type
  TGtkTreeViewGridLines = (GTK_TREE_VIEW_GRID_LINES_NONE,GTK_TREE_VIEW_GRID_LINES_HORIZONTAL,
    GTK_TREE_VIEW_GRID_LINES_VERTICAL,GTK_TREE_VIEW_GRID_LINES_BOTH
    );


  TGtkSizeGroupMode = (GTK_SIZE_GROUP_NONE,GTK_SIZE_GROUP_HORIZONTAL,
    GTK_SIZE_GROUP_VERTICAL,GTK_SIZE_GROUP_BOTH
    );


  TGtkSizeRequestMode = (GTK_SIZE_REQUEST_HEIGHT_FOR_WIDTH := 0,
    GTK_SIZE_REQUEST_WIDTH_FOR_HEIGHT,GTK_SIZE_REQUEST_CONSTANT_SIZE
    );


  TGtkScrollablePolicy = (GTK_SCROLL_MINIMUM := 0,GTK_SCROLL_NATURAL
    );


  TGtkStateFlags = (GTK_STATE_FLAG_NORMAL := 0,GTK_STATE_FLAG_ACTIVE := 1 shl 0,
    GTK_STATE_FLAG_PRELIGHT := 1 shl 1,GTK_STATE_FLAG_SELECTED := 1 shl 2,
    GTK_STATE_FLAG_INSENSITIVE := 1 shl 3,GTK_STATE_FLAG_INCONSISTENT := 1 shl 4,
    GTK_STATE_FLAG_FOCUSED := 1 shl 5,GTK_STATE_FLAG_BACKDROP := 1 shl 6,
    GTK_STATE_FLAG_DIR_LTR := 1 shl 7,GTK_STATE_FLAG_DIR_RTL := 1 shl 8,
    GTK_STATE_FLAG_LINK := 1 shl 9,GTK_STATE_FLAG_VISITED := 1 shl 10,
    GTK_STATE_FLAG_CHECKED := 1 shl 11,GTK_STATE_FLAG_DROP_ACTIVE := 1 shl 12,
    GTK_STATE_FLAG_FOCUS_VISIBLE := 1 shl 13,GTK_STATE_FLAG_FOCUS_WITHIN := 1 shl 14
    );


  TGtkBorderStyle = (GTK_BORDER_STYLE_NONE,GTK_BORDER_STYLE_HIDDEN,
    GTK_BORDER_STYLE_SOLID,GTK_BORDER_STYLE_INSET,
    GTK_BORDER_STYLE_OUTSET,GTK_BORDER_STYLE_DOTTED,
    GTK_BORDER_STYLE_DASHED,GTK_BORDER_STYLE_DOUBLE,
    GTK_BORDER_STYLE_GROOVE,GTK_BORDER_STYLE_RIDGE
    );


  TGtkLevelBarMode = (GTK_LEVEL_BAR_MODE_CONTINUOUS,GTK_LEVEL_BAR_MODE_DISCRETE
    );


  TGtkInputPurpose = (GTK_INPUT_PURPOSE_FREE_FORM,GTK_INPUT_PURPOSE_ALPHA,
    GTK_INPUT_PURPOSE_DIGITS,GTK_INPUT_PURPOSE_NUMBER,
    GTK_INPUT_PURPOSE_PHONE,GTK_INPUT_PURPOSE_URL,
    GTK_INPUT_PURPOSE_EMAIL,GTK_INPUT_PURPOSE_NAME,
    GTK_INPUT_PURPOSE_PASSWORD,GTK_INPUT_PURPOSE_PIN,
    GTK_INPUT_PURPOSE_TERMINAL);


  TGtkInputHints = (GTK_INPUT_HINT_NONE := 0,GTK_INPUT_HINT_SPELLCHECK := 1 shl 0,
    GTK_INPUT_HINT_NO_SPELLCHECK := 1 shl 1,GTK_INPUT_HINT_WORD_COMPLETION := 1 shl 2,
    GTK_INPUT_HINT_LOWERCASE := 1 shl 3,GTK_INPUT_HINT_UPPERCASE_CHARS := 1 shl 4,
    GTK_INPUT_HINT_UPPERCASE_WORDS := 1 shl 5,GTK_INPUT_HINT_UPPERCASE_SENTENCES := 1 shl 6,
    GTK_INPUT_HINT_INHIBIT_OSK := 1 shl 7,GTK_INPUT_HINT_VERTICAL_WRITING := 1 shl 8,
    GTK_INPUT_HINT_EMOJI := 1 shl 9,GTK_INPUT_HINT_NO_EMOJI := 1 shl 10,
    GTK_INPUT_HINT_PRIVATE := 1 shl 11);


  TGtkPropagationPhase = (GTK_PHASE_NONE,GTK_PHASE_CAPTURE,GTK_PHASE_BUBBLE,
    GTK_PHASE_TARGET);


  TGtkPropagationLimit = (GTK_LIMIT_NONE,GTK_LIMIT_SAME_NATIVE);


  TGtkEventSequenceState = (GTK_EVENT_SEQUENCE_NONE,GTK_EVENT_SEQUENCE_CLAIMED,
    GTK_EVENT_SEQUENCE_DENIED);


  TGtkPanDirection = (GTK_PAN_DIRECTION_LEFT,GTK_PAN_DIRECTION_RIGHT,
    GTK_PAN_DIRECTION_UP,GTK_PAN_DIRECTION_DOWN
    );


  TGtkShortcutScope = (GTK_SHORTCUT_SCOPE_LOCAL,GTK_SHORTCUT_SCOPE_MANAGED,
    GTK_SHORTCUT_SCOPE_GLOBAL);


  TGtkPickFlags = (GTK_PICK_DEFAULT := 0,GTK_PICK_INSENSITIVE := 1 shl 0,
    GTK_PICK_NON_TARGETABLE := 1 shl 1);


  TGtkConstraintRelation = (GTK_CONSTRAINT_RELATION_LE := -(1),GTK_CONSTRAINT_RELATION_EQ := 0,
    GTK_CONSTRAINT_RELATION_GE := 1);


  TGtkConstraintStrength = (GTK_CONSTRAINT_STRENGTH_REQUIRED := 1001001000,
    GTK_CONSTRAINT_STRENGTH_STRONG := 1000000000,GTK_CONSTRAINT_STRENGTH_MEDIUM := 1000,
    GTK_CONSTRAINT_STRENGTH_WEAK := 1);


  TGtkConstraintAttribute = (GTK_CONSTRAINT_ATTRIBUTE_NONE,GTK_CONSTRAINT_ATTRIBUTE_LEFT,
    GTK_CONSTRAINT_ATTRIBUTE_RIGHT,GTK_CONSTRAINT_ATTRIBUTE_TOP,
    GTK_CONSTRAINT_ATTRIBUTE_BOTTOM,GTK_CONSTRAINT_ATTRIBUTE_START,
    GTK_CONSTRAINT_ATTRIBUTE_END,GTK_CONSTRAINT_ATTRIBUTE_WIDTH,
    GTK_CONSTRAINT_ATTRIBUTE_HEIGHT,GTK_CONSTRAINT_ATTRIBUTE_CENTER_X,
    GTK_CONSTRAINT_ATTRIBUTE_CENTER_Y,GTK_CONSTRAINT_ATTRIBUTE_BASELINE
    );


  TGtkConstraintVflParserError = (GTK_CONSTRAINT_VFL_PARSER_ERROR_INVALID_SYMBOL,
    GTK_CONSTRAINT_VFL_PARSER_ERROR_INVALID_ATTRIBUTE,
    GTK_CONSTRAINT_VFL_PARSER_ERROR_INVALID_VIEW,
    GTK_CONSTRAINT_VFL_PARSER_ERROR_INVALID_METRIC,
    GTK_CONSTRAINT_VFL_PARSER_ERROR_INVALID_PRIORITY,
    GTK_CONSTRAINT_VFL_PARSER_ERROR_INVALID_RELATION
    );


  TGtkSystemSetting = (GTK_SYSTEM_SETTING_DPI,GTK_SYSTEM_SETTING_FONT_NAME,
    GTK_SYSTEM_SETTING_FONT_CONFIG,GTK_SYSTEM_SETTING_DISPLAY,
    GTK_SYSTEM_SETTING_ICON_THEME);


  TGtkSymbolicColor = (GTK_SYMBOLIC_COLOR_FOREGROUND := 0,GTK_SYMBOLIC_COLOR_ERROR := 1,
    GTK_SYMBOLIC_COLOR_WARNING := 2,GTK_SYMBOLIC_COLOR_SUCCESS := 3
    );


  TGtkAccessibleRole = (_ROLE_ALERT,_ROLE_ALERT_DIALOG,_ROLE_BANNER,
    _ROLE_BUTTON,_ROLE_CAPTION,_ROLE_CELL,_ROLE_CHECKBOX,
    _ROLE_COLUMN_HEADER,_ROLE_COMBO_BOX,_ROLE_COMMAND,
    _ROLE_COMPOSITE,_ROLE_DIALOG,_ROLE_DOCUMENT,
    _ROLE_FEED,_ROLE_FORM,_ROLE_GENERIC,_ROLE_GRID,
    _ROLE_GRID_CELL,_ROLE_GROUP,_ROLE_HEADING,
    _ROLE_IMG,_ROLE_INPUT,_ROLE_LABEL,_ROLE_LANDMARK,
    _ROLE_LEGEND,_ROLE_LINK,_ROLE_LIST,_ROLE_LIST_BOX,
    _ROLE_LIST_ITEM,_ROLE_LOG,_ROLE_MAIN,_ROLE_MARQUEE,
    _ROLE_MATH,_ROLE_METER,_ROLE_MENU,_ROLE_MENU_BAR,
    _ROLE_MENU_ITEM,_ROLE_MENU_ITEM_CHECKBOX,
    _ROLE_MENU_ITEM_RADIO,_ROLE_NAVIGATION,
    _ROLE_NONE,_ROLE_NOTE,_ROLE_OPTION,_ROLE_PRESENTATION,
    _ROLE_PROGRESS_BAR,_ROLE_RADIO,_ROLE_RADIO_GROUP,
    _ROLE_RANGE,_ROLE_REGION,_ROLE_ROW,_ROLE_ROW_GROUP,
    _ROLE_ROW_HEADER,_ROLE_SCROLLBAR,_ROLE_SEARCH,
    _ROLE_SEARCH_BOX,_ROLE_SECTION,_ROLE_SECTION_HEAD,
    _ROLE_SELECT,_ROLE_SEPARATOR,_ROLE_SLIDER,
    _ROLE_SPIN_BUTTON,_ROLE_STATUS,_ROLE_STRUCTURE,
    _ROLE_SWITCH,_ROLE_TAB,_ROLE_TABLE,_ROLE_TAB_LIST,
    _ROLE_TAB_PANEL,_ROLE_TEXT_BOX,_ROLE_TIME,
    _ROLE_TIMER,_ROLE_TOOLBAR,_ROLE_TOOLTIP,
    _ROLE_TREE,_ROLE_TREE_GRID,_ROLE_TREE_ITEM,
    _ROLE_WIDGET,_ROLE_WINDOW);


  TGtkAccessibleState = (_STATE_BUSY,_STATE_CHECKED,_STATE_DISABLED,
    _STATE_EXPANDED,_STATE_HIDDEN,_STATE_INVALID,
    _STATE_PRESSED,_STATE_SELECTED);


const
  _VALUE_UNDEFINED = -(1);  

type
  TGtkAccessibleProperty = (_PROPERTY_AUTOCOMPLETE,_PROPERTY_DESCRIPTION,
    _PROPERTY_HAS_POPUP,_PROPERTY_KEY_SHORTCUTS,
    _PROPERTY_LABEL,_PROPERTY_LEVEL,_PROPERTY_MODAL,
    _PROPERTY_MULTI_LINE,_PROPERTY_MULTI_SELECTABLE,
    _PROPERTY_ORIENTATION,_PROPERTY_PLACEHOLDER,
    _PROPERTY_READ_ONLY,_PROPERTY_REQUIRED,
    _PROPERTY_ROLE_DESCRIPTION,_PROPERTY_SORT,
    _PROPERTY_VALUE_MAX,_PROPERTY_VALUE_MIN,
    _PROPERTY_VALUE_NOW,_PROPERTY_VALUE_TEXT
    );


  TGtkAccessibleRelation = (_RELATION_ACTIVE_DESCENDANT,_RELATION_COL_COUNT,
    _RELATION_COL_INDEX,_RELATION_COL_INDEX_TEXT,
    _RELATION_COL_SPAN,_RELATION_CONTROLS,_RELATION_DESCRIBED_BY,
    _RELATION_DETAILS,_RELATION_ERROR_MESSAGE,
    _RELATION_FLOW_TO,_RELATION_LABELLED_BY,
    _RELATION_OWNS,_RELATION_POS_IN_SET,_RELATION_ROW_COUNT,
    _RELATION_ROW_INDEX,_RELATION_ROW_INDEX_TEXT,
    _RELATION_ROW_SPAN,_RELATION_SET_SIZE);


  TGtkAccessibleTristate = (_TRISTATE_FALSE,_TRISTATE_TRUE,_TRISTATE_MIXED
    );


  TGtkAccessibleInvalidState = (_INVALID_FALSE,_INVALID_TRUE,_INVALID_GRAMMAR,
    _INVALID_SPELLING);


  TGtkAccessibleAutocomplete = (_AUTOCOMPLETE_NONE,_AUTOCOMPLETE_INLINE,
    _AUTOCOMPLETE_LIST,_AUTOCOMPLETE_BOTH);


  TGtkAccessibleSort = (_SORT_NONE,_SORT_ASCENDING,_SORT_DESCENDING,
    _SORT_OTHER);
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkshortcutssection.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkshortcutssection.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkshortcutssection.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_SHORTCUTS_SECTION_H__}
//// {$define __GTK_SHORTCUTS_SECTION_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdk.h>}

function GTK_TYPE_SHORTCUTS_SECTION : longint; { return type might be wrong }

function GTK_SHORTCUTS_SECTION(obj : longint) : longint;

function GTK_IS_SHORTCUTS_SECTION(obj : longint) : longint;

type
  T_GtkShortcutsSection = TGtkShortcutsSection;
  T_GtkShortcutsSectionClass = TGtkShortcutsSectionClass;

function gtk_shortcuts_section_get_type:TGType;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkgesturedrag.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkgesturedrag.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkgesturedrag.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pdouble  = ^double;
PGtkGestureDrag  = ^GtkGestureDrag;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_GESTURE_DRAG_H__}
//// {$define __GTK_GESTURE_DRAG_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkwidget.h>}
//// {$include <gtk/gtkgesturesingle.h>}

function GTK_TYPE_GESTURE_DRAG : longint; { return type might be wrong }

function GTK_GESTURE_DRAG(o : longint) : longint;

function GTK_GESTURE_DRAG_CLASS(k : longint) : longint;

function GTK_IS_GESTURE_DRAG(o : longint) : longint;

function GTK_IS_GESTURE_DRAG_CLASS(k : longint) : longint;

function GTK_GESTURE_DRAG_GET_CLASS(o : longint) : longint;

type
  T_GtkGestureDrag = TGtkGestureDrag;
  T_GtkGestureDragClass = TGtkGestureDragClass;

function gtk_gesture_drag_get_type:TGType;cdecl;external;
function gtk_gesture_drag_new:^TGtkGesture;cdecl;external;
function gtk_gesture_drag_get_start_point(gesture:PTGtkGestureDrag; x:PTdouble; y:PTdouble):Tgboolean;cdecl;external;
function gtk_gesture_drag_get_offset(gesture:PTGtkGestureDrag; x:PTdouble; y:PTdouble):Tgboolean;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkapplication.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkapplication.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkapplication.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGMenuModel  = ^GMenuModel;
PGtkApplication  = ^GtkApplication;
PGtkWindow  = ^GtkWindow;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_APPLICATION_H__}
//// {$define __GTK_APPLICATION_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkwidget.h>}
//// {$include <gio/gio.h>}

function GTK_TYPE_APPLICATION : longint; { return type might be wrong }

function GTK_APPLICATION(obj : longint) : longint;

function GTK_APPLICATION_CLASS(klass : longint) : longint;

function GTK_IS_APPLICATION(obj : longint) : longint;

function GTK_IS_APPLICATION_CLASS(klass : longint) : longint;

function GTK_APPLICATION_GET_CLASS(obj : longint) : longint;

type
  T_GtkApplication = TGtkApplication;
  T_GtkApplicationClass = TGtkApplicationClass;
  T_GtkApplication = record
      parent_instance : TGApplication;
    end;




  T_GtkApplicationClass = record
      parent_class : TGApplicationClass;
      window_added : procedure (application:PTGtkApplication; window:PTGtkWindow);cdecl;
      window_removed : procedure (application:PTGtkApplication; window:PTGtkWindow);cdecl;
      padding : array[0..7] of Tgpointer;
    end;


function gtk_application_get_type:TGType;cdecl;external;
function gtk_application_new(application_id:Pchar; flags:TGApplicationFlags):^TGtkApplication;cdecl;external;
procedure gtk_application_add_window(application:PTGtkApplication; window:PTGtkWindow);cdecl;external;
procedure gtk_application_remove_window(application:PTGtkApplication; window:PTGtkWindow);cdecl;external;
function gtk_application_get_windows(application:PTGtkApplication):^TGList;cdecl;external;
function gtk_application_get_menubar(application:PTGtkApplication):^TGMenuModel;cdecl;external;
procedure gtk_application_set_menubar(application:PTGtkApplication; menubar:PTGMenuModel);cdecl;external;
type
  TGtkApplicationInhibitFlags = (GTK_APPLICATION_INHIBIT_LOGOUT := 1 shl 0,GTK_APPLICATION_INHIBIT_SWITCH := 1 shl 1,
    GTK_APPLICATION_INHIBIT_SUSPEND := 1 shl 2,
    GTK_APPLICATION_INHIBIT_IDLE := 1 shl 3);

function gtk_application_inhibit(application:PTGtkApplication; window:PTGtkWindow; flags:TGtkApplicationInhibitFlags; reason:Pchar):Tguint;cdecl;external;
procedure gtk_application_uninhibit(application:PTGtkApplication; cookie:Tguint);cdecl;external;
function gtk_application_get_window_by_id(application:PTGtkApplication; id:Tguint):^TGtkWindow;cdecl;external;
function gtk_application_get_active_window(application:PTGtkApplication):^TGtkWindow;cdecl;external;
function gtk_application_list_action_descriptions(application:PTGtkApplication):^^char;cdecl;external;
function gtk_application_get_accels_for_action(application:PTGtkApplication; detailed_action_name:Pchar):^^char;cdecl;external;
function gtk_application_get_actions_for_accel(application:PTGtkApplication; accel:Pchar):^^char;cdecl;external;
procedure gtk_application_set_accels_for_action(application:PTGtkApplication; detailed_action_name:Pchar; accels:PPchar);cdecl;external;
function gtk_application_get_menu_by_id(application:PTGtkApplication; id:Pchar):^TGMenu;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkoverlay.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkoverlay.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkoverlay.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGtkOverlay  = ^GtkOverlay;
PGtkWidget  = ^GtkWidget;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_OVERLAY_H__}
//// {$define __GTK_OVERLAY_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkwidget.h>}

function GTK_TYPE_OVERLAY : longint; { return type might be wrong }

function GTK_OVERLAY(obj : longint) : longint;

function GTK_IS_OVERLAY(obj : longint) : longint;

type
  T_GtkOverlay = TGtkOverlay;

function gtk_overlay_get_type:TGType;cdecl;external;
function gtk_overlay_new:^TGtkWidget;cdecl;external;
procedure gtk_overlay_add_overlay(overlay:PTGtkOverlay; widget:PTGtkWidget);cdecl;external;
procedure gtk_overlay_remove_overlay(overlay:PTGtkOverlay; widget:PTGtkWidget);cdecl;external;
procedure gtk_overlay_set_child(overlay:PTGtkOverlay; child:PTGtkWidget);cdecl;external;
function gtk_overlay_get_child(overlay:PTGtkOverlay):^TGtkWidget;cdecl;external;
function gtk_overlay_get_measure_overlay(overlay:PTGtkOverlay; widget:PTGtkWidget):Tgboolean;cdecl;external;
procedure gtk_overlay_set_measure_overlay(overlay:PTGtkOverlay; widget:PTGtkWidget; measure:Tgboolean);cdecl;external;
function gtk_overlay_get_clip_overlay(overlay:PTGtkOverlay; widget:PTGtkWidget):Tgboolean;cdecl;external;
procedure gtk_overlay_set_clip_overlay(overlay:PTGtkOverlay; widget:PTGtkWidget; clip_overlay:Tgboolean);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkgesturesingle.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkgesturesingle.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkgesturesingle.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGtkGestureSingle  = ^GtkGestureSingle;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_GESTURE_SINGLE_H__}
//// {$define __GTK_GESTURE_SINGLE_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkgesture.h>}

function GTK_TYPE_GESTURE_SINGLE : longint; { return type might be wrong }

function GTK_GESTURE_SINGLE(o : longint) : longint;

function GTK_GESTURE_SINGLE_CLASS(k : longint) : longint;

function GTK_IS_GESTURE_SINGLE(o : longint) : longint;

function GTK_IS_GESTURE_SINGLE_CLASS(k : longint) : longint;

function GTK_GESTURE_SINGLE_GET_CLASS(o : longint) : longint;

type
  T_GtkGestureSingle = TGtkGestureSingle;
  T_GtkGestureSingleClass = TGtkGestureSingleClass;

function gtk_gesture_single_get_type:TGType;cdecl;external;
function gtk_gesture_single_get_touch_only(gesture:PTGtkGestureSingle):Tgboolean;cdecl;external;
procedure gtk_gesture_single_set_touch_only(gesture:PTGtkGestureSingle; touch_only:Tgboolean);cdecl;external;
function gtk_gesture_single_get_exclusive(gesture:PTGtkGestureSingle):Tgboolean;cdecl;external;
procedure gtk_gesture_single_set_exclusive(gesture:PTGtkGestureSingle; exclusive:Tgboolean);cdecl;external;
function gtk_gesture_single_get_button(gesture:PTGtkGestureSingle):Tguint;cdecl;external;
procedure gtk_gesture_single_set_button(gesture:PTGtkGestureSingle; button:Tguint);cdecl;external;
function gtk_gesture_single_get_current_button(gesture:PTGtkGestureSingle):Tguint;cdecl;external;
function gtk_gesture_single_get_current_sequence(gesture:PTGtkGestureSingle):^TGdkEventSequence;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkmultiselection.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkmultiselection.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkmultiselection.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGListModel  = ^GListModel;
PGtkMultiSelection  = ^GtkMultiSelection;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_MULTI_SELECTION_H__}
//// {$define __GTK_MULTI_SELECTION_H__}
//// {$include <gtk/gtktypes.h>}
//// {$include <gtk/gtkselectionmodel.h>}

function GTK_TYPE_MULTI_SELECTION : longint; { return type might be wrong }

function gtk_multi_selection_new(model:PTGListModel):^TGtkMultiSelection;cdecl;external;
function gtk_multi_selection_get_model(self:PTGtkMultiSelection):^TGListModel;cdecl;external;
procedure gtk_multi_selection_set_model(self:PTGtkMultiSelection; model:PTGListModel);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkstringsorter.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkstringsorter.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkstringsorter.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGtkExpression  = ^GtkExpression;
PGtkStringSorter  = ^GtkStringSorter;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_STRING_SORTER_H__}
//// {$define __GTK_STRING_SORTER_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkexpression.h>}
//// {$include <gtk/gtksorter.h>}

function GTK_TYPE_STRING_SORTER : longint; { return type might be wrong }

function gtk_string_sorter_new(expression:PTGtkExpression):^TGtkStringSorter;cdecl;external;
function gtk_string_sorter_get_expression(self:PTGtkStringSorter):^TGtkExpression;cdecl;external;
procedure gtk_string_sorter_set_expression(self:PTGtkStringSorter; expression:PTGtkExpression);cdecl;external;
function gtk_string_sorter_get_ignore_case(self:PTGtkStringSorter):Tgboolean;cdecl;external;
procedure gtk_string_sorter_set_ignore_case(self:PTGtkStringSorter; ignore_case:Tgboolean);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkgrid.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkgrid.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkgrid.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGtkGrid  = ^GtkGrid;
PGtkWidget  = ^GtkWidget;
Plongint  = ^longint;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_GRID_H__}
//// {$define __GTK_GRID_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkwidget.h>}

function GTK_TYPE_GRID : longint; { return type might be wrong }

function GTK_GRID(obj : longint) : longint;

function GTK_GRID_CLASS(klass : longint) : longint;

function GTK_IS_GRID(obj : longint) : longint;

function GTK_IS_GRID_CLASS(klass : longint) : longint;

function GTK_GRID_GET_CLASS(obj : longint) : longint;

type
  T_GtkGrid = TGtkGrid;
  T_GtkGridClass = TGtkGridClass;

  T_GtkGrid = record
      parent_instance : TGtkWidget;
    end;



  T_GtkGridClass = record
      parent_class : TGtkWidgetClass;
      padding : array[0..7] of Tgpointer;
    end;


function gtk_grid_get_type:TGType;cdecl;external;
function gtk_grid_new:^TGtkWidget;cdecl;external;
procedure gtk_grid_attach(grid:PTGtkGrid; child:PTGtkWidget; column:longint; row:longint; width:longint; 
            height:longint);cdecl;external;
procedure gtk_grid_attach_next_to(grid:PTGtkGrid; child:PTGtkWidget; sibling:PTGtkWidget; side:TGtkPositionType; width:longint; 
            height:longint);cdecl;external;
function gtk_grid_get_child_at(grid:PTGtkGrid; column:longint; row:longint):^TGtkWidget;cdecl;external;
procedure gtk_grid_remove(grid:PTGtkGrid; child:PTGtkWidget);cdecl;external;
procedure gtk_grid_insert_row(grid:PTGtkGrid; position:longint);cdecl;external;
procedure gtk_grid_insert_column(grid:PTGtkGrid; position:longint);cdecl;external;
procedure gtk_grid_remove_row(grid:PTGtkGrid; position:longint);cdecl;external;
procedure gtk_grid_remove_column(grid:PTGtkGrid; position:longint);cdecl;external;
procedure gtk_grid_insert_next_to(grid:PTGtkGrid; sibling:PTGtkWidget; side:TGtkPositionType);cdecl;external;
procedure gtk_grid_set_row_homogeneous(grid:PTGtkGrid; homogeneous:Tgboolean);cdecl;external;
function gtk_grid_get_row_homogeneous(grid:PTGtkGrid):Tgboolean;cdecl;external;
procedure gtk_grid_set_row_spacing(grid:PTGtkGrid; spacing:Tguint);cdecl;external;
function gtk_grid_get_row_spacing(grid:PTGtkGrid):Tguint;cdecl;external;
procedure gtk_grid_set_column_homogeneous(grid:PTGtkGrid; homogeneous:Tgboolean);cdecl;external;
function gtk_grid_get_column_homogeneous(grid:PTGtkGrid):Tgboolean;cdecl;external;
procedure gtk_grid_set_column_spacing(grid:PTGtkGrid; spacing:Tguint);cdecl;external;
function gtk_grid_get_column_spacing(grid:PTGtkGrid):Tguint;cdecl;external;
procedure gtk_grid_set_row_baseline_position(grid:PTGtkGrid; row:longint; pos:TGtkBaselinePosition);cdecl;external;
function gtk_grid_get_row_baseline_position(grid:PTGtkGrid; row:longint):TGtkBaselinePosition;cdecl;external;
procedure gtk_grid_set_baseline_row(grid:PTGtkGrid; row:longint);cdecl;external;
function gtk_grid_get_baseline_row(grid:PTGtkGrid):longint;cdecl;external;
procedure gtk_grid_query_child(grid:PTGtkGrid; child:PTGtkWidget; column:Plongint; row:Plongint; width:Plongint; 
            height:Plongint);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkbinlayout.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkbinlayout.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkbinlayout.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$include <gtk/gtklayoutmanager.h>}

function GTK_TYPE_BIN_LAYOUT : longint; { return type might be wrong }

function gtk_bin_layout_new:^TGtkLayoutManager;cdecl;external;

// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkversion.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkversion.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkversion.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$ifndef __GTK_VERSION_H__}
//// {$define __GTK_VERSION_H__}
//// {$include <gdk/gdk.h>}


const
  GTK_MAJOR_VERSION = 4;  

  GTK_MINOR_VERSION = 8;  

  GTK_MICRO_VERSION = 1;  

  GTK_BINARY_AGE = 801;  

  GTK_INTERFACE_AGE = 1;  


function gtk_get_major_version:Tguint;cdecl;external;
function gtk_get_minor_version:Tguint;cdecl;external;
function gtk_get_micro_version:Tguint;cdecl;external;
function gtk_get_binary_age:Tguint;cdecl;external;
function gtk_get_interface_age:Tguint;cdecl;external;
function gtk_check_version(required_major:Tguint; required_minor:Tguint; required_micro:Tguint):^char;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkshortcutaction.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkshortcutaction.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkshortcutaction.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGString  = ^GString;
PGtkNamedAction  = ^GtkNamedAction;
PGtkShortcutAction  = ^GtkShortcutAction;
PGtkSignalAction  = ^GtkSignalAction;
PGtkWidget  = ^GtkWidget;
PGVariant  = ^GVariant;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_SHORTCUT_ACTION_H__}
//// {$define __GTK_SHORTCUT_ACTION_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtktypes.h>}

function GTK_TYPE_SHORTCUT_ACTION : longint; { return type might be wrong }


type

  TGtkShortcutFunc = function (widget:PTGtkWidget; args:PTGVariant; user_data:Tgpointer):Tgboolean;cdecl;


  TGtkShortcutActionFlags = (GTK_SHORTCUT_ACTION_EXCLUSIVE := 1 shl 0);

function gtk_shortcut_action_to_string(self:PTGtkShortcutAction):^char;cdecl;external;
function gtk_shortcut_action_parse_string(_string:Pchar):^TGtkShortcutAction;cdecl;external;
procedure gtk_shortcut_action_print(self:PTGtkShortcutAction; _string:PTGString);cdecl;external;
function gtk_shortcut_action_activate(self:PTGtkShortcutAction; flags:TGtkShortcutActionFlags; widget:PTGtkWidget; args:PTGVariant):Tgboolean;cdecl;external;
function GTK_TYPE_NOTHING_ACTION : longint; { return type might be wrong }


function gtk_nothing_action_get:^TGtkShortcutAction;cdecl;external;
function GTK_TYPE_CALLBACK_ACTION : longint; { return type might be wrong }


function gtk_callback_action_new(callback:TGtkShortcutFunc; data:Tgpointer; destroy:TGDestroyNotify):^TGtkShortcutAction;cdecl;external;
function GTK_TYPE_MNEMONIC_ACTION : longint; { return type might be wrong }


function gtk_mnemonic_action_get:^TGtkShortcutAction;cdecl;external;
function GTK_TYPE_ACTIVATE_ACTION : longint; { return type might be wrong }


function gtk_activate_action_get:^TGtkShortcutAction;cdecl;external;
function GTK_TYPE_SIGNAL_ACTION : longint; { return type might be wrong }


function gtk_signal_action_new(signal_name:Pchar):^TGtkShortcutAction;cdecl;external;
function gtk_signal_action_get_signal_name(self:PTGtkSignalAction):^char;cdecl;external;
function GTK_TYPE_NAMED_ACTION : longint; { return type might be wrong }


function gtk_named_action_new(name:Pchar):^TGtkShortcutAction;cdecl;external;
function gtk_named_action_get_action_name(self:PTGtkNamedAction):^char;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkslicelistmodel.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkslicelistmodel.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkslicelistmodel.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGListModel  = ^GListModel;
PGtkSliceListModel  = ^GtkSliceListModel;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_SLICE_LIST_MODEL_H__}
//// {$define __GTK_SLICE_LIST_MODEL_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gio/gio.h>}
//// {$include <gtk/gtkwidget.h>}

function GTK_TYPE_SLICE_LIST_MODEL : longint; { return type might be wrong }

function gtk_slice_list_model_new(model:PTGListModel; offset:Tguint; size:Tguint):^TGtkSliceListModel;cdecl;external;
procedure gtk_slice_list_model_set_model(self:PTGtkSliceListModel; model:PTGListModel);cdecl;external;
function gtk_slice_list_model_get_model(self:PTGtkSliceListModel):^TGListModel;cdecl;external;
procedure gtk_slice_list_model_set_offset(self:PTGtkSliceListModel; offset:Tguint);cdecl;external;
function gtk_slice_list_model_get_offset(self:PTGtkSliceListModel):Tguint;cdecl;external;
procedure gtk_slice_list_model_set_size(self:PTGtkSliceListModel; size:Tguint);cdecl;external;
function gtk_slice_list_model_get_size(self:PTGtkSliceListModel):Tguint;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtktextbuffer.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtktextbuffer.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtktextbuffer.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGdkClipboard  = ^GdkClipboard;
PGdkPaintable  = ^GdkPaintable;
PGtkTextBuffer  = ^GtkTextBuffer;
PGtkTextChildAnchor  = ^GtkTextChildAnchor;
PGtkTextIter  = ^GtkTextIter;
PGtkTextMark  = ^GtkTextMark;
PGtkTextTag  = ^GtkTextTag;
PGtkTextTagTable  = ^GtkTextTagTable;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef __GTK_TEXT_BUFFER_H__}
//// {$define __GTK_TEXT_BUFFER_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkwidget.h>}
//// {$include <gtk/gtktexttagtable.h>}
//// {$include <gtk/gtktextiter.h>}
//// {$include <gtk/gtktextmark.h>}
//// {$include <gtk/gtktextchild.h>}

function GTK_TYPE_TEXT_BUFFER : longint; { return type might be wrong }

function GTK_TEXT_BUFFER(obj : longint) : longint;

function GTK_TEXT_BUFFER_CLASS(klass : longint) : longint;

function GTK_IS_TEXT_BUFFER(obj : longint) : longint;

function GTK_IS_TEXT_BUFFER_CLASS(klass : longint) : longint;

function GTK_TEXT_BUFFER_GET_CLASS(obj : longint) : longint;

type
  T_GtkTextBufferPrivate = TGtkTextBufferPrivate;
  T_GtkTextBufferClass = TGtkTextBufferClass;
  T_GtkTextBuffer = record
      parent_instance : TGObject;
      priv : ^TGtkTextBufferPrivate;
    end;




  T_GtkTextBufferClass = record
      parent_class : TGObjectClass;
      insert_text : procedure (buffer:PTGtkTextBuffer; pos:PTGtkTextIter; new_text:Pchar; new_text_length:longint);cdecl;
      insert_paintable : procedure (buffer:PTGtkTextBuffer; iter:PTGtkTextIter; paintable:PTGdkPaintable);cdecl;
      insert_child_anchor : procedure (buffer:PTGtkTextBuffer; iter:PTGtkTextIter; anchor:PTGtkTextChildAnchor);cdecl;
      delete_range : procedure (buffer:PTGtkTextBuffer; start:PTGtkTextIter; end:PTGtkTextIter);cdecl;
      changed : procedure (buffer:PTGtkTextBuffer);cdecl;
      modified_changed : procedure (buffer:PTGtkTextBuffer);cdecl;
      mark_set : procedure (buffer:PTGtkTextBuffer; location:PTGtkTextIter; mark:PTGtkTextMark);cdecl;
      mark_deleted : procedure (buffer:PTGtkTextBuffer; mark:PTGtkTextMark);cdecl;
      apply_tag : procedure (buffer:PTGtkTextBuffer; tag:PTGtkTextTag; start:PTGtkTextIter; end:PTGtkTextIter);cdecl;
      remove_tag : procedure (buffer:PTGtkTextBuffer; tag:PTGtkTextTag; start:PTGtkTextIter; end:PTGtkTextIter);cdecl;
      begin_user_action : procedure (buffer:PTGtkTextBuffer);cdecl;
      end_user_action : procedure (buffer:PTGtkTextBuffer);cdecl;
      paste_done : procedure (buffer:PTGtkTextBuffer; clipboard:PTGdkClipboard);cdecl;
      undo : procedure (buffer:PTGtkTextBuffer);cdecl;
      redo : procedure (buffer:PTGtkTextBuffer);cdecl;
      _gtk_reserved1 : procedure ;cdecl;
      _gtk_reserved2 : procedure ;cdecl;
      _gtk_reserved3 : procedure ;cdecl;
      _gtk_reserved4 : procedure ;cdecl;
    end;


function gtk_text_buffer_get_type:TGType;cdecl;external;

function gtk_text_buffer_new(table:PTGtkTextTagTable):^TGtkTextBuffer;cdecl;external;
function gtk_text_buffer_get_line_count(buffer:PTGtkTextBuffer):longint;cdecl;external;
function gtk_text_buffer_get_char_count(buffer:PTGtkTextBuffer):longint;cdecl;external;
function gtk_text_buffer_get_tag_table(buffer:PTGtkTextBuffer):^TGtkTextTagTable;cdecl;external;

procedure gtk_text_buffer_set_text(buffer:PTGtkTextBuffer; text:Pchar; len:longint);cdecl;external;

procedure gtk_text_buffer_insert(buffer:PTGtkTextBuffer; iter:PTGtkTextIter; text:Pchar; len:longint);cdecl;external;
procedure gtk_text_buffer_insert_at_cursor(buffer:PTGtkTextBuffer; text:Pchar; len:longint);cdecl;external;
function gtk_text_buffer_insert_interactive(buffer:PTGtkTextBuffer; iter:PTGtkTextIter; text:Pchar; len:longint; default_editable:Tgboolean):Tgboolean;cdecl;external;
function gtk_text_buffer_insert_interactive_at_cursor(buffer:PTGtkTextBuffer; text:Pchar; len:longint; default_editable:Tgboolean):Tgboolean;cdecl;external;
procedure gtk_text_buffer_insert_range(buffer:PTGtkTextBuffer; iter:PTGtkTextIter; start:PTGtkTextIter; end:PTGtkTextIter);cdecl;external;
function gtk_text_buffer_insert_range_interactive(buffer:PTGtkTextBuffer; iter:PTGtkTextIter; start:PTGtkTextIter; end:PTGtkTextIter; default_editable:Tgboolean):Tgboolean;cdecl;external;
procedure gtk_text_buffer_insert_with_tags(buffer:PTGtkTextBuffer; iter:PTGtkTextIter; text:Pchar; len:longint; first_tag:PTGtkTextTag; 
            args:array of const);cdecl;external;
procedure gtk_text_buffer_insert_with_tags(buffer:PTGtkTextBuffer; iter:PTGtkTextIter; text:Pchar; len:longint; first_tag:PTGtkTextTag);cdecl;external;
procedure gtk_text_buffer_insert_with_tags_by_name(buffer:PTGtkTextBuffer; iter:PTGtkTextIter; text:Pchar; len:longint; first_tag_name:Pchar; 
            args:array of const);cdecl;external;
procedure gtk_text_buffer_insert_with_tags_by_name(buffer:PTGtkTextBuffer; iter:PTGtkTextIter; text:Pchar; len:longint; first_tag_name:Pchar);cdecl;external;
procedure gtk_text_buffer_insert_markup(buffer:PTGtkTextBuffer; iter:PTGtkTextIter; markup:Pchar; len:longint);cdecl;external;

procedure gtk_text_buffer_delete(buffer:PTGtkTextBuffer; start:PTGtkTextIter; end:PTGtkTextIter);cdecl;external;
function gtk_text_buffer_delete_interactive(buffer:PTGtkTextBuffer; start_iter:PTGtkTextIter; end_iter:PTGtkTextIter; default_editable:Tgboolean):Tgboolean;cdecl;external;
function gtk_text_buffer_backspace(buffer:PTGtkTextBuffer; iter:PTGtkTextIter; interactive:Tgboolean; default_editable:Tgboolean):Tgboolean;cdecl;external;

function gtk_text_buffer_get_text(buffer:PTGtkTextBuffer; start:PTGtkTextIter; end:PTGtkTextIter; include_hidden_chars:Tgboolean):^char;cdecl;external;
function gtk_text_buffer_get_slice(buffer:PTGtkTextBuffer; start:PTGtkTextIter; end:PTGtkTextIter; include_hidden_chars:Tgboolean):^char;cdecl;external;

procedure gtk_text_buffer_insert_paintable(buffer:PTGtkTextBuffer; iter:PTGtkTextIter; paintable:PTGdkPaintable);cdecl;external;

procedure gtk_text_buffer_insert_child_anchor(buffer:PTGtkTextBuffer; iter:PTGtkTextIter; anchor:PTGtkTextChildAnchor);cdecl;external;

function gtk_text_buffer_create_child_anchor(buffer:PTGtkTextBuffer; iter:PTGtkTextIter):^TGtkTextChildAnchor;cdecl;external;

procedure gtk_text_buffer_add_mark(buffer:PTGtkTextBuffer; mark:PTGtkTextMark; where:PTGtkTextIter);cdecl;external;
function gtk_text_buffer_create_mark(buffer:PTGtkTextBuffer; mark_name:Pchar; where:PTGtkTextIter; left_gravity:Tgboolean):^TGtkTextMark;cdecl;external;
procedure gtk_text_buffer_move_mark(buffer:PTGtkTextBuffer; mark:PTGtkTextMark; where:PTGtkTextIter);cdecl;external;
procedure gtk_text_buffer_delete_mark(buffer:PTGtkTextBuffer; mark:PTGtkTextMark);cdecl;external;
function gtk_text_buffer_get_mark(buffer:PTGtkTextBuffer; name:Pchar):^TGtkTextMark;cdecl;external;
procedure gtk_text_buffer_move_mark_by_name(buffer:PTGtkTextBuffer; name:Pchar; where:PTGtkTextIter);cdecl;external;
procedure gtk_text_buffer_delete_mark_by_name(buffer:PTGtkTextBuffer; name:Pchar);cdecl;external;
function gtk_text_buffer_get_insert(buffer:PTGtkTextBuffer):^TGtkTextMark;cdecl;external;
function gtk_text_buffer_get_selection_bound(buffer:PTGtkTextBuffer):^TGtkTextMark;cdecl;external;

procedure gtk_text_buffer_place_cursor(buffer:PTGtkTextBuffer; where:PTGtkTextIter);cdecl;external;
procedure gtk_text_buffer_select_range(buffer:PTGtkTextBuffer; ins:PTGtkTextIter; bound:PTGtkTextIter);cdecl;external;

procedure gtk_text_buffer_apply_tag(buffer:PTGtkTextBuffer; tag:PTGtkTextTag; start:PTGtkTextIter; end:PTGtkTextIter);cdecl;external;
procedure gtk_text_buffer_remove_tag(buffer:PTGtkTextBuffer; tag:PTGtkTextTag; start:PTGtkTextIter; end:PTGtkTextIter);cdecl;external;
procedure gtk_text_buffer_apply_tag_by_name(buffer:PTGtkTextBuffer; name:Pchar; start:PTGtkTextIter; end:PTGtkTextIter);cdecl;external;
procedure gtk_text_buffer_remove_tag_by_name(buffer:PTGtkTextBuffer; name:Pchar; start:PTGtkTextIter; end:PTGtkTextIter);cdecl;external;
procedure gtk_text_buffer_remove_all_tags(buffer:PTGtkTextBuffer; start:PTGtkTextIter; end:PTGtkTextIter);cdecl;external;

function gtk_text_buffer_create_tag(buffer:PTGtkTextBuffer; tag_name:Pchar; first_property_name:Pchar; args:array of const):^TGtkTextTag;cdecl;external;
function gtk_text_buffer_create_tag(buffer:PTGtkTextBuffer; tag_name:Pchar; first_property_name:Pchar):^TGtkTextTag;cdecl;external;

function gtk_text_buffer_get_iter_at_line_offset(buffer:PTGtkTextBuffer; iter:PTGtkTextIter; line_number:longint; char_offset:longint):Tgboolean;cdecl;external;
function gtk_text_buffer_get_iter_at_line_index(buffer:PTGtkTextBuffer; iter:PTGtkTextIter; line_number:longint; byte_index:longint):Tgboolean;cdecl;external;
procedure gtk_text_buffer_get_iter_at_offset(buffer:PTGtkTextBuffer; iter:PTGtkTextIter; char_offset:longint);cdecl;external;
function gtk_text_buffer_get_iter_at_line(buffer:PTGtkTextBuffer; iter:PTGtkTextIter; line_number:longint):Tgboolean;cdecl;external;
procedure gtk_text_buffer_get_start_iter(buffer:PTGtkTextBuffer; iter:PTGtkTextIter);cdecl;external;
procedure gtk_text_buffer_get_end_iter(buffer:PTGtkTextBuffer; iter:PTGtkTextIter);cdecl;external;
procedure gtk_text_buffer_get_bounds(buffer:PTGtkTextBuffer; start:PTGtkTextIter; end:PTGtkTextIter);cdecl;external;
procedure gtk_text_buffer_get_iter_at_mark(buffer:PTGtkTextBuffer; iter:PTGtkTextIter; mark:PTGtkTextMark);cdecl;external;
procedure gtk_text_buffer_get_iter_at_child_anchor(buffer:PTGtkTextBuffer; iter:PTGtkTextIter; anchor:PTGtkTextChildAnchor);cdecl;external;


function gtk_text_buffer_get_modified(buffer:PTGtkTextBuffer):Tgboolean;cdecl;external;
procedure gtk_text_buffer_set_modified(buffer:PTGtkTextBuffer; setting:Tgboolean);cdecl;external;
function gtk_text_buffer_get_has_selection(buffer:PTGtkTextBuffer):Tgboolean;cdecl;external;
procedure gtk_text_buffer_add_selection_clipboard(buffer:PTGtkTextBuffer; clipboard:PTGdkClipboard);cdecl;external;
procedure gtk_text_buffer_remove_selection_clipboard(buffer:PTGtkTextBuffer; clipboard:PTGdkClipboard);cdecl;external;
procedure gtk_text_buffer_cut_clipboard(buffer:PTGtkTextBuffer; clipboard:PTGdkClipboard; default_editable:Tgboolean);cdecl;external;
procedure gtk_text_buffer_copy_clipboard(buffer:PTGtkTextBuffer; clipboard:PTGdkClipboard);cdecl;external;
procedure gtk_text_buffer_paste_clipboard(buffer:PTGtkTextBuffer; clipboard:PTGdkClipboard; override_location:PTGtkTextIter; default_editable:Tgboolean);cdecl;external;
function gtk_text_buffer_get_selection_bounds(buffer:PTGtkTextBuffer; start:PTGtkTextIter; end:PTGtkTextIter):Tgboolean;cdecl;external;
function gtk_text_buffer_delete_selection(buffer:PTGtkTextBuffer; interactive:Tgboolean; default_editable:Tgboolean):Tgboolean;cdecl;external;
function gtk_text_buffer_get_selection_content(buffer:PTGtkTextBuffer):^TGdkContentProvider;cdecl;external;
function gtk_text_buffer_get_can_undo(buffer:PTGtkTextBuffer):Tgboolean;cdecl;external;
function gtk_text_buffer_get_can_redo(buffer:PTGtkTextBuffer):Tgboolean;cdecl;external;
function gtk_text_buffer_get_enable_undo(buffer:PTGtkTextBuffer):Tgboolean;cdecl;external;
procedure gtk_text_buffer_set_enable_undo(buffer:PTGtkTextBuffer; enable_undo:Tgboolean);cdecl;external;
function gtk_text_buffer_get_max_undo_levels(buffer:PTGtkTextBuffer):Tguint;cdecl;external;
procedure gtk_text_buffer_set_max_undo_levels(buffer:PTGtkTextBuffer; max_undo_levels:Tguint);cdecl;external;
procedure gtk_text_buffer_undo(buffer:PTGtkTextBuffer);cdecl;external;
procedure gtk_text_buffer_redo(buffer:PTGtkTextBuffer);cdecl;external;
procedure gtk_text_buffer_begin_irreversible_action(buffer:PTGtkTextBuffer);cdecl;external;
procedure gtk_text_buffer_end_irreversible_action(buffer:PTGtkTextBuffer);cdecl;external;
procedure gtk_text_buffer_begin_user_action(buffer:PTGtkTextBuffer);cdecl;external;
procedure gtk_text_buffer_end_user_action(buffer:PTGtkTextBuffer);cdecl;external;
//// {$endif}

// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkexpression.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkexpression.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkexpression.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGClosure  = ^GClosure;
PGObject  = ^GObject;
PGParamSpec  = ^GParamSpec;
PGtkExpression  = ^GtkExpression;
PGtkExpressionWatch  = ^GtkExpressionWatch;
PGValue  = ^GValue;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_EXPRESSION_H__}
//// {$define __GTK_EXPRESSION_H__}
//// {$include <gtk/gtktypes.h>}

function GTK_TYPE_EXPRESSION : longint; { return type might be wrong }

function GTK_TYPE_EXPRESSION_WATCH : longint; { return type might be wrong }

function GTK_IS_EXPRESSION(obj : longint) : longint;

function GTK_EXPRESSION(obj : longint) : longint;

type
  T_GtkExpression = TGtkExpression;
  T_GtkExpressionWatch = TGtkExpressionWatch;


  TGtkExpressionNotify = procedure (user_data:Tgpointer);cdecl;

function gtk_expression_get_type:TGType;cdecl;external;
function gtk_expression_ref(self:PTGtkExpression):^TGtkExpression;cdecl;external;
procedure gtk_expression_unref(self:PTGtkExpression);cdecl;external;
function gtk_expression_get_value_type(self:PTGtkExpression):TGType;cdecl;external;
function gtk_expression_is_static(self:PTGtkExpression):Tgboolean;cdecl;external;
function gtk_expression_evaluate(self:PTGtkExpression; this_:Tgpointer; value:PTGValue):Tgboolean;cdecl;external;
function gtk_expression_watch(self:PTGtkExpression; this_:Tgpointer; notify:TGtkExpressionNotify; user_data:Tgpointer; user_destroy:TGDestroyNotify):^TGtkExpressionWatch;cdecl;external;
function gtk_expression_bind(self:PTGtkExpression; target:Tgpointer; _property:Pchar; this_:Tgpointer):^TGtkExpressionWatch;cdecl;external;
function gtk_expression_watch_get_type:TGType;cdecl;external;
function gtk_expression_watch_ref(watch:PTGtkExpressionWatch):^TGtkExpressionWatch;cdecl;external;
procedure gtk_expression_watch_unref(watch:PTGtkExpressionWatch);cdecl;external;
function gtk_expression_watch_evaluate(watch:PTGtkExpressionWatch; value:PTGValue):Tgboolean;cdecl;external;
procedure gtk_expression_watch_unwatch(watch:PTGtkExpressionWatch);cdecl;external;
function GTK_TYPE_PROPERTY_EXPRESSION : longint; { return type might be wrong }

type
  T_GtkPropertyExpression = TGtkPropertyExpression;

function gtk_property_expression_get_type:TGType;cdecl;external;
function gtk_property_expression_new(this_type:TGType; expression:PTGtkExpression; property_name:Pchar):^TGtkExpression;cdecl;external;
function gtk_property_expression_new_for_pspec(expression:PTGtkExpression; pspec:PTGParamSpec):^TGtkExpression;cdecl;external;
function gtk_property_expression_get_expression(expression:PTGtkExpression):^TGtkExpression;cdecl;external;
function gtk_property_expression_get_pspec(expression:PTGtkExpression):^TGParamSpec;cdecl;external;
function GTK_TYPE_CONSTANT_EXPRESSION : longint; { return type might be wrong }

type
  T_GtkConstantExpression = TGtkConstantExpression;

function gtk_constant_expression_get_type:TGType;cdecl;external;
function gtk_constant_expression_new(value_type:TGType; args:array of const):^TGtkExpression;cdecl;external;
function gtk_constant_expression_new(value_type:TGType):^TGtkExpression;cdecl;external;
function gtk_constant_expression_new_for_value(value:PTGValue):^TGtkExpression;cdecl;external;
function gtk_constant_expression_get_value(expression:PTGtkExpression):^TGValue;cdecl;external;
function GTK_TYPE_OBJECT_EXPRESSION : longint; { return type might be wrong }

type
  T_GtkObjectExpression = TGtkObjectExpression;

function gtk_object_expression_get_type:TGType;cdecl;external;
function gtk_object_expression_new(object:PTGObject):^TGtkExpression;cdecl;external;
function gtk_object_expression_get_object(expression:PTGtkExpression):^TGObject;cdecl;external;
function GTK_TYPE_CLOSURE_EXPRESSION : longint; { return type might be wrong }

type
  T_GtkClosureExpression = TGtkClosureExpression;

function gtk_closure_expression_get_type:TGType;cdecl;external;
function gtk_closure_expression_new(value_type:TGType; closure:PTGClosure; n_params:Tguint; params:PPTGtkExpression):^TGtkExpression;cdecl;external;
function GTK_TYPE_CCLOSURE_EXPRESSION : longint; { return type might be wrong }

type
  T_GtkCClosureExpression = TGtkCClosureExpression;

function gtk_cclosure_expression_get_type:TGType;cdecl;external;
function gtk_cclosure_expression_new(value_type:TGType; marshal:TGClosureMarshal; n_params:Tguint; params:PPTGtkExpression; callback_func:TGCallback; 
           user_data:Tgpointer; user_destroy:TGClosureNotify):^TGtkExpression;cdecl;external;


function GTK_VALUE_HOLDS_EXPRESSION(value : longint) : longint;

procedure gtk_value_set_expression(value:PTGValue; expression:PTGtkExpression);cdecl;external;
procedure gtk_value_take_expression(value:PTGValue; expression:PTGtkExpression);cdecl;external;
function gtk_value_get_expression(value:PTGValue):^TGtkExpression;cdecl;external;
function gtk_value_dup_expression(value:PTGValue):^TGtkExpression;cdecl;external;
function GTK_TYPE_PARAM_SPEC_EXPRESSION : longint; { return type might be wrong }

function GTK_PARAM_SPEC_EXPRESSION(obj : longint) : longint;

function GTK_IS_PARAM_SPEC_EXPRESSION(obj : longint) : longint;



type
  TGtkParamSpecExpression = record
      parent_instance : TGParamSpec;
    end;

function gtk_param_expression_get_type:TGType;cdecl;external;
function gtk_param_spec_expression(name:Pchar; nick:Pchar; blurb:Pchar; flags:TGParamFlags):^TGParamSpec;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkflowbox.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkflowbox.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkflowbox.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGListModel  = ^GListModel;
PGtkAdjustment  = ^GtkAdjustment;
PGtkFlowBox  = ^GtkFlowBox;
PGtkFlowBoxChild  = ^GtkFlowBoxChild;
PGtkWidget  = ^GtkWidget;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_FLOW_BOX_H__}
//// {$define __GTK_FLOW_BOX_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkwidget.h>}

function GTK_TYPE_FLOW_BOX : longint; { return type might be wrong }

function GTK_FLOW_BOX(obj : longint) : longint;

function GTK_IS_FLOW_BOX(obj : longint) : longint;

type
  T_GtkFlowBox = TGtkFlowBox;
  T_GtkFlowBoxChild = TGtkFlowBoxChild;
  T_GtkFlowBoxChildClass = TGtkFlowBoxChildClass;

function GTK_TYPE_FLOW_BOX_CHILD : longint; { return type might be wrong }

function GTK_FLOW_BOX_CHILD(obj : longint) : longint;

function GTK_FLOW_BOX_CHILD_CLASS(klass : longint) : longint;

function GTK_IS_FLOW_BOX_CHILD(obj : longint) : longint;

function GTK_IS_FLOW_BOX_CHILD_CLASS(klass : longint) : longint;

function GTK_FLOW_BOX_CHILD_GET_CLASS(obj : longint) : longint;


type
  T_GtkFlowBoxChild = record
      parent_instance : TGtkWidget;
    end;




  T_GtkFlowBoxChildClass = record
      parent_class : TGtkWidgetClass;
      activate : procedure (child:PTGtkFlowBoxChild);cdecl;
      padding : array[0..7] of Tgpointer;
    end;



  TGtkFlowBoxCreateWidgetFunc = function (item:Tgpointer; user_data:Tgpointer):PTGtkWidget;cdecl;

function gtk_flow_box_child_get_type:TGType;cdecl;external;
function gtk_flow_box_child_new:^TGtkWidget;cdecl;external;
procedure gtk_flow_box_child_set_child(self:PTGtkFlowBoxChild; child:PTGtkWidget);cdecl;external;
function gtk_flow_box_child_get_child(self:PTGtkFlowBoxChild):^TGtkWidget;cdecl;external;
function gtk_flow_box_child_get_index(child:PTGtkFlowBoxChild):longint;cdecl;external;
function gtk_flow_box_child_is_selected(child:PTGtkFlowBoxChild):Tgboolean;cdecl;external;
procedure gtk_flow_box_child_changed(child:PTGtkFlowBoxChild);cdecl;external;
function gtk_flow_box_get_type:TGType;cdecl;external;
function gtk_flow_box_new:^TGtkWidget;cdecl;external;
procedure gtk_flow_box_bind_model(box:PTGtkFlowBox; model:PTGListModel; create_widget_func:TGtkFlowBoxCreateWidgetFunc; user_data:Tgpointer; user_data_free_func:TGDestroyNotify);cdecl;external;
procedure gtk_flow_box_set_homogeneous(box:PTGtkFlowBox; homogeneous:Tgboolean);cdecl;external;
function gtk_flow_box_get_homogeneous(box:PTGtkFlowBox):Tgboolean;cdecl;external;
procedure gtk_flow_box_set_row_spacing(box:PTGtkFlowBox; spacing:Tguint);cdecl;external;
function gtk_flow_box_get_row_spacing(box:PTGtkFlowBox):Tguint;cdecl;external;
procedure gtk_flow_box_set_column_spacing(box:PTGtkFlowBox; spacing:Tguint);cdecl;external;
function gtk_flow_box_get_column_spacing(box:PTGtkFlowBox):Tguint;cdecl;external;
procedure gtk_flow_box_set_min_children_per_line(box:PTGtkFlowBox; n_children:Tguint);cdecl;external;
function gtk_flow_box_get_min_children_per_line(box:PTGtkFlowBox):Tguint;cdecl;external;
procedure gtk_flow_box_set_max_children_per_line(box:PTGtkFlowBox; n_children:Tguint);cdecl;external;
function gtk_flow_box_get_max_children_per_line(box:PTGtkFlowBox):Tguint;cdecl;external;
procedure gtk_flow_box_set_activate_on_single_click(box:PTGtkFlowBox; single:Tgboolean);cdecl;external;
function gtk_flow_box_get_activate_on_single_click(box:PTGtkFlowBox):Tgboolean;cdecl;external;
procedure gtk_flow_box_prepend(self:PTGtkFlowBox; child:PTGtkWidget);cdecl;external;
procedure gtk_flow_box_append(self:PTGtkFlowBox; child:PTGtkWidget);cdecl;external;
procedure gtk_flow_box_insert(box:PTGtkFlowBox; widget:PTGtkWidget; position:longint);cdecl;external;
procedure gtk_flow_box_remove(box:PTGtkFlowBox; widget:PTGtkWidget);cdecl;external;
function gtk_flow_box_get_child_at_index(box:PTGtkFlowBox; idx:longint):^TGtkFlowBoxChild;cdecl;external;
function gtk_flow_box_get_child_at_pos(box:PTGtkFlowBox; x:longint; y:longint):^TGtkFlowBoxChild;cdecl;external;
type

  TGtkFlowBoxForeachFunc = procedure (box:PTGtkFlowBox; child:PTGtkFlowBoxChild; user_data:Tgpointer);cdecl;

procedure gtk_flow_box_selected_foreach(box:PTGtkFlowBox; func:TGtkFlowBoxForeachFunc; data:Tgpointer);cdecl;external;
function gtk_flow_box_get_selected_children(box:PTGtkFlowBox):^TGList;cdecl;external;
procedure gtk_flow_box_select_child(box:PTGtkFlowBox; child:PTGtkFlowBoxChild);cdecl;external;
procedure gtk_flow_box_unselect_child(box:PTGtkFlowBox; child:PTGtkFlowBoxChild);cdecl;external;
procedure gtk_flow_box_select_all(box:PTGtkFlowBox);cdecl;external;
procedure gtk_flow_box_unselect_all(box:PTGtkFlowBox);cdecl;external;
procedure gtk_flow_box_set_selection_mode(box:PTGtkFlowBox; mode:TGtkSelectionMode);cdecl;external;
function gtk_flow_box_get_selection_mode(box:PTGtkFlowBox):TGtkSelectionMode;cdecl;external;
procedure gtk_flow_box_set_hadjustment(box:PTGtkFlowBox; adjustment:PTGtkAdjustment);cdecl;external;
procedure gtk_flow_box_set_vadjustment(box:PTGtkFlowBox; adjustment:PTGtkAdjustment);cdecl;external;
type

  TGtkFlowBoxFilterFunc = function (child:PTGtkFlowBoxChild; user_data:Tgpointer):Tgboolean;cdecl;

procedure gtk_flow_box_set_filter_func(box:PTGtkFlowBox; filter_func:TGtkFlowBoxFilterFunc; user_data:Tgpointer; destroy:TGDestroyNotify);cdecl;external;
procedure gtk_flow_box_invalidate_filter(box:PTGtkFlowBox);cdecl;external;
type

  TGtkFlowBoxSortFunc = function (child1:PTGtkFlowBoxChild; child2:PTGtkFlowBoxChild; user_data:Tgpointer):longint;cdecl;

procedure gtk_flow_box_set_sort_func(box:PTGtkFlowBox; sort_func:TGtkFlowBoxSortFunc; user_data:Tgpointer; destroy:TGDestroyNotify);cdecl;external;
procedure gtk_flow_box_invalidate_sort(box:PTGtkFlowBox);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkimcontext.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkimcontext.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkimcontext.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGdkDevice  = ^GdkDevice;
PGdkEvent  = ^GdkEvent;
PGdkRectangle  = ^GdkRectangle;
PGdkSurface  = ^GdkSurface;
PGtkIMContext  = ^GtkIMContext;
PGtkWidget  = ^GtkWidget;
Plongint  = ^longint;
PPangoAttrList  = ^PangoAttrList;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_IM_CONTEXT_H__}
//// {$define __GTK_IM_CONTEXT_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkwidget.h>}

function GTK_TYPE_IM_CONTEXT : longint; { return type might be wrong }

function GTK_IM_CONTEXT(obj : longint) : longint;

function GTK_IM_CONTEXT_CLASS(klass : longint) : longint;

function GTK_IS_IM_CONTEXT(obj : longint) : longint;

function GTK_IS_IM_CONTEXT_CLASS(klass : longint) : longint;

function GTK_IM_CONTEXT_GET_CLASS(obj : longint) : longint;

type
  T_GtkIMContext = TGtkIMContext;
  T_GtkIMContextClass = TGtkIMContextClass;
  T_GtkIMContext = record
      parent_instance : TGObject;
    end;







  T_GtkIMContextClass = record
      parent_class : TGObjectClass;
      preedit_start : procedure (context:PTGtkIMContext);cdecl;
      preedit_end : procedure (context:PTGtkIMContext);cdecl;
      preedit_changed : procedure (context:PTGtkIMContext);cdecl;
      commit : procedure (context:PTGtkIMContext; str:Pchar);cdecl;
      retrieve_surrounding : function (context:PTGtkIMContext):Tgboolean;cdecl;
      delete_surrounding : function (context:PTGtkIMContext; offset:longint; n_chars:longint):Tgboolean;cdecl;
      set_client_widget : procedure (context:PTGtkIMContext; widget:PTGtkWidget);cdecl;
      get_preedit_string : procedure (context:PTGtkIMContext; str:PPchar; attrs:PPTPangoAttrList; cursor_pos:Plongint);cdecl;
      filter_keypress : function (context:PTGtkIMContext; event:PTGdkEvent):Tgboolean;cdecl;
      focus_in : procedure (context:PTGtkIMContext);cdecl;
      focus_out : procedure (context:PTGtkIMContext);cdecl;
      reset : procedure (context:PTGtkIMContext);cdecl;
      set_cursor_location : procedure (context:PTGtkIMContext; area:PTGdkRectangle);cdecl;
      set_use_preedit : procedure (context:PTGtkIMContext; use_preedit:Tgboolean);cdecl;
      set_surrounding : procedure (context:PTGtkIMContext; text:Pchar; len:longint; cursor_index:longint);cdecl;
      get_surrounding : function (context:PTGtkIMContext; text:PPchar; cursor_index:Plongint):Tgboolean;cdecl;
      set_surrounding_with_selection : procedure (context:PTGtkIMContext; text:Pchar; len:longint; cursor_index:longint; anchor_index:longint);cdecl;
      get_surrounding_with_selection : function (context:PTGtkIMContext; text:PPchar; cursor_index:Plongint; anchor_index:Plongint):Tgboolean;cdecl;
      _gtk_reserved1 : procedure ;cdecl;
      _gtk_reserved2 : procedure ;cdecl;
      _gtk_reserved3 : procedure ;cdecl;
      _gtk_reserved4 : procedure ;cdecl;
      _gtk_reserved5 : procedure ;cdecl;
    end;


function gtk_im_context_get_type:TGType;cdecl;external;
procedure gtk_im_context_set_client_widget(context:PTGtkIMContext; widget:PTGtkWidget);cdecl;external;
procedure gtk_im_context_get_preedit_string(context:PTGtkIMContext; str:PPchar; attrs:PPTPangoAttrList; cursor_pos:Plongint);cdecl;external;
function gtk_im_context_filter_keypress(context:PTGtkIMContext; event:PTGdkEvent):Tgboolean;cdecl;external;
function gtk_im_context_filter_key(context:PTGtkIMContext; press:Tgboolean; surface:PTGdkSurface; device:PTGdkDevice; time:Tguint32; 
           keycode:Tguint; state:TGdkModifierType; group:longint):Tgboolean;cdecl;external;
procedure gtk_im_context_focus_in(context:PTGtkIMContext);cdecl;external;
procedure gtk_im_context_focus_out(context:PTGtkIMContext);cdecl;external;
procedure gtk_im_context_reset(context:PTGtkIMContext);cdecl;external;
procedure gtk_im_context_set_cursor_location(context:PTGtkIMContext; area:PTGdkRectangle);cdecl;external;
procedure gtk_im_context_set_use_preedit(context:PTGtkIMContext; use_preedit:Tgboolean);cdecl;external;
procedure gtk_im_context_set_surrounding(context:PTGtkIMContext; text:Pchar; len:longint; cursor_index:longint);cdecl;external;
function gtk_im_context_get_surrounding(context:PTGtkIMContext; text:PPchar; cursor_index:Plongint):Tgboolean;cdecl;external;
procedure gtk_im_context_set_surrounding_with_selection(context:PTGtkIMContext; text:Pchar; len:longint; cursor_index:longint; anchor_index:longint);cdecl;external;
function gtk_im_context_get_surrounding_with_selection(context:PTGtkIMContext; text:PPchar; cursor_index:Plongint; anchor_index:Plongint):Tgboolean;cdecl;external;
function gtk_im_context_delete_surrounding(context:PTGtkIMContext; offset:longint; n_chars:longint):Tgboolean;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkrange.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkrange.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkrange.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGdkRectangle  = ^GdkRectangle;
PGtkAdjustment  = ^GtkAdjustment;
PGtkBorder  = ^GtkBorder;
PGtkRange  = ^GtkRange;
Plongint  = ^longint;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef __GTK_RANGE_H__}
//// {$define __GTK_RANGE_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkwidget.h>}

function GTK_TYPE_RANGE : longint; { return type might be wrong }

function GTK_RANGE(obj : longint) : longint;

function GTK_RANGE_CLASS(klass : longint) : longint;

function GTK_IS_RANGE(obj : longint) : longint;

function GTK_IS_RANGE_CLASS(klass : longint) : longint;

function GTK_RANGE_GET_CLASS(obj : longint) : longint;

type
  T_GtkRange = TGtkRange;
  T_GtkRangeClass = TGtkRangeClass;
  T_GtkRange = record
      parent_instance : TGtkWidget;
    end;




  T_GtkRangeClass = record
      parent_class : TGtkWidgetClass;
      value_changed : procedure (range:PTGtkRange);cdecl;
      adjust_bounds : procedure (range:PTGtkRange; new_value:Tdouble);cdecl;
      move_slider : procedure (range:PTGtkRange; scroll:TGtkScrollType);cdecl;
      get_range_border : procedure (range:PTGtkRange; border_:PTGtkBorder);cdecl;
      change_value : function (range:PTGtkRange; scroll:TGtkScrollType; new_value:Tdouble):Tgboolean;cdecl;
      padding : array[0..7] of Tgpointer;
    end;


function gtk_range_get_type:TGType;cdecl;external;
procedure gtk_range_set_adjustment(range:PTGtkRange; adjustment:PTGtkAdjustment);cdecl;external;
function gtk_range_get_adjustment(range:PTGtkRange):^TGtkAdjustment;cdecl;external;
procedure gtk_range_set_inverted(range:PTGtkRange; setting:Tgboolean);cdecl;external;
function gtk_range_get_inverted(range:PTGtkRange):Tgboolean;cdecl;external;
procedure gtk_range_set_flippable(range:PTGtkRange; flippable:Tgboolean);cdecl;external;
function gtk_range_get_flippable(range:PTGtkRange):Tgboolean;cdecl;external;
procedure gtk_range_set_slider_size_fixed(range:PTGtkRange; size_fixed:Tgboolean);cdecl;external;
function gtk_range_get_slider_size_fixed(range:PTGtkRange):Tgboolean;cdecl;external;
procedure gtk_range_get_range_rect(range:PTGtkRange; range_rect:PTGdkRectangle);cdecl;external;
procedure gtk_range_get_slider_range(range:PTGtkRange; slider_start:Plongint; slider_end:Plongint);cdecl;external;
procedure gtk_range_set_increments(range:PTGtkRange; step:Tdouble; page:Tdouble);cdecl;external;
procedure gtk_range_set_range(range:PTGtkRange; min:Tdouble; max:Tdouble);cdecl;external;
procedure gtk_range_set_value(range:PTGtkRange; value:Tdouble);cdecl;external;
function gtk_range_get_value(range:PTGtkRange):Tdouble;cdecl;external;
procedure gtk_range_set_show_fill_level(range:PTGtkRange; show_fill_level:Tgboolean);cdecl;external;
function gtk_range_get_show_fill_level(range:PTGtkRange):Tgboolean;cdecl;external;
procedure gtk_range_set_restrict_to_fill_level(range:PTGtkRange; restrict_to_fill_level:Tgboolean);cdecl;external;
function gtk_range_get_restrict_to_fill_level(range:PTGtkRange):Tgboolean;cdecl;external;
procedure gtk_range_set_fill_level(range:PTGtkRange; fill_level:Tdouble);cdecl;external;
function gtk_range_get_fill_level(range:PTGtkRange):Tdouble;cdecl;external;
procedure gtk_range_set_round_digits(range:PTGtkRange; round_digits:longint);cdecl;external;
function gtk_range_get_round_digits(range:PTGtkRange):longint;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkgesturezoom.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkgesturezoom.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkgesturezoom.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGtkGestureZoom  = ^GtkGestureZoom;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_GESTURE_ZOOM_H__}
//// {$define __GTK_GESTURE_ZOOM_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkgesture.h>}
//// {$include <gtk/gtkwidget.h>}

function GTK_TYPE_GESTURE_ZOOM : longint; { return type might be wrong }

function GTK_GESTURE_ZOOM(o : longint) : longint;

function GTK_GESTURE_ZOOM_CLASS(k : longint) : longint;

function GTK_IS_GESTURE_ZOOM(o : longint) : longint;

function GTK_IS_GESTURE_ZOOM_CLASS(k : longint) : longint;

function GTK_GESTURE_ZOOM_GET_CLASS(o : longint) : longint;

type
  T_GtkGestureZoom = TGtkGestureZoom;
  T_GtkGestureZoomClass = TGtkGestureZoomClass;

function gtk_gesture_zoom_get_type:TGType;cdecl;external;
function gtk_gesture_zoom_new:^TGtkGesture;cdecl;external;
function gtk_gesture_zoom_get_scale_delta(gesture:PTGtkGestureZoom):Tdouble;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkcustomsorter.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkcustomsorter.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkcustomsorter.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGtkCustomSorter  = ^GtkCustomSorter;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_CUSTOM_SORTER_H__}
//// {$define __GTK_CUSTOM_SORTER_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkexpression.h>}
//// {$include <gtk/gtksorter.h>}

function GTK_TYPE_CUSTOM_SORTER : longint; { return type might be wrong }

function gtk_custom_sorter_new(sort_func:TGCompareDataFunc; user_data:Tgpointer; user_destroy:TGDestroyNotify):^TGtkCustomSorter;cdecl;external;
procedure gtk_custom_sorter_set_sort_func(self:PTGtkCustomSorter; sort_func:TGCompareDataFunc; user_data:Tgpointer; user_destroy:TGDestroyNotify);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkstylecontext.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkstylecontext.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkstylecontext.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGdkDisplay  = ^GdkDisplay;
PGdkRGBA  = ^GdkRGBA;
PGtkBorder  = ^GtkBorder;
PGtkStyleContext  = ^GtkStyleContext;
PGtkStyleProvider  = ^GtkStyleProvider;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_STYLE_CONTEXT_H__}
//// {$define __GTK_STYLE_CONTEXT_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/css/gtkcss.h>}
//// {$include <gtk/gtkborder.h>}
//// {$include <gtk/gtkstyleprovider.h>}
//// {$include <gtk/gtktypes.h>}

function GTK_TYPE_STYLE_CONTEXT : longint; { return type might be wrong }

function GTK_STYLE_CONTEXT(o : longint) : longint;

function GTK_STYLE_CONTEXT_CLASS(c : longint) : longint;

function GTK_IS_STYLE_CONTEXT(o : longint) : longint;

function GTK_IS_STYLE_CONTEXT_CLASS(c : longint) : longint;

function GTK_STYLE_CONTEXT_GET_CLASS(o : longint) : longint;

type
  T_GtkStyleContextClass = TGtkStyleContextClass;
  T_GtkStyleContext = record
      parent_object : TGObject;
    end;


  T_GtkStyleContextClass = record
      parent_class : TGObjectClass;
      changed : procedure (context:PTGtkStyleContext);cdecl;
      _gtk_reserved1 : procedure ;cdecl;
      _gtk_reserved2 : procedure ;cdecl;
      _gtk_reserved3 : procedure ;cdecl;
      _gtk_reserved4 : procedure ;cdecl;
    end;


function gtk_style_context_get_type:TGType;cdecl;external;
procedure gtk_style_context_add_provider_for_display(display:PTGdkDisplay; provider:PTGtkStyleProvider; priority:Tguint);cdecl;external;
procedure gtk_style_context_remove_provider_for_display(display:PTGdkDisplay; provider:PTGtkStyleProvider);cdecl;external;
procedure gtk_style_context_add_provider(context:PTGtkStyleContext; provider:PTGtkStyleProvider; priority:Tguint);cdecl;external;
procedure gtk_style_context_remove_provider(context:PTGtkStyleContext; provider:PTGtkStyleProvider);cdecl;external;
procedure gtk_style_context_save(context:PTGtkStyleContext);cdecl;external;
procedure gtk_style_context_restore(context:PTGtkStyleContext);cdecl;external;
procedure gtk_style_context_set_state(context:PTGtkStyleContext; flags:TGtkStateFlags);cdecl;external;
function gtk_style_context_get_state(context:PTGtkStyleContext):TGtkStateFlags;cdecl;external;
procedure gtk_style_context_set_scale(context:PTGtkStyleContext; scale:longint);cdecl;external;
function gtk_style_context_get_scale(context:PTGtkStyleContext):longint;cdecl;external;
procedure gtk_style_context_add_class(context:PTGtkStyleContext; class_name:Pchar);cdecl;external;
procedure gtk_style_context_remove_class(context:PTGtkStyleContext; class_name:Pchar);cdecl;external;
function gtk_style_context_has_class(context:PTGtkStyleContext; class_name:Pchar):Tgboolean;cdecl;external;
procedure gtk_style_context_set_display(context:PTGtkStyleContext; display:PTGdkDisplay);cdecl;external;
function gtk_style_context_get_display(context:PTGtkStyleContext):^TGdkDisplay;cdecl;external;
function gtk_style_context_lookup_color(context:PTGtkStyleContext; color_name:Pchar; color:PTGdkRGBA):Tgboolean;cdecl;external;

procedure gtk_style_context_get_color(context:PTGtkStyleContext; color:PTGdkRGBA);cdecl;external;
procedure gtk_style_context_get_border(context:PTGtkStyleContext; border:PTGtkBorder);cdecl;external;
procedure gtk_style_context_get_padding(context:PTGtkStyleContext; padding:PTGtkBorder);cdecl;external;
procedure gtk_style_context_get_margin(context:PTGtkStyleContext; margin:PTGtkBorder);cdecl;external;
type
  TGtkStyleContextPrintFlags = (GTK_STYLE_CONTEXT_PRINT_NONE := 0,GTK_STYLE_CONTEXT_PRINT_RECURSE := 1 shl 0,
    GTK_STYLE_CONTEXT_PRINT_SHOW_STYLE := 1 shl 1,
    GTK_STYLE_CONTEXT_PRINT_SHOW_CHANGE := 1 shl 2
    );

function gtk_style_context_to_string(context:PTGtkStyleContext; flags:TGtkStyleContextPrintFlags):^char;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkeventcontrollerlegacy.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkeventcontrollerlegacy.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkeventcontrollerlegacy.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_EVENT_CONTROLLER_LEGACY_H__}
//// {$define __GTK_EVENT_CONTROLLER_LEGACY_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkeventcontroller.h>}

function GTK_TYPE_EVENT_CONTROLLER_LEGACY : longint; { return type might be wrong }

function GTK_EVENT_CONTROLLER_LEGACY(o : longint) : longint;

function GTK_EVENT_CONTROLLER_LEGACY_CLASS(k : longint) : longint;

function GTK_IS_EVENT_CONTROLLER_LEGACY(o : longint) : longint;

function GTK_IS_EVENT_CONTROLLER_LEGACY_CLASS(k : longint) : longint;

function GTK_EVENT_CONTROLLER_LEGACY_GET_CLASS(o : longint) : longint;

type
  T_GtkEventControllerLegacy = TGtkEventControllerLegacy;
  T_GtkEventControllerLegacyClass = TGtkEventControllerLegacyClass;

function gtk_event_controller_legacy_get_type:TGType;cdecl;external;
function gtk_event_controller_legacy_new:^TGtkEventController;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtktreeselection.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtktreeselection.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtktreeselection.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGtkTreeIter  = ^GtkTreeIter;
PGtkTreeModel  = ^GtkTreeModel;
PGtkTreePath  = ^GtkTreePath;
PGtkTreeSelection  = ^GtkTreeSelection;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_TREE_SELECTION_H__}
//// {$define __GTK_TREE_SELECTION_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtktreeview.h>}

function GTK_TYPE_TREE_SELECTION : longint; { return type might be wrong }

function GTK_TREE_SELECTION(obj : longint) : longint;

function GTK_IS_TREE_SELECTION(obj : longint) : longint;


type

  TGtkTreeSelectionFunc = function (selection:PTGtkTreeSelection; model:PTGtkTreeModel; path:PTGtkTreePath; path_currently_selected:Tgboolean; data:Tgpointer):Tgboolean;cdecl;


  TGtkTreeSelectionForeachFunc = procedure (model:PTGtkTreeModel; path:PTGtkTreePath; iter:PTGtkTreeIter; data:Tgpointer);cdecl;

function gtk_tree_selection_get_type:TGType;cdecl;external;
procedure gtk_tree_selection_set_mode(selection:PTGtkTreeSelection; _type:TGtkSelectionMode);cdecl;external;
function gtk_tree_selection_get_mode(selection:PTGtkTreeSelection):TGtkSelectionMode;cdecl;external;
procedure gtk_tree_selection_set_select_function(selection:PTGtkTreeSelection; func:TGtkTreeSelectionFunc; data:Tgpointer; destroy:TGDestroyNotify);cdecl;external;
function gtk_tree_selection_get_user_data(selection:PTGtkTreeSelection):Tgpointer;cdecl;external;
function gtk_tree_selection_get_tree_view(selection:PTGtkTreeSelection):^TGtkTreeView;cdecl;external;
function gtk_tree_selection_get_select_function(selection:PTGtkTreeSelection):TGtkTreeSelectionFunc;cdecl;external;


function gtk_tree_selection_get_selected(selection:PTGtkTreeSelection; model:PPTGtkTreeModel; iter:PTGtkTreeIter):Tgboolean;cdecl;external;
function gtk_tree_selection_get_selected_rows(selection:PTGtkTreeSelection; model:PPTGtkTreeModel):^TGList;cdecl;external;
function gtk_tree_selection_count_selected_rows(selection:PTGtkTreeSelection):longint;cdecl;external;
procedure gtk_tree_selection_selected_foreach(selection:PTGtkTreeSelection; func:TGtkTreeSelectionForeachFunc; data:Tgpointer);cdecl;external;
procedure gtk_tree_selection_select_path(selection:PTGtkTreeSelection; path:PTGtkTreePath);cdecl;external;
procedure gtk_tree_selection_unselect_path(selection:PTGtkTreeSelection; path:PTGtkTreePath);cdecl;external;
procedure gtk_tree_selection_select_iter(selection:PTGtkTreeSelection; iter:PTGtkTreeIter);cdecl;external;
procedure gtk_tree_selection_unselect_iter(selection:PTGtkTreeSelection; iter:PTGtkTreeIter);cdecl;external;
function gtk_tree_selection_path_is_selected(selection:PTGtkTreeSelection; path:PTGtkTreePath):Tgboolean;cdecl;external;
function gtk_tree_selection_iter_is_selected(selection:PTGtkTreeSelection; iter:PTGtkTreeIter):Tgboolean;cdecl;external;
procedure gtk_tree_selection_select_all(selection:PTGtkTreeSelection);cdecl;external;
procedure gtk_tree_selection_unselect_all(selection:PTGtkTreeSelection);cdecl;external;
procedure gtk_tree_selection_select_range(selection:PTGtkTreeSelection; start_path:PTGtkTreePath; end_path:PTGtkTreePath);cdecl;external;
procedure gtk_tree_selection_unselect_range(selection:PTGtkTreeSelection; start_path:PTGtkTreePath; end_path:PTGtkTreePath);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkmediastream.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkmediastream.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkmediastream.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGdkSurface  = ^GdkSurface;
PGError  = ^GError;
PGtkMediaStream  = ^GtkMediaStream;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_MEDIA_STREAM_H__}
//// {$define __GTK_MEDIA_STREAM_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdk.h>}

function GTK_TYPE_MEDIA_STREAM : longint; { return type might be wrong }


type
  T_GtkMediaStreamClass = record
      parent_class : TGObjectClass;
      play : function (self:PTGtkMediaStream):Tgboolean;cdecl;
      pause : procedure (self:PTGtkMediaStream);cdecl;
      seek : procedure (self:PTGtkMediaStream; timestamp:Tgint64);cdecl;
      update_audio : procedure (self:PTGtkMediaStream; muted:Tgboolean; volume:Tdouble);cdecl;
      realize : procedure (self:PTGtkMediaStream; surface:PTGdkSurface);cdecl;
      unrealize : procedure (self:PTGtkMediaStream; surface:PTGdkSurface);cdecl;
      _gtk_reserved1 : procedure ;cdecl;
      _gtk_reserved2 : procedure ;cdecl;
      _gtk_reserved3 : procedure ;cdecl;
      _gtk_reserved4 : procedure ;cdecl;
      _gtk_reserved5 : procedure ;cdecl;
      _gtk_reserved6 : procedure ;cdecl;
      _gtk_reserved7 : procedure ;cdecl;
      _gtk_reserved8 : procedure ;cdecl;
    end;


function gtk_media_stream_is_prepared(self:PTGtkMediaStream):Tgboolean;cdecl;external;
function gtk_media_stream_get_error(self:PTGtkMediaStream):^TGError;cdecl;external;
function gtk_media_stream_has_audio(self:PTGtkMediaStream):Tgboolean;cdecl;external;
function gtk_media_stream_has_video(self:PTGtkMediaStream):Tgboolean;cdecl;external;
procedure gtk_media_stream_play(self:PTGtkMediaStream);cdecl;external;
procedure gtk_media_stream_pause(self:PTGtkMediaStream);cdecl;external;
function gtk_media_stream_get_playing(self:PTGtkMediaStream):Tgboolean;cdecl;external;
procedure gtk_media_stream_set_playing(self:PTGtkMediaStream; playing:Tgboolean);cdecl;external;
function gtk_media_stream_get_ended(self:PTGtkMediaStream):Tgboolean;cdecl;external;
function gtk_media_stream_get_timestamp(self:PTGtkMediaStream):Tgint64;cdecl;external;
function gtk_media_stream_get_duration(self:PTGtkMediaStream):Tgint64;cdecl;external;
function gtk_media_stream_is_seekable(self:PTGtkMediaStream):Tgboolean;cdecl;external;
function gtk_media_stream_is_seeking(self:PTGtkMediaStream):Tgboolean;cdecl;external;
procedure gtk_media_stream_seek(self:PTGtkMediaStream; timestamp:Tgint64);cdecl;external;
function gtk_media_stream_get_loop(self:PTGtkMediaStream):Tgboolean;cdecl;external;
procedure gtk_media_stream_set_loop(self:PTGtkMediaStream; loop:Tgboolean);cdecl;external;
function gtk_media_stream_get_muted(self:PTGtkMediaStream):Tgboolean;cdecl;external;
procedure gtk_media_stream_set_muted(self:PTGtkMediaStream; muted:Tgboolean);cdecl;external;
function gtk_media_stream_get_volume(self:PTGtkMediaStream):Tdouble;cdecl;external;
procedure gtk_media_stream_set_volume(self:PTGtkMediaStream; volume:Tdouble);cdecl;external;
procedure gtk_media_stream_realize(self:PTGtkMediaStream; surface:PTGdkSurface);cdecl;external;
procedure gtk_media_stream_unrealize(self:PTGtkMediaStream; surface:PTGdkSurface);cdecl;external;

procedure gtk_media_stream_prepared(self:PTGtkMediaStream; has_audio:Tgboolean; has_video:Tgboolean; seekable:Tgboolean; duration:Tgint64);cdecl;external;
procedure gtk_media_stream_unprepared(self:PTGtkMediaStream);cdecl;external;
procedure gtk_media_stream_stream_prepared(self:PTGtkMediaStream; has_audio:Tgboolean; has_video:Tgboolean; seekable:Tgboolean; duration:Tgint64);cdecl;external;
procedure gtk_media_stream_stream_unprepared(self:PTGtkMediaStream);cdecl;external;
procedure gtk_media_stream_update(self:PTGtkMediaStream; timestamp:Tgint64);cdecl;external;
procedure gtk_media_stream_ended(self:PTGtkMediaStream);cdecl;external;
procedure gtk_media_stream_stream_ended(self:PTGtkMediaStream);cdecl;external;
procedure gtk_media_stream_seek_success(self:PTGtkMediaStream);cdecl;external;
procedure gtk_media_stream_seek_failed(self:PTGtkMediaStream);cdecl;external;
procedure gtk_media_stream_gerror(self:PTGtkMediaStream; error:PTGError);cdecl;external;
procedure gtk_media_stream_error(self:PTGtkMediaStream; domain:TGQuark; code:longint; format:Pchar; args:array of const);cdecl;external;
procedure gtk_media_stream_error(self:PTGtkMediaStream; domain:TGQuark; code:longint; format:Pchar);cdecl;external;
procedure gtk_media_stream_error_valist(self:PTGtkMediaStream; domain:TGQuark; code:longint; format:Pchar; args:Tva_list);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkicontheme.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkicontheme.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkicontheme.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGdkDisplay  = ^GdkDisplay;
PGFile  = ^GFile;
PGIcon  = ^GIcon;
PGtkIconPaintable  = ^GtkIconPaintable;
PGtkIconTheme  = ^GtkIconTheme;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_ICON_THEME_H__}
//// {$define __GTK_ICON_THEME_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdk.h>}
//// {$include <gtk/gtkenums.h>}

function GTK_TYPE_ICON_PAINTABLE : longint; { return type might be wrong }

function GTK_ICON_PAINTABLE(obj : longint) : longint;

function GTK_IS_ICON_PAINTABLE(obj : longint) : longint;

function GTK_TYPE_ICON_THEME : longint; { return type might be wrong }

function GTK_ICON_THEME(obj : longint) : longint;

function GTK_IS_ICON_THEME(obj : longint) : longint;

type
  T_GtkIconPaintable = TGtkIconPaintable;
  T_GtkIconTheme = TGtkIconTheme;


  TGtkIconLookupFlags = (GTK_ICON_LOOKUP_FORCE_REGULAR := 1 shl 0,GTK_ICON_LOOKUP_FORCE_SYMBOLIC := 1 shl 1,
    GTK_ICON_LOOKUP_PRELOAD := 1 shl 2);


function GTK_ICON_THEME_ERROR : longint; { return type might be wrong }


type
  TGtkIconThemeError = (GTK_ICON_THEME_NOT_FOUND,GTK_ICON_THEME_FAILED
    );

function gtk_icon_theme_error_quark:TGQuark;cdecl;external;
function gtk_icon_theme_get_type:TGType;cdecl;external;
function gtk_icon_theme_new:^TGtkIconTheme;cdecl;external;
function gtk_icon_theme_get_for_display(display:PTGdkDisplay):^TGtkIconTheme;cdecl;external;
function gtk_icon_theme_get_display(self:PTGtkIconTheme):^TGdkDisplay;cdecl;external;
procedure gtk_icon_theme_set_search_path(self:PTGtkIconTheme; path:PPchar);cdecl;external;
function gtk_icon_theme_get_search_path(self:PTGtkIconTheme):^^char;cdecl;external;
procedure gtk_icon_theme_add_search_path(self:PTGtkIconTheme; path:Pchar);cdecl;external;
procedure gtk_icon_theme_set_resource_path(self:PTGtkIconTheme; path:PPchar);cdecl;external;
function gtk_icon_theme_get_resource_path(self:PTGtkIconTheme):^^char;cdecl;external;
procedure gtk_icon_theme_add_resource_path(self:PTGtkIconTheme; path:Pchar);cdecl;external;
procedure gtk_icon_theme_set_theme_name(self:PTGtkIconTheme; theme_name:Pchar);cdecl;external;
function gtk_icon_theme_get_theme_name(self:PTGtkIconTheme):^char;cdecl;external;
function gtk_icon_theme_has_icon(self:PTGtkIconTheme; icon_name:Pchar):Tgboolean;cdecl;external;
function gtk_icon_theme_has_gicon(self:PTGtkIconTheme; gicon:PTGIcon):Tgboolean;cdecl;external;
function gtk_icon_theme_get_icon_sizes(self:PTGtkIconTheme; icon_name:Pchar):^longint;cdecl;external;
function gtk_icon_theme_lookup_icon(self:PTGtkIconTheme; icon_name:Pchar; fallbacks:PPchar; size:longint; scale:longint; 
           direction:TGtkTextDirection; flags:TGtkIconLookupFlags):^TGtkIconPaintable;cdecl;external;
function gtk_icon_theme_lookup_by_gicon(self:PTGtkIconTheme; icon:PTGIcon; size:longint; scale:longint; direction:TGtkTextDirection; 
           flags:TGtkIconLookupFlags):^TGtkIconPaintable;cdecl;external;
function gtk_icon_paintable_new_for_file(file:PTGFile; size:longint; scale:longint):^TGtkIconPaintable;cdecl;external;
function gtk_icon_theme_get_icon_names(self:PTGtkIconTheme):^^char;cdecl;external;
function gtk_icon_paintable_get_type:TGType;cdecl;external;
function gtk_icon_paintable_get_file(self:PTGtkIconPaintable):^TGFile;cdecl;external;
function gtk_icon_paintable_get_icon_name(self:PTGtkIconPaintable):^char;cdecl;external;
function gtk_icon_paintable_is_symbolic(self:PTGtkIconPaintable):Tgboolean;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkfixed.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkfixed.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkfixed.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pdouble  = ^double;
PGskTransform  = ^GskTransform;
PGtkFixed  = ^GtkFixed;
PGtkWidget  = ^GtkWidget;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef __GTK_FIXED_H__}
//// {$define __GTK_FIXED_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkwidget.h>}

function GTK_TYPE_FIXED : longint; { return type might be wrong }

function GTK_FIXED(obj : longint) : longint;

function GTK_FIXED_CLASS(klass : longint) : longint;

function GTK_IS_FIXED(obj : longint) : longint;

function GTK_IS_FIXED_CLASS(klass : longint) : longint;

function GTK_FIXED_GET_CLASS(obj : longint) : longint;

type
  T_GtkFixed = TGtkFixed;
  T_GtkFixedClass = TGtkFixedClass;
  T_GtkFixed = record
      parent_instance : TGtkWidget;
    end;


  T_GtkFixedClass = record
      parent_class : TGtkWidgetClass;
      padding : array[0..7] of Tgpointer;
    end;


function gtk_fixed_get_type:TGType;cdecl;external;
function gtk_fixed_new:^TGtkWidget;cdecl;external;
procedure gtk_fixed_put(fixed:PTGtkFixed; widget:PTGtkWidget; x:Tdouble; y:Tdouble);cdecl;external;
procedure gtk_fixed_remove(fixed:PTGtkFixed; widget:PTGtkWidget);cdecl;external;
procedure gtk_fixed_move(fixed:PTGtkFixed; widget:PTGtkWidget; x:Tdouble; y:Tdouble);cdecl;external;
procedure gtk_fixed_get_child_position(fixed:PTGtkFixed; widget:PTGtkWidget; x:PTdouble; y:PTdouble);cdecl;external;
procedure gtk_fixed_set_child_transform(fixed:PTGtkFixed; widget:PTGtkWidget; transform:PTGskTransform);cdecl;external;
function gtk_fixed_get_child_transform(fixed:PTGtkFixed; widget:PTGtkWidget):^TGskTransform;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkframe.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkframe.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkframe.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGtkAllocation  = ^GtkAllocation;
PGtkFrame  = ^GtkFrame;
PGtkWidget  = ^GtkWidget;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef __GTK_FRAME_H__}
//// {$define __GTK_FRAME_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkwidget.h>}

function GTK_TYPE_FRAME : longint; { return type might be wrong }

function GTK_FRAME(obj : longint) : longint;

function GTK_FRAME_CLASS(klass : longint) : longint;

function GTK_IS_FRAME(obj : longint) : longint;

function GTK_IS_FRAME_CLASS(klass : longint) : longint;

function GTK_FRAME_GET_CLASS(obj : longint) : longint;

type
  T_GtkFrame = TGtkFrame;
  T_GtkFrameClass = TGtkFrameClass;
  T_GtkFrame = record
      parent_instance : TGtkWidget;
    end;




  T_GtkFrameClass = record
      parent_class : TGtkWidgetClass;
      compute_child_allocation : procedure (frame:PTGtkFrame; allocation:PTGtkAllocation);cdecl;
      padding : array[0..7] of Tgpointer;
    end;


function gtk_frame_get_type:TGType;cdecl;external;
function gtk_frame_new(_label:Pchar):^TGtkWidget;cdecl;external;
procedure gtk_frame_set_label(frame:PTGtkFrame; _label:Pchar);cdecl;external;
function gtk_frame_get_label(frame:PTGtkFrame):^char;cdecl;external;
procedure gtk_frame_set_label_widget(frame:PTGtkFrame; label_widget:PTGtkWidget);cdecl;external;
function gtk_frame_get_label_widget(frame:PTGtkFrame):^TGtkWidget;cdecl;external;
procedure gtk_frame_set_label_align(frame:PTGtkFrame; xalign:single);cdecl;external;
function gtk_frame_get_label_align(frame:PTGtkFrame):single;cdecl;external;
procedure gtk_frame_set_child(frame:PTGtkFrame; child:PTGtkWidget);cdecl;external;
function gtk_frame_get_child(frame:PTGtkFrame):^TGtkWidget;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkshortcutlabel.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkshortcutlabel.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkshortcutlabel.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGtkShortcutLabel  = ^GtkShortcutLabel;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_SHORTCUT_LABEL_H__}
//// {$define __GTK_SHORTCUT_LABEL_H__}
//// {$include <gtk/gtkwidget.h>}

function GTK_TYPE_SHORTCUT_LABEL : longint; { return type might be wrong }

function GTK_SHORTCUT_LABEL(obj : longint) : longint;

function GTK_IS_SHORTCUT_LABEL(obj : longint) : longint;

type
  T_GtkShortcutLabel = TGtkShortcutLabel;
  T_GtkShortcutLabelClass = TGtkShortcutLabelClass;

function gtk_shortcut_label_get_type:TGType;cdecl;external;
function gtk_shortcut_label_new(accelerator:Pchar):^TGtkWidget;cdecl;external;
function gtk_shortcut_label_get_accelerator(self:PTGtkShortcutLabel):^char;cdecl;external;
procedure gtk_shortcut_label_set_accelerator(self:PTGtkShortcutLabel; accelerator:Pchar);cdecl;external;
function gtk_shortcut_label_get_disabled_text(self:PTGtkShortcutLabel):^char;cdecl;external;
procedure gtk_shortcut_label_set_disabled_text(self:PTGtkShortcutLabel; disabled_text:Pchar);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkdebug.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkdebug.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkdebug.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef __GTK_DEBUG_H__}
//// {$define __GTK_DEBUG_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <glib.h>}
//// {$include <gdk/gdk.h>}

type
  TGtkDebugFlags = (GTK_DEBUG_TEXT := 1 shl 0,GTK_DEBUG_TREE := 1 shl 1,
    GTK_DEBUG_KEYBINDINGS := 1 shl 2,GTK_DEBUG_MODULES := 1 shl 3,
    GTK_DEBUG_GEOMETRY := 1 shl 4,GTK_DEBUG_ICONTHEME := 1 shl 5,
    GTK_DEBUG_PRINTING := 1 shl 6,GTK_DEBUG_BUILDER := 1 shl 7,
    GTK_DEBUG_SIZE_REQUEST := 1 shl 8,GTK_DEBUG_NO_CSS_CACHE := 1 shl 9,
    GTK_DEBUG_INTERACTIVE := 1 shl 10,GTK_DEBUG_TOUCHSCREEN := 1 shl 11,
    GTK_DEBUG_ACTIONS := 1 shl 12,GTK_DEBUG_LAYOUT := 1 shl 13,
    GTK_DEBUG_SNAPSHOT := 1 shl 14,GTK_DEBUG_CONSTRAINTS := 1 shl 15,
    GTK_DEBUG_BUILDER_OBJECTS := 1 shl 16,GTK_DEBUG_A11Y := 1 shl 17,
    GTK_DEBUG_ICONFALLBACK := 1 shl 18,GTK_DEBUG_INVERT_TEXT_DIR := 1 shl 19
    );
//// {$ifdef G_ENABLE_DEBUG}
//// {$else}

//// {$endif}


function gtk_get_debug_flags:TGtkDebugFlags;cdecl;external;
procedure gtk_set_debug_flags(flags:TGtkDebugFlags);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtklistbase.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtklistbase.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtklistbase.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_LIST_BASE_H__}
//// {$define __GTK_LIST_BASE_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkwidget.h>}
//// {$include <gtk/gtkselectionmodel.h>}

function GTK_TYPE_LIST_BASE : longint; { return type might be wrong }

function GTK_LIST_BASE(o : longint) : longint;

function GTK_LIST_BASE_CLASS(k : longint) : longint;

function GTK_IS_LIST_BASE(o : longint) : longint;

function GTK_IS_LIST_BASE_CLASS(k : longint) : longint;

function GTK_LIST_BASE_GET_CLASS(o : longint) : longint;


type
  T_GtkListBase = TGtkListBase;
  T_GtkListBaseClass = TGtkListBaseClass;

function gtk_list_base_get_type:TGType;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkshortcutsgroup.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkshortcutsgroup.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkshortcutsgroup.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_SHORTCUTS_GROUP_H__}
//// {$define __GTK_SHORTCUTS_GROUP_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdk.h>}

function GTK_TYPE_SHORTCUTS_GROUP : longint; { return type might be wrong }

function GTK_SHORTCUTS_GROUP(obj : longint) : longint;

function GTK_IS_SHORTCUTS_GROUP(obj : longint) : longint;

type
  T_GtkShortcutsGroup = TGtkShortcutsGroup;
  T_GtkShortcutsGroupClass = TGtkShortcutsGroupClass;

function gtk_shortcuts_group_get_type:TGType;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkfilterlistmodel.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkfilterlistmodel.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkfilterlistmodel.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGListModel  = ^GListModel;
PGtkFilter  = ^GtkFilter;
PGtkFilterListModel  = ^GtkFilterListModel;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_FILTER_LIST_MODEL_H__}
//// {$define __GTK_FILTER_LIST_MODEL_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gio/gio.h>}
//// {$include <gtk/gtkfilter.h>}

function GTK_TYPE_FILTER_LIST_MODEL : longint; { return type might be wrong }

function gtk_filter_list_model_new(model:PTGListModel; filter:PTGtkFilter):^TGtkFilterListModel;cdecl;external;
procedure gtk_filter_list_model_set_filter(self:PTGtkFilterListModel; filter:PTGtkFilter);cdecl;external;
function gtk_filter_list_model_get_filter(self:PTGtkFilterListModel):^TGtkFilter;cdecl;external;
procedure gtk_filter_list_model_set_model(self:PTGtkFilterListModel; model:PTGListModel);cdecl;external;
function gtk_filter_list_model_get_model(self:PTGtkFilterListModel):^TGListModel;cdecl;external;
procedure gtk_filter_list_model_set_incremental(self:PTGtkFilterListModel; incremental:Tgboolean);cdecl;external;
function gtk_filter_list_model_get_incremental(self:PTGtkFilterListModel):Tgboolean;cdecl;external;
function gtk_filter_list_model_get_pending(self:PTGtkFilterListModel):Tguint;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkpasswordentrybuffer.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkpasswordentrybuffer.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkpasswordentrybuffer.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$include <gtk/gtkentrybuffer.h>}

function GTK_TYPE_PASSWORD_ENTRY_BUFFER : longint; { return type might be wrong }

function gtk_password_entry_buffer_new:^TGtkEntryBuffer;cdecl;external;

// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtktreeexpander.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtktreeexpander.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtktreeexpander.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGtkTreeExpander  = ^GtkTreeExpander;
PGtkTreeListRow  = ^GtkTreeListRow;
PGtkWidget  = ^GtkWidget;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_TREE_EXPANDER_H__}
//// {$define __GTK_TREE_EXPANDER_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtktreelistmodel.h>}
//// {$include <gtk/gtkwidget.h>}

function GTK_TYPE_TREE_EXPANDER : longint; { return type might be wrong }

function gtk_tree_expander_new:^TGtkWidget;cdecl;external;
function gtk_tree_expander_get_child(self:PTGtkTreeExpander):^TGtkWidget;cdecl;external;
procedure gtk_tree_expander_set_child(self:PTGtkTreeExpander; child:PTGtkWidget);cdecl;external;
function gtk_tree_expander_get_item(self:PTGtkTreeExpander):Tgpointer;cdecl;external;
function gtk_tree_expander_get_list_row(self:PTGtkTreeExpander):^TGtkTreeListRow;cdecl;external;
procedure gtk_tree_expander_set_list_row(self:PTGtkTreeExpander; list_row:PTGtkTreeListRow);cdecl;external;
function gtk_tree_expander_get_indent_for_icon(self:PTGtkTreeExpander):Tgboolean;cdecl;external;
procedure gtk_tree_expander_set_indent_for_icon(self:PTGtkTreeExpander; indent_for_icon:Tgboolean);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkcellrenderertoggle.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkcellrenderertoggle.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkcellrenderertoggle.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGtkCellRendererToggle  = ^GtkCellRendererToggle;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_CELL_RENDERER_TOGGLE_H__}
//// {$define __GTK_CELL_RENDERER_TOGGLE_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkcellrenderer.h>}

function GTK_TYPE_CELL_RENDERER_TOGGLE : longint; { return type might be wrong }

function GTK_CELL_RENDERER_TOGGLE(obj : longint) : longint;

function GTK_IS_CELL_RENDERER_TOGGLE(obj : longint) : longint;

type
  T_GtkCellRendererToggle = TGtkCellRendererToggle;

function gtk_cell_renderer_toggle_get_type:TGType;cdecl;external;
function gtk_cell_renderer_toggle_new:^TGtkCellRenderer;cdecl;external;
function gtk_cell_renderer_toggle_get_radio(toggle:PTGtkCellRendererToggle):Tgboolean;cdecl;external;
procedure gtk_cell_renderer_toggle_set_radio(toggle:PTGtkCellRendererToggle; radio:Tgboolean);cdecl;external;
function gtk_cell_renderer_toggle_get_active(toggle:PTGtkCellRendererToggle):Tgboolean;cdecl;external;
procedure gtk_cell_renderer_toggle_set_active(toggle:PTGtkCellRendererToggle; setting:Tgboolean);cdecl;external;
function gtk_cell_renderer_toggle_get_activatable(toggle:PTGtkCellRendererToggle):Tgboolean;cdecl;external;
procedure gtk_cell_renderer_toggle_set_activatable(toggle:PTGtkCellRendererToggle; setting:Tgboolean);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkgesture.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkgesture.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkgesture.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pdouble  = ^double;
PGdkEventSequence  = ^GdkEventSequence;
PGdkRectangle  = ^GdkRectangle;
PGtkGesture  = ^GtkGesture;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_GESTURE_H__}
//// {$define __GTK_GESTURE_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkeventcontroller.h>}
//// {$include <gtk/gtkenums.h>}

function GTK_TYPE_GESTURE : longint; { return type might be wrong }

function GTK_GESTURE(o : longint) : longint;

function GTK_GESTURE_CLASS(k : longint) : longint;

function GTK_IS_GESTURE(o : longint) : longint;

function GTK_IS_GESTURE_CLASS(k : longint) : longint;

function GTK_GESTURE_GET_CLASS(o : longint) : longint;

type
  T_GtkGestureClass = TGtkGestureClass;

function gtk_gesture_get_type:TGType;cdecl;external;
function gtk_gesture_get_device(gesture:PTGtkGesture):^TGdkDevice;cdecl;external;
function gtk_gesture_set_state(gesture:PTGtkGesture; state:TGtkEventSequenceState):Tgboolean;cdecl;external;
function gtk_gesture_get_sequence_state(gesture:PTGtkGesture; sequence:PTGdkEventSequence):TGtkEventSequenceState;cdecl;external;
function gtk_gesture_set_sequence_state(gesture:PTGtkGesture; sequence:PTGdkEventSequence; state:TGtkEventSequenceState):Tgboolean;cdecl;external;
function gtk_gesture_get_sequences(gesture:PTGtkGesture):^TGList;cdecl;external;
function gtk_gesture_get_last_updated_sequence(gesture:PTGtkGesture):^TGdkEventSequence;cdecl;external;
function gtk_gesture_handles_sequence(gesture:PTGtkGesture; sequence:PTGdkEventSequence):Tgboolean;cdecl;external;
function gtk_gesture_get_last_event(gesture:PTGtkGesture; sequence:PTGdkEventSequence):^TGdkEvent;cdecl;external;
function gtk_gesture_get_point(gesture:PTGtkGesture; sequence:PTGdkEventSequence; x:PTdouble; y:PTdouble):Tgboolean;cdecl;external;
function gtk_gesture_get_bounding_box(gesture:PTGtkGesture; rect:PTGdkRectangle):Tgboolean;cdecl;external;
function gtk_gesture_get_bounding_box_center(gesture:PTGtkGesture; x:PTdouble; y:PTdouble):Tgboolean;cdecl;external;
function gtk_gesture_is_active(gesture:PTGtkGesture):Tgboolean;cdecl;external;
function gtk_gesture_is_recognized(gesture:PTGtkGesture):Tgboolean;cdecl;external;
procedure gtk_gesture_group(group_gesture:PTGtkGesture; gesture:PTGtkGesture);cdecl;external;
procedure gtk_gesture_ungroup(gesture:PTGtkGesture);cdecl;external;
function gtk_gesture_get_group(gesture:PTGtkGesture):^TGList;cdecl;external;
function gtk_gesture_is_grouped_with(gesture:PTGtkGesture; other:PTGtkGesture):Tgboolean;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkpaned.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkpaned.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkpaned.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGtkPaned  = ^GtkPaned;
PGtkWidget  = ^GtkWidget;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef __GTK_PANED_H__}
//// {$define __GTK_PANED_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkwidget.h>}

function GTK_TYPE_PANED : longint; { return type might be wrong }

function GTK_PANED(obj : longint) : longint;

function GTK_IS_PANED(obj : longint) : longint;

type
  T_GtkPaned = TGtkPaned;

function gtk_paned_get_type:TGType;cdecl;external;
function gtk_paned_new(orientation:TGtkOrientation):^TGtkWidget;cdecl;external;
procedure gtk_paned_set_start_child(paned:PTGtkPaned; child:PTGtkWidget);cdecl;external;
function gtk_paned_get_start_child(paned:PTGtkPaned):^TGtkWidget;cdecl;external;
procedure gtk_paned_set_resize_start_child(paned:PTGtkPaned; resize:Tgboolean);cdecl;external;
function gtk_paned_get_resize_start_child(paned:PTGtkPaned):Tgboolean;cdecl;external;
procedure gtk_paned_set_end_child(paned:PTGtkPaned; child:PTGtkWidget);cdecl;external;
function gtk_paned_get_end_child(paned:PTGtkPaned):^TGtkWidget;cdecl;external;
procedure gtk_paned_set_shrink_start_child(paned:PTGtkPaned; resize:Tgboolean);cdecl;external;
function gtk_paned_get_shrink_start_child(paned:PTGtkPaned):Tgboolean;cdecl;external;
procedure gtk_paned_set_resize_end_child(paned:PTGtkPaned; resize:Tgboolean);cdecl;external;
function gtk_paned_get_resize_end_child(paned:PTGtkPaned):Tgboolean;cdecl;external;
procedure gtk_paned_set_shrink_end_child(paned:PTGtkPaned; resize:Tgboolean);cdecl;external;
function gtk_paned_get_shrink_end_child(paned:PTGtkPaned):Tgboolean;cdecl;external;
function gtk_paned_get_position(paned:PTGtkPaned):longint;cdecl;external;
procedure gtk_paned_set_position(paned:PTGtkPaned; position:longint);cdecl;external;
procedure gtk_paned_set_wide_handle(paned:PTGtkPaned; wide:Tgboolean);cdecl;external;
function gtk_paned_get_wide_handle(paned:PTGtkPaned):Tgboolean;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkcheckbutton.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkcheckbutton.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkcheckbutton.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGtkCheckButton  = ^GtkCheckButton;
PGtkWidget  = ^GtkWidget;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef __GTK_CHECK_BUTTON_H__}
//// {$define __GTK_CHECK_BUTTON_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtktogglebutton.h>}

function GTK_TYPE_CHECK_BUTTON : longint; { return type might be wrong }

function GTK_CHECK_BUTTON(obj : longint) : longint;

function GTK_CHECK_BUTTON_CLASS(klass : longint) : longint;

function GTK_IS_CHECK_BUTTON(obj : longint) : longint;

function GTK_IS_CHECK_BUTTON_CLASS(klass : longint) : longint;

function GTK_CHECK_BUTTON_GET_CLASS(obj : longint) : longint;

type
  T_GtkCheckButton = TGtkCheckButton;
  T_GtkCheckButtonClass = TGtkCheckButtonClass;
  T_GtkCheckButton = record
      parent_instance : TGtkWidget;
    end;


  T_GtkCheckButtonClass = record
      parent_class : TGtkWidgetClass;
      toggled : procedure (check_button:PTGtkCheckButton);cdecl;
      activate : procedure (check_button:PTGtkCheckButton);cdecl;
      padding : array[0..6] of Tgpointer;
    end;


function gtk_check_button_get_type:TGType;cdecl;external;
function gtk_check_button_new:^TGtkWidget;cdecl;external;
function gtk_check_button_new_with_label(_label:Pchar):^TGtkWidget;cdecl;external;
function gtk_check_button_new_with_mnemonic(_label:Pchar):^TGtkWidget;cdecl;external;
procedure gtk_check_button_set_inconsistent(check_button:PTGtkCheckButton; inconsistent:Tgboolean);cdecl;external;
function gtk_check_button_get_inconsistent(check_button:PTGtkCheckButton):Tgboolean;cdecl;external;
function gtk_check_button_get_active(self:PTGtkCheckButton):Tgboolean;cdecl;external;
procedure gtk_check_button_set_active(self:PTGtkCheckButton; setting:Tgboolean);cdecl;external;
function gtk_check_button_get_label(self:PTGtkCheckButton):^char;cdecl;external;
procedure gtk_check_button_set_label(self:PTGtkCheckButton; _label:Pchar);cdecl;external;
procedure gtk_check_button_set_group(self:PTGtkCheckButton; group:PTGtkCheckButton);cdecl;external;
function gtk_check_button_get_use_underline(self:PTGtkCheckButton):Tgboolean;cdecl;external;
procedure gtk_check_button_set_use_underline(self:PTGtkCheckButton; setting:Tgboolean);cdecl;external;
function gtk_check_button_get_child(button:PTGtkCheckButton):^TGtkWidget;cdecl;external;
procedure gtk_check_button_set_child(button:PTGtkCheckButton; child:PTGtkWidget);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkbutton.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkbutton.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkbutton.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGtkButton  = ^GtkButton;
PGtkWidget  = ^GtkWidget;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef __GTK_BUTTON_H__}
//// {$define __GTK_BUTTON_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkwidget.h>}

function GTK_TYPE_BUTTON : longint; { return type might be wrong }

function GTK_BUTTON(obj : longint) : longint;

function GTK_BUTTON_CLASS(klass : longint) : longint;

function GTK_IS_BUTTON(obj : longint) : longint;

function GTK_IS_BUTTON_CLASS(klass : longint) : longint;

function GTK_BUTTON_GET_CLASS(obj : longint) : longint;

type
  T_GtkButton = TGtkButton;
  T_GtkButtonPrivate = TGtkButtonPrivate;
  T_GtkButtonClass = TGtkButtonClass;

  T_GtkButton = record
      parent_instance : TGtkWidget;
    end;




  T_GtkButtonClass = record
      parent_class : TGtkWidgetClass;
      clicked : procedure (button:PTGtkButton);cdecl;
      activate : procedure (button:PTGtkButton);cdecl;
      padding : array[0..7] of Tgpointer;
    end;


function gtk_button_get_type:TGType;cdecl;external;
function gtk_button_new:^TGtkWidget;cdecl;external;
function gtk_button_new_with_label(_label:Pchar):^TGtkWidget;cdecl;external;
function gtk_button_new_from_icon_name(icon_name:Pchar):^TGtkWidget;cdecl;external;
function gtk_button_new_with_mnemonic(_label:Pchar):^TGtkWidget;cdecl;external;
procedure gtk_button_set_has_frame(button:PTGtkButton; has_frame:Tgboolean);cdecl;external;
function gtk_button_get_has_frame(button:PTGtkButton):Tgboolean;cdecl;external;
procedure gtk_button_set_label(button:PTGtkButton; _label:Pchar);cdecl;external;
function gtk_button_get_label(button:PTGtkButton):^char;cdecl;external;
procedure gtk_button_set_use_underline(button:PTGtkButton; use_underline:Tgboolean);cdecl;external;
function gtk_button_get_use_underline(button:PTGtkButton):Tgboolean;cdecl;external;
procedure gtk_button_set_icon_name(button:PTGtkButton; icon_name:Pchar);cdecl;external;
function gtk_button_get_icon_name(button:PTGtkButton):^char;cdecl;external;
procedure gtk_button_set_child(button:PTGtkButton; child:PTGtkWidget);cdecl;external;
function gtk_button_get_child(button:PTGtkButton):^TGtkWidget;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkbitset.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkbitset.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkbitset.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGtkBitset  = ^GtkBitset;
PGtkBitsetIter  = ^GtkBitsetIter;
Pguint  = ^guint;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_BITSET_H__}
//// {$define __GTK_BITSET_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtktypes.h>}

function GTK_TYPE_BITSET : longint; { return type might be wrong }

function gtk_bitset_get_type:TGType;cdecl;external;
function gtk_bitset_ref(self:PTGtkBitset):^TGtkBitset;cdecl;external;
procedure gtk_bitset_unref(self:PTGtkBitset);cdecl;external;
function gtk_bitset_contains(self:PTGtkBitset; value:Tguint):Tgboolean;cdecl;external;
function gtk_bitset_is_empty(self:PTGtkBitset):Tgboolean;cdecl;external;
function gtk_bitset_equals(self:PTGtkBitset; other:PTGtkBitset):Tgboolean;cdecl;external;
function gtk_bitset_get_size(self:PTGtkBitset):Tguint64;cdecl;external;
function gtk_bitset_get_size_in_range(self:PTGtkBitset; first:Tguint; last:Tguint):Tguint64;cdecl;external;
function gtk_bitset_get_nth(self:PTGtkBitset; nth:Tguint):Tguint;cdecl;external;
function gtk_bitset_get_minimum(self:PTGtkBitset):Tguint;cdecl;external;
function gtk_bitset_get_maximum(self:PTGtkBitset):Tguint;cdecl;external;
function gtk_bitset_new_empty:^TGtkBitset;cdecl;external;
function gtk_bitset_copy(self:PTGtkBitset):^TGtkBitset;cdecl;external;
function gtk_bitset_new_range(start:Tguint; n_items:Tguint):^TGtkBitset;cdecl;external;
procedure gtk_bitset_remove_all(self:PTGtkBitset);cdecl;external;
function gtk_bitset_add(self:PTGtkBitset; value:Tguint):Tgboolean;cdecl;external;
function gtk_bitset_remove(self:PTGtkBitset; value:Tguint):Tgboolean;cdecl;external;
procedure gtk_bitset_add_range(self:PTGtkBitset; start:Tguint; n_items:Tguint);cdecl;external;
procedure gtk_bitset_remove_range(self:PTGtkBitset; start:Tguint; n_items:Tguint);cdecl;external;
procedure gtk_bitset_add_range_closed(self:PTGtkBitset; first:Tguint; last:Tguint);cdecl;external;
procedure gtk_bitset_remove_range_closed(self:PTGtkBitset; first:Tguint; last:Tguint);cdecl;external;
procedure gtk_bitset_add_rectangle(self:PTGtkBitset; start:Tguint; width:Tguint; height:Tguint; stride:Tguint);cdecl;external;
procedure gtk_bitset_remove_rectangle(self:PTGtkBitset; start:Tguint; width:Tguint; height:Tguint; stride:Tguint);cdecl;external;
procedure gtk_bitset_union(self:PTGtkBitset; other:PTGtkBitset);cdecl;external;
procedure gtk_bitset_intersect(self:PTGtkBitset; other:PTGtkBitset);cdecl;external;
procedure gtk_bitset_subtract(self:PTGtkBitset; other:PTGtkBitset);cdecl;external;
procedure gtk_bitset_difference(self:PTGtkBitset; other:PTGtkBitset);cdecl;external;
procedure gtk_bitset_shift_left(self:PTGtkBitset; amount:Tguint);cdecl;external;
procedure gtk_bitset_shift_right(self:PTGtkBitset; amount:Tguint);cdecl;external;
procedure gtk_bitset_splice(self:PTGtkBitset; position:Tguint; removed:Tguint; added:Tguint);cdecl;external;

type
  T_GtkBitsetIter = TGtkBitsetIter;

  T_GtkBitsetIter = record
      private_data : array[0..9] of Tgpointer;
    end;


function gtk_bitset_iter_get_type:TGType;cdecl;external;
function gtk_bitset_iter_init_first(iter:PTGtkBitsetIter; set:PTGtkBitset; value:PTguint):Tgboolean;cdecl;external;
function gtk_bitset_iter_init_last(iter:PTGtkBitsetIter; set:PTGtkBitset; value:PTguint):Tgboolean;cdecl;external;
function gtk_bitset_iter_init_at(iter:PTGtkBitsetIter; set:PTGtkBitset; target:Tguint; value:PTguint):Tgboolean;cdecl;external;
function gtk_bitset_iter_next(iter:PTGtkBitsetIter; value:PTguint):Tgboolean;cdecl;external;
function gtk_bitset_iter_previous(iter:PTGtkBitsetIter; value:PTguint):Tgboolean;cdecl;external;
function gtk_bitset_iter_get_value(iter:PTGtkBitsetIter):Tguint;cdecl;external;
function gtk_bitset_iter_is_valid(iter:PTGtkBitsetIter):Tgboolean;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkborder.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkborder.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkborder.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGtkBorder  = ^GtkBorder;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef __GTK_BORDER_H__}
//// {$define __GTK_BORDER_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <glib-object.h>}
//// {$include <gdk/gdk.h>}
type
  T_GtkBorder = TGtkBorder;

function GTK_TYPE_BORDER : longint; { return type might be wrong }


type
  T_GtkBorder = record
      left : Tgint16;
      right : Tgint16;
      top : Tgint16;
      bottom : Tgint16;
    end;


function gtk_border_get_type:TGType;cdecl;external;
function gtk_border_new:^TGtkBorder;cdecl;external;
function gtk_border_copy(border_:PTGtkBorder):^TGtkBorder;cdecl;external;
procedure gtk_border_free(border_:PTGtkBorder);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkeventcontrollerscroll.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkeventcontrollerscroll.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkeventcontrollerscroll.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGtkEventControllerScroll  = ^GtkEventControllerScroll;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_EVENT_CONTROLLER_SCROLL_H__}
//// {$define __GTK_EVENT_CONTROLLER_SCROLL_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdk.h>}
//// {$include <gtk/gtkeventcontroller.h>}

function GTK_TYPE_EVENT_CONTROLLER_SCROLL : longint; { return type might be wrong }

function GTK_EVENT_CONTROLLER_SCROLL(o : longint) : longint;

function GTK_EVENT_CONTROLLER_SCROLL_CLASS(k : longint) : longint;

function GTK_IS_EVENT_CONTROLLER_SCROLL(o : longint) : longint;

function GTK_IS_EVENT_CONTROLLER_SCROLL_CLASS(k : longint) : longint;

function GTK_EVENT_CONTROLLER_SCROLL_GET_CLASS(o : longint) : longint;

type
  T_GtkEventControllerScroll = TGtkEventControllerScroll;
  T_GtkEventControllerScrollClass = TGtkEventControllerScrollClass;


  TGtkEventControllerScrollFlags = (GTK_EVENT_CONTROLLER_SCROLL_NONE := 0,
    GTK_EVENT_CONTROLLER_SCROLL_VERTICAL := 1 shl 0,
    GTK_EVENT_CONTROLLER_SCROLL_HORIZONTAL := 1 shl 1,
    GTK_EVENT_CONTROLLER_SCROLL_DISCRETE := 1 shl 2,
    GTK_EVENT_CONTROLLER_SCROLL_KINETIC := 1 shl 3,
    GTK_EVENT_CONTROLLER_SCROLL_BOTH_AXES := GTK_EVENT_CONTROLLER_SCROLL_VERTICAL or GTK_EVENT_CONTROLLER_SCROLL_HORIZONTAL
    );

function gtk_event_controller_scroll_get_type:TGType;cdecl;external;
function gtk_event_controller_scroll_new(flags:TGtkEventControllerScrollFlags):^TGtkEventController;cdecl;external;
procedure gtk_event_controller_scroll_set_flags(scroll:PTGtkEventControllerScroll; flags:TGtkEventControllerScrollFlags);cdecl;external;
function gtk_event_controller_scroll_get_flags(scroll:PTGtkEventControllerScroll):TGtkEventControllerScrollFlags;cdecl;external;
function gtk_event_controller_scroll_get_unit(scroll:PTGtkEventControllerScroll):TGdkScrollUnit;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkgesturepan.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkgesturepan.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkgesturepan.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGtkGesturePan  = ^GtkGesturePan;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_GESTURE_PAN_H__}
//// {$define __GTK_GESTURE_PAN_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkenums.h>}
//// {$include <gtk/gtkgesturedrag.h>}

function GTK_TYPE_GESTURE_PAN : longint; { return type might be wrong }

function GTK_GESTURE_PAN(o : longint) : longint;

function GTK_GESTURE_PAN_CLASS(k : longint) : longint;

function GTK_IS_GESTURE_PAN(o : longint) : longint;

function GTK_IS_GESTURE_PAN_CLASS(k : longint) : longint;

function GTK_GESTURE_PAN_GET_CLASS(o : longint) : longint;

type
  T_GtkGesturePan = TGtkGesturePan;
  T_GtkGesturePanClass = TGtkGesturePanClass;

function gtk_gesture_pan_get_type:TGType;cdecl;external;
function gtk_gesture_pan_new(orientation:TGtkOrientation):^TGtkGesture;cdecl;external;
function gtk_gesture_pan_get_orientation(gesture:PTGtkGesturePan):TGtkOrientation;cdecl;external;
procedure gtk_gesture_pan_set_orientation(gesture:PTGtkGesturePan; orientation:TGtkOrientation);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkpapersize.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkpapersize.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkpapersize.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGError  = ^GError;
PGKeyFile  = ^GKeyFile;
PGtkPaperSize  = ^GtkPaperSize;
PGVariant  = ^GVariant;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_PAPER_SIZE_H__}
//// {$define __GTK_PAPER_SIZE_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdk.h>}
//// {$include <gtk/gtkenums.h>}
type
  T_GtkPaperSize = TGtkPaperSize;

function GTK_TYPE_PAPER_SIZE : longint; { return type might be wrong }



const
  GTK_PAPER_NAME_A3 = 'iso_a3';  

  GTK_PAPER_NAME_A4 = 'iso_a4';  

  GTK_PAPER_NAME_A5 = 'iso_a5';  

  GTK_PAPER_NAME_B5 = 'iso_b5';  

  GTK_PAPER_NAME_LETTER = 'na_letter';  

  GTK_PAPER_NAME_EXECUTIVE = 'na_executive';  

  GTK_PAPER_NAME_LEGAL = 'na_legal';  

function gtk_paper_size_get_type:TGType;cdecl;external;
function gtk_paper_size_new(name:Pchar):^TGtkPaperSize;cdecl;external;
function gtk_paper_size_new_from_ppd(ppd_name:Pchar; ppd_display_name:Pchar; width:Tdouble; height:Tdouble):^TGtkPaperSize;cdecl;external;
function gtk_paper_size_new_from_ipp(ipp_name:Pchar; width:Tdouble; height:Tdouble):^TGtkPaperSize;cdecl;external;
function gtk_paper_size_new_custom(name:Pchar; display_name:Pchar; width:Tdouble; height:Tdouble; unit:TGtkUnit):^TGtkPaperSize;cdecl;external;
function gtk_paper_size_copy(other:PTGtkPaperSize):^TGtkPaperSize;cdecl;external;
procedure gtk_paper_size_free(size:PTGtkPaperSize);cdecl;external;
function gtk_paper_size_is_equal(size1:PTGtkPaperSize; size2:PTGtkPaperSize):Tgboolean;cdecl;external;
function gtk_paper_size_get_paper_sizes(include_custom:Tgboolean):^TGList;cdecl;external;

function gtk_paper_size_get_name(size:PTGtkPaperSize):^char;cdecl;external;
function gtk_paper_size_get_display_name(size:PTGtkPaperSize):^char;cdecl;external;
function gtk_paper_size_get_ppd_name(size:PTGtkPaperSize):^char;cdecl;external;
function gtk_paper_size_get_width(size:PTGtkPaperSize; unit:TGtkUnit):Tdouble;cdecl;external;
function gtk_paper_size_get_height(size:PTGtkPaperSize; unit:TGtkUnit):Tdouble;cdecl;external;
function gtk_paper_size_is_custom(size:PTGtkPaperSize):Tgboolean;cdecl;external;
function gtk_paper_size_is_ipp(size:PTGtkPaperSize):Tgboolean;cdecl;external;

procedure gtk_paper_size_set_size(size:PTGtkPaperSize; width:Tdouble; height:Tdouble; unit:TGtkUnit);cdecl;external;
function gtk_paper_size_get_default_top_margin(size:PTGtkPaperSize; unit:TGtkUnit):Tdouble;cdecl;external;
function gtk_paper_size_get_default_bottom_margin(size:PTGtkPaperSize; unit:TGtkUnit):Tdouble;cdecl;external;
function gtk_paper_size_get_default_left_margin(size:PTGtkPaperSize; unit:TGtkUnit):Tdouble;cdecl;external;
function gtk_paper_size_get_default_right_margin(size:PTGtkPaperSize; unit:TGtkUnit):Tdouble;cdecl;external;
function gtk_paper_size_get_default:^char;cdecl;external;
function gtk_paper_size_new_from_key_file(key_file:PTGKeyFile; group_name:Pchar; error:PPTGError):^TGtkPaperSize;cdecl;external;
procedure gtk_paper_size_to_key_file(size:PTGtkPaperSize; key_file:PTGKeyFile; group_name:Pchar);cdecl;external;
function gtk_paper_size_new_from_gvariant(variant:PTGVariant):^TGtkPaperSize;cdecl;external;
function gtk_paper_size_to_gvariant(paper_size:PTGtkPaperSize):^TGVariant;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkfilter.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkfilter.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkfilter.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGtkFilter  = ^GtkFilter;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_FILTER_H__}
//// {$define __GTK_FILTER_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdk.h>}

type
  TGtkFilterMatch = (GTK_FILTER_MATCH_SOME := 0,GTK_FILTER_MATCH_NONE,
    GTK_FILTER_MATCH_ALL);


  TGtkFilterChange = (GTK_FILTER_CHANGE_DIFFERENT := 0,GTK_FILTER_CHANGE_LESS_STRICT,
    GTK_FILTER_CHANGE_MORE_STRICT);

function GTK_TYPE_FILTER : longint; { return type might be wrong }



type
  T_GtkFilterClass = record
      parent_class : TGObjectClass;
      match : function (self:PTGtkFilter; item:Tgpointer):Tgboolean;cdecl;
      get_strictness : function (self:PTGtkFilter):TGtkFilterMatch;cdecl;
      _gtk_reserved1 : procedure ;cdecl;
      _gtk_reserved2 : procedure ;cdecl;
      _gtk_reserved3 : procedure ;cdecl;
      _gtk_reserved4 : procedure ;cdecl;
      _gtk_reserved5 : procedure ;cdecl;
      _gtk_reserved6 : procedure ;cdecl;
      _gtk_reserved7 : procedure ;cdecl;
      _gtk_reserved8 : procedure ;cdecl;
    end;


function gtk_filter_match(self:PTGtkFilter; item:Tgpointer):Tgboolean;cdecl;external;
function gtk_filter_get_strictness(self:PTGtkFilter):TGtkFilterMatch;cdecl;external;

procedure gtk_filter_changed(self:PTGtkFilter; change:TGtkFilterChange);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtksnapshot.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtksnapshot.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtksnapshot.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGBytes  = ^GBytes;
PGdkRGBA  = ^GdkRGBA;
PGdkTexture  = ^GdkTexture;
Pgraphene_matrix_t  = ^graphene_matrix_t;
Pgraphene_point3d_t  = ^graphene_point3d_t;
Pgraphene_point_t  = ^graphene_point_t;
Pgraphene_rect_t  = ^graphene_rect_t;
Pgraphene_size_t  = ^graphene_size_t;
Pgraphene_vec3_t  = ^graphene_vec3_t;
Pgraphene_vec4_t  = ^graphene_vec4_t;
PGskColorStop  = ^GskColorStop;
PGskGLShader  = ^GskGLShader;
PGskRenderNode  = ^GskRenderNode;
PGskRoundedRect  = ^GskRoundedRect;
PGskShadow  = ^GskShadow;
PGskTransform  = ^GskTransform;
PGtkSnapshot  = ^GtkSnapshot;
PGtkStyleContext  = ^GtkStyleContext;
PPangoLayout  = ^PangoLayout;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef __GTK_SNAPSHOT_H__}
//// {$define __GTK_SNAPSHOT_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gsk/gsk.h>}
//// {$include <gtk/gtktypes.h>}
type
  T_GtkSnapshotClass = TGtkSnapshotClass;

function GTK_TYPE_SNAPSHOT : longint; { return type might be wrong }

function GTK_SNAPSHOT(obj : longint) : longint;

function GTK_IS_SNAPSHOT(obj : longint) : longint;

function gtk_snapshot_get_type:TGType;cdecl;external;
function gtk_snapshot_new:^TGtkSnapshot;cdecl;external;
function gtk_snapshot_free_to_node(snapshot:PTGtkSnapshot):^TGskRenderNode;cdecl;external;
function gtk_snapshot_free_to_paintable(snapshot:PTGtkSnapshot; size:PTgraphene_size_t):^TGdkPaintable;cdecl;external;
function gtk_snapshot_to_node(snapshot:PTGtkSnapshot):^TGskRenderNode;cdecl;external;
function gtk_snapshot_to_paintable(snapshot:PTGtkSnapshot; size:PTgraphene_size_t):^TGdkPaintable;cdecl;external;
procedure gtk_snapshot_push_debug(snapshot:PTGtkSnapshot; message:Pchar; args:array of const);cdecl;external;
procedure gtk_snapshot_push_debug(snapshot:PTGtkSnapshot; message:Pchar);cdecl;external;
procedure gtk_snapshot_push_opacity(snapshot:PTGtkSnapshot; opacity:Tdouble);cdecl;external;
procedure gtk_snapshot_push_blur(snapshot:PTGtkSnapshot; radius:Tdouble);cdecl;external;
procedure gtk_snapshot_push_color_matrix(snapshot:PTGtkSnapshot; color_matrix:PTgraphene_matrix_t; color_offset:PTgraphene_vec4_t);cdecl;external;
procedure gtk_snapshot_push_repeat(snapshot:PTGtkSnapshot; bounds:PTgraphene_rect_t; child_bounds:PTgraphene_rect_t);cdecl;external;
procedure gtk_snapshot_push_clip(snapshot:PTGtkSnapshot; bounds:PTgraphene_rect_t);cdecl;external;
procedure gtk_snapshot_push_rounded_clip(snapshot:PTGtkSnapshot; bounds:PTGskRoundedRect);cdecl;external;
procedure gtk_snapshot_push_shadow(snapshot:PTGtkSnapshot; shadow:PTGskShadow; n_shadows:Tgsize);cdecl;external;
procedure gtk_snapshot_push_blend(snapshot:PTGtkSnapshot; blend_mode:TGskBlendMode);cdecl;external;
procedure gtk_snapshot_push_cross_fade(snapshot:PTGtkSnapshot; progress:Tdouble);cdecl;external;
procedure gtk_snapshot_push_gl_shader(snapshot:PTGtkSnapshot; shader:PTGskGLShader; bounds:PTgraphene_rect_t; take_args:PTGBytes);cdecl;external;
procedure gtk_snapshot_gl_shader_pop_texture(snapshot:PTGtkSnapshot);cdecl;external;
procedure gtk_snapshot_pop(snapshot:PTGtkSnapshot);cdecl;external;
procedure gtk_snapshot_save(snapshot:PTGtkSnapshot);cdecl;external;
procedure gtk_snapshot_restore(snapshot:PTGtkSnapshot);cdecl;external;
procedure gtk_snapshot_transform(snapshot:PTGtkSnapshot; transform:PTGskTransform);cdecl;external;
procedure gtk_snapshot_transform_matrix(snapshot:PTGtkSnapshot; matrix:PTgraphene_matrix_t);cdecl;external;
procedure gtk_snapshot_translate(snapshot:PTGtkSnapshot; point:PTgraphene_point_t);cdecl;external;
procedure gtk_snapshot_translate_3d(snapshot:PTGtkSnapshot; point:PTgraphene_point3d_t);cdecl;external;
procedure gtk_snapshot_rotate(snapshot:PTGtkSnapshot; angle:single);cdecl;external;
procedure gtk_snapshot_rotate_3d(snapshot:PTGtkSnapshot; angle:single; axis:PTgraphene_vec3_t);cdecl;external;
procedure gtk_snapshot_scale(snapshot:PTGtkSnapshot; factor_x:single; factor_y:single);cdecl;external;
procedure gtk_snapshot_scale_3d(snapshot:PTGtkSnapshot; factor_x:single; factor_y:single; factor_z:single);cdecl;external;
procedure gtk_snapshot_perspective(snapshot:PTGtkSnapshot; depth:single);cdecl;external;
procedure gtk_snapshot_append_node(snapshot:PTGtkSnapshot; node:PTGskRenderNode);cdecl;external;
function gtk_snapshot_append_cairo(snapshot:PTGtkSnapshot; bounds:PTgraphene_rect_t):^Tcairo_t;cdecl;external;
procedure gtk_snapshot_append_texture(snapshot:PTGtkSnapshot; texture:PTGdkTexture; bounds:PTgraphene_rect_t);cdecl;external;
procedure gtk_snapshot_append_color(snapshot:PTGtkSnapshot; color:PTGdkRGBA; bounds:PTgraphene_rect_t);cdecl;external;
procedure gtk_snapshot_append_linear_gradient(snapshot:PTGtkSnapshot; bounds:PTgraphene_rect_t; start_point:PTgraphene_point_t; end_point:PTgraphene_point_t; stops:PTGskColorStop; 
            n_stops:Tgsize);cdecl;external;
procedure gtk_snapshot_append_repeating_linear_gradient(snapshot:PTGtkSnapshot; bounds:PTgraphene_rect_t; start_point:PTgraphene_point_t; end_point:PTgraphene_point_t; stops:PTGskColorStop; 
            n_stops:Tgsize);cdecl;external;
procedure gtk_snapshot_append_radial_gradient(snapshot:PTGtkSnapshot; bounds:PTgraphene_rect_t; center:PTgraphene_point_t; hradius:single; vradius:single; 
            start:single; end:single; stops:PTGskColorStop; n_stops:Tgsize);cdecl;external;
procedure gtk_snapshot_append_repeating_radial_gradient(snapshot:PTGtkSnapshot; bounds:PTgraphene_rect_t; center:PTgraphene_point_t; hradius:single; vradius:single; 
            start:single; end:single; stops:PTGskColorStop; n_stops:Tgsize);cdecl;external;
procedure gtk_snapshot_append_conic_gradient(snapshot:PTGtkSnapshot; bounds:PTgraphene_rect_t; center:PTgraphene_point_t; rotation:single; stops:PTGskColorStop; 
            n_stops:Tgsize);cdecl;external;
procedure gtk_snapshot_append_border(snapshot:PTGtkSnapshot; outline:PTGskRoundedRect; border_width:array[0..3] of single; border_color:array[0..3] of TGdkRGBA);cdecl;external;
procedure gtk_snapshot_append_inset_shadow(snapshot:PTGtkSnapshot; outline:PTGskRoundedRect; color:PTGdkRGBA; dx:single; dy:single; 
            spread:single; blur_radius:single);cdecl;external;
procedure gtk_snapshot_append_outset_shadow(snapshot:PTGtkSnapshot; outline:PTGskRoundedRect; color:PTGdkRGBA; dx:single; dy:single; 
            spread:single; blur_radius:single);cdecl;external;

procedure gtk_snapshot_append_layout(snapshot:PTGtkSnapshot; layout:PTPangoLayout; color:PTGdkRGBA);cdecl;external;
procedure gtk_snapshot_render_background(snapshot:PTGtkSnapshot; context:PTGtkStyleContext; x:Tdouble; y:Tdouble; width:Tdouble; 
            height:Tdouble);cdecl;external;
procedure gtk_snapshot_render_frame(snapshot:PTGtkSnapshot; context:PTGtkStyleContext; x:Tdouble; y:Tdouble; width:Tdouble; 
            height:Tdouble);cdecl;external;
procedure gtk_snapshot_render_focus(snapshot:PTGtkSnapshot; context:PTGtkStyleContext; x:Tdouble; y:Tdouble; width:Tdouble; 
            height:Tdouble);cdecl;external;
procedure gtk_snapshot_render_layout(snapshot:PTGtkSnapshot; context:PTGtkStyleContext; x:Tdouble; y:Tdouble; layout:PTPangoLayout);cdecl;external;
procedure gtk_snapshot_render_insertion_cursor(snapshot:PTGtkSnapshot; context:PTGtkStyleContext; x:Tdouble; y:Tdouble; layout:PTPangoLayout; 
            index:longint; direction:TPangoDirection);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtksingleselection.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtksingleselection.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtksingleselection.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGListModel  = ^GListModel;
PGtkSingleSelection  = ^GtkSingleSelection;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_SINGLE_SELECTION_H__}
//// {$define __GTK_SINGLE_SELECTION_H__}
//// {$include <gtk/gtktypes.h>}

function GTK_TYPE_SINGLE_SELECTION : longint; { return type might be wrong }

function gtk_single_selection_new(model:PTGListModel):^TGtkSingleSelection;cdecl;external;
function gtk_single_selection_get_model(self:PTGtkSingleSelection):^TGListModel;cdecl;external;
procedure gtk_single_selection_set_model(self:PTGtkSingleSelection; model:PTGListModel);cdecl;external;
function gtk_single_selection_get_selected(self:PTGtkSingleSelection):Tguint;cdecl;external;
procedure gtk_single_selection_set_selected(self:PTGtkSingleSelection; position:Tguint);cdecl;external;
function gtk_single_selection_get_selected_item(self:PTGtkSingleSelection):Tgpointer;cdecl;external;
function gtk_single_selection_get_autoselect(self:PTGtkSingleSelection):Tgboolean;cdecl;external;
procedure gtk_single_selection_set_autoselect(self:PTGtkSingleSelection; autoselect:Tgboolean);cdecl;external;
function gtk_single_selection_get_can_unselect(self:PTGtkSingleSelection):Tgboolean;cdecl;external;
procedure gtk_single_selection_set_can_unselect(self:PTGtkSingleSelection; can_unselect:Tgboolean);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtklevelbar.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtklevelbar.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtklevelbar.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
Pdouble  = ^double;
PGtkLevelBar  = ^GtkLevelBar;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_LEVEL_BAR_H__}
//// {$define __GTK_LEVEL_BAR_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkwidget.h>}

function GTK_TYPE_LEVEL_BAR : longint; { return type might be wrong }

function GTK_LEVEL_BAR(obj : longint) : longint;

function GTK_IS_LEVEL_BAR(obj : longint) : longint;


const
  GTK_LEVEL_BAR_OFFSET_LOW = 'low';  

  GTK_LEVEL_BAR_OFFSET_HIGH = 'high';  

  GTK_LEVEL_BAR_OFFSET_FULL = 'full';  
type
  T_GtkLevelBar = TGtkLevelBar;

function gtk_level_bar_get_type:TGType;cdecl;external;
function gtk_level_bar_new:^TGtkWidget;cdecl;external;
function gtk_level_bar_new_for_interval(min_value:Tdouble; max_value:Tdouble):^TGtkWidget;cdecl;external;
procedure gtk_level_bar_set_mode(self:PTGtkLevelBar; mode:TGtkLevelBarMode);cdecl;external;
function gtk_level_bar_get_mode(self:PTGtkLevelBar):TGtkLevelBarMode;cdecl;external;
procedure gtk_level_bar_set_value(self:PTGtkLevelBar; value:Tdouble);cdecl;external;
function gtk_level_bar_get_value(self:PTGtkLevelBar):Tdouble;cdecl;external;
procedure gtk_level_bar_set_min_value(self:PTGtkLevelBar; value:Tdouble);cdecl;external;
function gtk_level_bar_get_min_value(self:PTGtkLevelBar):Tdouble;cdecl;external;
procedure gtk_level_bar_set_max_value(self:PTGtkLevelBar; value:Tdouble);cdecl;external;
function gtk_level_bar_get_max_value(self:PTGtkLevelBar):Tdouble;cdecl;external;
procedure gtk_level_bar_set_inverted(self:PTGtkLevelBar; inverted:Tgboolean);cdecl;external;
function gtk_level_bar_get_inverted(self:PTGtkLevelBar):Tgboolean;cdecl;external;
procedure gtk_level_bar_add_offset_value(self:PTGtkLevelBar; name:Pchar; value:Tdouble);cdecl;external;
procedure gtk_level_bar_remove_offset_value(self:PTGtkLevelBar; name:Pchar);cdecl;external;
function gtk_level_bar_get_offset_value(self:PTGtkLevelBar; name:Pchar; value:PTdouble):Tgboolean;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkspinner.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkspinner.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkspinner.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGtkSpinner  = ^GtkSpinner;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_SPINNER_H__}
//// {$define __GTK_SPINNER_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkwidget.h>}

function GTK_TYPE_SPINNER : longint; { return type might be wrong }

function GTK_SPINNER(obj : longint) : longint;

function GTK_IS_SPINNER(obj : longint) : longint;

type
  T_GtkSpinner = TGtkSpinner;

function gtk_spinner_get_type:TGType;cdecl;external;
function gtk_spinner_new:^TGtkWidget;cdecl;external;
procedure gtk_spinner_start(spinner:PTGtkSpinner);cdecl;external;
procedure gtk_spinner_stop(spinner:PTGtkSpinner);cdecl;external;
procedure gtk_spinner_set_spinning(spinner:PTGtkSpinner; spinning:Tgboolean);cdecl;external;
function gtk_spinner_get_spinning(spinner:PTGtkSpinner):Tgboolean;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkpopovermenubar.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkpopovermenubar.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkpopovermenubar.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGMenuModel  = ^GMenuModel;
PGtkPopoverMenuBar  = ^GtkPopoverMenuBar;
PGtkWidget  = ^GtkWidget;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_POPOVER_MENU_BAR_H__}
//// {$define __GTK_POPOVER_MENU_BAR_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkpopover.h>}

function GTK_TYPE_POPOVER_MENU_BAR : longint; { return type might be wrong }

function GTK_POPOVER_MENU_BAR(obj : longint) : longint;

function GTK_IS_POPOVER_MENU_BAR(obj : longint) : longint;

type
  T_GtkPopoverMenuBar = TGtkPopoverMenuBar;

function gtk_popover_menu_bar_get_type:TGType;cdecl;external;
function gtk_popover_menu_bar_new_from_model(model:PTGMenuModel):^TGtkWidget;cdecl;external;
procedure gtk_popover_menu_bar_set_menu_model(bar:PTGtkPopoverMenuBar; model:PTGMenuModel);cdecl;external;
function gtk_popover_menu_bar_get_menu_model(bar:PTGtkPopoverMenuBar):^TGMenuModel;cdecl;external;
function gtk_popover_menu_bar_add_child(bar:PTGtkPopoverMenuBar; child:PTGtkWidget; id:Pchar):Tgboolean;cdecl;external;
function gtk_popover_menu_bar_remove_child(bar:PTGtkPopoverMenuBar; child:PTGtkWidget):Tgboolean;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkmediafile.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkmediafile.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkmediafile.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGFile  = ^GFile;
PGInputStream  = ^GInputStream;
PGtkMediaFile  = ^GtkMediaFile;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_MEDIA_FILE_H__}
//// {$define __GTK_MEDIA_FILE_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkmediastream.h>}

const
  GTK_MEDIA_FILE_EXTENSION_POINT_NAME = 'gtk-media-file';  

function GTK_TYPE_MEDIA_FILE : longint; { return type might be wrong }


type
  T_GtkMediaFileClass = record
      parent_class : TGtkMediaStreamClass;
      open : procedure (self:PTGtkMediaFile);cdecl;
      close : procedure (self:PTGtkMediaFile);cdecl;
      _gtk_reserved1 : procedure ;cdecl;
      _gtk_reserved2 : procedure ;cdecl;
      _gtk_reserved3 : procedure ;cdecl;
      _gtk_reserved4 : procedure ;cdecl;
    end;


function gtk_media_file_new:^TGtkMediaStream;cdecl;external;
function gtk_media_file_new_for_filename(filename:Pchar):^TGtkMediaStream;cdecl;external;
function gtk_media_file_new_for_resource(resource_path:Pchar):^TGtkMediaStream;cdecl;external;
function gtk_media_file_new_for_file(file:PTGFile):^TGtkMediaStream;cdecl;external;
function gtk_media_file_new_for_input_stream(stream:PTGInputStream):^TGtkMediaStream;cdecl;external;
procedure gtk_media_file_clear(self:PTGtkMediaFile);cdecl;external;
procedure gtk_media_file_set_filename(self:PTGtkMediaFile; filename:Pchar);cdecl;external;
procedure gtk_media_file_set_resource(self:PTGtkMediaFile; resource_path:Pchar);cdecl;external;
procedure gtk_media_file_set_file(self:PTGtkMediaFile; file:PTGFile);cdecl;external;
function gtk_media_file_get_file(self:PTGtkMediaFile):^TGFile;cdecl;external;
procedure gtk_media_file_set_input_stream(self:PTGtkMediaFile; stream:PTGInputStream);cdecl;external;
function gtk_media_file_get_input_stream(self:PTGtkMediaFile):^TGInputStream;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkactionbar.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkactionbar.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkactionbar.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGtkActionBar  = ^GtkActionBar;
PGtkWidget  = ^GtkWidget;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_ACTION_BAR_H__}
//// {$define __GTK_ACTION_BAR_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkwidget.h>}

function GTK_TYPE_ACTION_BAR : longint; { return type might be wrong }

function GTK_ACTION_BAR(obj : longint) : longint;

function GTK_IS_ACTION_BAR(obj : longint) : longint;

type
  T_GtkActionBar = TGtkActionBar;

function gtk_action_bar_get_type:TGType;cdecl;external;
function gtk_action_bar_new:^TGtkWidget;cdecl;external;
function gtk_action_bar_get_center_widget(action_bar:PTGtkActionBar):^TGtkWidget;cdecl;external;
procedure gtk_action_bar_set_center_widget(action_bar:PTGtkActionBar; center_widget:PTGtkWidget);cdecl;external;
procedure gtk_action_bar_pack_start(action_bar:PTGtkActionBar; child:PTGtkWidget);cdecl;external;
procedure gtk_action_bar_pack_end(action_bar:PTGtkActionBar; child:PTGtkWidget);cdecl;external;
procedure gtk_action_bar_remove(action_bar:PTGtkActionBar; child:PTGtkWidget);cdecl;external;
procedure gtk_action_bar_set_revealed(action_bar:PTGtkActionBar; revealed:Tgboolean);cdecl;external;
function gtk_action_bar_get_revealed(action_bar:PTGtkActionBar):Tgboolean;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtktreeviewcolumn.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtktreeviewcolumn.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtktreeviewcolumn.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGtkCellArea  = ^GtkCellArea;
PGtkCellRenderer  = ^GtkCellRenderer;
PGtkTreeIter  = ^GtkTreeIter;
PGtkTreeModel  = ^GtkTreeModel;
PGtkTreeViewColumn  = ^GtkTreeViewColumn;
PGtkWidget  = ^GtkWidget;
Plongint  = ^longint;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_TREE_VIEW_COLUMN_H__}
//// {$define __GTK_TREE_VIEW_COLUMN_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkcellrenderer.h>}
//// {$include <gtk/gtktreemodel.h>}
//// {$include <gtk/gtktreesortable.h>}
//// {$include <gtk/gtkcellarea.h>}

function GTK_TYPE_TREE_VIEW_COLUMN : longint; { return type might be wrong }

function GTK_TREE_VIEW_COLUMN(obj : longint) : longint;

function GTK_IS_TREE_VIEW_COLUMN(obj : longint) : longint;

type
  T_GtkTreeViewColumn = TGtkTreeViewColumn;


  TGtkTreeViewColumnSizing = (GTK_TREE_VIEW_COLUMN_GROW_ONLY,GTK_TREE_VIEW_COLUMN_AUTOSIZE,
    GTK_TREE_VIEW_COLUMN_FIXED);


  TGtkTreeCellDataFunc = procedure (tree_column:PTGtkTreeViewColumn; cell:PTGtkCellRenderer; tree_model:PTGtkTreeModel; iter:PTGtkTreeIter; data:Tgpointer);cdecl;

function gtk_tree_view_column_get_type:TGType;cdecl;external;
function gtk_tree_view_column_new:^TGtkTreeViewColumn;cdecl;external;
function gtk_tree_view_column_new_with_area(area:PTGtkCellArea):^TGtkTreeViewColumn;cdecl;external;
function gtk_tree_view_column_new_with_attributes(title:Pchar; cell:PTGtkCellRenderer; args:array of const):^TGtkTreeViewColumn;cdecl;external;
function gtk_tree_view_column_new_with_attributes(title:Pchar; cell:PTGtkCellRenderer):^TGtkTreeViewColumn;cdecl;external;
procedure gtk_tree_view_column_pack_start(tree_column:PTGtkTreeViewColumn; cell:PTGtkCellRenderer; expand:Tgboolean);cdecl;external;
procedure gtk_tree_view_column_pack_end(tree_column:PTGtkTreeViewColumn; cell:PTGtkCellRenderer; expand:Tgboolean);cdecl;external;
procedure gtk_tree_view_column_clear(tree_column:PTGtkTreeViewColumn);cdecl;external;
procedure gtk_tree_view_column_add_attribute(tree_column:PTGtkTreeViewColumn; cell_renderer:PTGtkCellRenderer; attribute:Pchar; column:longint);cdecl;external;
procedure gtk_tree_view_column_set_attributes(tree_column:PTGtkTreeViewColumn; cell_renderer:PTGtkCellRenderer; args:array of const);cdecl;external;
procedure gtk_tree_view_column_set_attributes(tree_column:PTGtkTreeViewColumn; cell_renderer:PTGtkCellRenderer);cdecl;external;
procedure gtk_tree_view_column_set_cell_data_func(tree_column:PTGtkTreeViewColumn; cell_renderer:PTGtkCellRenderer; func:TGtkTreeCellDataFunc; func_data:Tgpointer; destroy:TGDestroyNotify);cdecl;external;
procedure gtk_tree_view_column_clear_attributes(tree_column:PTGtkTreeViewColumn; cell_renderer:PTGtkCellRenderer);cdecl;external;
procedure gtk_tree_view_column_set_spacing(tree_column:PTGtkTreeViewColumn; spacing:longint);cdecl;external;
function gtk_tree_view_column_get_spacing(tree_column:PTGtkTreeViewColumn):longint;cdecl;external;
procedure gtk_tree_view_column_set_visible(tree_column:PTGtkTreeViewColumn; visible:Tgboolean);cdecl;external;
function gtk_tree_view_column_get_visible(tree_column:PTGtkTreeViewColumn):Tgboolean;cdecl;external;
procedure gtk_tree_view_column_set_resizable(tree_column:PTGtkTreeViewColumn; resizable:Tgboolean);cdecl;external;
function gtk_tree_view_column_get_resizable(tree_column:PTGtkTreeViewColumn):Tgboolean;cdecl;external;
procedure gtk_tree_view_column_set_sizing(tree_column:PTGtkTreeViewColumn; _type:TGtkTreeViewColumnSizing);cdecl;external;
function gtk_tree_view_column_get_sizing(tree_column:PTGtkTreeViewColumn):TGtkTreeViewColumnSizing;cdecl;external;
function gtk_tree_view_column_get_x_offset(tree_column:PTGtkTreeViewColumn):longint;cdecl;external;
function gtk_tree_view_column_get_width(tree_column:PTGtkTreeViewColumn):longint;cdecl;external;
function gtk_tree_view_column_get_fixed_width(tree_column:PTGtkTreeViewColumn):longint;cdecl;external;
procedure gtk_tree_view_column_set_fixed_width(tree_column:PTGtkTreeViewColumn; fixed_width:longint);cdecl;external;
procedure gtk_tree_view_column_set_min_width(tree_column:PTGtkTreeViewColumn; min_width:longint);cdecl;external;
function gtk_tree_view_column_get_min_width(tree_column:PTGtkTreeViewColumn):longint;cdecl;external;
procedure gtk_tree_view_column_set_max_width(tree_column:PTGtkTreeViewColumn; max_width:longint);cdecl;external;
function gtk_tree_view_column_get_max_width(tree_column:PTGtkTreeViewColumn):longint;cdecl;external;
procedure gtk_tree_view_column_clicked(tree_column:PTGtkTreeViewColumn);cdecl;external;

procedure gtk_tree_view_column_set_title(tree_column:PTGtkTreeViewColumn; title:Pchar);cdecl;external;
function gtk_tree_view_column_get_title(tree_column:PTGtkTreeViewColumn):^char;cdecl;external;
procedure gtk_tree_view_column_set_expand(tree_column:PTGtkTreeViewColumn; expand:Tgboolean);cdecl;external;
function gtk_tree_view_column_get_expand(tree_column:PTGtkTreeViewColumn):Tgboolean;cdecl;external;
procedure gtk_tree_view_column_set_clickable(tree_column:PTGtkTreeViewColumn; clickable:Tgboolean);cdecl;external;
function gtk_tree_view_column_get_clickable(tree_column:PTGtkTreeViewColumn):Tgboolean;cdecl;external;
procedure gtk_tree_view_column_set_widget(tree_column:PTGtkTreeViewColumn; widget:PTGtkWidget);cdecl;external;
function gtk_tree_view_column_get_widget(tree_column:PTGtkTreeViewColumn):^TGtkWidget;cdecl;external;
procedure gtk_tree_view_column_set_alignment(tree_column:PTGtkTreeViewColumn; xalign:single);cdecl;external;
function gtk_tree_view_column_get_alignment(tree_column:PTGtkTreeViewColumn):single;cdecl;external;
procedure gtk_tree_view_column_set_reorderable(tree_column:PTGtkTreeViewColumn; reorderable:Tgboolean);cdecl;external;
function gtk_tree_view_column_get_reorderable(tree_column:PTGtkTreeViewColumn):Tgboolean;cdecl;external;

procedure gtk_tree_view_column_set_sort_column_id(tree_column:PTGtkTreeViewColumn; sort_column_id:longint);cdecl;external;
function gtk_tree_view_column_get_sort_column_id(tree_column:PTGtkTreeViewColumn):longint;cdecl;external;
procedure gtk_tree_view_column_set_sort_indicator(tree_column:PTGtkTreeViewColumn; setting:Tgboolean);cdecl;external;
function gtk_tree_view_column_get_sort_indicator(tree_column:PTGtkTreeViewColumn):Tgboolean;cdecl;external;
procedure gtk_tree_view_column_set_sort_order(tree_column:PTGtkTreeViewColumn; order:TGtkSortType);cdecl;external;
function gtk_tree_view_column_get_sort_order(tree_column:PTGtkTreeViewColumn):TGtkSortType;cdecl;external;

procedure gtk_tree_view_column_cell_set_cell_data(tree_column:PTGtkTreeViewColumn; tree_model:PTGtkTreeModel; iter:PTGtkTreeIter; is_expander:Tgboolean; is_expanded:Tgboolean);cdecl;external;
procedure gtk_tree_view_column_cell_get_size(tree_column:PTGtkTreeViewColumn; x_offset:Plongint; y_offset:Plongint; width:Plongint; height:Plongint);cdecl;external;
function gtk_tree_view_column_cell_is_visible(tree_column:PTGtkTreeViewColumn):Tgboolean;cdecl;external;
procedure gtk_tree_view_column_focus_cell(tree_column:PTGtkTreeViewColumn; cell:PTGtkCellRenderer);cdecl;external;
function gtk_tree_view_column_cell_get_position(tree_column:PTGtkTreeViewColumn; cell_renderer:PTGtkCellRenderer; x_offset:Plongint; width:Plongint):Tgboolean;cdecl;external;
procedure gtk_tree_view_column_queue_resize(tree_column:PTGtkTreeViewColumn);cdecl;external;
function gtk_tree_view_column_get_tree_view(tree_column:PTGtkTreeViewColumn):^TGtkWidget;cdecl;external;
function gtk_tree_view_column_get_button(tree_column:PTGtkTreeViewColumn):^TGtkWidget;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkconstraintlayout.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkconstraintlayout.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkconstraintlayout.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGError  = ^GError;
PGHashTable  = ^GHashTable;
PGtkConstraint  = ^GtkConstraint;
PGtkConstraintGuide  = ^GtkConstraintGuide;
PGtkConstraintLayout  = ^GtkConstraintLayout;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$include <gtk/gtklayoutmanager.h>}
//// {$include <gtk/gtkconstraint.h>}
//// {$include <gtk/gtkconstraintguide.h>}

function GTK_TYPE_CONSTRAINT_LAYOUT : longint; { return type might be wrong }

function GTK_TYPE_CONSTRAINT_LAYOUT_CHILD : longint; { return type might be wrong }

function GTK_CONSTRAINT_VFL_PARSER_ERROR : longint; { return type might be wrong }

function gtk_constraint_vfl_parser_error_quark:TGQuark;cdecl;external;
function gtk_constraint_layout_new:^TGtkLayoutManager;cdecl;external;
procedure gtk_constraint_layout_add_constraint(layout:PTGtkConstraintLayout; constraint:PTGtkConstraint);cdecl;external;
procedure gtk_constraint_layout_remove_constraint(layout:PTGtkConstraintLayout; constraint:PTGtkConstraint);cdecl;external;
procedure gtk_constraint_layout_add_guide(layout:PTGtkConstraintLayout; guide:PTGtkConstraintGuide);cdecl;external;
procedure gtk_constraint_layout_remove_guide(layout:PTGtkConstraintLayout; guide:PTGtkConstraintGuide);cdecl;external;
procedure gtk_constraint_layout_remove_all_constraints(layout:PTGtkConstraintLayout);cdecl;external;
function gtk_constraint_layout_add_constraints_from_description(layout:PTGtkConstraintLayout; lines:PPchar; n_lines:Tgsize; hspacing:longint; vspacing:longint; 
           error:PPTGError; first_view:Pchar; args:array of const):^TGList;cdecl;external;
function gtk_constraint_layout_add_constraints_from_description(layout:PTGtkConstraintLayout; lines:PPchar; n_lines:Tgsize; hspacing:longint; vspacing:longint; 
           error:PPTGError; first_view:Pchar):^TGList;cdecl;external;
function gtk_constraint_layout_add_constraints_from_descriptionv(layout:PTGtkConstraintLayout; lines:PPchar; n_lines:Tgsize; hspacing:longint; vspacing:longint; 
           views:PTGHashTable; error:PPTGError):^TGList;cdecl;external;
function gtk_constraint_layout_observe_constraints(layout:PTGtkConstraintLayout):^TGListModel;cdecl;external;
function gtk_constraint_layout_observe_guides(layout:PTGtkConstraintLayout):^TGListModel;cdecl;external;

// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkviewport.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkviewport.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkviewport.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGtkAdjustment  = ^GtkAdjustment;
PGtkViewport  = ^GtkViewport;
PGtkWidget  = ^GtkWidget;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef __GTK_VIEWPORT_H__}
//// {$define __GTK_VIEWPORT_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkwidget.h>}

function GTK_TYPE_VIEWPORT : longint; { return type might be wrong }

function GTK_VIEWPORT(obj : longint) : longint;

function GTK_IS_VIEWPORT(obj : longint) : longint;

type
  T_GtkViewport = TGtkViewport;

function gtk_viewport_get_type:TGType;cdecl;external;
function gtk_viewport_new(hadjustment:PTGtkAdjustment; vadjustment:PTGtkAdjustment):^TGtkWidget;cdecl;external;
function gtk_viewport_get_scroll_to_focus(viewport:PTGtkViewport):Tgboolean;cdecl;external;
procedure gtk_viewport_set_scroll_to_focus(viewport:PTGtkViewport; scroll_to_focus:Tgboolean);cdecl;external;
procedure gtk_viewport_set_child(viewport:PTGtkViewport; child:PTGtkWidget);cdecl;external;
function gtk_viewport_get_child(viewport:PTGtkViewport):^TGtkWidget;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkeventcontroller.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkeventcontroller.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkeventcontroller.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGtkEventController  = ^GtkEventController;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_EVENT_CONTROLLER_H__}
//// {$define __GTK_EVENT_CONTROLLER_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
type
  T_GtkEventControllerClass = TGtkEventControllerClass;
//// {$include <gdk/gdk.h>}
//// {$include <gtk/gtktypes.h>}
//// {$include <gtk/gtkenums.h>}

function GTK_TYPE_EVENT_CONTROLLER : longint; { return type might be wrong }

function GTK_EVENT_CONTROLLER(o : longint) : longint;

function GTK_EVENT_CONTROLLER_CLASS(k : longint) : longint;

function GTK_IS_EVENT_CONTROLLER(o : longint) : longint;

function GTK_IS_EVENT_CONTROLLER_CLASS(k : longint) : longint;

function GTK_EVENT_CONTROLLER_GET_CLASS(o : longint) : longint;

function gtk_event_controller_get_type:TGType;cdecl;external;
function gtk_event_controller_get_widget(controller:PTGtkEventController):^TGtkWidget;cdecl;external;
procedure gtk_event_controller_reset(controller:PTGtkEventController);cdecl;external;
function gtk_event_controller_get_propagation_phase(controller:PTGtkEventController):TGtkPropagationPhase;cdecl;external;
procedure gtk_event_controller_set_propagation_phase(controller:PTGtkEventController; phase:TGtkPropagationPhase);cdecl;external;
function gtk_event_controller_get_propagation_limit(controller:PTGtkEventController):TGtkPropagationLimit;cdecl;external;
procedure gtk_event_controller_set_propagation_limit(controller:PTGtkEventController; limit:TGtkPropagationLimit);cdecl;external;
function gtk_event_controller_get_name(controller:PTGtkEventController):^char;cdecl;external;
procedure gtk_event_controller_set_name(controller:PTGtkEventController; name:Pchar);cdecl;external;
procedure gtk_event_controller_set_static_name(controller:PTGtkEventController; name:Pchar);cdecl;external;
function gtk_event_controller_get_current_event(controller:PTGtkEventController):^TGdkEvent;cdecl;external;
function gtk_event_controller_get_current_event_time(controller:PTGtkEventController):Tguint32;cdecl;external;
function gtk_event_controller_get_current_event_device(controller:PTGtkEventController):^TGdkDevice;cdecl;external;
function gtk_event_controller_get_current_event_state(controller:PTGtkEventController):TGdkModifierType;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkoverlaylayout.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkoverlaylayout.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkoverlaylayout.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGtkOverlayLayoutChild  = ^GtkOverlayLayoutChild;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$include <gtk/gtklayoutmanager.h>}

function GTK_TYPE_OVERLAY_LAYOUT : longint; { return type might be wrong }

function GTK_TYPE_OVERLAY_LAYOUT_CHILD : longint; { return type might be wrong }


function gtk_overlay_layout_new:^TGtkLayoutManager;cdecl;external;

procedure gtk_overlay_layout_child_set_measure(child:PTGtkOverlayLayoutChild; measure:Tgboolean);cdecl;external;
function gtk_overlay_layout_child_get_measure(child:PTGtkOverlayLayoutChild):Tgboolean;cdecl;external;
procedure gtk_overlay_layout_child_set_clip_overlay(child:PTGtkOverlayLayoutChild; clip_overlay:Tgboolean);cdecl;external;
function gtk_overlay_layout_child_get_clip_overlay(child:PTGtkOverlayLayoutChild):Tgboolean;cdecl;external;

// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtksortlistmodel.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtksortlistmodel.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtksortlistmodel.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGListModel  = ^GListModel;
PGtkSorter  = ^GtkSorter;
PGtkSortListModel  = ^GtkSortListModel;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_SORT_LIST_MODEL_H__}
//// {$define __GTK_SORT_LIST_MODEL_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gio/gio.h>}
//// {$include <gtk/gtkwidget.h>}
//// {$include <gtk/gtksorter.h>}

function GTK_TYPE_SORT_LIST_MODEL : longint; { return type might be wrong }

function gtk_sort_list_model_new(model:PTGListModel; sorter:PTGtkSorter):^TGtkSortListModel;cdecl;external;
procedure gtk_sort_list_model_set_sorter(self:PTGtkSortListModel; sorter:PTGtkSorter);cdecl;external;
function gtk_sort_list_model_get_sorter(self:PTGtkSortListModel):^TGtkSorter;cdecl;external;
procedure gtk_sort_list_model_set_model(self:PTGtkSortListModel; model:PTGListModel);cdecl;external;
function gtk_sort_list_model_get_model(self:PTGtkSortListModel):^TGListModel;cdecl;external;
procedure gtk_sort_list_model_set_incremental(self:PTGtkSortListModel; incremental:Tgboolean);cdecl;external;
function gtk_sort_list_model_get_incremental(self:PTGtkSortListModel):Tgboolean;cdecl;external;
function gtk_sort_list_model_get_pending(self:PTGtkSortListModel):Tguint;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkcellrenderertext.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkcellrenderertext.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkcellrenderertext.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGtkCellRendererText  = ^GtkCellRendererText;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_CELL_RENDERER_TEXT_H__}
//// {$define __GTK_CELL_RENDERER_TEXT_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkcellrenderer.h>}

function GTK_TYPE_CELL_RENDERER_TEXT : longint; { return type might be wrong }

function GTK_CELL_RENDERER_TEXT(obj : longint) : longint;

function GTK_CELL_RENDERER_TEXT_CLASS(klass : longint) : longint;

function GTK_IS_CELL_RENDERER_TEXT(obj : longint) : longint;

function GTK_IS_CELL_RENDERER_TEXT_CLASS(klass : longint) : longint;

function GTK_CELL_RENDERER_TEXT_GET_CLASS(obj : longint) : longint;

type
  T_GtkCellRendererText = TGtkCellRendererText;
  T_GtkCellRendererTextClass = TGtkCellRendererTextClass;
  T_GtkCellRendererText = record
      parent : TGtkCellRenderer;
    end;


  T_GtkCellRendererTextClass = record
      parent_class : TGtkCellRendererClass;
      edited : procedure (cell_renderer_text:PTGtkCellRendererText; path:Pchar; new_text:Pchar);cdecl;
      padding : array[0..7] of Tgpointer;
    end;


function gtk_cell_renderer_text_get_type:TGType;cdecl;external;
function gtk_cell_renderer_text_new:^TGtkCellRenderer;cdecl;external;
procedure gtk_cell_renderer_text_set_fixed_height_from_font(renderer:PTGtkCellRendererText; number_of_rows:longint);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkeventcontrollermotion.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkeventcontrollermotion.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkeventcontrollermotion.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGtkEventControllerMotion  = ^GtkEventControllerMotion;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_EVENT_CONTROLLER_MOTION_H__}
//// {$define __GTK_EVENT_CONTROLLER_MOTION_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdk.h>}
//// {$include <gtk/gtkeventcontroller.h>}

function GTK_TYPE_EVENT_CONTROLLER_MOTION : longint; { return type might be wrong }

function GTK_EVENT_CONTROLLER_MOTION(o : longint) : longint;

function GTK_EVENT_CONTROLLER_MOTION_CLASS(k : longint) : longint;

function GTK_IS_EVENT_CONTROLLER_MOTION(o : longint) : longint;

function GTK_IS_EVENT_CONTROLLER_MOTION_CLASS(k : longint) : longint;

function GTK_EVENT_CONTROLLER_MOTION_GET_CLASS(o : longint) : longint;

type
  T_GtkEventControllerMotion = TGtkEventControllerMotion;
  T_GtkEventControllerMotionClass = TGtkEventControllerMotionClass;

function gtk_event_controller_motion_get_type:TGType;cdecl;external;
function gtk_event_controller_motion_new:^TGtkEventController;cdecl;external;
function gtk_event_controller_motion_contains_pointer(self:PTGtkEventControllerMotion):Tgboolean;cdecl;external;
function gtk_event_controller_motion_is_pointer(self:PTGtkEventControllerMotion):Tgboolean;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkrender.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkrender.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkrender.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pcairo_t  = ^cairo_t;
PGdkTexture  = ^GdkTexture;
PGtkStyleContext  = ^GtkStyleContext;
PPangoLayout  = ^PangoLayout;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_RENDER_H__}
//// {$define __GTK_RENDER_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <cairo.h>}
//// {$include <pango/pango.h>}
//// {$include <gdk/gdk.h>}
//// {$include <gtk/gtkenums.h>}
//// {$include <gtk/gtktypes.h>}

procedure gtk_render_check(context:PTGtkStyleContext; cr:PTcairo_t; x:Tdouble; y:Tdouble; width:Tdouble; 
            height:Tdouble);cdecl;external;
procedure gtk_render_option(context:PTGtkStyleContext; cr:PTcairo_t; x:Tdouble; y:Tdouble; width:Tdouble; 
            height:Tdouble);cdecl;external;
procedure gtk_render_arrow(context:PTGtkStyleContext; cr:PTcairo_t; angle:Tdouble; x:Tdouble; y:Tdouble; 
            size:Tdouble);cdecl;external;
procedure gtk_render_background(context:PTGtkStyleContext; cr:PTcairo_t; x:Tdouble; y:Tdouble; width:Tdouble; 
            height:Tdouble);cdecl;external;
procedure gtk_render_frame(context:PTGtkStyleContext; cr:PTcairo_t; x:Tdouble; y:Tdouble; width:Tdouble; 
            height:Tdouble);cdecl;external;
procedure gtk_render_expander(context:PTGtkStyleContext; cr:PTcairo_t; x:Tdouble; y:Tdouble; width:Tdouble; 
            height:Tdouble);cdecl;external;
procedure gtk_render_focus(context:PTGtkStyleContext; cr:PTcairo_t; x:Tdouble; y:Tdouble; width:Tdouble; 
            height:Tdouble);cdecl;external;
procedure gtk_render_layout(context:PTGtkStyleContext; cr:PTcairo_t; x:Tdouble; y:Tdouble; layout:PTPangoLayout);cdecl;external;
procedure gtk_render_line(context:PTGtkStyleContext; cr:PTcairo_t; x0:Tdouble; y0:Tdouble; x1:Tdouble; 
            y1:Tdouble);cdecl;external;
procedure gtk_render_handle(context:PTGtkStyleContext; cr:PTcairo_t; x:Tdouble; y:Tdouble; width:Tdouble; 
            height:Tdouble);cdecl;external;
procedure gtk_render_activity(context:PTGtkStyleContext; cr:PTcairo_t; x:Tdouble; y:Tdouble; width:Tdouble; 
            height:Tdouble);cdecl;external;
procedure gtk_render_icon(context:PTGtkStyleContext; cr:PTcairo_t; texture:PTGdkTexture; x:Tdouble; y:Tdouble);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkcellrenderer.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkcellrenderer.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkcellrenderer.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGdkEvent  = ^GdkEvent;
PGdkRectangle  = ^GdkRectangle;
PGtkCellEditable  = ^GtkCellEditable;
PGtkCellRenderer  = ^GtkCellRenderer;
PGtkRequisition  = ^GtkRequisition;
PGtkSnapshot  = ^GtkSnapshot;
PGtkWidget  = ^GtkWidget;
Plongint  = ^longint;
Psingle  = ^single;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_CELL_RENDERER_H__}
//// {$define __GTK_CELL_RENDERER_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkcelleditable.h>}


type
  TGtkCellRendererState = (GTK_CELL_RENDERER_SELECTED := 1 shl 0,GTK_CELL_RENDERER_PRELIT := 1 shl 1,
    GTK_CELL_RENDERER_INSENSITIVE := 1 shl 2,GTK_CELL_RENDERER_SORTED := 1 shl 3,
    GTK_CELL_RENDERER_FOCUSED := 1 shl 4,GTK_CELL_RENDERER_EXPANDABLE := 1 shl 5,
    GTK_CELL_RENDERER_EXPANDED := 1 shl 6);


  TGtkCellRendererMode = (GTK_CELL_RENDERER_MODE_INERT,GTK_CELL_RENDERER_MODE_ACTIVATABLE,
    GTK_CELL_RENDERER_MODE_EDITABLE);

function GTK_TYPE_CELL_RENDERER : longint; { return type might be wrong }

function GTK_CELL_RENDERER(obj : longint) : longint;

function GTK_CELL_RENDERER_CLASS(klass : longint) : longint;

function GTK_IS_CELL_RENDERER(obj : longint) : longint;

function GTK_IS_CELL_RENDERER_CLASS(klass : longint) : longint;

function GTK_CELL_RENDERER_GET_CLASS(obj : longint) : longint;

type
  T_GtkCellRenderer = TGtkCellRenderer;
  T_GtkCellRendererPrivate = TGtkCellRendererPrivate;
  T_GtkCellRendererClass = TGtkCellRendererClass;
  T_GtkCellRendererClassPrivate = TGtkCellRendererClassPrivate;

  T_GtkCellRenderer = record
      parent_instance : TGInitiallyUnowned;
      priv : ^TGtkCellRendererPrivate;
    end;







  T_GtkCellRendererClass = record
      parent_class : TGInitiallyUnownedClass;
      get_request_mode : function (cell:PTGtkCellRenderer):TGtkSizeRequestMode;cdecl;
      get_preferred_width : procedure (cell:PTGtkCellRenderer; widget:PTGtkWidget; minimum_size:Plongint; natural_size:Plongint);cdecl;
      get_preferred_height_for_width : procedure (cell:PTGtkCellRenderer; widget:PTGtkWidget; width:longint; minimum_height:Plongint; natural_height:Plongint);cdecl;
      get_preferred_height : procedure (cell:PTGtkCellRenderer; widget:PTGtkWidget; minimum_size:Plongint; natural_size:Plongint);cdecl;
      get_preferred_width_for_height : procedure (cell:PTGtkCellRenderer; widget:PTGtkWidget; height:longint; minimum_width:Plongint; natural_width:Plongint);cdecl;
      get_aligned_area : procedure (cell:PTGtkCellRenderer; widget:PTGtkWidget; flags:TGtkCellRendererState; cell_area:PTGdkRectangle; aligned_area:PTGdkRectangle);cdecl;
      snapshot : procedure (cell:PTGtkCellRenderer; snapshot:PTGtkSnapshot; widget:PTGtkWidget; background_area:PTGdkRectangle; cell_area:PTGdkRectangle; 
                    flags:TGtkCellRendererState);cdecl;
      activate : function (cell:PTGtkCellRenderer; event:PTGdkEvent; widget:PTGtkWidget; path:Pchar; background_area:PTGdkRectangle; 
                   cell_area:PTGdkRectangle; flags:TGtkCellRendererState):Tgboolean;cdecl;
      start_editing : function (cell:PTGtkCellRenderer; event:PTGdkEvent; widget:PTGtkWidget; path:Pchar; background_area:PTGdkRectangle; 
                   cell_area:PTGdkRectangle; flags:TGtkCellRendererState):PTGtkCellEditable;cdecl;
      editing_canceled : procedure (cell:PTGtkCellRenderer);cdecl;
      editing_started : procedure (cell:PTGtkCellRenderer; editable:PTGtkCellEditable; path:Pchar);cdecl;
      padding : array[0..7] of Tgpointer;
    end;


function gtk_cell_renderer_get_type:TGType;cdecl;external;
function gtk_cell_renderer_get_request_mode(cell:PTGtkCellRenderer):TGtkSizeRequestMode;cdecl;external;
procedure gtk_cell_renderer_get_preferred_width(cell:PTGtkCellRenderer; widget:PTGtkWidget; minimum_size:Plongint; natural_size:Plongint);cdecl;external;
procedure gtk_cell_renderer_get_preferred_height_for_width(cell:PTGtkCellRenderer; widget:PTGtkWidget; width:longint; minimum_height:Plongint; natural_height:Plongint);cdecl;external;
procedure gtk_cell_renderer_get_preferred_height(cell:PTGtkCellRenderer; widget:PTGtkWidget; minimum_size:Plongint; natural_size:Plongint);cdecl;external;
procedure gtk_cell_renderer_get_preferred_width_for_height(cell:PTGtkCellRenderer; widget:PTGtkWidget; height:longint; minimum_width:Plongint; natural_width:Plongint);cdecl;external;
procedure gtk_cell_renderer_get_preferred_size(cell:PTGtkCellRenderer; widget:PTGtkWidget; minimum_size:PTGtkRequisition; natural_size:PTGtkRequisition);cdecl;external;
procedure gtk_cell_renderer_get_aligned_area(cell:PTGtkCellRenderer; widget:PTGtkWidget; flags:TGtkCellRendererState; cell_area:PTGdkRectangle; aligned_area:PTGdkRectangle);cdecl;external;
procedure gtk_cell_renderer_snapshot(cell:PTGtkCellRenderer; snapshot:PTGtkSnapshot; widget:PTGtkWidget; background_area:PTGdkRectangle; cell_area:PTGdkRectangle; 
            flags:TGtkCellRendererState);cdecl;external;
function gtk_cell_renderer_activate(cell:PTGtkCellRenderer; event:PTGdkEvent; widget:PTGtkWidget; path:Pchar; background_area:PTGdkRectangle; 
           cell_area:PTGdkRectangle; flags:TGtkCellRendererState):Tgboolean;cdecl;external;
function gtk_cell_renderer_start_editing(cell:PTGtkCellRenderer; event:PTGdkEvent; widget:PTGtkWidget; path:Pchar; background_area:PTGdkRectangle; 
           cell_area:PTGdkRectangle; flags:TGtkCellRendererState):^TGtkCellEditable;cdecl;external;
procedure gtk_cell_renderer_set_fixed_size(cell:PTGtkCellRenderer; width:longint; height:longint);cdecl;external;
procedure gtk_cell_renderer_get_fixed_size(cell:PTGtkCellRenderer; width:Plongint; height:Plongint);cdecl;external;
procedure gtk_cell_renderer_set_alignment(cell:PTGtkCellRenderer; xalign:single; yalign:single);cdecl;external;
procedure gtk_cell_renderer_get_alignment(cell:PTGtkCellRenderer; xalign:Psingle; yalign:Psingle);cdecl;external;
procedure gtk_cell_renderer_set_padding(cell:PTGtkCellRenderer; xpad:longint; ypad:longint);cdecl;external;
procedure gtk_cell_renderer_get_padding(cell:PTGtkCellRenderer; xpad:Plongint; ypad:Plongint);cdecl;external;
procedure gtk_cell_renderer_set_visible(cell:PTGtkCellRenderer; visible:Tgboolean);cdecl;external;
function gtk_cell_renderer_get_visible(cell:PTGtkCellRenderer):Tgboolean;cdecl;external;
procedure gtk_cell_renderer_set_sensitive(cell:PTGtkCellRenderer; sensitive:Tgboolean);cdecl;external;
function gtk_cell_renderer_get_sensitive(cell:PTGtkCellRenderer):Tgboolean;cdecl;external;
function gtk_cell_renderer_is_activatable(cell:PTGtkCellRenderer):Tgboolean;cdecl;external;
procedure gtk_cell_renderer_set_is_expander(cell:PTGtkCellRenderer; is_expander:Tgboolean);cdecl;external;
function gtk_cell_renderer_get_is_expander(cell:PTGtkCellRenderer):Tgboolean;cdecl;external;
procedure gtk_cell_renderer_set_is_expanded(cell:PTGtkCellRenderer; is_expanded:Tgboolean);cdecl;external;
function gtk_cell_renderer_get_is_expanded(cell:PTGtkCellRenderer):Tgboolean;cdecl;external;

procedure gtk_cell_renderer_stop_editing(cell:PTGtkCellRenderer; canceled:Tgboolean);cdecl;external;
procedure _gtk_cell_renderer_calc_offset(cell:PTGtkCellRenderer; cell_area:PTGdkRectangle; direction:TGtkTextDirection; width:longint; height:longint; 
            x_offset:Plongint; y_offset:Plongint);cdecl;external;
function gtk_cell_renderer_get_state(cell:PTGtkCellRenderer; widget:PTGtkWidget; cell_state:TGtkCellRendererState):TGtkStateFlags;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkeventcontrollerfocus.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkeventcontrollerfocus.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkeventcontrollerfocus.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGtkEventControllerFocus  = ^GtkEventControllerFocus;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_EVENT_CONTROLLER_FOCUS_H__}
//// {$define __GTK_EVENT_CONTROLLER_FOCUS_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdk.h>}
//// {$include <gtk/gtkeventcontroller.h>}
//// {$include <gtk/gtkimcontext.h>}

function GTK_TYPE_EVENT_CONTROLLER_FOCUS : longint; { return type might be wrong }

function GTK_EVENT_CONTROLLER_FOCUS(o : longint) : longint;

function GTK_EVENT_CONTROLLER_FOCUS_CLASS(k : longint) : longint;

function GTK_IS_EVENT_CONTROLLER_FOCUS(o : longint) : longint;

function GTK_IS_EVENT_CONTROLLER_FOCUS_CLASS(k : longint) : longint;

function GTK_EVENT_CONTROLLER_FOCUS_GET_CLASS(o : longint) : longint;

type
  T_GtkEventControllerFocus = TGtkEventControllerFocus;
  T_GtkEventControllerFocusClass = TGtkEventControllerFocusClass;

function gtk_event_controller_focus_get_type:TGType;cdecl;external;
function gtk_event_controller_focus_new:^TGtkEventController;cdecl;external;
function gtk_event_controller_focus_contains_focus(self:PTGtkEventControllerFocus):Tgboolean;cdecl;external;
function gtk_event_controller_focus_is_focus(self:PTGtkEventControllerFocus):Tgboolean;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkscalebutton.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkscalebutton.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkscalebutton.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGtkAdjustment  = ^GtkAdjustment;
PGtkScaleButton  = ^GtkScaleButton;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef __GTK_SCALE_BUTTON_H__}
//// {$define __GTK_SCALE_BUTTON_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkwidget.h>}

function GTK_TYPE_SCALE_BUTTON : longint; { return type might be wrong }

function GTK_SCALE_BUTTON(obj : longint) : longint;

function GTK_SCALE_BUTTON_CLASS(klass : longint) : longint;

function GTK_IS_SCALE_BUTTON(obj : longint) : longint;

function GTK_IS_SCALE_BUTTON_CLASS(klass : longint) : longint;

function GTK_SCALE_BUTTON_GET_CLASS(obj : longint) : longint;

type
  T_GtkScaleButton = TGtkScaleButton;
  T_GtkScaleButtonClass = TGtkScaleButtonClass;
  T_GtkScaleButton = record
      parent_instance : TGtkWidget;
    end;



  T_GtkScaleButtonClass = record
      parent_class : TGtkWidgetClass;
      value_changed : procedure (button:PTGtkScaleButton; value:Tdouble);cdecl;
      padding : array[0..7] of Tgpointer;
    end;


function gtk_scale_button_get_type:TGType;cdecl;external;
function gtk_scale_button_new(min:Tdouble; max:Tdouble; step:Tdouble; icons:PPchar):^TGtkWidget;cdecl;external;
procedure gtk_scale_button_set_icons(button:PTGtkScaleButton; icons:PPchar);cdecl;external;
function gtk_scale_button_get_value(button:PTGtkScaleButton):Tdouble;cdecl;external;
procedure gtk_scale_button_set_value(button:PTGtkScaleButton; value:Tdouble);cdecl;external;
function gtk_scale_button_get_adjustment(button:PTGtkScaleButton):^TGtkAdjustment;cdecl;external;
procedure gtk_scale_button_set_adjustment(button:PTGtkScaleButton; adjustment:PTGtkAdjustment);cdecl;external;
function gtk_scale_button_get_plus_button(button:PTGtkScaleButton):^TGtkWidget;cdecl;external;
function gtk_scale_button_get_minus_button(button:PTGtkScaleButton):^TGtkWidget;cdecl;external;
function gtk_scale_button_get_popup(button:PTGtkScaleButton):^TGtkWidget;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtksymbolicpaintable.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtksymbolicpaintable.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtksymbolicpaintable.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGdkRGBA  = ^GdkRGBA;
PGdkSnapshot  = ^GdkSnapshot;
PGtkSymbolicPaintable  = ^GtkSymbolicPaintable;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_SYMBOLIC_PAINTABLE_H__}
//// {$define __GTK_SYMBOLIC_PAINTABLE_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtktypes.h>}

function GTK_TYPE_SYMBOLIC_PAINTABLE : longint; { return type might be wrong }




type
  T_GtkSymbolicPaintableInterface = record
      g_iface : TGTypeInterface;
      snapshot_symbolic : procedure (paintable:PTGtkSymbolicPaintable; snapshot:PTGdkSnapshot; width:Tdouble; height:Tdouble; colors:PTGdkRGBA; 
                    n_colors:Tgsize);cdecl;
    end;


procedure gtk_symbolic_paintable_snapshot_symbolic(paintable:PTGtkSymbolicPaintable; snapshot:PTGdkSnapshot; width:Tdouble; height:Tdouble; colors:PTGdkRGBA; 
            n_colors:Tgsize);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkimmodule.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkimmodule.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkimmodule.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_IM_MODULE_H__}
//// {$define __GTK_IM_MODULE_H__}
//// {$include <gtk/gtk.h>}

const
  GTK_IM_MODULE_EXTENSION_POINT_NAME = 'gtk-im-module';  
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtktextchild.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtktextchild.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtktextchild.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGtkTextChildAnchor  = ^GtkTextChildAnchor;
Pguint  = ^guint;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef __GTK_TEXT_CHILD_H__}
//// {$define __GTK_TEXT_CHILD_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdk.h>}
//// {$include <glib-object.h>}
//// {$include <gtk/gtkwidget.h>}

type
  T_GtkTextChildAnchor = TGtkTextChildAnchor;
  T_GtkTextChildAnchorClass = TGtkTextChildAnchorClass;

function GTK_TYPE_TEXT_CHILD_ANCHOR : longint; { return type might be wrong }

function GTK_TEXT_CHILD_ANCHOR(object : longint) : longint;

function GTK_TEXT_CHILD_ANCHOR_CLASS(klass : longint) : longint;

function GTK_IS_TEXT_CHILD_ANCHOR(object : longint) : longint;

function GTK_IS_TEXT_CHILD_ANCHOR_CLASS(klass : longint) : longint;

function GTK_TEXT_CHILD_ANCHOR_GET_CLASS(obj : longint) : longint;


type
  T_GtkTextChildAnchor = record
      parent_instance : TGObject;
      segment : Tgpointer;
    end;


  T_GtkTextChildAnchorClass = record
      parent_class : TGObjectClass;
      _gtk_reserved1 : procedure ;cdecl;
      _gtk_reserved2 : procedure ;cdecl;
      _gtk_reserved3 : procedure ;cdecl;
      _gtk_reserved4 : procedure ;cdecl;
    end;


function gtk_text_child_anchor_get_type:TGType;cdecl;external;
function gtk_text_child_anchor_new:^TGtkTextChildAnchor;cdecl;external;
function gtk_text_child_anchor_new_with_replacement(character:Pchar):^TGtkTextChildAnchor;cdecl;external;
function gtk_text_child_anchor_get_widgets(anchor:PTGtkTextChildAnchor; out_len:PTguint):^^TGtkWidget;cdecl;external;
function gtk_text_child_anchor_get_deleted(anchor:PTGtkTextChildAnchor):Tgboolean;cdecl;external;
//// {$endif}

// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtksearchbar.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtksearchbar.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtksearchbar.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGtkEditable  = ^GtkEditable;
PGtkSearchBar  = ^GtkSearchBar;
PGtkWidget  = ^GtkWidget;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef __GTK_SEARCH_BAR_H__}
//// {$define __GTK_SEARCH_BAR_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkwidget.h>}
//// {$include <gtk/gtkeditable.h>}

function GTK_TYPE_SEARCH_BAR : longint; { return type might be wrong }

function GTK_SEARCH_BAR(obj : longint) : longint;

function GTK_IS_SEARCH_BAR(obj : longint) : longint;

type
  T_GtkSearchBar = TGtkSearchBar;

function gtk_search_bar_get_type:TGType;cdecl;external;
function gtk_search_bar_new:^TGtkWidget;cdecl;external;
procedure gtk_search_bar_connect_entry(bar:PTGtkSearchBar; entry:PTGtkEditable);cdecl;external;
function gtk_search_bar_get_search_mode(bar:PTGtkSearchBar):Tgboolean;cdecl;external;
procedure gtk_search_bar_set_search_mode(bar:PTGtkSearchBar; search_mode:Tgboolean);cdecl;external;
function gtk_search_bar_get_show_close_button(bar:PTGtkSearchBar):Tgboolean;cdecl;external;
procedure gtk_search_bar_set_show_close_button(bar:PTGtkSearchBar; visible:Tgboolean);cdecl;external;
procedure gtk_search_bar_set_key_capture_widget(bar:PTGtkSearchBar; widget:PTGtkWidget);cdecl;external;
function gtk_search_bar_get_key_capture_widget(bar:PTGtkSearchBar):^TGtkWidget;cdecl;external;
procedure gtk_search_bar_set_child(bar:PTGtkSearchBar; child:PTGtkWidget);cdecl;external;
function gtk_search_bar_get_child(bar:PTGtkSearchBar):^TGtkWidget;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtklistitem.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtklistitem.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtklistitem.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGtkListItem  = ^GtkListItem;
PGtkWidget  = ^GtkWidget;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_LIST_ITEM_H__}
//// {$define __GTK_LIST_ITEM_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtktypes.h>}

function GTK_TYPE_LIST_ITEM : longint; { return type might be wrong }

function GTK_LIST_ITEM(o : longint) : longint;

function GTK_LIST_ITEM_CLASS(k : longint) : longint;

function GTK_IS_LIST_ITEM(o : longint) : longint;

function GTK_IS_LIST_ITEM_CLASS(k : longint) : longint;

function GTK_LIST_ITEM_GET_CLASS(o : longint) : longint;

type
  T_GtkListItem = TGtkListItem;
  T_GtkListItemClass = TGtkListItemClass;

function gtk_list_item_get_type:TGType;cdecl;external;
function gtk_list_item_get_item(self:PTGtkListItem):Tgpointer;cdecl;external;
function gtk_list_item_get_position(self:PTGtkListItem):Tguint;cdecl;external;
function gtk_list_item_get_selected(self:PTGtkListItem):Tgboolean;cdecl;external;
function gtk_list_item_get_selectable(self:PTGtkListItem):Tgboolean;cdecl;external;
procedure gtk_list_item_set_selectable(self:PTGtkListItem; selectable:Tgboolean);cdecl;external;
function gtk_list_item_get_activatable(self:PTGtkListItem):Tgboolean;cdecl;external;
procedure gtk_list_item_set_activatable(self:PTGtkListItem; activatable:Tgboolean);cdecl;external;
procedure gtk_list_item_set_child(self:PTGtkListItem; child:PTGtkWidget);cdecl;external;
function gtk_list_item_get_child(self:PTGtkListItem):^TGtkWidget;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtktypes.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtktypes.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtktypes.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef __GTK_TYPES_H__}
//// {$define __GTK_TYPES_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdk.h>}
type
  T_GtkAdjustment = TGtkAdjustment;
  T_GtkBitset = TGtkBitset;
  T_GtkBuilder = TGtkBuilder;
  T_GtkBuilderScope = TGtkBuilderScope;
  T_GtkCssStyleChange = TGtkCssStyleChange;
  T_GtkEventController = TGtkEventController;
  T_GtkGesture = TGtkGesture;
  T_GtkLayoutManager = TGtkLayoutManager;
  T_GtkListItem = TGtkListItem;
  T_GtkListItemFactory = TGtkListItemFactory;
  T_GtkNative = TGtkNative;
  T_GtkRequisition = TGtkRequisition;
  T_GtkRoot = TGtkRoot;
  T_GtkSettings = TGtkSettings;
  T_GtkShortcut = TGtkShortcut;
  T_GtkShortcutAction = TGtkShortcutAction;
  T_GtkShortcutTrigger = TGtkShortcutTrigger;

  TGtkSnapshot = TGdkSnapshot;
  T_GtkStyleContext = TGtkStyleContext;
  T_GtkTooltip = TGtkTooltip;
  T_GtkWidget = TGtkWidget;
  T_GtkWindow = TGtkWindow;


function GTK_INVALID_LIST_POSITION : Tguint;  

//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkgestureswipe.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkgestureswipe.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkgestureswipe.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pdouble  = ^double;
PGtkGestureSwipe  = ^GtkGestureSwipe;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_GESTURE_SWIPE_H__}
//// {$define __GTK_GESTURE_SWIPE_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkwidget.h>}
//// {$include <gtk/gtkgesturesingle.h>}

function GTK_TYPE_GESTURE_SWIPE : longint; { return type might be wrong }

function GTK_GESTURE_SWIPE(o : longint) : longint;

function GTK_GESTURE_SWIPE_CLASS(k : longint) : longint;

function GTK_IS_GESTURE_SWIPE(o : longint) : longint;

function GTK_IS_GESTURE_SWIPE_CLASS(k : longint) : longint;

function GTK_GESTURE_SWIPE_GET_CLASS(o : longint) : longint;

type
  T_GtkGestureSwipe = TGtkGestureSwipe;
  T_GtkGestureSwipeClass = TGtkGestureSwipeClass;

function gtk_gesture_swipe_get_type:TGType;cdecl;external;
function gtk_gesture_swipe_new:^TGtkGesture;cdecl;external;
function gtk_gesture_swipe_get_velocity(gesture:PTGtkGestureSwipe; velocity_x:PTdouble; velocity_y:PTdouble):Tgboolean;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkroot.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkroot.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkroot.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGtkRoot  = ^GtkRoot;
PGtkWidget  = ^GtkWidget;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_ROOT_H__}
//// {$define __GTK_ROOT_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdk.h>}
//// {$include <gtk/gtkwidget.h>}

function GTK_TYPE_ROOT : longint; { return type might be wrong }

function gtk_root_get_display(self:PTGtkRoot):^TGdkDisplay;cdecl;external;
procedure gtk_root_set_focus(self:PTGtkRoot; focus:PTGtkWidget);cdecl;external;
function gtk_root_get_focus(self:PTGtkRoot):^TGtkWidget;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkcolumnviewcolumn.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkcolumnviewcolumn.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkcolumnviewcolumn.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGMenuModel  = ^GMenuModel;
PGtkColumnViewColumn  = ^GtkColumnViewColumn;
PGtkListItemFactory  = ^GtkListItemFactory;
PGtkSorter  = ^GtkSorter;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_COLUMN_VIEW_COLUMN_H__}
//// {$define __GTK_COLUMN_VIEW_COLUMN_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkcolumnview.h>}
//// {$include <gtk/gtksorter.h>}

function GTK_TYPE_COLUMN_VIEW_COLUMN : longint; { return type might be wrong }

function GTK_COLUMN_VIEW_COLUMN(o : longint) : longint;

function GTK_COLUMN_VIEW_COLUMN_CLASS(k : longint) : longint;

function GTK_IS_COLUMN_VIEW_COLUMN(o : longint) : longint;

function GTK_IS_COLUMN_VIEW_COLUMN_CLASS(k : longint) : longint;

function GTK_COLUMN_VIEW_COLUMN_GET_CLASS(o : longint) : longint;

type
  T_GtkColumnViewColumnClass = TGtkColumnViewColumnClass;

function gtk_column_view_column_get_type:TGType;cdecl;external;
function gtk_column_view_column_new(title:Pchar; factory:PTGtkListItemFactory):^TGtkColumnViewColumn;cdecl;external;
function gtk_column_view_column_get_column_view(self:PTGtkColumnViewColumn):^TGtkColumnView;cdecl;external;
procedure gtk_column_view_column_set_factory(self:PTGtkColumnViewColumn; factory:PTGtkListItemFactory);cdecl;external;
function gtk_column_view_column_get_factory(self:PTGtkColumnViewColumn):^TGtkListItemFactory;cdecl;external;
procedure gtk_column_view_column_set_title(self:PTGtkColumnViewColumn; title:Pchar);cdecl;external;
function gtk_column_view_column_get_title(self:PTGtkColumnViewColumn):^char;cdecl;external;
procedure gtk_column_view_column_set_sorter(self:PTGtkColumnViewColumn; sorter:PTGtkSorter);cdecl;external;
function gtk_column_view_column_get_sorter(self:PTGtkColumnViewColumn):^TGtkSorter;cdecl;external;
procedure gtk_column_view_column_set_visible(self:PTGtkColumnViewColumn; visible:Tgboolean);cdecl;external;
function gtk_column_view_column_get_visible(self:PTGtkColumnViewColumn):Tgboolean;cdecl;external;
procedure gtk_column_view_column_set_header_menu(self:PTGtkColumnViewColumn; menu:PTGMenuModel);cdecl;external;
function gtk_column_view_column_get_header_menu(self:PTGtkColumnViewColumn):^TGMenuModel;cdecl;external;
procedure gtk_column_view_column_set_fixed_width(self:PTGtkColumnViewColumn; fixed_width:longint);cdecl;external;
function gtk_column_view_column_get_fixed_width(self:PTGtkColumnViewColumn):longint;cdecl;external;
procedure gtk_column_view_column_set_resizable(self:PTGtkColumnViewColumn; resizable:Tgboolean);cdecl;external;
function gtk_column_view_column_get_resizable(self:PTGtkColumnViewColumn):Tgboolean;cdecl;external;
procedure gtk_column_view_column_set_expand(self:PTGtkColumnViewColumn; expand:Tgboolean);cdecl;external;
function gtk_column_view_column_get_expand(self:PTGtkColumnViewColumn):Tgboolean;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkgesturestylus.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkgesturestylus.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkgesturestylus.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pdouble  = ^double;
PGdkAxisUse  = ^GdkAxisUse;
PGdkTimeCoord  = ^GdkTimeCoord;
PGtkGestureStylus  = ^GtkGestureStylus;
Pguint  = ^guint;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_GESTURE_STYLUS_H__}
//// {$define __GTK_GESTURE_STYLUS_H__}
//// {$include <gtk/gtkgesture.h>}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}

function GTK_TYPE_GESTURE_STYLUS : longint; { return type might be wrong }

function GTK_GESTURE_STYLUS(o : longint) : longint;

function GTK_GESTURE_STYLUS_CLASS(k : longint) : longint;

function GTK_IS_GESTURE_STYLUS(o : longint) : longint;

function GTK_IS_GESTURE_STYLUS_CLASS(k : longint) : longint;

function GTK_GESTURE_STYLUS_GET_CLASS(o : longint) : longint;

type
  T_GtkGestureStylus = TGtkGestureStylus;
  T_GtkGestureStylusClass = TGtkGestureStylusClass;

function gtk_gesture_stylus_get_type:TGType;cdecl;external;
function gtk_gesture_stylus_new:^TGtkGesture;cdecl;external;
function gtk_gesture_stylus_get_axis(gesture:PTGtkGestureStylus; axis:TGdkAxisUse; value:PTdouble):Tgboolean;cdecl;external;
function gtk_gesture_stylus_get_axes(gesture:PTGtkGestureStylus; axes:PTGdkAxisUse; values:PPTdouble):Tgboolean;cdecl;external;
function gtk_gesture_stylus_get_backlog(gesture:PTGtkGestureStylus; backlog:PPTGdkTimeCoord; n_elems:PTguint):Tgboolean;cdecl;external;
function gtk_gesture_stylus_get_device_tool(gesture:PTGtkGestureStylus):^TGdkDeviceTool;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkapplicationwindow.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkapplicationwindow.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkapplicationwindow.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGtkApplication  = ^GtkApplication;
PGtkApplicationWindow  = ^GtkApplicationWindow;
PGtkShortcutsWindow  = ^GtkShortcutsWindow;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_APPLICATION_WINDOW_H__}
//// {$define __GTK_APPLICATION_WINDOW_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkwindow.h>}
//// {$include <gtk/gtkshortcutswindow.h>}

function GTK_TYPE_APPLICATION_WINDOW : longint; { return type might be wrong }

function GTK_APPLICATION_WINDOW(inst : longint) : longint;

function GTK_APPLICATION_WINDOW_CLASS(_class : longint) : longint;

function GTK_IS_APPLICATION_WINDOW(inst : longint) : longint;

function GTK_IS_APPLICATION_WINDOW_CLASS(_class : longint) : longint;

function GTK_APPLICATION_WINDOW_GET_CLASS(inst : longint) : longint;

type
  T_GtkApplicationWindowClass = TGtkApplicationWindowClass;
  T_GtkApplicationWindow = TGtkApplicationWindow;
  T_GtkApplicationWindow = record
      parent_instance : TGtkWindow;
    end;



  T_GtkApplicationWindowClass = record
      parent_class : TGtkWindowClass;
      padding : array[0..7] of Tgpointer;
    end;


function gtk_application_window_get_type:TGType;cdecl;external;
function gtk_application_window_new(application:PTGtkApplication):^TGtkWidget;cdecl;external;
procedure gtk_application_window_set_show_menubar(window:PTGtkApplicationWindow; show_menubar:Tgboolean);cdecl;external;
function gtk_application_window_get_show_menubar(window:PTGtkApplicationWindow):Tgboolean;cdecl;external;
function gtk_application_window_get_id(window:PTGtkApplicationWindow):Tguint;cdecl;external;
procedure gtk_application_window_set_help_overlay(window:PTGtkApplicationWindow; help_overlay:PTGtkShortcutsWindow);cdecl;external;
function gtk_application_window_get_help_overlay(window:PTGtkApplicationWindow):^TGtkShortcutsWindow;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkscrolledwindow.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkscrolledwindow.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkscrolledwindow.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGtkAdjustment  = ^GtkAdjustment;
PGtkPolicyType  = ^GtkPolicyType;
PGtkScrolledWindow  = ^GtkScrolledWindow;
PGtkWidget  = ^GtkWidget;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef __GTK_SCROLLED_WINDOW_H__}
//// {$define __GTK_SCROLLED_WINDOW_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkwidget.h>}

function GTK_TYPE_SCROLLED_WINDOW : longint; { return type might be wrong }

function GTK_SCROLLED_WINDOW(obj : longint) : longint;

function GTK_IS_SCROLLED_WINDOW(obj : longint) : longint;

type
  T_GtkScrolledWindow = TGtkScrolledWindow;


  TGtkCornerType = (GTK_CORNER_TOP_LEFT,GTK_CORNER_BOTTOM_LEFT,
    GTK_CORNER_TOP_RIGHT,GTK_CORNER_BOTTOM_RIGHT
    );


  TGtkPolicyType = (GTK_POLICY_ALWAYS,GTK_POLICY_AUTOMATIC,
    GTK_POLICY_NEVER,GTK_POLICY_EXTERNAL);

function gtk_scrolled_window_get_type:TGType;cdecl;external;
function gtk_scrolled_window_new:^TGtkWidget;cdecl;external;
procedure gtk_scrolled_window_set_hadjustment(scrolled_window:PTGtkScrolledWindow; hadjustment:PTGtkAdjustment);cdecl;external;
procedure gtk_scrolled_window_set_vadjustment(scrolled_window:PTGtkScrolledWindow; vadjustment:PTGtkAdjustment);cdecl;external;
function gtk_scrolled_window_get_hadjustment(scrolled_window:PTGtkScrolledWindow):^TGtkAdjustment;cdecl;external;
function gtk_scrolled_window_get_vadjustment(scrolled_window:PTGtkScrolledWindow):^TGtkAdjustment;cdecl;external;
function gtk_scrolled_window_get_hscrollbar(scrolled_window:PTGtkScrolledWindow):^TGtkWidget;cdecl;external;
function gtk_scrolled_window_get_vscrollbar(scrolled_window:PTGtkScrolledWindow):^TGtkWidget;cdecl;external;
procedure gtk_scrolled_window_set_policy(scrolled_window:PTGtkScrolledWindow; hscrollbar_policy:TGtkPolicyType; vscrollbar_policy:TGtkPolicyType);cdecl;external;
procedure gtk_scrolled_window_get_policy(scrolled_window:PTGtkScrolledWindow; hscrollbar_policy:PTGtkPolicyType; vscrollbar_policy:PTGtkPolicyType);cdecl;external;
procedure gtk_scrolled_window_set_placement(scrolled_window:PTGtkScrolledWindow; window_placement:TGtkCornerType);cdecl;external;
procedure gtk_scrolled_window_unset_placement(scrolled_window:PTGtkScrolledWindow);cdecl;external;
function gtk_scrolled_window_get_placement(scrolled_window:PTGtkScrolledWindow):TGtkCornerType;cdecl;external;
procedure gtk_scrolled_window_set_has_frame(scrolled_window:PTGtkScrolledWindow; has_frame:Tgboolean);cdecl;external;
function gtk_scrolled_window_get_has_frame(scrolled_window:PTGtkScrolledWindow):Tgboolean;cdecl;external;
function gtk_scrolled_window_get_min_content_width(scrolled_window:PTGtkScrolledWindow):longint;cdecl;external;
procedure gtk_scrolled_window_set_min_content_width(scrolled_window:PTGtkScrolledWindow; width:longint);cdecl;external;
function gtk_scrolled_window_get_min_content_height(scrolled_window:PTGtkScrolledWindow):longint;cdecl;external;
procedure gtk_scrolled_window_set_min_content_height(scrolled_window:PTGtkScrolledWindow; height:longint);cdecl;external;
procedure gtk_scrolled_window_set_kinetic_scrolling(scrolled_window:PTGtkScrolledWindow; kinetic_scrolling:Tgboolean);cdecl;external;
function gtk_scrolled_window_get_kinetic_scrolling(scrolled_window:PTGtkScrolledWindow):Tgboolean;cdecl;external;
procedure gtk_scrolled_window_set_overlay_scrolling(scrolled_window:PTGtkScrolledWindow; overlay_scrolling:Tgboolean);cdecl;external;
function gtk_scrolled_window_get_overlay_scrolling(scrolled_window:PTGtkScrolledWindow):Tgboolean;cdecl;external;
procedure gtk_scrolled_window_set_max_content_width(scrolled_window:PTGtkScrolledWindow; width:longint);cdecl;external;
function gtk_scrolled_window_get_max_content_width(scrolled_window:PTGtkScrolledWindow):longint;cdecl;external;
procedure gtk_scrolled_window_set_max_content_height(scrolled_window:PTGtkScrolledWindow; height:longint);cdecl;external;
function gtk_scrolled_window_get_max_content_height(scrolled_window:PTGtkScrolledWindow):longint;cdecl;external;
procedure gtk_scrolled_window_set_propagate_natural_width(scrolled_window:PTGtkScrolledWindow; propagate:Tgboolean);cdecl;external;
function gtk_scrolled_window_get_propagate_natural_width(scrolled_window:PTGtkScrolledWindow):Tgboolean;cdecl;external;
procedure gtk_scrolled_window_set_propagate_natural_height(scrolled_window:PTGtkScrolledWindow; propagate:Tgboolean);cdecl;external;
function gtk_scrolled_window_get_propagate_natural_height(scrolled_window:PTGtkScrolledWindow):Tgboolean;cdecl;external;
procedure gtk_scrolled_window_set_child(scrolled_window:PTGtkScrolledWindow; child:PTGtkWidget);cdecl;external;
function gtk_scrolled_window_get_child(scrolled_window:PTGtkScrolledWindow):^TGtkWidget;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkcolorutils.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkcolorutils.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkcolorutils.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Psingle  = ^single;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef __GTK_COLOR_UTILS_H__}
//// {$define __GTK_COLOR_UTILS_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <glib.h>}
//// {$include <gdk/gdk.h>}

procedure gtk_hsv_to_rgb(h:single; s:single; v:single; r:Psingle; g:Psingle; 
            b:Psingle);cdecl;external;
procedure gtk_rgb_to_hsv(r:single; g:single; b:single; h:Psingle; s:Psingle; 
            v:Psingle);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkcellrendererpixbuf.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkcellrendererpixbuf.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkcellrendererpixbuf.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_CELL_RENDERER_PIXBUF_H__}
//// {$define __GTK_CELL_RENDERER_PIXBUF_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkcellrenderer.h>}

function GTK_TYPE_CELL_RENDERER_PIXBUF : longint; { return type might be wrong }

function GTK_CELL_RENDERER_PIXBUF(obj : longint) : longint;

function GTK_IS_CELL_RENDERER_PIXBUF(obj : longint) : longint;

type
  T_GtkCellRendererPixbuf = TGtkCellRendererPixbuf;

function gtk_cell_renderer_pixbuf_get_type:TGType;cdecl;external;
function gtk_cell_renderer_pixbuf_new:^TGtkCellRenderer;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtknative.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtknative.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtknative.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pdouble  = ^double;
PGdkSurface  = ^GdkSurface;
PGtkNative  = ^GtkNative;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_NATIVE_H__}
//// {$define __GTK_NATIVE_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdk.h>}
//// {$include <gtk/gtkwidget.h>}

function GTK_TYPE_NATIVE : longint; { return type might be wrong }

procedure gtk_native_realize(self:PTGtkNative);cdecl;external;
procedure gtk_native_unrealize(self:PTGtkNative);cdecl;external;
function gtk_native_get_for_surface(surface:PTGdkSurface):^TGtkNative;cdecl;external;
function gtk_native_get_surface(self:PTGtkNative):^TGdkSurface;cdecl;external;
function gtk_native_get_renderer(self:PTGtkNative):^TGskRenderer;cdecl;external;
procedure gtk_native_get_surface_transform(self:PTGtkNative; x:PTdouble; y:PTdouble);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkselectionmodel.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkselectionmodel.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkselectionmodel.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGtkBitset  = ^GtkBitset;
PGtkSelectionModel  = ^GtkSelectionModel;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_SELECTION_MODEL_H__}
//// {$define __GTK_SELECTION_MODEL_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtktypes.h>}

function GTK_TYPE_SELECTION_MODEL : longint; { return type might be wrong }




type
  T_GtkSelectionModelInterface = record
      g_iface : TGTypeInterface;
      is_selected : function (model:PTGtkSelectionModel; position:Tguint):Tgboolean;cdecl;
      get_selection_in_range : function (model:PTGtkSelectionModel; position:Tguint; n_items:Tguint):PTGtkBitset;cdecl;
      select_item : function (model:PTGtkSelectionModel; position:Tguint; unselect_rest:Tgboolean):Tgboolean;cdecl;
      unselect_item : function (model:PTGtkSelectionModel; position:Tguint):Tgboolean;cdecl;
      select_range : function (model:PTGtkSelectionModel; position:Tguint; n_items:Tguint; unselect_rest:Tgboolean):Tgboolean;cdecl;
      unselect_range : function (model:PTGtkSelectionModel; position:Tguint; n_items:Tguint):Tgboolean;cdecl;
      select_all : function (model:PTGtkSelectionModel):Tgboolean;cdecl;
      unselect_all : function (model:PTGtkSelectionModel):Tgboolean;cdecl;
      set_selection : function (model:PTGtkSelectionModel; selected:PTGtkBitset; mask:PTGtkBitset):Tgboolean;cdecl;
    end;


function gtk_selection_model_is_selected(model:PTGtkSelectionModel; position:Tguint):Tgboolean;cdecl;external;
function gtk_selection_model_get_selection(model:PTGtkSelectionModel):^TGtkBitset;cdecl;external;
function gtk_selection_model_get_selection_in_range(model:PTGtkSelectionModel; position:Tguint; n_items:Tguint):^TGtkBitset;cdecl;external;
function gtk_selection_model_select_item(model:PTGtkSelectionModel; position:Tguint; unselect_rest:Tgboolean):Tgboolean;cdecl;external;
function gtk_selection_model_unselect_item(model:PTGtkSelectionModel; position:Tguint):Tgboolean;cdecl;external;
function gtk_selection_model_select_range(model:PTGtkSelectionModel; position:Tguint; n_items:Tguint; unselect_rest:Tgboolean):Tgboolean;cdecl;external;
function gtk_selection_model_unselect_range(model:PTGtkSelectionModel; position:Tguint; n_items:Tguint):Tgboolean;cdecl;external;
function gtk_selection_model_select_all(model:PTGtkSelectionModel):Tgboolean;cdecl;external;
function gtk_selection_model_unselect_all(model:PTGtkSelectionModel):Tgboolean;cdecl;external;
function gtk_selection_model_set_selection(model:PTGtkSelectionModel; selected:PTGtkBitset; mask:PTGtkBitset):Tgboolean;cdecl;external;

procedure gtk_selection_model_selection_changed(model:PTGtkSelectionModel; position:Tguint; n_items:Tguint);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkmaplistmodel.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkmaplistmodel.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkmaplistmodel.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGListModel  = ^GListModel;
PGtkMapListModel  = ^GtkMapListModel;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_MAP_LIST_MODEL_H__}
//// {$define __GTK_MAP_LIST_MODEL_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gio/gio.h>}
//// {$include <gtk/gtkwidget.h>}

function GTK_TYPE_MAP_LIST_MODEL : longint; { return type might be wrong }


type

  TGtkMapListModelMapFunc = function (item:Tgpointer; user_data:Tgpointer):Tgpointer;cdecl;

function gtk_map_list_model_new(model:PTGListModel; map_func:TGtkMapListModelMapFunc; user_data:Tgpointer; user_destroy:TGDestroyNotify):^TGtkMapListModel;cdecl;external;
procedure gtk_map_list_model_set_map_func(self:PTGtkMapListModel; map_func:TGtkMapListModelMapFunc; user_data:Tgpointer; user_destroy:TGDestroyNotify);cdecl;external;
procedure gtk_map_list_model_set_model(self:PTGtkMapListModel; model:PTGListModel);cdecl;external;
function gtk_map_list_model_get_model(self:PTGtkMapListModel):^TGListModel;cdecl;external;
function gtk_map_list_model_has_map(self:PTGtkMapListModel):Tgboolean;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkassistant.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkassistant.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkassistant.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGtkAssistant  = ^GtkAssistant;
PGtkAssistantPage  = ^GtkAssistantPage;
PGtkWidget  = ^GtkWidget;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_ASSISTANT_H__}
//// {$define __GTK_ASSISTANT_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkwindow.h>}

function GTK_TYPE_ASSISTANT : longint; { return type might be wrong }

function GTK_ASSISTANT(o : longint) : longint;

function GTK_IS_ASSISTANT(o : longint) : longint;


type
  TGtkAssistantPageType = (GTK_ASSISTANT_PAGE_CONTENT,GTK_ASSISTANT_PAGE_INTRO,
    GTK_ASSISTANT_PAGE_CONFIRM,GTK_ASSISTANT_PAGE_SUMMARY,
    GTK_ASSISTANT_PAGE_PROGRESS,GTK_ASSISTANT_PAGE_CUSTOM
    );
  T_GtkAssistant = TGtkAssistant;

function GTK_TYPE_ASSISTANT_PAGE : longint; { return type might be wrong }

function GTK_ASSISTANT_PAGE(obj : longint) : longint;

function GTK_IS_ASSISTANT_PAGE(obj : longint) : longint;

type
  T_GtkAssistantPage = TGtkAssistantPage;


  TGtkAssistantPageFunc = function (current_page:longint; data:Tgpointer):longint;cdecl;

function gtk_assistant_page_get_type:TGType;cdecl;external;
function gtk_assistant_get_type:TGType;cdecl;external;
function gtk_assistant_new:^TGtkWidget;cdecl;external;
procedure gtk_assistant_next_page(assistant:PTGtkAssistant);cdecl;external;
procedure gtk_assistant_previous_page(assistant:PTGtkAssistant);cdecl;external;
function gtk_assistant_get_current_page(assistant:PTGtkAssistant):longint;cdecl;external;
procedure gtk_assistant_set_current_page(assistant:PTGtkAssistant; page_num:longint);cdecl;external;
function gtk_assistant_get_n_pages(assistant:PTGtkAssistant):longint;cdecl;external;
function gtk_assistant_get_nth_page(assistant:PTGtkAssistant; page_num:longint):^TGtkWidget;cdecl;external;
function gtk_assistant_prepend_page(assistant:PTGtkAssistant; page:PTGtkWidget):longint;cdecl;external;
function gtk_assistant_append_page(assistant:PTGtkAssistant; page:PTGtkWidget):longint;cdecl;external;
function gtk_assistant_insert_page(assistant:PTGtkAssistant; page:PTGtkWidget; position:longint):longint;cdecl;external;
procedure gtk_assistant_remove_page(assistant:PTGtkAssistant; page_num:longint);cdecl;external;
procedure gtk_assistant_set_forward_page_func(assistant:PTGtkAssistant; page_func:TGtkAssistantPageFunc; data:Tgpointer; destroy:TGDestroyNotify);cdecl;external;
procedure gtk_assistant_set_page_type(assistant:PTGtkAssistant; page:PTGtkWidget; _type:TGtkAssistantPageType);cdecl;external;
function gtk_assistant_get_page_type(assistant:PTGtkAssistant; page:PTGtkWidget):TGtkAssistantPageType;cdecl;external;
procedure gtk_assistant_set_page_title(assistant:PTGtkAssistant; page:PTGtkWidget; title:Pchar);cdecl;external;
function gtk_assistant_get_page_title(assistant:PTGtkAssistant; page:PTGtkWidget):^char;cdecl;external;
procedure gtk_assistant_set_page_complete(assistant:PTGtkAssistant; page:PTGtkWidget; complete:Tgboolean);cdecl;external;
function gtk_assistant_get_page_complete(assistant:PTGtkAssistant; page:PTGtkWidget):Tgboolean;cdecl;external;
procedure gtk_assistant_add_action_widget(assistant:PTGtkAssistant; child:PTGtkWidget);cdecl;external;
procedure gtk_assistant_remove_action_widget(assistant:PTGtkAssistant; child:PTGtkWidget);cdecl;external;
procedure gtk_assistant_update_buttons_state(assistant:PTGtkAssistant);cdecl;external;
procedure gtk_assistant_commit(assistant:PTGtkAssistant);cdecl;external;
function gtk_assistant_get_page(assistant:PTGtkAssistant; child:PTGtkWidget):^TGtkAssistantPage;cdecl;external;
function gtk_assistant_page_get_child(page:PTGtkAssistantPage):^TGtkWidget;cdecl;external;
function gtk_assistant_get_pages(assistant:PTGtkAssistant):^TGListModel;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkinfobar.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkinfobar.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkinfobar.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGtkInfoBar  = ^GtkInfoBar;
PGtkWidget  = ^GtkWidget;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef __GTK_INFO_BAR_H__}
//// {$define __GTK_INFO_BAR_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkwidget.h>}
//// {$include <gtk/gtkenums.h>}

function GTK_TYPE_INFO_BAR : longint; { return type might be wrong }

function GTK_INFO_BAR(obj : longint) : longint;

function GTK_IS_INFO_BAR(obj : longint) : longint;

type
  T_GtkInfoBar = TGtkInfoBar;

function gtk_info_bar_get_type:TGType;cdecl;external;
function gtk_info_bar_new:^TGtkWidget;cdecl;external;
function gtk_info_bar_new_with_buttons(first_button_text:Pchar; args:array of const):^TGtkWidget;cdecl;external;
function gtk_info_bar_new_with_buttons(first_button_text:Pchar):^TGtkWidget;cdecl;external;
procedure gtk_info_bar_add_action_widget(info_bar:PTGtkInfoBar; child:PTGtkWidget; response_id:longint);cdecl;external;
procedure gtk_info_bar_remove_action_widget(info_bar:PTGtkInfoBar; widget:PTGtkWidget);cdecl;external;
function gtk_info_bar_add_button(info_bar:PTGtkInfoBar; button_text:Pchar; response_id:longint):^TGtkWidget;cdecl;external;
procedure gtk_info_bar_add_buttons(info_bar:PTGtkInfoBar; first_button_text:Pchar; args:array of const);cdecl;external;
procedure gtk_info_bar_add_buttons(info_bar:PTGtkInfoBar; first_button_text:Pchar);cdecl;external;
procedure gtk_info_bar_add_child(info_bar:PTGtkInfoBar; widget:PTGtkWidget);cdecl;external;
procedure gtk_info_bar_remove_child(info_bar:PTGtkInfoBar; widget:PTGtkWidget);cdecl;external;
procedure gtk_info_bar_set_response_sensitive(info_bar:PTGtkInfoBar; response_id:longint; setting:Tgboolean);cdecl;external;
procedure gtk_info_bar_set_default_response(info_bar:PTGtkInfoBar; response_id:longint);cdecl;external;
procedure gtk_info_bar_response(info_bar:PTGtkInfoBar; response_id:longint);cdecl;external;
procedure gtk_info_bar_set_message_type(info_bar:PTGtkInfoBar; message_type:TGtkMessageType);cdecl;external;
function gtk_info_bar_get_message_type(info_bar:PTGtkInfoBar):TGtkMessageType;cdecl;external;
procedure gtk_info_bar_set_show_close_button(info_bar:PTGtkInfoBar; setting:Tgboolean);cdecl;external;
function gtk_info_bar_get_show_close_button(info_bar:PTGtkInfoBar):Tgboolean;cdecl;external;
procedure gtk_info_bar_set_revealed(info_bar:PTGtkInfoBar; revealed:Tgboolean);cdecl;external;
function gtk_info_bar_get_revealed(info_bar:PTGtkInfoBar):Tgboolean;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkvideo.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkvideo.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkvideo.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGFile  = ^GFile;
PGtkMediaStream  = ^GtkMediaStream;
PGtkVideo  = ^GtkVideo;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_VIDEO_H__}
//// {$define __GTK_VIDEO_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkmediastream.h>}
//// {$include <gtk/gtkwidget.h>}

function GTK_TYPE_VIDEO : longint; { return type might be wrong }

function gtk_video_new:^TGtkWidget;cdecl;external;
function gtk_video_new_for_media_stream(stream:PTGtkMediaStream):^TGtkWidget;cdecl;external;
function gtk_video_new_for_file(file:PTGFile):^TGtkWidget;cdecl;external;
function gtk_video_new_for_filename(filename:Pchar):^TGtkWidget;cdecl;external;
function gtk_video_new_for_resource(resource_path:Pchar):^TGtkWidget;cdecl;external;
function gtk_video_get_media_stream(self:PTGtkVideo):^TGtkMediaStream;cdecl;external;
procedure gtk_video_set_media_stream(self:PTGtkVideo; stream:PTGtkMediaStream);cdecl;external;
function gtk_video_get_file(self:PTGtkVideo):^TGFile;cdecl;external;
procedure gtk_video_set_file(self:PTGtkVideo; file:PTGFile);cdecl;external;
procedure gtk_video_set_filename(self:PTGtkVideo; filename:Pchar);cdecl;external;
procedure gtk_video_set_resource(self:PTGtkVideo; resource_path:Pchar);cdecl;external;
function gtk_video_get_autoplay(self:PTGtkVideo):Tgboolean;cdecl;external;
procedure gtk_video_set_autoplay(self:PTGtkVideo; autoplay:Tgboolean);cdecl;external;
function gtk_video_get_loop(self:PTGtkVideo):Tgboolean;cdecl;external;
procedure gtk_video_set_loop(self:PTGtkVideo; loop:Tgboolean);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtktreeview.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtktreeview.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtktreeview.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGdkContentFormats  = ^GdkContentFormats;
PGdkRectangle  = ^GdkRectangle;
PGtkCellRenderer  = ^GtkCellRenderer;
PGtkEditable  = ^GtkEditable;
PGtkTooltip  = ^GtkTooltip;
PGtkTreeIter  = ^GtkTreeIter;
PGtkTreeModel  = ^GtkTreeModel;
PGtkTreePath  = ^GtkTreePath;
PGtkTreeView  = ^GtkTreeView;
PGtkTreeViewColumn  = ^GtkTreeViewColumn;
PGtkTreeViewDropPosition  = ^GtkTreeViewDropPosition;
Plongint  = ^longint;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_TREE_VIEW_H__}
//// {$define __GTK_TREE_VIEW_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkwidget.h>}
//// {$include <gtk/gtktreemodel.h>}
//// {$include <gtk/gtktreeviewcolumn.h>}
//// {$include <gtk/gtkentry.h>}



type
  TGtkTreeViewDropPosition = (GTK_TREE_VIEW_DROP_BEFORE,GTK_TREE_VIEW_DROP_AFTER,
    GTK_TREE_VIEW_DROP_INTO_OR_BEFORE,GTK_TREE_VIEW_DROP_INTO_OR_AFTER
    );

function GTK_TYPE_TREE_VIEW : longint; { return type might be wrong }

function GTK_TREE_VIEW(obj : longint) : longint;

function GTK_IS_TREE_VIEW(obj : longint) : longint;

function GTK_TREE_VIEW_CLASS(klass : longint) : longint;

function GTK_IS_TREE_VIEW_CLASS(klass : longint) : longint;

function GTK_TREE_VIEW_GET_CLASS(obj : longint) : longint;

type
  T_GtkTreeView = TGtkTreeView;
  T_GtkTreeViewClass = TGtkTreeViewClass;
  T_GtkTreeSelection = TGtkTreeSelection;


  TGtkTreeViewColumnDropFunc = function (tree_view:PTGtkTreeView; column:PTGtkTreeViewColumn; prev_column:PTGtkTreeViewColumn; next_column:PTGtkTreeViewColumn; data:Tgpointer):Tgboolean;cdecl;


  TGtkTreeViewMappingFunc = procedure (tree_view:PTGtkTreeView; path:PTGtkTreePath; user_data:Tgpointer);cdecl;


  TGtkTreeViewSearchEqualFunc = function (model:PTGtkTreeModel; column:longint; key:Pchar; iter:PTGtkTreeIter; search_data:Tgpointer):Tgboolean;cdecl;


  TGtkTreeViewRowSeparatorFunc = function (model:PTGtkTreeModel; iter:PTGtkTreeIter; data:Tgpointer):Tgboolean;cdecl;
  T_GtkTreeView = record
      parent_instance : TGtkWidget;cdecl;
    end;



  T_GtkTreeViewClass = record
      parent_class : TGtkWidgetClass;
      row_activated : procedure (tree_view:PTGtkTreeView; path:PTGtkTreePath; column:PTGtkTreeViewColumn);cdecl;
      test_expand_row : function (tree_view:PTGtkTreeView; iter:PTGtkTreeIter; path:PTGtkTreePath):Tgboolean;cdecl;
      test_collapse_row : function (tree_view:PTGtkTreeView; iter:PTGtkTreeIter; path:PTGtkTreePath):Tgboolean;cdecl;
      row_expanded : procedure (tree_view:PTGtkTreeView; iter:PTGtkTreeIter; path:PTGtkTreePath);cdecl;
      row_collapsed : procedure (tree_view:PTGtkTreeView; iter:PTGtkTreeIter; path:PTGtkTreePath);cdecl;
      columns_changed : procedure (tree_view:PTGtkTreeView);cdecl;
      cursor_changed : procedure (tree_view:PTGtkTreeView);cdecl;
      move_cursor : function (tree_view:PTGtkTreeView; step:TGtkMovementStep; count:longint; extend:Tgboolean; modify:Tgboolean):Tgboolean;cdecl;
      select_all : function (tree_view:PTGtkTreeView):Tgboolean;cdecl;
      unselect_all : function (tree_view:PTGtkTreeView):Tgboolean;cdecl;
      select_cursor_row : function (tree_view:PTGtkTreeView; start_editing:Tgboolean):Tgboolean;cdecl;
      toggle_cursor_row : function (tree_view:PTGtkTreeView):Tgboolean;cdecl;
      expand_collapse_cursor_row : function (tree_view:PTGtkTreeView; logical:Tgboolean; expand:Tgboolean; open_all:Tgboolean):Tgboolean;cdecl;
      select_cursor_parent : function (tree_view:PTGtkTreeView):Tgboolean;cdecl;
      start_interactive_search : function (tree_view:PTGtkTreeView):Tgboolean;cdecl;
      _reserved : array[0..15] of Tgpointer;
    end;


function gtk_tree_view_get_type:TGType;cdecl;external;

function gtk_tree_view_new:^TGtkWidget;cdecl;external;
function gtk_tree_view_new_with_model(model:PTGtkTreeModel):^TGtkWidget;cdecl;external;

function gtk_tree_view_get_model(tree_view:PTGtkTreeView):^TGtkTreeModel;cdecl;external;
procedure gtk_tree_view_set_model(tree_view:PTGtkTreeView; model:PTGtkTreeModel);cdecl;external;
function gtk_tree_view_get_selection(tree_view:PTGtkTreeView):^TGtkTreeSelection;cdecl;external;
function gtk_tree_view_get_headers_visible(tree_view:PTGtkTreeView):Tgboolean;cdecl;external;
procedure gtk_tree_view_set_headers_visible(tree_view:PTGtkTreeView; headers_visible:Tgboolean);cdecl;external;
procedure gtk_tree_view_columns_autosize(tree_view:PTGtkTreeView);cdecl;external;
function gtk_tree_view_get_headers_clickable(tree_view:PTGtkTreeView):Tgboolean;cdecl;external;
procedure gtk_tree_view_set_headers_clickable(tree_view:PTGtkTreeView; setting:Tgboolean);cdecl;external;
function gtk_tree_view_get_activate_on_single_click(tree_view:PTGtkTreeView):Tgboolean;cdecl;external;
procedure gtk_tree_view_set_activate_on_single_click(tree_view:PTGtkTreeView; single:Tgboolean);cdecl;external;

function gtk_tree_view_append_column(tree_view:PTGtkTreeView; column:PTGtkTreeViewColumn):longint;cdecl;external;
function gtk_tree_view_remove_column(tree_view:PTGtkTreeView; column:PTGtkTreeViewColumn):longint;cdecl;external;
function gtk_tree_view_insert_column(tree_view:PTGtkTreeView; column:PTGtkTreeViewColumn; position:longint):longint;cdecl;external;
function gtk_tree_view_insert_column_with_attributes(tree_view:PTGtkTreeView; position:longint; title:Pchar; cell:PTGtkCellRenderer; args:array of const):longint;cdecl;external;
function gtk_tree_view_insert_column_with_attributes(tree_view:PTGtkTreeView; position:longint; title:Pchar; cell:PTGtkCellRenderer):longint;cdecl;external;
function gtk_tree_view_insert_column_with_data_func(tree_view:PTGtkTreeView; position:longint; title:Pchar; cell:PTGtkCellRenderer; func:TGtkTreeCellDataFunc; 
           data:Tgpointer; dnotify:TGDestroyNotify):longint;cdecl;external;
function gtk_tree_view_get_n_columns(tree_view:PTGtkTreeView):Tguint;cdecl;external;
function gtk_tree_view_get_column(tree_view:PTGtkTreeView; n:longint):^TGtkTreeViewColumn;cdecl;external;
function gtk_tree_view_get_columns(tree_view:PTGtkTreeView):^TGList;cdecl;external;
procedure gtk_tree_view_move_column_after(tree_view:PTGtkTreeView; column:PTGtkTreeViewColumn; base_column:PTGtkTreeViewColumn);cdecl;external;
procedure gtk_tree_view_set_expander_column(tree_view:PTGtkTreeView; column:PTGtkTreeViewColumn);cdecl;external;
function gtk_tree_view_get_expander_column(tree_view:PTGtkTreeView):^TGtkTreeViewColumn;cdecl;external;
procedure gtk_tree_view_set_column_drag_function(tree_view:PTGtkTreeView; func:TGtkTreeViewColumnDropFunc; user_data:Tgpointer; destroy:TGDestroyNotify);cdecl;external;

procedure gtk_tree_view_scroll_to_point(tree_view:PTGtkTreeView; tree_x:longint; tree_y:longint);cdecl;external;
procedure gtk_tree_view_scroll_to_cell(tree_view:PTGtkTreeView; path:PTGtkTreePath; column:PTGtkTreeViewColumn; use_align:Tgboolean; row_align:single; 
            col_align:single);cdecl;external;
procedure gtk_tree_view_row_activated(tree_view:PTGtkTreeView; path:PTGtkTreePath; column:PTGtkTreeViewColumn);cdecl;external;
procedure gtk_tree_view_expand_all(tree_view:PTGtkTreeView);cdecl;external;
procedure gtk_tree_view_collapse_all(tree_view:PTGtkTreeView);cdecl;external;
procedure gtk_tree_view_expand_to_path(tree_view:PTGtkTreeView; path:PTGtkTreePath);cdecl;external;
function gtk_tree_view_expand_row(tree_view:PTGtkTreeView; path:PTGtkTreePath; open_all:Tgboolean):Tgboolean;cdecl;external;
function gtk_tree_view_collapse_row(tree_view:PTGtkTreeView; path:PTGtkTreePath):Tgboolean;cdecl;external;
procedure gtk_tree_view_map_expanded_rows(tree_view:PTGtkTreeView; func:TGtkTreeViewMappingFunc; data:Tgpointer);cdecl;external;
function gtk_tree_view_row_expanded(tree_view:PTGtkTreeView; path:PTGtkTreePath):Tgboolean;cdecl;external;
procedure gtk_tree_view_set_reorderable(tree_view:PTGtkTreeView; reorderable:Tgboolean);cdecl;external;
function gtk_tree_view_get_reorderable(tree_view:PTGtkTreeView):Tgboolean;cdecl;external;
procedure gtk_tree_view_set_cursor(tree_view:PTGtkTreeView; path:PTGtkTreePath; focus_column:PTGtkTreeViewColumn; start_editing:Tgboolean);cdecl;external;
procedure gtk_tree_view_set_cursor_on_cell(tree_view:PTGtkTreeView; path:PTGtkTreePath; focus_column:PTGtkTreeViewColumn; focus_cell:PTGtkCellRenderer; start_editing:Tgboolean);cdecl;external;
procedure gtk_tree_view_get_cursor(tree_view:PTGtkTreeView; path:PPTGtkTreePath; focus_column:PPTGtkTreeViewColumn);cdecl;external;

function gtk_tree_view_get_path_at_pos(tree_view:PTGtkTreeView; x:longint; y:longint; path:PPTGtkTreePath; column:PPTGtkTreeViewColumn; 
           cell_x:Plongint; cell_y:Plongint):Tgboolean;cdecl;external;
procedure gtk_tree_view_get_cell_area(tree_view:PTGtkTreeView; path:PTGtkTreePath; column:PTGtkTreeViewColumn; rect:PTGdkRectangle);cdecl;external;
procedure gtk_tree_view_get_background_area(tree_view:PTGtkTreeView; path:PTGtkTreePath; column:PTGtkTreeViewColumn; rect:PTGdkRectangle);cdecl;external;
procedure gtk_tree_view_get_visible_rect(tree_view:PTGtkTreeView; visible_rect:PTGdkRectangle);cdecl;external;
function gtk_tree_view_get_visible_range(tree_view:PTGtkTreeView; start_path:PPTGtkTreePath; end_path:PPTGtkTreePath):Tgboolean;cdecl;external;
function gtk_tree_view_is_blank_at_pos(tree_view:PTGtkTreeView; x:longint; y:longint; path:PPTGtkTreePath; column:PPTGtkTreeViewColumn; 
           cell_x:Plongint; cell_y:Plongint):Tgboolean;cdecl;external;

procedure gtk_tree_view_enable_model_drag_source(tree_view:PTGtkTreeView; start_button_mask:TGdkModifierType; formats:PTGdkContentFormats; actions:TGdkDragAction);cdecl;external;
procedure gtk_tree_view_enable_model_drag_dest(tree_view:PTGtkTreeView; formats:PTGdkContentFormats; actions:TGdkDragAction);cdecl;external;
procedure gtk_tree_view_unset_rows_drag_source(tree_view:PTGtkTreeView);cdecl;external;
procedure gtk_tree_view_unset_rows_drag_dest(tree_view:PTGtkTreeView);cdecl;external;

procedure gtk_tree_view_set_drag_dest_row(tree_view:PTGtkTreeView; path:PTGtkTreePath; pos:TGtkTreeViewDropPosition);cdecl;external;
procedure gtk_tree_view_get_drag_dest_row(tree_view:PTGtkTreeView; path:PPTGtkTreePath; pos:PTGtkTreeViewDropPosition);cdecl;external;
function gtk_tree_view_get_dest_row_at_pos(tree_view:PTGtkTreeView; drag_x:longint; drag_y:longint; path:PPTGtkTreePath; pos:PTGtkTreeViewDropPosition):Tgboolean;cdecl;external;
function gtk_tree_view_create_row_drag_icon(tree_view:PTGtkTreeView; path:PTGtkTreePath):^TGdkPaintable;cdecl;external;

procedure gtk_tree_view_set_enable_search(tree_view:PTGtkTreeView; enable_search:Tgboolean);cdecl;external;
function gtk_tree_view_get_enable_search(tree_view:PTGtkTreeView):Tgboolean;cdecl;external;
function gtk_tree_view_get_search_column(tree_view:PTGtkTreeView):longint;cdecl;external;
procedure gtk_tree_view_set_search_column(tree_view:PTGtkTreeView; column:longint);cdecl;external;
function gtk_tree_view_get_search_equal_func(tree_view:PTGtkTreeView):TGtkTreeViewSearchEqualFunc;cdecl;external;
procedure gtk_tree_view_set_search_equal_func(tree_view:PTGtkTreeView; search_equal_func:TGtkTreeViewSearchEqualFunc; search_user_data:Tgpointer; search_destroy:TGDestroyNotify);cdecl;external;
function gtk_tree_view_get_search_entry(tree_view:PTGtkTreeView):^TGtkEditable;cdecl;external;
procedure gtk_tree_view_set_search_entry(tree_view:PTGtkTreeView; entry:PTGtkEditable);cdecl;external;

procedure gtk_tree_view_convert_widget_to_tree_coords(tree_view:PTGtkTreeView; wx:longint; wy:longint; tx:Plongint; ty:Plongint);cdecl;external;
procedure gtk_tree_view_convert_tree_to_widget_coords(tree_view:PTGtkTreeView; tx:longint; ty:longint; wx:Plongint; wy:Plongint);cdecl;external;
procedure gtk_tree_view_convert_widget_to_bin_window_coords(tree_view:PTGtkTreeView; wx:longint; wy:longint; bx:Plongint; by:Plongint);cdecl;external;
procedure gtk_tree_view_convert_bin_window_to_widget_coords(tree_view:PTGtkTreeView; bx:longint; by:longint; wx:Plongint; wy:Plongint);cdecl;external;
procedure gtk_tree_view_convert_tree_to_bin_window_coords(tree_view:PTGtkTreeView; tx:longint; ty:longint; bx:Plongint; by:Plongint);cdecl;external;
procedure gtk_tree_view_convert_bin_window_to_tree_coords(tree_view:PTGtkTreeView; bx:longint; by:longint; tx:Plongint; ty:Plongint);cdecl;external;
procedure gtk_tree_view_set_fixed_height_mode(tree_view:PTGtkTreeView; enable:Tgboolean);cdecl;external;
function gtk_tree_view_get_fixed_height_mode(tree_view:PTGtkTreeView):Tgboolean;cdecl;external;
procedure gtk_tree_view_set_hover_selection(tree_view:PTGtkTreeView; hover:Tgboolean);cdecl;external;
function gtk_tree_view_get_hover_selection(tree_view:PTGtkTreeView):Tgboolean;cdecl;external;
procedure gtk_tree_view_set_hover_expand(tree_view:PTGtkTreeView; expand:Tgboolean);cdecl;external;
function gtk_tree_view_get_hover_expand(tree_view:PTGtkTreeView):Tgboolean;cdecl;external;
procedure gtk_tree_view_set_rubber_banding(tree_view:PTGtkTreeView; enable:Tgboolean);cdecl;external;
function gtk_tree_view_get_rubber_banding(tree_view:PTGtkTreeView):Tgboolean;cdecl;external;
function gtk_tree_view_is_rubber_banding_active(tree_view:PTGtkTreeView):Tgboolean;cdecl;external;
function gtk_tree_view_get_row_separator_func(tree_view:PTGtkTreeView):TGtkTreeViewRowSeparatorFunc;cdecl;external;
procedure gtk_tree_view_set_row_separator_func(tree_view:PTGtkTreeView; func:TGtkTreeViewRowSeparatorFunc; data:Tgpointer; destroy:TGDestroyNotify);cdecl;external;
function gtk_tree_view_get_grid_lines(tree_view:PTGtkTreeView):TGtkTreeViewGridLines;cdecl;external;
procedure gtk_tree_view_set_grid_lines(tree_view:PTGtkTreeView; grid_lines:TGtkTreeViewGridLines);cdecl;external;
function gtk_tree_view_get_enable_tree_lines(tree_view:PTGtkTreeView):Tgboolean;cdecl;external;
procedure gtk_tree_view_set_enable_tree_lines(tree_view:PTGtkTreeView; enabled:Tgboolean);cdecl;external;
procedure gtk_tree_view_set_show_expanders(tree_view:PTGtkTreeView; enabled:Tgboolean);cdecl;external;
function gtk_tree_view_get_show_expanders(tree_view:PTGtkTreeView):Tgboolean;cdecl;external;
procedure gtk_tree_view_set_level_indentation(tree_view:PTGtkTreeView; indentation:longint);cdecl;external;
function gtk_tree_view_get_level_indentation(tree_view:PTGtkTreeView):longint;cdecl;external;

procedure gtk_tree_view_set_tooltip_row(tree_view:PTGtkTreeView; tooltip:PTGtkTooltip; path:PTGtkTreePath);cdecl;external;
procedure gtk_tree_view_set_tooltip_cell(tree_view:PTGtkTreeView; tooltip:PTGtkTooltip; path:PTGtkTreePath; column:PTGtkTreeViewColumn; cell:PTGtkCellRenderer);cdecl;external;
function gtk_tree_view_get_tooltip_context(tree_view:PTGtkTreeView; x:longint; y:longint; keyboard_tip:Tgboolean; model:PPTGtkTreeModel; 
           path:PPTGtkTreePath; iter:PTGtkTreeIter):Tgboolean;cdecl;external;
procedure gtk_tree_view_set_tooltip_column(tree_view:PTGtkTreeView; column:longint);cdecl;external;
function gtk_tree_view_get_tooltip_column(tree_view:PTGtkTreeView):longint;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkcellareabox.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkcellareabox.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkcellareabox.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGtkCellAreaBox  = ^GtkCellAreaBox;
PGtkCellRenderer  = ^GtkCellRenderer;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_CELL_AREA_BOX_H__}
//// {$define __GTK_CELL_AREA_BOX_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkcellarea.h>}

function GTK_TYPE_CELL_AREA_BOX : longint; { return type might be wrong }

function GTK_CELL_AREA_BOX(obj : longint) : longint;

function GTK_IS_CELL_AREA_BOX(obj : longint) : longint;

type
  T_GtkCellAreaBox = TGtkCellAreaBox;

function gtk_cell_area_box_get_type:TGType;cdecl;external;
function gtk_cell_area_box_new:^TGtkCellArea;cdecl;external;
procedure gtk_cell_area_box_pack_start(box:PTGtkCellAreaBox; renderer:PTGtkCellRenderer; expand:Tgboolean; align:Tgboolean; fixed:Tgboolean);cdecl;external;
procedure gtk_cell_area_box_pack_end(box:PTGtkCellAreaBox; renderer:PTGtkCellRenderer; expand:Tgboolean; align:Tgboolean; fixed:Tgboolean);cdecl;external;
function gtk_cell_area_box_get_spacing(box:PTGtkCellAreaBox):longint;cdecl;external;
procedure gtk_cell_area_box_set_spacing(box:PTGtkCellAreaBox; spacing:longint);cdecl;external;

function _gtk_cell_area_box_group_visible(box:PTGtkCellAreaBox; group_idx:longint):Tgboolean;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkstackswitcher.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkstackswitcher.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkstackswitcher.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGtkStack  = ^GtkStack;
PGtkStackSwitcher  = ^GtkStackSwitcher;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_STACK_SWITCHER_H__}
//// {$define __GTK_STACK_SWITCHER_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkstack.h>}

function GTK_TYPE_STACK_SWITCHER : longint; { return type might be wrong }

function GTK_STACK_SWITCHER(obj : longint) : longint;

function GTK_IS_STACK_SWITCHER(obj : longint) : longint;

type
  T_GtkStackSwitcher = TGtkStackSwitcher;

function gtk_stack_switcher_get_type:TGType;cdecl;external;
function gtk_stack_switcher_new:^TGtkWidget;cdecl;external;
procedure gtk_stack_switcher_set_stack(switcher:PTGtkStackSwitcher; stack:PTGtkStack);cdecl;external;
function gtk_stack_switcher_get_stack(switcher:PTGtkStackSwitcher):^TGtkStack;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkpopovermenu.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkpopovermenu.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkpopovermenu.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGMenuModel  = ^GMenuModel;
PGtkPopoverMenu  = ^GtkPopoverMenu;
PGtkWidget  = ^GtkWidget;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_POPOVER_MENU_H__}
//// {$define __GTK_POPOVER_MENU_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkpopover.h>}

function GTK_TYPE_POPOVER_MENU : longint; { return type might be wrong }

function GTK_POPOVER_MENU(o : longint) : longint;

function GTK_IS_POPOVER_MENU(o : longint) : longint;

type
  T_GtkPopoverMenu = TGtkPopoverMenu;

function gtk_popover_menu_get_type:TGType;cdecl;external;
function gtk_popover_menu_new_from_model(model:PTGMenuModel):^TGtkWidget;cdecl;external;

type
  TGtkPopoverMenuFlags = (GTK_POPOVER_MENU_NESTED := 1 shl 0);

function gtk_popover_menu_new_from_model_full(model:PTGMenuModel; flags:TGtkPopoverMenuFlags):^TGtkWidget;cdecl;external;
procedure gtk_popover_menu_set_menu_model(popover:PTGtkPopoverMenu; model:PTGMenuModel);cdecl;external;
function gtk_popover_menu_get_menu_model(popover:PTGtkPopoverMenu):^TGMenuModel;cdecl;external;
function gtk_popover_menu_add_child(popover:PTGtkPopoverMenu; child:PTGtkWidget; id:Pchar):Tgboolean;cdecl;external;
function gtk_popover_menu_remove_child(popover:PTGtkPopoverMenu; child:PTGtkWidget):Tgboolean;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtklistitemfactory.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtklistitemfactory.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtklistitemfactory.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_LIST_ITEM_FACTORY_H__}
//// {$define __GTK_LIST_ITEM_FACTORY_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
type
  T_GtkListItemFactoryClass = TGtkListItemFactoryClass;
//// {$include <gdk/gdk.h>}
//// {$include <gtk/gtktypes.h>}

function GTK_TYPE_LIST_ITEM_FACTORY : longint; { return type might be wrong }

function GTK_LIST_ITEM_FACTORY(o : longint) : longint;

function GTK_LIST_ITEM_FACTORY_CLASS(k : longint) : longint;

function GTK_IS_LIST_ITEM_FACTORY(o : longint) : longint;

function GTK_IS_LIST_ITEM_FACTORY_CLASS(k : longint) : longint;

function GTK_LIST_ITEM_FACTORY_GET_CLASS(o : longint) : longint;

function gtk_list_item_factory_get_type:TGType;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkcustomfilter.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkcustomfilter.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkcustomfilter.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGtkCustomFilter  = ^GtkCustomFilter;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_CUSTOM_FILTER_H__}
//// {$define __GTK_CUSTOM_FILTER_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkfilter.h>}

type

  TGtkCustomFilterFunc = function (item:Tgpointer; user_data:Tgpointer):Tgboolean;cdecl;

function GTK_TYPE_CUSTOM_FILTER : longint; { return type might be wrong }

function gtk_custom_filter_new(match_func:TGtkCustomFilterFunc; user_data:Tgpointer; user_destroy:TGDestroyNotify):^TGtkCustomFilter;cdecl;external;
procedure gtk_custom_filter_set_filter_func(self:PTGtkCustomFilter; match_func:TGtkCustomFilterFunc; user_data:Tgpointer; user_destroy:TGDestroyNotify);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkwidget.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkwidget.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkwidget.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pcairo_font_options_t  = ^cairo_font_options_t;
Pchar  = ^char;
Pdouble  = ^double;
PGActionGroup  = ^GActionGroup;
Pgboolean  = ^gboolean;
PGBytes  = ^GBytes;
PGdkCursor  = ^GdkCursor;
PGdkFrameClock  = ^GdkFrameClock;
Pgraphene_matrix_t  = ^graphene_matrix_t;
Pgraphene_point_t  = ^graphene_point_t;
Pgraphene_rect_t  = ^graphene_rect_t;
PGskTransform  = ^GskTransform;
PGtkAllocation  = ^GtkAllocation;
PGtkBuilderScope  = ^GtkBuilderScope;
PGtkCssStyleChange  = ^GtkCssStyleChange;
PGtkEventController  = ^GtkEventController;
PGtkLayoutManager  = ^GtkLayoutManager;
PGtkRequisition  = ^GtkRequisition;
PGtkShortcut  = ^GtkShortcut;
PGtkSnapshot  = ^GtkSnapshot;
PGtkTooltip  = ^GtkTooltip;
PGtkWidget  = ^GtkWidget;
PGtkWidgetClass  = ^GtkWidgetClass;
PGType  = ^GType;
PGVariant  = ^GVariant;
PGVariantType  = ^GVariantType;
Plongint  = ^longint;
PPangoFontMap  = ^PangoFontMap;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef __GTK_WIDGET_H__}
//// {$define __GTK_WIDGET_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdk.h>}
//// {$include <gsk/gsk.h>}
//// {$include <gtk/gtkaccelgroup.h>}
//// {$include <gtk/gtkborder.h>}
//// {$include <gtk/gtkshortcut.h>}
//// {$include <gtk/gtkshortcutaction.h>}
//// {$include <gtk/gtktypes.h>}


function GTK_TYPE_WIDGET : longint; { return type might be wrong }

function GTK_WIDGET(widget : longint) : longint;

function GTK_WIDGET_CLASS(klass : longint) : longint;

function GTK_IS_WIDGET(widget : longint) : longint;

function GTK_IS_WIDGET_CLASS(klass : longint) : longint;

function GTK_WIDGET_GET_CLASS(obj : longint) : longint;

function GTK_TYPE_REQUISITION : longint; { return type might be wrong }

type
  T_GtkWidgetPrivate = TGtkWidgetPrivate;
  T_GtkWidgetClass = TGtkWidgetClass;
  T_GtkWidgetClassPrivate = TGtkWidgetClassPrivate;


  TGtkAllocation = TGdkRectangle;


  TGtkTickCallback = function (widget:PTGtkWidget; frame_clock:PTGdkFrameClock; user_data:Tgpointer):Tgboolean;cdecl;

  T_GtkRequisition = record
      width : longint;cdecl;
      height : longint;
    end;



  T_GtkWidget = record
      parent_instance : TGInitiallyUnowned;
      priv : ^TGtkWidgetPrivate;
    end;









  T_GtkWidgetClass = record
      parent_class : TGInitiallyUnownedClass;
      show : procedure (widget:PTGtkWidget);cdecl;
      hide : procedure (widget:PTGtkWidget);cdecl;
      map : procedure (widget:PTGtkWidget);cdecl;
      unmap : procedure (widget:PTGtkWidget);cdecl;
      realize : procedure (widget:PTGtkWidget);cdecl;
      unrealize : procedure (widget:PTGtkWidget);cdecl;
      root : procedure (widget:PTGtkWidget);cdecl;
      unroot : procedure (widget:PTGtkWidget);cdecl;
      size_allocate : procedure (widget:PTGtkWidget; width:longint; height:longint; baseline:longint);cdecl;
      state_flags_changed : procedure (widget:PTGtkWidget; previous_state_flags:TGtkStateFlags);cdecl;
      direction_changed : procedure (widget:PTGtkWidget; previous_direction:TGtkTextDirection);cdecl;
      get_request_mode : function (widget:PTGtkWidget):TGtkSizeRequestMode;cdecl;
      measure : procedure (widget:PTGtkWidget; orientation:TGtkOrientation; for_size:longint; minimum:Plongint; natural:Plongint; 
                    minimum_baseline:Plongint; natural_baseline:Plongint);cdecl;
      mnemonic_activate : function (widget:PTGtkWidget; group_cycling:Tgboolean):Tgboolean;cdecl;
      grab_focus : function (widget:PTGtkWidget):Tgboolean;cdecl;
      focus : function (widget:PTGtkWidget; direction:TGtkDirectionType):Tgboolean;cdecl;
      set_focus_child : procedure (widget:PTGtkWidget; child:PTGtkWidget);cdecl;
      move_focus : procedure (widget:PTGtkWidget; direction:TGtkDirectionType);cdecl;
      keynav_failed : function (widget:PTGtkWidget; direction:TGtkDirectionType):Tgboolean;cdecl;
      query_tooltip : function (widget:PTGtkWidget; x:longint; y:longint; keyboard_tooltip:Tgboolean; tooltip:PTGtkTooltip):Tgboolean;cdecl;
      compute_expand : procedure (widget:PTGtkWidget; hexpand_p:PTgboolean; vexpand_p:PTgboolean);cdecl;
      css_changed : procedure (widget:PTGtkWidget; change:PTGtkCssStyleChange);cdecl;
      system_setting_changed : procedure (widget:PTGtkWidget; settings:TGtkSystemSetting);cdecl;
      snapshot : procedure (widget:PTGtkWidget; snapshot:PTGtkSnapshot);cdecl;
      contains : function (widget:PTGtkWidget; x:Tdouble; y:Tdouble):Tgboolean;cdecl;
      priv : ^TGtkWidgetClassPrivate;
      padding : array[0..7] of Tgpointer;
    end;


function gtk_widget_get_type:TGType;cdecl;external;
procedure gtk_widget_unparent(widget:PTGtkWidget);cdecl;external;
procedure gtk_widget_show(widget:PTGtkWidget);cdecl;external;
procedure gtk_widget_hide(widget:PTGtkWidget);cdecl;external;
procedure gtk_widget_map(widget:PTGtkWidget);cdecl;external;
procedure gtk_widget_unmap(widget:PTGtkWidget);cdecl;external;
procedure gtk_widget_realize(widget:PTGtkWidget);cdecl;external;
procedure gtk_widget_unrealize(widget:PTGtkWidget);cdecl;external;

procedure gtk_widget_queue_draw(widget:PTGtkWidget);cdecl;external;
procedure gtk_widget_queue_resize(widget:PTGtkWidget);cdecl;external;
procedure gtk_widget_queue_allocate(widget:PTGtkWidget);cdecl;external;
function gtk_widget_get_frame_clock(widget:PTGtkWidget):^TGdkFrameClock;cdecl;external;
procedure gtk_widget_size_allocate(widget:PTGtkWidget; allocation:PTGtkAllocation; baseline:longint);cdecl;external;
procedure gtk_widget_allocate(widget:PTGtkWidget; width:longint; height:longint; baseline:longint; transform:PTGskTransform);cdecl;external;
function gtk_widget_get_request_mode(widget:PTGtkWidget):TGtkSizeRequestMode;cdecl;external;
procedure gtk_widget_measure(widget:PTGtkWidget; orientation:TGtkOrientation; for_size:longint; minimum:Plongint; natural:Plongint; 
            minimum_baseline:Plongint; natural_baseline:Plongint);cdecl;external;
procedure gtk_widget_get_preferred_size(widget:PTGtkWidget; minimum_size:PTGtkRequisition; natural_size:PTGtkRequisition);cdecl;external;
procedure gtk_widget_set_layout_manager(widget:PTGtkWidget; layout_manager:PTGtkLayoutManager);cdecl;external;
function gtk_widget_get_layout_manager(widget:PTGtkWidget):^TGtkLayoutManager;cdecl;external;
procedure gtk_widget_class_set_layout_manager_type(widget_class:PTGtkWidgetClass; _type:TGType);cdecl;external;
function gtk_widget_class_get_layout_manager_type(widget_class:PTGtkWidgetClass):TGType;cdecl;external;
procedure gtk_widget_class_add_binding(widget_class:PTGtkWidgetClass; keyval:Tguint; mods:TGdkModifierType; callback:TGtkShortcutFunc; format_string:Pchar; 
            args:array of const);cdecl;external;
procedure gtk_widget_class_add_binding(widget_class:PTGtkWidgetClass; keyval:Tguint; mods:TGdkModifierType; callback:TGtkShortcutFunc; format_string:Pchar);cdecl;external;
procedure gtk_widget_class_add_binding_signal(widget_class:PTGtkWidgetClass; keyval:Tguint; mods:TGdkModifierType; signal:Pchar; format_string:Pchar; 
            args:array of const);cdecl;external;
procedure gtk_widget_class_add_binding_signal(widget_class:PTGtkWidgetClass; keyval:Tguint; mods:TGdkModifierType; signal:Pchar; format_string:Pchar);cdecl;external;
procedure gtk_widget_class_add_binding_action(widget_class:PTGtkWidgetClass; keyval:Tguint; mods:TGdkModifierType; action_name:Pchar; format_string:Pchar; 
            args:array of const);cdecl;external;
procedure gtk_widget_class_add_binding_action(widget_class:PTGtkWidgetClass; keyval:Tguint; mods:TGdkModifierType; action_name:Pchar; format_string:Pchar);cdecl;external;
procedure gtk_widget_class_add_shortcut(widget_class:PTGtkWidgetClass; shortcut:PTGtkShortcut);cdecl;external;
procedure gtk_widget_class_set_activate_signal(widget_class:PTGtkWidgetClass; signal_id:Tguint);cdecl;external;
procedure gtk_widget_class_set_activate_signal_from_name(widget_class:PTGtkWidgetClass; signal_name:Pchar);cdecl;external;
function gtk_widget_class_get_activate_signal(widget_class:PTGtkWidgetClass):Tguint;cdecl;external;
function gtk_widget_mnemonic_activate(widget:PTGtkWidget; group_cycling:Tgboolean):Tgboolean;cdecl;external;
function gtk_widget_activate(widget:PTGtkWidget):Tgboolean;cdecl;external;
procedure gtk_widget_set_can_focus(widget:PTGtkWidget; can_focus:Tgboolean);cdecl;external;
function gtk_widget_get_can_focus(widget:PTGtkWidget):Tgboolean;cdecl;external;
procedure gtk_widget_set_focusable(widget:PTGtkWidget; focusable:Tgboolean);cdecl;external;
function gtk_widget_get_focusable(widget:PTGtkWidget):Tgboolean;cdecl;external;
function gtk_widget_has_focus(widget:PTGtkWidget):Tgboolean;cdecl;external;
function gtk_widget_is_focus(widget:PTGtkWidget):Tgboolean;cdecl;external;
function gtk_widget_has_visible_focus(widget:PTGtkWidget):Tgboolean;cdecl;external;
function gtk_widget_grab_focus(widget:PTGtkWidget):Tgboolean;cdecl;external;
procedure gtk_widget_set_focus_on_click(widget:PTGtkWidget; focus_on_click:Tgboolean);cdecl;external;
function gtk_widget_get_focus_on_click(widget:PTGtkWidget):Tgboolean;cdecl;external;
procedure gtk_widget_set_can_target(widget:PTGtkWidget; can_target:Tgboolean);cdecl;external;
function gtk_widget_get_can_target(widget:PTGtkWidget):Tgboolean;cdecl;external;
function gtk_widget_has_default(widget:PTGtkWidget):Tgboolean;cdecl;external;
procedure gtk_widget_set_receives_default(widget:PTGtkWidget; receives_default:Tgboolean);cdecl;external;
function gtk_widget_get_receives_default(widget:PTGtkWidget):Tgboolean;cdecl;external;
procedure gtk_widget_set_name(widget:PTGtkWidget; name:Pchar);cdecl;external;
function gtk_widget_get_name(widget:PTGtkWidget):^char;cdecl;external;
procedure gtk_widget_set_state_flags(widget:PTGtkWidget; flags:TGtkStateFlags; clear:Tgboolean);cdecl;external;
procedure gtk_widget_unset_state_flags(widget:PTGtkWidget; flags:TGtkStateFlags);cdecl;external;
function gtk_widget_get_state_flags(widget:PTGtkWidget):TGtkStateFlags;cdecl;external;
procedure gtk_widget_set_sensitive(widget:PTGtkWidget; sensitive:Tgboolean);cdecl;external;
function gtk_widget_get_sensitive(widget:PTGtkWidget):Tgboolean;cdecl;external;
function gtk_widget_is_sensitive(widget:PTGtkWidget):Tgboolean;cdecl;external;
procedure gtk_widget_set_visible(widget:PTGtkWidget; visible:Tgboolean);cdecl;external;
function gtk_widget_get_visible(widget:PTGtkWidget):Tgboolean;cdecl;external;
function gtk_widget_is_visible(widget:PTGtkWidget):Tgboolean;cdecl;external;
function gtk_widget_is_drawable(widget:PTGtkWidget):Tgboolean;cdecl;external;
function gtk_widget_get_realized(widget:PTGtkWidget):Tgboolean;cdecl;external;
function gtk_widget_get_mapped(widget:PTGtkWidget):Tgboolean;cdecl;external;
procedure gtk_widget_set_parent(widget:PTGtkWidget; parent:PTGtkWidget);cdecl;external;
function gtk_widget_get_parent(widget:PTGtkWidget):^TGtkWidget;cdecl;external;
function gtk_widget_get_root(widget:PTGtkWidget):^TGtkRoot;cdecl;external;
function gtk_widget_get_native(widget:PTGtkWidget):^TGtkNative;cdecl;external;
procedure gtk_widget_set_child_visible(widget:PTGtkWidget; child_visible:Tgboolean);cdecl;external;
function gtk_widget_get_child_visible(widget:PTGtkWidget):Tgboolean;cdecl;external;
function gtk_widget_get_allocated_width(widget:PTGtkWidget):longint;cdecl;external;
function gtk_widget_get_allocated_height(widget:PTGtkWidget):longint;cdecl;external;
function gtk_widget_get_allocated_baseline(widget:PTGtkWidget):longint;cdecl;external;
procedure gtk_widget_get_allocation(widget:PTGtkWidget; allocation:PTGtkAllocation);cdecl;external;
function gtk_widget_compute_transform(widget:PTGtkWidget; target:PTGtkWidget; out_transform:PTgraphene_matrix_t):Tgboolean;cdecl;external;
function gtk_widget_compute_bounds(widget:PTGtkWidget; target:PTGtkWidget; out_bounds:PTgraphene_rect_t):Tgboolean;cdecl;external;
function gtk_widget_compute_point(widget:PTGtkWidget; target:PTGtkWidget; point:PTgraphene_point_t; out_point:PTgraphene_point_t):Tgboolean;cdecl;external;
function gtk_widget_get_width(widget:PTGtkWidget):longint;cdecl;external;
function gtk_widget_get_height(widget:PTGtkWidget):longint;cdecl;external;
function gtk_widget_get_size(widget:PTGtkWidget; orientation:TGtkOrientation):longint;cdecl;external;
function gtk_widget_child_focus(widget:PTGtkWidget; direction:TGtkDirectionType):Tgboolean;cdecl;external;
function gtk_widget_keynav_failed(widget:PTGtkWidget; direction:TGtkDirectionType):Tgboolean;cdecl;external;
procedure gtk_widget_error_bell(widget:PTGtkWidget);cdecl;external;
procedure gtk_widget_set_size_request(widget:PTGtkWidget; width:longint; height:longint);cdecl;external;
procedure gtk_widget_get_size_request(widget:PTGtkWidget; width:Plongint; height:Plongint);cdecl;external;
procedure gtk_widget_set_opacity(widget:PTGtkWidget; opacity:Tdouble);cdecl;external;
function gtk_widget_get_opacity(widget:PTGtkWidget):Tdouble;cdecl;external;
procedure gtk_widget_set_overflow(widget:PTGtkWidget; overflow:TGtkOverflow);cdecl;external;
function gtk_widget_get_overflow(widget:PTGtkWidget):TGtkOverflow;cdecl;external;
function gtk_widget_get_ancestor(widget:PTGtkWidget; widget_type:TGType):^TGtkWidget;cdecl;external;
function gtk_widget_get_scale_factor(widget:PTGtkWidget):longint;cdecl;external;
function gtk_widget_get_display(widget:PTGtkWidget):^TGdkDisplay;cdecl;external;
function gtk_widget_get_settings(widget:PTGtkWidget):^TGtkSettings;cdecl;external;
function gtk_widget_get_clipboard(widget:PTGtkWidget):^TGdkClipboard;cdecl;external;
function gtk_widget_get_primary_clipboard(widget:PTGtkWidget):^TGdkClipboard;cdecl;external;

function gtk_widget_get_hexpand(widget:PTGtkWidget):Tgboolean;cdecl;external;
procedure gtk_widget_set_hexpand(widget:PTGtkWidget; expand:Tgboolean);cdecl;external;
function gtk_widget_get_hexpand_set(widget:PTGtkWidget):Tgboolean;cdecl;external;
procedure gtk_widget_set_hexpand_set(widget:PTGtkWidget; set:Tgboolean);cdecl;external;
function gtk_widget_get_vexpand(widget:PTGtkWidget):Tgboolean;cdecl;external;
procedure gtk_widget_set_vexpand(widget:PTGtkWidget; expand:Tgboolean);cdecl;external;
function gtk_widget_get_vexpand_set(widget:PTGtkWidget):Tgboolean;cdecl;external;
procedure gtk_widget_set_vexpand_set(widget:PTGtkWidget; set:Tgboolean);cdecl;external;
function gtk_widget_compute_expand(widget:PTGtkWidget; orientation:TGtkOrientation):Tgboolean;cdecl;external;

function gtk_widget_get_halign(widget:PTGtkWidget):TGtkAlign;cdecl;external;
procedure gtk_widget_set_halign(widget:PTGtkWidget; align:TGtkAlign);cdecl;external;
function gtk_widget_get_valign(widget:PTGtkWidget):TGtkAlign;cdecl;external;
procedure gtk_widget_set_valign(widget:PTGtkWidget; align:TGtkAlign);cdecl;external;
function gtk_widget_get_margin_start(widget:PTGtkWidget):longint;cdecl;external;
procedure gtk_widget_set_margin_start(widget:PTGtkWidget; margin:longint);cdecl;external;
function gtk_widget_get_margin_end(widget:PTGtkWidget):longint;cdecl;external;
procedure gtk_widget_set_margin_end(widget:PTGtkWidget; margin:longint);cdecl;external;
function gtk_widget_get_margin_top(widget:PTGtkWidget):longint;cdecl;external;
procedure gtk_widget_set_margin_top(widget:PTGtkWidget; margin:longint);cdecl;external;
function gtk_widget_get_margin_bottom(widget:PTGtkWidget):longint;cdecl;external;
procedure gtk_widget_set_margin_bottom(widget:PTGtkWidget; margin:longint);cdecl;external;
function gtk_widget_is_ancestor(widget:PTGtkWidget; ancestor:PTGtkWidget):Tgboolean;cdecl;external;
function gtk_widget_translate_coordinates(src_widget:PTGtkWidget; dest_widget:PTGtkWidget; src_x:Tdouble; src_y:Tdouble; dest_x:PTdouble; 
           dest_y:PTdouble):Tgboolean;cdecl;external;
function gtk_widget_contains(widget:PTGtkWidget; x:Tdouble; y:Tdouble):Tgboolean;cdecl;external;
function gtk_widget_pick(widget:PTGtkWidget; x:Tdouble; y:Tdouble; flags:TGtkPickFlags):^TGtkWidget;cdecl;external;
procedure gtk_widget_add_controller(widget:PTGtkWidget; controller:PTGtkEventController);cdecl;external;
procedure gtk_widget_remove_controller(widget:PTGtkWidget; controller:PTGtkEventController);cdecl;external;
function gtk_widget_create_pango_context(widget:PTGtkWidget):^TPangoContext;cdecl;external;
function gtk_widget_get_pango_context(widget:PTGtkWidget):^TPangoContext;cdecl;external;
procedure gtk_widget_set_font_options(widget:PTGtkWidget; options:PTcairo_font_options_t);cdecl;external;
function gtk_widget_get_font_options(widget:PTGtkWidget):^Tcairo_font_options_t;cdecl;external;
function gtk_widget_create_pango_layout(widget:PTGtkWidget; text:Pchar):^TPangoLayout;cdecl;external;

procedure gtk_widget_set_direction(widget:PTGtkWidget; dir:TGtkTextDirection);cdecl;external;
function gtk_widget_get_direction(widget:PTGtkWidget):TGtkTextDirection;cdecl;external;
procedure gtk_widget_set_default_direction(dir:TGtkTextDirection);cdecl;external;
function gtk_widget_get_default_direction:TGtkTextDirection;cdecl;external;
procedure gtk_widget_set_cursor(widget:PTGtkWidget; cursor:PTGdkCursor);cdecl;external;
procedure gtk_widget_set_cursor_from_name(widget:PTGtkWidget; name:Pchar);cdecl;external;
function gtk_widget_get_cursor(widget:PTGtkWidget):^TGdkCursor;cdecl;external;
function gtk_widget_list_mnemonic_labels(widget:PTGtkWidget):^TGList;cdecl;external;
procedure gtk_widget_add_mnemonic_label(widget:PTGtkWidget; _label:PTGtkWidget);cdecl;external;
procedure gtk_widget_remove_mnemonic_label(widget:PTGtkWidget; _label:PTGtkWidget);cdecl;external;
procedure gtk_widget_trigger_tooltip_query(widget:PTGtkWidget);cdecl;external;
procedure gtk_widget_set_tooltip_text(widget:PTGtkWidget; text:Pchar);cdecl;external;
function gtk_widget_get_tooltip_text(widget:PTGtkWidget):^char;cdecl;external;
procedure gtk_widget_set_tooltip_markup(widget:PTGtkWidget; markup:Pchar);cdecl;external;
function gtk_widget_get_tooltip_markup(widget:PTGtkWidget):^char;cdecl;external;
procedure gtk_widget_set_has_tooltip(widget:PTGtkWidget; has_tooltip:Tgboolean);cdecl;external;
function gtk_widget_get_has_tooltip(widget:PTGtkWidget):Tgboolean;cdecl;external;
function gtk_requisition_get_type:TGType;cdecl;external;
function gtk_requisition_new:^TGtkRequisition;cdecl;external;
function gtk_requisition_copy(requisition:PTGtkRequisition):^TGtkRequisition;cdecl;external;
procedure gtk_requisition_free(requisition:PTGtkRequisition);cdecl;external;
function gtk_widget_in_destruction(widget:PTGtkWidget):Tgboolean;cdecl;external;
function gtk_widget_get_style_context(widget:PTGtkWidget):^TGtkStyleContext;cdecl;external;
procedure gtk_widget_class_set_css_name(widget_class:PTGtkWidgetClass; name:Pchar);cdecl;external;
function gtk_widget_class_get_css_name(widget_class:PTGtkWidgetClass):^char;cdecl;external;
function gtk_widget_add_tick_callback(widget:PTGtkWidget; callback:TGtkTickCallback; user_data:Tgpointer; notify:TGDestroyNotify):Tguint;cdecl;external;
procedure gtk_widget_remove_tick_callback(widget:PTGtkWidget; id:Tguint);cdecl;external;

function gtk_widget_class_bind_template_callback(widget_class,callback : longint) : longint;


function gtk_widget_class_bind_template_child(widget_class,TypeName,member_name : longint) : longint;


function gtk_widget_class_bind_template_child_internal(widget_class,TypeName,member_name : longint) : longint;


function gtk_widget_class_bind_template_child_private(widget_class,TypeName,member_name : longint) : longint;


function gtk_widget_class_bind_template_child_internal_private(widget_class,TypeName,member_name : longint) : longint;

procedure gtk_widget_init_template(widget:PTGtkWidget);cdecl;external;
function gtk_widget_get_template_child(widget:PTGtkWidget; widget_type:TGType; name:Pchar):^TGObject;cdecl;external;
procedure gtk_widget_dispose_template(widget:PTGtkWidget; widget_type:TGType);cdecl;external;
procedure gtk_widget_class_set_template(widget_class:PTGtkWidgetClass; template_bytes:PTGBytes);cdecl;external;
procedure gtk_widget_class_set_template_from_resource(widget_class:PTGtkWidgetClass; resource_name:Pchar);cdecl;external;
procedure gtk_widget_class_bind_template_callback_full(widget_class:PTGtkWidgetClass; callback_name:Pchar; callback_symbol:TGCallback);cdecl;external;
procedure gtk_widget_class_set_template_scope(widget_class:PTGtkWidgetClass; scope:PTGtkBuilderScope);cdecl;external;
procedure gtk_widget_class_bind_template_child_full(widget_class:PTGtkWidgetClass; name:Pchar; internal_child:Tgboolean; struct_offset:Tgssize);cdecl;external;
procedure gtk_widget_insert_action_group(widget:PTGtkWidget; name:Pchar; group:PTGActionGroup);cdecl;external;
function gtk_widget_activate_action(widget:PTGtkWidget; name:Pchar; format_string:Pchar; args:array of const):Tgboolean;cdecl;external;
function gtk_widget_activate_action(widget:PTGtkWidget; name:Pchar; format_string:Pchar):Tgboolean;cdecl;external;
function gtk_widget_activate_action_variant(widget:PTGtkWidget; name:Pchar; args:PTGVariant):Tgboolean;cdecl;external;
procedure gtk_widget_activate_default(widget:PTGtkWidget);cdecl;external;
procedure gtk_widget_set_font_map(widget:PTGtkWidget; font_map:PTPangoFontMap);cdecl;external;
function gtk_widget_get_font_map(widget:PTGtkWidget):^TPangoFontMap;cdecl;external;
function gtk_widget_get_first_child(widget:PTGtkWidget):^TGtkWidget;cdecl;external;
function gtk_widget_get_last_child(widget:PTGtkWidget):^TGtkWidget;cdecl;external;
function gtk_widget_get_next_sibling(widget:PTGtkWidget):^TGtkWidget;cdecl;external;
function gtk_widget_get_prev_sibling(widget:PTGtkWidget):^TGtkWidget;cdecl;external;
function gtk_widget_observe_children(widget:PTGtkWidget):^TGListModel;cdecl;external;
function gtk_widget_observe_controllers(widget:PTGtkWidget):^TGListModel;cdecl;external;
procedure gtk_widget_insert_after(widget:PTGtkWidget; parent:PTGtkWidget; previous_sibling:PTGtkWidget);cdecl;external;
procedure gtk_widget_insert_before(widget:PTGtkWidget; parent:PTGtkWidget; next_sibling:PTGtkWidget);cdecl;external;
procedure gtk_widget_set_focus_child(widget:PTGtkWidget; child:PTGtkWidget);cdecl;external;
function gtk_widget_get_focus_child(widget:PTGtkWidget):^TGtkWidget;cdecl;external;
procedure gtk_widget_snapshot_child(widget:PTGtkWidget; child:PTGtkWidget; snapshot:PTGtkSnapshot);cdecl;external;
function gtk_widget_should_layout(widget:PTGtkWidget):Tgboolean;cdecl;external;
function gtk_widget_get_css_name(self:PTGtkWidget):^char;cdecl;external;
procedure gtk_widget_add_css_class(widget:PTGtkWidget; css_class:Pchar);cdecl;external;
procedure gtk_widget_remove_css_class(widget:PTGtkWidget; css_class:Pchar);cdecl;external;
function gtk_widget_has_css_class(widget:PTGtkWidget; css_class:Pchar):Tgboolean;cdecl;external;
function gtk_widget_get_css_classes(widget:PTGtkWidget):^^char;cdecl;external;
procedure gtk_widget_set_css_classes(widget:PTGtkWidget; classes:PPchar);cdecl;external;

type

  TGtkWidgetActionActivateFunc = procedure (widget:PTGtkWidget; action_name:Pchar; parameter:PTGVariant);cdecl;

procedure gtk_widget_class_install_action(widget_class:PTGtkWidgetClass; action_name:Pchar; parameter_type:Pchar; activate:TGtkWidgetActionActivateFunc);cdecl;external;
procedure gtk_widget_class_install_property_action(widget_class:PTGtkWidgetClass; action_name:Pchar; property_name:Pchar);cdecl;external;
function gtk_widget_class_query_action(widget_class:PTGtkWidgetClass; index_:Tguint; owner:PTGType; action_name:PPchar; parameter_type:PPTGVariantType; 
           property_name:PPchar):Tgboolean;cdecl;external;
procedure gtk_widget_action_set_enabled(widget:PTGtkWidget; action_name:Pchar; enabled:Tgboolean);cdecl;external;
procedure gtk_widget_class_set_accessible_role(widget_class:PTGtkWidgetClass; accessible_role:TGtkAccessibleRole);cdecl;external;
function gtk_widget_class_get_accessible_role(widget_class:PTGtkWidgetClass):TGtkAccessibleRole;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtktextiter.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtktextiter.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtktextiter.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGtkTextIter  = ^GtkTextIter;
PGtkTextTag  = ^GtkTextTag;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef __GTK_TEXT_ITER_H__}
//// {$define __GTK_TEXT_ITER_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtktextchild.h>}
//// {$include <gtk/gtktexttag.h>}


type
  TGtkTextSearchFlags = (GTK_TEXT_SEARCH_VISIBLE_ONLY := 1 shl 0,GTK_TEXT_SEARCH_TEXT_ONLY := 1 shl 1,
    GTK_TEXT_SEARCH_CASE_INSENSITIVE := 1 shl 2
    );

  T_GtkTextBuffer = TGtkTextBuffer;

function GTK_TYPE_TEXT_ITER : longint; { return type might be wrong }




type
  T_GtkTextIter = record
      dummy1 : Tgpointer;
      dummy2 : Tgpointer;
      dummy3 : longint;
      dummy4 : longint;
      dummy5 : longint;
      dummy6 : longint;
      dummy7 : longint;
      dummy8 : longint;
      dummy9 : Tgpointer;
      dummy10 : Tgpointer;
      dummy11 : longint;
      dummy12 : longint;
      dummy13 : longint;
      dummy14 : Tgpointer;
    end;



function gtk_text_iter_get_buffer(iter:PTGtkTextIter):^TGtkTextBuffer;cdecl;external;

function gtk_text_iter_copy(iter:PTGtkTextIter):^TGtkTextIter;cdecl;external;
procedure gtk_text_iter_free(iter:PTGtkTextIter);cdecl;external;
procedure gtk_text_iter_assign(iter:PTGtkTextIter; other:PTGtkTextIter);cdecl;external;
function gtk_text_iter_get_type:TGType;cdecl;external;

function gtk_text_iter_get_offset(iter:PTGtkTextIter):longint;cdecl;external;
function gtk_text_iter_get_line(iter:PTGtkTextIter):longint;cdecl;external;
function gtk_text_iter_get_line_offset(iter:PTGtkTextIter):longint;cdecl;external;
function gtk_text_iter_get_line_index(iter:PTGtkTextIter):longint;cdecl;external;
function gtk_text_iter_get_visible_line_offset(iter:PTGtkTextIter):longint;cdecl;external;
function gtk_text_iter_get_visible_line_index(iter:PTGtkTextIter):longint;cdecl;external;

function gtk_text_iter_get_char(iter:PTGtkTextIter):Tgunichar;cdecl;external;

function gtk_text_iter_get_slice(start:PTGtkTextIter; end:PTGtkTextIter):^char;cdecl;external;

function gtk_text_iter_get_text(start:PTGtkTextIter; end:PTGtkTextIter):^char;cdecl;external;

function gtk_text_iter_get_visible_slice(start:PTGtkTextIter; end:PTGtkTextIter):^char;cdecl;external;
function gtk_text_iter_get_visible_text(start:PTGtkTextIter; end:PTGtkTextIter):^char;cdecl;external;
function gtk_text_iter_get_paintable(iter:PTGtkTextIter):^TGdkPaintable;cdecl;external;
function gtk_text_iter_get_marks(iter:PTGtkTextIter):^TGSList;cdecl;external;
function gtk_text_iter_get_child_anchor(iter:PTGtkTextIter):^TGtkTextChildAnchor;cdecl;external;

function gtk_text_iter_get_toggled_tags(iter:PTGtkTextIter; toggled_on:Tgboolean):^TGSList;cdecl;external;
function gtk_text_iter_starts_tag(iter:PTGtkTextIter; tag:PTGtkTextTag):Tgboolean;cdecl;external;
function gtk_text_iter_ends_tag(iter:PTGtkTextIter; tag:PTGtkTextTag):Tgboolean;cdecl;external;
function gtk_text_iter_toggles_tag(iter:PTGtkTextIter; tag:PTGtkTextTag):Tgboolean;cdecl;external;
function gtk_text_iter_has_tag(iter:PTGtkTextIter; tag:PTGtkTextTag):Tgboolean;cdecl;external;
function gtk_text_iter_get_tags(iter:PTGtkTextIter):^TGSList;cdecl;external;
function gtk_text_iter_editable(iter:PTGtkTextIter; default_setting:Tgboolean):Tgboolean;cdecl;external;
function gtk_text_iter_can_insert(iter:PTGtkTextIter; default_editability:Tgboolean):Tgboolean;cdecl;external;
function gtk_text_iter_starts_word(iter:PTGtkTextIter):Tgboolean;cdecl;external;
function gtk_text_iter_ends_word(iter:PTGtkTextIter):Tgboolean;cdecl;external;
function gtk_text_iter_inside_word(iter:PTGtkTextIter):Tgboolean;cdecl;external;
function gtk_text_iter_starts_sentence(iter:PTGtkTextIter):Tgboolean;cdecl;external;
function gtk_text_iter_ends_sentence(iter:PTGtkTextIter):Tgboolean;cdecl;external;
function gtk_text_iter_inside_sentence(iter:PTGtkTextIter):Tgboolean;cdecl;external;
function gtk_text_iter_starts_line(iter:PTGtkTextIter):Tgboolean;cdecl;external;
function gtk_text_iter_ends_line(iter:PTGtkTextIter):Tgboolean;cdecl;external;
function gtk_text_iter_is_cursor_position(iter:PTGtkTextIter):Tgboolean;cdecl;external;
function gtk_text_iter_get_chars_in_line(iter:PTGtkTextIter):longint;cdecl;external;
function gtk_text_iter_get_bytes_in_line(iter:PTGtkTextIter):longint;cdecl;external;
function gtk_text_iter_get_language(iter:PTGtkTextIter):^TPangoLanguage;cdecl;external;
function gtk_text_iter_is_end(iter:PTGtkTextIter):Tgboolean;cdecl;external;
function gtk_text_iter_is_start(iter:PTGtkTextIter):Tgboolean;cdecl;external;

function gtk_text_iter_forward_char(iter:PTGtkTextIter):Tgboolean;cdecl;external;
function gtk_text_iter_backward_char(iter:PTGtkTextIter):Tgboolean;cdecl;external;
function gtk_text_iter_forward_chars(iter:PTGtkTextIter; count:longint):Tgboolean;cdecl;external;
function gtk_text_iter_backward_chars(iter:PTGtkTextIter; count:longint):Tgboolean;cdecl;external;
function gtk_text_iter_forward_line(iter:PTGtkTextIter):Tgboolean;cdecl;external;
function gtk_text_iter_backward_line(iter:PTGtkTextIter):Tgboolean;cdecl;external;
function gtk_text_iter_forward_lines(iter:PTGtkTextIter; count:longint):Tgboolean;cdecl;external;
function gtk_text_iter_backward_lines(iter:PTGtkTextIter; count:longint):Tgboolean;cdecl;external;
function gtk_text_iter_forward_word_end(iter:PTGtkTextIter):Tgboolean;cdecl;external;
function gtk_text_iter_backward_word_start(iter:PTGtkTextIter):Tgboolean;cdecl;external;
function gtk_text_iter_forward_word_ends(iter:PTGtkTextIter; count:longint):Tgboolean;cdecl;external;
function gtk_text_iter_backward_word_starts(iter:PTGtkTextIter; count:longint):Tgboolean;cdecl;external;
function gtk_text_iter_forward_visible_line(iter:PTGtkTextIter):Tgboolean;cdecl;external;
function gtk_text_iter_backward_visible_line(iter:PTGtkTextIter):Tgboolean;cdecl;external;
function gtk_text_iter_forward_visible_lines(iter:PTGtkTextIter; count:longint):Tgboolean;cdecl;external;
function gtk_text_iter_backward_visible_lines(iter:PTGtkTextIter; count:longint):Tgboolean;cdecl;external;
function gtk_text_iter_forward_visible_word_end(iter:PTGtkTextIter):Tgboolean;cdecl;external;
function gtk_text_iter_backward_visible_word_start(iter:PTGtkTextIter):Tgboolean;cdecl;external;
function gtk_text_iter_forward_visible_word_ends(iter:PTGtkTextIter; count:longint):Tgboolean;cdecl;external;
function gtk_text_iter_backward_visible_word_starts(iter:PTGtkTextIter; count:longint):Tgboolean;cdecl;external;
function gtk_text_iter_forward_sentence_end(iter:PTGtkTextIter):Tgboolean;cdecl;external;
function gtk_text_iter_backward_sentence_start(iter:PTGtkTextIter):Tgboolean;cdecl;external;
function gtk_text_iter_forward_sentence_ends(iter:PTGtkTextIter; count:longint):Tgboolean;cdecl;external;
function gtk_text_iter_backward_sentence_starts(iter:PTGtkTextIter; count:longint):Tgboolean;cdecl;external;

function gtk_text_iter_forward_cursor_position(iter:PTGtkTextIter):Tgboolean;cdecl;external;
function gtk_text_iter_backward_cursor_position(iter:PTGtkTextIter):Tgboolean;cdecl;external;
function gtk_text_iter_forward_cursor_positions(iter:PTGtkTextIter; count:longint):Tgboolean;cdecl;external;
function gtk_text_iter_backward_cursor_positions(iter:PTGtkTextIter; count:longint):Tgboolean;cdecl;external;
function gtk_text_iter_forward_visible_cursor_position(iter:PTGtkTextIter):Tgboolean;cdecl;external;
function gtk_text_iter_backward_visible_cursor_position(iter:PTGtkTextIter):Tgboolean;cdecl;external;
function gtk_text_iter_forward_visible_cursor_positions(iter:PTGtkTextIter; count:longint):Tgboolean;cdecl;external;
function gtk_text_iter_backward_visible_cursor_positions(iter:PTGtkTextIter; count:longint):Tgboolean;cdecl;external;
procedure gtk_text_iter_set_offset(iter:PTGtkTextIter; char_offset:longint);cdecl;external;
procedure gtk_text_iter_set_line(iter:PTGtkTextIter; line_number:longint);cdecl;external;
procedure gtk_text_iter_set_line_offset(iter:PTGtkTextIter; char_on_line:longint);cdecl;external;
procedure gtk_text_iter_set_line_index(iter:PTGtkTextIter; byte_on_line:longint);cdecl;external;
procedure gtk_text_iter_forward_to_end(iter:PTGtkTextIter);cdecl;external;
function gtk_text_iter_forward_to_line_end(iter:PTGtkTextIter):Tgboolean;cdecl;external;
procedure gtk_text_iter_set_visible_line_offset(iter:PTGtkTextIter; char_on_line:longint);cdecl;external;
procedure gtk_text_iter_set_visible_line_index(iter:PTGtkTextIter; byte_on_line:longint);cdecl;external;

function gtk_text_iter_forward_to_tag_toggle(iter:PTGtkTextIter; tag:PTGtkTextTag):Tgboolean;cdecl;external;
function gtk_text_iter_backward_to_tag_toggle(iter:PTGtkTextIter; tag:PTGtkTextTag):Tgboolean;cdecl;external;

type

  TGtkTextCharPredicate = function (ch:Tgunichar; user_data:Tgpointer):Tgboolean;cdecl;

function gtk_text_iter_forward_find_char(iter:PTGtkTextIter; pred:TGtkTextCharPredicate; user_data:Tgpointer; limit:PTGtkTextIter):Tgboolean;cdecl;external;
function gtk_text_iter_backward_find_char(iter:PTGtkTextIter; pred:TGtkTextCharPredicate; user_data:Tgpointer; limit:PTGtkTextIter):Tgboolean;cdecl;external;
function gtk_text_iter_forward_search(iter:PTGtkTextIter; str:Pchar; flags:TGtkTextSearchFlags; match_start:PTGtkTextIter; match_end:PTGtkTextIter; 
           limit:PTGtkTextIter):Tgboolean;cdecl;external;
function gtk_text_iter_backward_search(iter:PTGtkTextIter; str:Pchar; flags:TGtkTextSearchFlags; match_start:PTGtkTextIter; match_end:PTGtkTextIter; 
           limit:PTGtkTextIter):Tgboolean;cdecl;external;

function gtk_text_iter_equal(lhs:PTGtkTextIter; rhs:PTGtkTextIter):Tgboolean;cdecl;external;
function gtk_text_iter_compare(lhs:PTGtkTextIter; rhs:PTGtkTextIter):longint;cdecl;external;
function gtk_text_iter_in_range(iter:PTGtkTextIter; start:PTGtkTextIter; end:PTGtkTextIter):Tgboolean;cdecl;external;

procedure gtk_text_iter_order(first:PTGtkTextIter; second:PTGtkTextIter);cdecl;external;
//// {$endif}

// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkimcontextsimple.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkimcontextsimple.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkimcontextsimple.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGtkIMContextSimple  = ^GtkIMContextSimple;
Pguint16  = ^guint16;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_IM_CONTEXT_SIMPLE_H__}
//// {$define __GTK_IM_CONTEXT_SIMPLE_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkimcontext.h>}


const
  GTK_MAX_COMPOSE_LEN = 7;  

function GTK_TYPE_IM_CONTEXT_SIMPLE : longint; { return type might be wrong }

function GTK_IM_CONTEXT_SIMPLE(obj : longint) : longint;

function GTK_IM_CONTEXT_SIMPLE_CLASS(klass : longint) : longint;

function GTK_IS_IM_CONTEXT_SIMPLE(obj : longint) : longint;

function GTK_IS_IM_CONTEXT_SIMPLE_CLASS(klass : longint) : longint;

function GTK_IM_CONTEXT_SIMPLE_GET_CLASS(obj : longint) : longint;

type
  T_GtkIMContextSimple = TGtkIMContextSimple;
  T_GtkIMContextSimplePrivate = TGtkIMContextSimplePrivate;
  T_GtkIMContextSimpleClass = TGtkIMContextSimpleClass;

  T_GtkIMContextSimple = record
      object : TGtkIMContext;
      priv : ^TGtkIMContextSimplePrivate;
    end;

  T_GtkIMContextSimpleClass = record
      parent_class : TGtkIMContextClass;
    end;


function gtk_im_context_simple_get_type:TGType;cdecl;external;
function gtk_im_context_simple_new:^TGtkIMContext;cdecl;external;
procedure gtk_im_context_simple_add_table(context_simple:PTGtkIMContextSimple; data:PTguint16; max_seq_len:longint; n_seqs:longint);cdecl;external;
procedure gtk_im_context_simple_add_compose_file(context_simple:PTGtkIMContextSimple; compose_file:Pchar);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkaboutdialog.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkaboutdialog.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkaboutdialog.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGdkPaintable  = ^GdkPaintable;
PGtkAboutDialog  = ^GtkAboutDialog;
PGtkWindow  = ^GtkWindow;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_ABOUT_DIALOG_H__}
//// {$define __GTK_ABOUT_DIALOG_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkwindow.h>}

function GTK_TYPE_ABOUT_DIALOG : longint; { return type might be wrong }

function GTK_ABOUT_DIALOG(object : longint) : longint;

function GTK_IS_ABOUT_DIALOG(object : longint) : longint;

type
  T_GtkAboutDialog = TGtkAboutDialog;


  TGtkLicense = (GTK_LICENSE_UNKNOWN,GTK_LICENSE_CUSTOM,
    GTK_LICENSE_GPL_2_0,GTK_LICENSE_GPL_3_0,
    GTK_LICENSE_LGPL_2_1,GTK_LICENSE_LGPL_3_0,
    GTK_LICENSE_BSD,GTK_LICENSE_MIT_X11,GTK_LICENSE_ARTISTIC,
    GTK_LICENSE_GPL_2_0_ONLY,GTK_LICENSE_GPL_3_0_ONLY,
    GTK_LICENSE_LGPL_2_1_ONLY,GTK_LICENSE_LGPL_3_0_ONLY,
    GTK_LICENSE_AGPL_3_0,GTK_LICENSE_AGPL_3_0_ONLY,
    GTK_LICENSE_BSD_3,GTK_LICENSE_APACHE_2_0,
    GTK_LICENSE_MPL_2_0);

function gtk_about_dialog_get_type:TGType;cdecl;external;
function gtk_about_dialog_new:^TGtkWidget;cdecl;external;
procedure gtk_show_about_dialog(parent:PTGtkWindow; first_property_name:Pchar; args:array of const);cdecl;external;
procedure gtk_show_about_dialog(parent:PTGtkWindow; first_property_name:Pchar);cdecl;external;
function gtk_about_dialog_get_program_name(about:PTGtkAboutDialog):^char;cdecl;external;
procedure gtk_about_dialog_set_program_name(about:PTGtkAboutDialog; name:Pchar);cdecl;external;
function gtk_about_dialog_get_version(about:PTGtkAboutDialog):^char;cdecl;external;
procedure gtk_about_dialog_set_version(about:PTGtkAboutDialog; version:Pchar);cdecl;external;
function gtk_about_dialog_get_copyright(about:PTGtkAboutDialog):^char;cdecl;external;
procedure gtk_about_dialog_set_copyright(about:PTGtkAboutDialog; copyright:Pchar);cdecl;external;
function gtk_about_dialog_get_comments(about:PTGtkAboutDialog):^char;cdecl;external;
procedure gtk_about_dialog_set_comments(about:PTGtkAboutDialog; comments:Pchar);cdecl;external;
function gtk_about_dialog_get_license(about:PTGtkAboutDialog):^char;cdecl;external;
procedure gtk_about_dialog_set_license(about:PTGtkAboutDialog; license:Pchar);cdecl;external;
procedure gtk_about_dialog_set_license_type(about:PTGtkAboutDialog; license_type:TGtkLicense);cdecl;external;
function gtk_about_dialog_get_license_type(about:PTGtkAboutDialog):TGtkLicense;cdecl;external;
function gtk_about_dialog_get_wrap_license(about:PTGtkAboutDialog):Tgboolean;cdecl;external;
procedure gtk_about_dialog_set_wrap_license(about:PTGtkAboutDialog; wrap_license:Tgboolean);cdecl;external;
function gtk_about_dialog_get_system_information(about:PTGtkAboutDialog):^char;cdecl;external;
procedure gtk_about_dialog_set_system_information(about:PTGtkAboutDialog; system_information:Pchar);cdecl;external;
function gtk_about_dialog_get_website(about:PTGtkAboutDialog):^char;cdecl;external;
procedure gtk_about_dialog_set_website(about:PTGtkAboutDialog; website:Pchar);cdecl;external;
function gtk_about_dialog_get_website_label(about:PTGtkAboutDialog):^char;cdecl;external;
procedure gtk_about_dialog_set_website_label(about:PTGtkAboutDialog; website_label:Pchar);cdecl;external;
function gtk_about_dialog_get_authors(about:PTGtkAboutDialog):^^char;cdecl;external;
procedure gtk_about_dialog_set_authors(about:PTGtkAboutDialog; authors:PPchar);cdecl;external;
function gtk_about_dialog_get_documenters(about:PTGtkAboutDialog):^^char;cdecl;external;
procedure gtk_about_dialog_set_documenters(about:PTGtkAboutDialog; documenters:PPchar);cdecl;external;
function gtk_about_dialog_get_artists(about:PTGtkAboutDialog):^^char;cdecl;external;
procedure gtk_about_dialog_set_artists(about:PTGtkAboutDialog; artists:PPchar);cdecl;external;
function gtk_about_dialog_get_translator_credits(about:PTGtkAboutDialog):^char;cdecl;external;
procedure gtk_about_dialog_set_translator_credits(about:PTGtkAboutDialog; translator_credits:Pchar);cdecl;external;
function gtk_about_dialog_get_logo(about:PTGtkAboutDialog):^TGdkPaintable;cdecl;external;
procedure gtk_about_dialog_set_logo(about:PTGtkAboutDialog; logo:PTGdkPaintable);cdecl;external;
function gtk_about_dialog_get_logo_icon_name(about:PTGtkAboutDialog):^char;cdecl;external;
procedure gtk_about_dialog_set_logo_icon_name(about:PTGtkAboutDialog; icon_name:Pchar);cdecl;external;
procedure gtk_about_dialog_add_credit_section(about:PTGtkAboutDialog; section_name:Pchar; people:PPchar);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtktextmark.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtktextmark.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtktextmark.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGtkTextMark  = ^GtkTextMark;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_TEXT_MARK_H__}
//// {$define __GTK_TEXT_MARK_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
type
  T_GtkTextMark = TGtkTextMark;
  T_GtkTextMarkClass = TGtkTextMarkClass;

function GTK_TYPE_TEXT_MARK : longint; { return type might be wrong }

function GTK_TEXT_MARK(object : longint) : longint;

function GTK_TEXT_MARK_CLASS(klass : longint) : longint;

function GTK_IS_TEXT_MARK(object : longint) : longint;

function GTK_IS_TEXT_MARK_CLASS(klass : longint) : longint;

function GTK_TEXT_MARK_GET_CLASS(obj : longint) : longint;


type
  T_GtkTextMark = record
      parent_instance : TGObject;
      segment : Tgpointer;
    end;


  T_GtkTextMarkClass = record
      parent_class : TGObjectClass;
      padding : array[0..7] of Tgpointer;
    end;


function gtk_text_mark_get_type:TGType;cdecl;external;
function gtk_text_mark_new(name:Pchar; left_gravity:Tgboolean):^TGtkTextMark;cdecl;external;
procedure gtk_text_mark_set_visible(mark:PTGtkTextMark; setting:Tgboolean);cdecl;external;
function gtk_text_mark_get_visible(mark:PTGtkTextMark):Tgboolean;cdecl;external;
function gtk_text_mark_get_name(mark:PTGtkTextMark):^char;cdecl;external;
function gtk_text_mark_get_deleted(mark:PTGtkTextMark):Tgboolean;cdecl;external;
function gtk_text_mark_get_buffer(mark:PTGtkTextMark):^TGtkTextBuffer;cdecl;external;
function gtk_text_mark_get_left_gravity(mark:PTGtkTextMark):Tgboolean;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtklayoutmanager.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtklayoutmanager.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtklayoutmanager.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGtkLayoutChild  = ^GtkLayoutChild;
PGtkLayoutManager  = ^GtkLayoutManager;
PGtkWidget  = ^GtkWidget;
Plongint  = ^longint;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$include <gsk/gsk.h>}
//// {$include <gtk/gtktypes.h>}
//// {$include <gtk/gtkwidget.h>}
//// {$include <gtk/gtklayoutchild.h>}

function GTK_TYPE_LAYOUT_MANAGER : longint; { return type might be wrong }






type
  T_GtkLayoutManagerClass = record
      parent_class : TGObjectClass;
      get_request_mode : function (manager:PTGtkLayoutManager; widget:PTGtkWidget):TGtkSizeRequestMode;cdecl;
      measure : procedure (manager:PTGtkLayoutManager; widget:PTGtkWidget; orientation:TGtkOrientation; for_size:longint; minimum:Plongint; 
                    natural:Plongint; minimum_baseline:Plongint; natural_baseline:Plongint);cdecl;
      allocate : procedure (manager:PTGtkLayoutManager; widget:PTGtkWidget; width:longint; height:longint; baseline:longint);cdecl;
      layout_child_type : TGType;
      create_layout_child : function (manager:PTGtkLayoutManager; widget:PTGtkWidget; for_child:PTGtkWidget):PTGtkLayoutChild;cdecl;
      root : procedure (manager:PTGtkLayoutManager);cdecl;
      unroot : procedure (manager:PTGtkLayoutManager);cdecl;
      _padding : array[0..15] of Tgpointer;
    end;


procedure gtk_layout_manager_measure(manager:PTGtkLayoutManager; widget:PTGtkWidget; orientation:TGtkOrientation; for_size:longint; minimum:Plongint; 
            natural:Plongint; minimum_baseline:Plongint; natural_baseline:Plongint);cdecl;external;
procedure gtk_layout_manager_allocate(manager:PTGtkLayoutManager; widget:PTGtkWidget; width:longint; height:longint; baseline:longint);cdecl;external;
function gtk_layout_manager_get_request_mode(manager:PTGtkLayoutManager):TGtkSizeRequestMode;cdecl;external;
function gtk_layout_manager_get_widget(manager:PTGtkLayoutManager):^TGtkWidget;cdecl;external;
procedure gtk_layout_manager_layout_changed(manager:PTGtkLayoutManager);cdecl;external;
function gtk_layout_manager_get_layout_child(manager:PTGtkLayoutManager; child:PTGtkWidget):^TGtkLayoutChild;cdecl;external;

// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtknotebook.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtknotebook.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtknotebook.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGtkNotebook  = ^GtkNotebook;
PGtkNotebookPage  = ^GtkNotebookPage;
PGtkWidget  = ^GtkWidget;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}





//// {$ifndef __GTK_NOTEBOOK_H__}
//// {$define __GTK_NOTEBOOK_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkwidget.h>}

function GTK_IS_NOTEBOOK(obj : longint) : longint;

function GTK_IS_NOTEBOOK_PAGE(obj : longint) : longint;

type
  T_GtkNotebookPage = TGtkNotebookPage;


  TGtkNotebookTab = (GTK_NOTEBOOK_TAB_FIRST,GTK_NOTEBOOK_TAB_LAST
    );
  T_GtkNotebook = TGtkNotebook;


function gtk_notebook_get_type:TGType;cdecl;external;
function gtk_notebook_new:^TGtkWidget;cdecl;external;
function gtk_notebook_append_page(notebook:PTGtkNotebook; child:PTGtkWidget; tab_label:PTGtkWidget):longint;cdecl;external;
function gtk_notebook_append_page_menu(notebook:PTGtkNotebook; child:PTGtkWidget; tab_label:PTGtkWidget; menu_label:PTGtkWidget):longint;cdecl;external;
function gtk_notebook_prepend_page(notebook:PTGtkNotebook; child:PTGtkWidget; tab_label:PTGtkWidget):longint;cdecl;external;
function gtk_notebook_prepend_page_menu(notebook:PTGtkNotebook; child:PTGtkWidget; tab_label:PTGtkWidget; menu_label:PTGtkWidget):longint;cdecl;external;
function gtk_notebook_insert_page(notebook:PTGtkNotebook; child:PTGtkWidget; tab_label:PTGtkWidget; position:longint):longint;cdecl;external;
function gtk_notebook_insert_page_menu(notebook:PTGtkNotebook; child:PTGtkWidget; tab_label:PTGtkWidget; menu_label:PTGtkWidget; position:longint):longint;cdecl;external;
procedure gtk_notebook_remove_page(notebook:PTGtkNotebook; page_num:longint);cdecl;external;

procedure gtk_notebook_set_group_name(notebook:PTGtkNotebook; group_name:Pchar);cdecl;external;
function gtk_notebook_get_group_name(notebook:PTGtkNotebook):^char;cdecl;external;

function gtk_notebook_get_current_page(notebook:PTGtkNotebook):longint;cdecl;external;
function gtk_notebook_get_nth_page(notebook:PTGtkNotebook; page_num:longint):^TGtkWidget;cdecl;external;
function gtk_notebook_get_n_pages(notebook:PTGtkNotebook):longint;cdecl;external;
function gtk_notebook_page_num(notebook:PTGtkNotebook; child:PTGtkWidget):longint;cdecl;external;
procedure gtk_notebook_set_current_page(notebook:PTGtkNotebook; page_num:longint);cdecl;external;
procedure gtk_notebook_next_page(notebook:PTGtkNotebook);cdecl;external;
procedure gtk_notebook_prev_page(notebook:PTGtkNotebook);cdecl;external;

procedure gtk_notebook_set_show_border(notebook:PTGtkNotebook; show_border:Tgboolean);cdecl;external;
function gtk_notebook_get_show_border(notebook:PTGtkNotebook):Tgboolean;cdecl;external;
procedure gtk_notebook_set_show_tabs(notebook:PTGtkNotebook; show_tabs:Tgboolean);cdecl;external;
function gtk_notebook_get_show_tabs(notebook:PTGtkNotebook):Tgboolean;cdecl;external;
procedure gtk_notebook_set_tab_pos(notebook:PTGtkNotebook; pos:TGtkPositionType);cdecl;external;
function gtk_notebook_get_tab_pos(notebook:PTGtkNotebook):TGtkPositionType;cdecl;external;
procedure gtk_notebook_set_scrollable(notebook:PTGtkNotebook; scrollable:Tgboolean);cdecl;external;
function gtk_notebook_get_scrollable(notebook:PTGtkNotebook):Tgboolean;cdecl;external;

procedure gtk_notebook_popup_enable(notebook:PTGtkNotebook);cdecl;external;
procedure gtk_notebook_popup_disable(notebook:PTGtkNotebook);cdecl;external;

function gtk_notebook_get_tab_label(notebook:PTGtkNotebook; child:PTGtkWidget):^TGtkWidget;cdecl;external;
procedure gtk_notebook_set_tab_label(notebook:PTGtkNotebook; child:PTGtkWidget; tab_label:PTGtkWidget);cdecl;external;
procedure gtk_notebook_set_tab_label_text(notebook:PTGtkNotebook; child:PTGtkWidget; tab_text:Pchar);cdecl;external;
function gtk_notebook_get_tab_label_text(notebook:PTGtkNotebook; child:PTGtkWidget):^char;cdecl;external;
function gtk_notebook_get_menu_label(notebook:PTGtkNotebook; child:PTGtkWidget):^TGtkWidget;cdecl;external;
procedure gtk_notebook_set_menu_label(notebook:PTGtkNotebook; child:PTGtkWidget; menu_label:PTGtkWidget);cdecl;external;
procedure gtk_notebook_set_menu_label_text(notebook:PTGtkNotebook; child:PTGtkWidget; menu_text:Pchar);cdecl;external;
function gtk_notebook_get_menu_label_text(notebook:PTGtkNotebook; child:PTGtkWidget):^char;cdecl;external;
procedure gtk_notebook_reorder_child(notebook:PTGtkNotebook; child:PTGtkWidget; position:longint);cdecl;external;
function gtk_notebook_get_tab_reorderable(notebook:PTGtkNotebook; child:PTGtkWidget):Tgboolean;cdecl;external;
procedure gtk_notebook_set_tab_reorderable(notebook:PTGtkNotebook; child:PTGtkWidget; reorderable:Tgboolean);cdecl;external;
function gtk_notebook_get_tab_detachable(notebook:PTGtkNotebook; child:PTGtkWidget):Tgboolean;cdecl;external;
procedure gtk_notebook_set_tab_detachable(notebook:PTGtkNotebook; child:PTGtkWidget; detachable:Tgboolean);cdecl;external;
procedure gtk_notebook_detach_tab(notebook:PTGtkNotebook; child:PTGtkWidget);cdecl;external;
function gtk_notebook_get_action_widget(notebook:PTGtkNotebook; pack_type:TGtkPackType):^TGtkWidget;cdecl;external;
procedure gtk_notebook_set_action_widget(notebook:PTGtkNotebook; widget:PTGtkWidget; pack_type:TGtkPackType);cdecl;external;
function gtk_notebook_page_get_type:TGType;cdecl;external;
function gtk_notebook_get_page(notebook:PTGtkNotebook; child:PTGtkWidget):^TGtkNotebookPage;cdecl;external;
function gtk_notebook_page_get_child(page:PTGtkNotebookPage):^TGtkWidget;cdecl;external;
function gtk_notebook_get_pages(notebook:PTGtkNotebook):^TGListModel;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkcellrendererprogress.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkcellrendererprogress.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkcellrendererprogress.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef __GTK_CELL_RENDERER_PROGRESS_H__}
//// {$define __GTK_CELL_RENDERER_PROGRESS_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkcellrenderer.h>}

function GTK_TYPE_CELL_RENDERER_PROGRESS : longint; { return type might be wrong }

function GTK_CELL_RENDERER_PROGRESS(obj : longint) : longint;

function GTK_IS_CELL_RENDERER_PROGRESS(obj : longint) : longint;

type
  T_GtkCellRendererProgress = TGtkCellRendererProgress;

function gtk_cell_renderer_progress_get_type:TGType;cdecl;external;
function gtk_cell_renderer_progress_new:^TGtkCellRenderer;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkrevealer.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkrevealer.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkrevealer.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGtkRevealer  = ^GtkRevealer;
PGtkWidget  = ^GtkWidget;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_REVEALER_H__}
//// {$define __GTK_REVEALER_H__}
//// {$include <gtk/gtkwidget.h>}

function GTK_TYPE_REVEALER : longint; { return type might be wrong }

function GTK_REVEALER(obj : longint) : longint;

function GTK_IS_REVEALER(obj : longint) : longint;

type
  T_GtkRevealer = TGtkRevealer;

  TGtkRevealerTransitionType = (GTK_REVEALER_TRANSITION_TYPE_NONE,GTK_REVEALER_TRANSITION_TYPE_CROSSFADE,
    GTK_REVEALER_TRANSITION_TYPE_SLIDE_RIGHT,
    GTK_REVEALER_TRANSITION_TYPE_SLIDE_LEFT,
    GTK_REVEALER_TRANSITION_TYPE_SLIDE_UP,
    GTK_REVEALER_TRANSITION_TYPE_SLIDE_DOWN,
    GTK_REVEALER_TRANSITION_TYPE_SWING_RIGHT,
    GTK_REVEALER_TRANSITION_TYPE_SWING_LEFT,
    GTK_REVEALER_TRANSITION_TYPE_SWING_UP,
    GTK_REVEALER_TRANSITION_TYPE_SWING_DOWN
    );

function gtk_revealer_get_type:TGType;cdecl;external;
function gtk_revealer_new:^TGtkWidget;cdecl;external;
function gtk_revealer_get_reveal_child(revealer:PTGtkRevealer):Tgboolean;cdecl;external;
procedure gtk_revealer_set_reveal_child(revealer:PTGtkRevealer; reveal_child:Tgboolean);cdecl;external;
function gtk_revealer_get_child_revealed(revealer:PTGtkRevealer):Tgboolean;cdecl;external;
function gtk_revealer_get_transition_duration(revealer:PTGtkRevealer):Tguint;cdecl;external;
procedure gtk_revealer_set_transition_duration(revealer:PTGtkRevealer; duration:Tguint);cdecl;external;
procedure gtk_revealer_set_transition_type(revealer:PTGtkRevealer; transition:TGtkRevealerTransitionType);cdecl;external;
function gtk_revealer_get_transition_type(revealer:PTGtkRevealer):TGtkRevealerTransitionType;cdecl;external;
procedure gtk_revealer_set_child(revealer:PTGtkRevealer; child:PTGtkWidget);cdecl;external;
function gtk_revealer_get_child(revealer:PTGtkRevealer):^TGtkWidget;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkemojichooser.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkemojichooser.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkemojichooser.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkwidget.h>}

function GTK_TYPE_EMOJI_CHOOSER : longint; { return type might be wrong }

function GTK_EMOJI_CHOOSER(obj : longint) : longint;

function GTK_EMOJI_CHOOSER_CLASS(klass : longint) : longint;

function GTK_IS_EMOJI_CHOOSER(obj : longint) : longint;

function GTK_IS_EMOJI_CHOOSER_CLASS(klass : longint) : longint;

function GTK_EMOJI_CHOOSER_GET_CLASS(obj : longint) : longint;

type
  T_GtkEmojiChooser = TGtkEmojiChooser;
  T_GtkEmojiChooserClass = TGtkEmojiChooserClass;

function gtk_emoji_chooser_get_type:TGType;cdecl;external;
function gtk_emoji_chooser_new:^TGtkWidget;cdecl;external;

// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtktext.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtktext.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtktext.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGMenuModel  = ^GMenuModel;
Pgraphene_rect_t  = ^graphene_rect_t;
PGtkEntryBuffer  = ^GtkEntryBuffer;
PGtkText  = ^GtkText;
PPangoAttrList  = ^PangoAttrList;
PPangoTabArray  = ^PangoTabArray;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef __GTK_TEXT_H__}
//// {$define __GTK_TEXT_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkeditable.h>}
//// {$include <gtk/gtkentrybuffer.h>}

function GTK_TYPE_TEXT : longint; { return type might be wrong }

function GTK_TEXT(obj : longint) : longint;

function GTK_IS_TEXT(obj : longint) : longint;

type
  T_GtkText = TGtkText;

  T_GtkText = record
      parent_instance : TGtkWidget;
    end;


function gtk_text_get_type:TGType;cdecl;external;
function gtk_text_new:^TGtkWidget;cdecl;external;
function gtk_text_new_with_buffer(buffer:PTGtkEntryBuffer):^TGtkWidget;cdecl;external;
function gtk_text_get_buffer(self:PTGtkText):^TGtkEntryBuffer;cdecl;external;
procedure gtk_text_set_buffer(self:PTGtkText; buffer:PTGtkEntryBuffer);cdecl;external;
procedure gtk_text_set_visibility(self:PTGtkText; visible:Tgboolean);cdecl;external;
function gtk_text_get_visibility(self:PTGtkText):Tgboolean;cdecl;external;
procedure gtk_text_set_invisible_char(self:PTGtkText; ch:Tgunichar);cdecl;external;
function gtk_text_get_invisible_char(self:PTGtkText):Tgunichar;cdecl;external;
procedure gtk_text_unset_invisible_char(self:PTGtkText);cdecl;external;
procedure gtk_text_set_overwrite_mode(self:PTGtkText; overwrite:Tgboolean);cdecl;external;
function gtk_text_get_overwrite_mode(self:PTGtkText):Tgboolean;cdecl;external;
procedure gtk_text_set_max_length(self:PTGtkText; length:longint);cdecl;external;
function gtk_text_get_max_length(self:PTGtkText):longint;cdecl;external;
function gtk_text_get_text_length(self:PTGtkText):Tguint16;cdecl;external;
procedure gtk_text_set_activates_default(self:PTGtkText; activates:Tgboolean);cdecl;external;
function gtk_text_get_activates_default(self:PTGtkText):Tgboolean;cdecl;external;
function gtk_text_get_placeholder_text(self:PTGtkText):^char;cdecl;external;
procedure gtk_text_set_placeholder_text(self:PTGtkText; text:Pchar);cdecl;external;
procedure gtk_text_set_input_purpose(self:PTGtkText; purpose:TGtkInputPurpose);cdecl;external;
function gtk_text_get_input_purpose(self:PTGtkText):TGtkInputPurpose;cdecl;external;
procedure gtk_text_set_input_hints(self:PTGtkText; hints:TGtkInputHints);cdecl;external;
function gtk_text_get_input_hints(self:PTGtkText):TGtkInputHints;cdecl;external;
procedure gtk_text_set_attributes(self:PTGtkText; attrs:PTPangoAttrList);cdecl;external;
function gtk_text_get_attributes(self:PTGtkText):^TPangoAttrList;cdecl;external;
procedure gtk_text_set_tabs(self:PTGtkText; tabs:PTPangoTabArray);cdecl;external;
function gtk_text_get_tabs(self:PTGtkText):^TPangoTabArray;cdecl;external;
function gtk_text_grab_focus_without_selecting(self:PTGtkText):Tgboolean;cdecl;external;
procedure gtk_text_set_extra_menu(self:PTGtkText; model:PTGMenuModel);cdecl;external;
function gtk_text_get_extra_menu(self:PTGtkText):^TGMenuModel;cdecl;external;
procedure gtk_text_set_enable_emoji_completion(self:PTGtkText; enable_emoji_completion:Tgboolean);cdecl;external;
function gtk_text_get_enable_emoji_completion(self:PTGtkText):Tgboolean;cdecl;external;
procedure gtk_text_set_propagate_text_width(self:PTGtkText; propagate_text_width:Tgboolean);cdecl;external;
function gtk_text_get_propagate_text_width(self:PTGtkText):Tgboolean;cdecl;external;
procedure gtk_text_set_truncate_multiline(self:PTGtkText; truncate_multiline:Tgboolean);cdecl;external;
function gtk_text_get_truncate_multiline(self:PTGtkText):Tgboolean;cdecl;external;
procedure gtk_text_compute_cursor_extents(self:PTGtkText; position:Tgsize; strong:PTgraphene_rect_t; weak:PTgraphene_rect_t);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkentrybuffer.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkentrybuffer.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkentrybuffer.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
Pgsize  = ^gsize;
PGtkEntryBuffer  = ^GtkEntryBuffer;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_ENTRY_BUFFER_H__}
//// {$define __GTK_ENTRY_BUFFER_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <glib-object.h>}
//// {$include <gdk/gdk.h>}


const
  GTK_ENTRY_BUFFER_MAX_SIZE = G_MAXUSHORT;  

function GTK_TYPE_ENTRY_BUFFER : longint; { return type might be wrong }

function GTK_ENTRY_BUFFER(obj : longint) : longint;

function GTK_ENTRY_BUFFER_CLASS(klass : longint) : longint;

function GTK_IS_ENTRY_BUFFER(obj : longint) : longint;

function GTK_IS_ENTRY_BUFFER_CLASS(klass : longint) : longint;

function GTK_ENTRY_BUFFER_GET_CLASS(obj : longint) : longint;

type
  T_GtkEntryBuffer = TGtkEntryBuffer;
  T_GtkEntryBufferClass = TGtkEntryBufferClass;
  T_GtkEntryBuffer = record
      parent_instance : TGObject;
    end;




  T_GtkEntryBufferClass = record
      parent_class : TGObjectClass;
      inserted_text : procedure (buffer:PTGtkEntryBuffer; position:Tguint; chars:Pchar; n_chars:Tguint);cdecl;
      deleted_text : procedure (buffer:PTGtkEntryBuffer; position:Tguint; n_chars:Tguint);cdecl;
      get_text : function (buffer:PTGtkEntryBuffer; n_bytes:PTgsize):Pchar;cdecl;
      get_length : function (buffer:PTGtkEntryBuffer):Tguint;cdecl;
      insert_text : function (buffer:PTGtkEntryBuffer; position:Tguint; chars:Pchar; n_chars:Tguint):Tguint;cdecl;
      delete_text : function (buffer:PTGtkEntryBuffer; position:Tguint; n_chars:Tguint):Tguint;cdecl;
      _gtk_reserved1 : procedure ;cdecl;
      _gtk_reserved2 : procedure ;cdecl;
      _gtk_reserved3 : procedure ;cdecl;
      _gtk_reserved4 : procedure ;cdecl;
      _gtk_reserved5 : procedure ;cdecl;
      _gtk_reserved6 : procedure ;cdecl;
      _gtk_reserved7 : procedure ;cdecl;
      _gtk_reserved8 : procedure ;cdecl;
    end;


function gtk_entry_buffer_get_type:TGType;cdecl;external;
function gtk_entry_buffer_new(initial_chars:Pchar; n_initial_chars:longint):^TGtkEntryBuffer;cdecl;external;
function gtk_entry_buffer_get_bytes(buffer:PTGtkEntryBuffer):Tgsize;cdecl;external;
function gtk_entry_buffer_get_length(buffer:PTGtkEntryBuffer):Tguint;cdecl;external;
function gtk_entry_buffer_get_text(buffer:PTGtkEntryBuffer):^char;cdecl;external;
procedure gtk_entry_buffer_set_text(buffer:PTGtkEntryBuffer; chars:Pchar; n_chars:longint);cdecl;external;
procedure gtk_entry_buffer_set_max_length(buffer:PTGtkEntryBuffer; max_length:longint);cdecl;external;
function gtk_entry_buffer_get_max_length(buffer:PTGtkEntryBuffer):longint;cdecl;external;
function gtk_entry_buffer_insert_text(buffer:PTGtkEntryBuffer; position:Tguint; chars:Pchar; n_chars:longint):Tguint;cdecl;external;
function gtk_entry_buffer_delete_text(buffer:PTGtkEntryBuffer; position:Tguint; n_chars:longint):Tguint;cdecl;external;
procedure gtk_entry_buffer_emit_inserted_text(buffer:PTGtkEntryBuffer; position:Tguint; chars:Pchar; n_chars:Tguint);cdecl;external;
procedure gtk_entry_buffer_emit_deleted_text(buffer:PTGtkEntryBuffer; position:Tguint; n_chars:Tguint);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtktreesortable.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtktreesortable.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtktreesortable.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGtkSortType  = ^GtkSortType;
PGtkTreeIter  = ^GtkTreeIter;
PGtkTreeModel  = ^GtkTreeModel;
PGtkTreeSortable  = ^GtkTreeSortable;
Plongint  = ^longint;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_TREE_SORTABLE_H__}
//// {$define __GTK_TREE_SORTABLE_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkenums.h>}
//// {$include <gtk/gtktreemodel.h>}

function GTK_TYPE_TREE_SORTABLE : longint; { return type might be wrong }

function GTK_TREE_SORTABLE(obj : longint) : longint;

function GTK_IS_TREE_SORTABLE(obj : longint) : longint;

function GTK_TREE_SORTABLE_GET_IFACE(obj : longint) : longint;


const
  GTK_TREE_SORTABLE_DEFAULT_SORT_COLUMN_ID = -(1);  

  GTK_TREE_SORTABLE_UNSORTED_SORT_COLUMN_ID = -(2);  
type
  T_GtkTreeSortable = TGtkTreeSortable;

  T_GtkTreeSortableIface = TGtkTreeSortableIface;


  TGtkTreeIterCompareFunc = function (model:PTGtkTreeModel; a:PTGtkTreeIter; b:PTGtkTreeIter; user_data:Tgpointer):longint;cdecl;





  T_GtkTreeSortableIface = record
      g_iface : TGTypeInterface;cdecl;
      sort_column_changed : procedure (sortable:PTGtkTreeSortable);cdecl;
      get_sort_column_id : function (sortable:PTGtkTreeSortable; sort_column_id:Plongint; order:PTGtkSortType):Tgboolean;cdecl;
      set_sort_column_id : procedure (sortable:PTGtkTreeSortable; sort_column_id:longint; order:TGtkSortType);cdecl;
      set_sort_func : procedure (sortable:PTGtkTreeSortable; sort_column_id:longint; sort_func:TGtkTreeIterCompareFunc; user_data:Tgpointer; destroy:TGDestroyNotify);cdecl;
      set_default_sort_func : procedure (sortable:PTGtkTreeSortable; sort_func:TGtkTreeIterCompareFunc; user_data:Tgpointer; destroy:TGDestroyNotify);cdecl;
      has_default_sort_func : function (sortable:PTGtkTreeSortable):Tgboolean;cdecl;
    end;


function gtk_tree_sortable_get_type:TGType;cdecl;external;
procedure gtk_tree_sortable_sort_column_changed(sortable:PTGtkTreeSortable);cdecl;external;
function gtk_tree_sortable_get_sort_column_id(sortable:PTGtkTreeSortable; sort_column_id:Plongint; order:PTGtkSortType):Tgboolean;cdecl;external;
procedure gtk_tree_sortable_set_sort_column_id(sortable:PTGtkTreeSortable; sort_column_id:longint; order:TGtkSortType);cdecl;external;
procedure gtk_tree_sortable_set_sort_func(sortable:PTGtkTreeSortable; sort_column_id:longint; sort_func:TGtkTreeIterCompareFunc; user_data:Tgpointer; destroy:TGDestroyNotify);cdecl;external;
procedure gtk_tree_sortable_set_default_sort_func(sortable:PTGtkTreeSortable; sort_func:TGtkTreeIterCompareFunc; user_data:Tgpointer; destroy:TGDestroyNotify);cdecl;external;
function gtk_tree_sortable_has_default_sort_func(sortable:PTGtkTreeSortable):Tgboolean;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkbuilderscope.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkbuilderscope.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkbuilderscope.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGClosure  = ^GClosure;
PGError  = ^GError;
PGObject  = ^GObject;
PGtkBuilder  = ^GtkBuilder;
PGtkBuilderCScope  = ^GtkBuilderCScope;
PGtkBuilderScope  = ^GtkBuilderScope;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_BUILDER_SCOPE_H__}
//// {$define __GTK_BUILDER_SCOPE_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtktypes.h>}

function GTK_TYPE_BUILDER_SCOPE : longint; { return type might be wrong }



type
  TGtkBuilderClosureFlags = (GTK_BUILDER_CLOSURE_SWAPPED := 1 shl 0);



  T_GtkBuilderScopeInterface = record
      g_iface : TGTypeInterface;
      get_type_from_name : function (self:PTGtkBuilderScope; builder:PTGtkBuilder; type_name:Pchar):TGType;cdecl;
      get_type_from_function : function (self:PTGtkBuilderScope; builder:PTGtkBuilder; function_name:Pchar):TGType;cdecl;
      create_closure : function (self:PTGtkBuilderScope; builder:PTGtkBuilder; function_name:Pchar; flags:TGtkBuilderClosureFlags; object:PTGObject; 
                   error:PPTGError):PTGClosure;cdecl;
    end;

  T_GtkBuilderCScopeClass = record
      parent_class : TGObjectClass;
    end;


function GTK_TYPE_BUILDER_CSCOPE : longint; { return type might be wrong }

function gtk_builder_cscope_new:^TGtkBuilderScope;cdecl;external;
procedure gtk_builder_cscope_add_callback_symbol(self:PTGtkBuilderCScope; callback_name:Pchar; callback_symbol:TGCallback);cdecl;external;
procedure gtk_builder_cscope_add_callback_symbols(self:PTGtkBuilderCScope; first_callback_name:Pchar; first_callback_symbol:TGCallback; args:array of const);cdecl;external;
procedure gtk_builder_cscope_add_callback_symbols(self:PTGtkBuilderCScope; first_callback_name:Pchar; first_callback_symbol:TGCallback);cdecl;external;
function gtk_builder_cscope_add_callback(scope,callback : longint) : longint;

function gtk_builder_cscope_lookup_callback_symbol(self:PTGtkBuilderCScope; callback_name:Pchar):TGCallback;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkeventcontrollerkey.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkeventcontrollerkey.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkeventcontrollerkey.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGtkEventControllerKey  = ^GtkEventControllerKey;
PGtkIMContext  = ^GtkIMContext;
PGtkWidget  = ^GtkWidget;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_EVENT_CONTROLLER_KEY_H__}
//// {$define __GTK_EVENT_CONTROLLER_KEY_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdk.h>}
//// {$include <gtk/gtkeventcontroller.h>}
//// {$include <gtk/gtkimcontext.h>}

function GTK_TYPE_EVENT_CONTROLLER_KEY : longint; { return type might be wrong }

function GTK_EVENT_CONTROLLER_KEY(o : longint) : longint;

function GTK_EVENT_CONTROLLER_KEY_CLASS(k : longint) : longint;

function GTK_IS_EVENT_CONTROLLER_KEY(o : longint) : longint;

function GTK_IS_EVENT_CONTROLLER_KEY_CLASS(k : longint) : longint;

function GTK_EVENT_CONTROLLER_KEY_GET_CLASS(o : longint) : longint;

type
  T_GtkEventControllerKey = TGtkEventControllerKey;
  T_GtkEventControllerKeyClass = TGtkEventControllerKeyClass;

function gtk_event_controller_key_get_type:TGType;cdecl;external;
function gtk_event_controller_key_new:^TGtkEventController;cdecl;external;
procedure gtk_event_controller_key_set_im_context(controller:PTGtkEventControllerKey; im_context:PTGtkIMContext);cdecl;external;
function gtk_event_controller_key_get_im_context(controller:PTGtkEventControllerKey):^TGtkIMContext;cdecl;external;
function gtk_event_controller_key_forward(controller:PTGtkEventControllerKey; widget:PTGtkWidget):Tgboolean;cdecl;external;
function gtk_event_controller_key_get_group(controller:PTGtkEventControllerKey):Tguint;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkcellrenderercombo.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkcellrenderercombo.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkcellrenderercombo.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_CELL_RENDERER_COMBO_H__}
//// {$define __GTK_CELL_RENDERER_COMBO_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtktreemodel.h>}
//// {$include <gtk/gtkcellrenderertext.h>}

function GTK_TYPE_CELL_RENDERER_COMBO : longint; { return type might be wrong }

function GTK_CELL_RENDERER_COMBO(obj : longint) : longint;

function GTK_IS_CELL_RENDERER_COMBO(obj : longint) : longint;

type
  T_GtkCellRendererCombo = TGtkCellRendererCombo;

function gtk_cell_renderer_combo_get_type:TGType;cdecl;external;
function gtk_cell_renderer_combo_new:^TGtkCellRenderer;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkselectionfiltermodel.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkselectionfiltermodel.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkselectionfiltermodel.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGtkSelectionFilterModel  = ^GtkSelectionFilterModel;
PGtkSelectionModel  = ^GtkSelectionModel;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_SELECTION_FILTER_MODEL_H__}
//// {$define __GTK_SELECTION_FILTER_MODEL_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gio/gio.h>}
//// {$include <gtk/gtkselectionmodel.h>}

function GTK_TYPE_SELECTION_FILTER_MODEL : longint; { return type might be wrong }

function gtk_selection_filter_model_new(model:PTGtkSelectionModel):^TGtkSelectionFilterModel;cdecl;external;
procedure gtk_selection_filter_model_set_model(self:PTGtkSelectionFilterModel; model:PTGtkSelectionModel);cdecl;external;
function gtk_selection_filter_model_get_model(self:PTGtkSelectionFilterModel):^TGtkSelectionModel;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkexpander.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkexpander.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkexpander.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGtkExpander  = ^GtkExpander;
PGtkWidget  = ^GtkWidget;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_EXPANDER_H__}
//// {$define __GTK_EXPANDER_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkwidget.h>}

function GTK_TYPE_EXPANDER : longint; { return type might be wrong }

function GTK_EXPANDER(obj : longint) : longint;

function GTK_IS_EXPANDER(obj : longint) : longint;

type
  T_GtkExpander = TGtkExpander;

function gtk_expander_get_type:TGType;cdecl;external;
function gtk_expander_new(_label:Pchar):^TGtkWidget;cdecl;external;
function gtk_expander_new_with_mnemonic(_label:Pchar):^TGtkWidget;cdecl;external;
procedure gtk_expander_set_expanded(expander:PTGtkExpander; expanded:Tgboolean);cdecl;external;
function gtk_expander_get_expanded(expander:PTGtkExpander):Tgboolean;cdecl;external;
procedure gtk_expander_set_label(expander:PTGtkExpander; _label:Pchar);cdecl;external;
function gtk_expander_get_label(expander:PTGtkExpander):^char;cdecl;external;
procedure gtk_expander_set_use_underline(expander:PTGtkExpander; use_underline:Tgboolean);cdecl;external;
function gtk_expander_get_use_underline(expander:PTGtkExpander):Tgboolean;cdecl;external;
procedure gtk_expander_set_use_markup(expander:PTGtkExpander; use_markup:Tgboolean);cdecl;external;
function gtk_expander_get_use_markup(expander:PTGtkExpander):Tgboolean;cdecl;external;
procedure gtk_expander_set_label_widget(expander:PTGtkExpander; label_widget:PTGtkWidget);cdecl;external;
function gtk_expander_get_label_widget(expander:PTGtkExpander):^TGtkWidget;cdecl;external;
procedure gtk_expander_set_resize_toplevel(expander:PTGtkExpander; resize_toplevel:Tgboolean);cdecl;external;
function gtk_expander_get_resize_toplevel(expander:PTGtkExpander):Tgboolean;cdecl;external;
procedure gtk_expander_set_child(expander:PTGtkExpander; child:PTGtkWidget);cdecl;external;
function gtk_expander_get_child(expander:PTGtkExpander):^TGtkWidget;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkswitch.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkswitch.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkswitch.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGtkSwitch  = ^GtkSwitch;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_SWITCH_H__}
//// {$define __GTK_SWITCH_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkwidget.h>}

function GTK_TYPE_SWITCH : longint; { return type might be wrong }

function GTK_SWITCH(obj : longint) : longint;

function GTK_IS_SWITCH(obj : longint) : longint;

type
  T_GtkSwitch = TGtkSwitch;

function gtk_switch_get_type:TGType;cdecl;external;
function gtk_switch_new:^TGtkWidget;cdecl;external;
procedure gtk_switch_set_active(self:PTGtkSwitch; is_active:Tgboolean);cdecl;external;
function gtk_switch_get_active(self:PTGtkSwitch):Tgboolean;cdecl;external;
procedure gtk_switch_set_state(self:PTGtkSwitch; state:Tgboolean);cdecl;external;
function gtk_switch_get_state(self:PTGtkSwitch):Tgboolean;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkfilechooserdialog.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkfilechooserdialog.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkfilechooserdialog.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGtkWindow  = ^GtkWindow;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_FILE_CHOOSER_DIALOG_H__}
//// {$define __GTK_FILE_CHOOSER_DIALOG_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkdialog.h>}
//// {$include <gtk/gtkfilechooser.h>}

function GTK_TYPE_FILE_CHOOSER_DIALOG : longint; { return type might be wrong }

function GTK_FILE_CHOOSER_DIALOG(obj : longint) : longint;

function GTK_IS_FILE_CHOOSER_DIALOG(obj : longint) : longint;

type
  T_GtkFileChooserDialog = TGtkFileChooserDialog;

function gtk_file_chooser_dialog_get_type:TGType;cdecl;external;
function gtk_file_chooser_dialog_new(title:Pchar; parent:PTGtkWindow; action:TGtkFileChooserAction; first_button_text:Pchar; args:array of const):^TGtkWidget;cdecl;external;
function gtk_file_chooser_dialog_new(title:Pchar; parent:PTGtkWindow; action:TGtkFileChooserAction; first_button_text:Pchar):^TGtkWidget;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkgridview.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkgridview.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkgridview.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGtkGridView  = ^GtkGridView;
PGtkListItemFactory  = ^GtkListItemFactory;
PGtkSelectionModel  = ^GtkSelectionModel;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_GRID_VIEW_H__}
//// {$define __GTK_GRID_VIEW_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtklistbase.h>}

function GTK_TYPE_GRID_VIEW : longint; { return type might be wrong }

function GTK_GRID_VIEW(o : longint) : longint;

function GTK_GRID_VIEW_CLASS(k : longint) : longint;

function GTK_IS_GRID_VIEW(o : longint) : longint;

function GTK_IS_GRID_VIEW_CLASS(k : longint) : longint;

function GTK_GRID_VIEW_GET_CLASS(o : longint) : longint;

type
  T_GtkGridView = TGtkGridView;
  T_GtkGridViewClass = TGtkGridViewClass;

function gtk_grid_view_get_type:TGType;cdecl;external;
function gtk_grid_view_new(model:PTGtkSelectionModel; factory:PTGtkListItemFactory):^TGtkWidget;cdecl;external;
function gtk_grid_view_get_model(self:PTGtkGridView):^TGtkSelectionModel;cdecl;external;
procedure gtk_grid_view_set_model(self:PTGtkGridView; model:PTGtkSelectionModel);cdecl;external;
procedure gtk_grid_view_set_factory(self:PTGtkGridView; factory:PTGtkListItemFactory);cdecl;external;
function gtk_grid_view_get_factory(self:PTGtkGridView):^TGtkListItemFactory;cdecl;external;
function gtk_grid_view_get_min_columns(self:PTGtkGridView):Tguint;cdecl;external;
procedure gtk_grid_view_set_min_columns(self:PTGtkGridView; min_columns:Tguint);cdecl;external;
function gtk_grid_view_get_max_columns(self:PTGtkGridView):Tguint;cdecl;external;
procedure gtk_grid_view_set_max_columns(self:PTGtkGridView; max_columns:Tguint);cdecl;external;
procedure gtk_grid_view_set_enable_rubberband(self:PTGtkGridView; enable_rubberband:Tgboolean);cdecl;external;
function gtk_grid_view_get_enable_rubberband(self:PTGtkGridView):Tgboolean;cdecl;external;
procedure gtk_grid_view_set_single_click_activate(self:PTGtkGridView; single_click_activate:Tgboolean);cdecl;external;
function gtk_grid_view_get_single_click_activate(self:PTGtkGridView):Tgboolean;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkdragicon.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkdragicon.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkdragicon.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGdkDrag  = ^GdkDrag;
PGdkPaintable  = ^GdkPaintable;
PGtkDragIcon  = ^GtkDragIcon;
PGtkWidget  = ^GtkWidget;
PGValue  = ^GValue;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_DRAG_ICON_H__}
//// {$define __GTK_DRAG_ICON_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gio/gio.h>}
//// {$include <gtk/gtkwidget.h>}

function GTK_TYPE_DRAG_ICON : longint; { return type might be wrong }

function gtk_drag_icon_get_for_drag(drag:PTGdkDrag):^TGtkWidget;cdecl;external;
procedure gtk_drag_icon_set_child(self:PTGtkDragIcon; child:PTGtkWidget);cdecl;external;
function gtk_drag_icon_get_child(self:PTGtkDragIcon):^TGtkWidget;cdecl;external;
procedure gtk_drag_icon_set_from_paintable(drag:PTGdkDrag; paintable:PTGdkPaintable; hot_x:longint; hot_y:longint);cdecl;external;
function gtk_drag_icon_create_widget_for_value(value:PTGValue):^TGtkWidget;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtktreemodel.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtktreemodel.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtktreemodel.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGObject  = ^GObject;
PGtkTreeIter  = ^GtkTreeIter;
PGtkTreeModel  = ^GtkTreeModel;
PGtkTreePath  = ^GtkTreePath;
PGtkTreeRowReference  = ^GtkTreeRowReference;
PGValue  = ^GValue;
Plongint  = ^longint;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_TREE_MODEL_H__}
//// {$define __GTK_TREE_MODEL_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <glib-object.h>}
//// {$include <gdk/gdk.h>}

function GTK_TYPE_TREE_MODEL : longint; { return type might be wrong }

function GTK_TREE_MODEL(obj : longint) : longint;

function GTK_IS_TREE_MODEL(obj : longint) : longint;

function GTK_TREE_MODEL_GET_IFACE(obj : longint) : longint;

function GTK_TYPE_TREE_ITER : longint; { return type might be wrong }

function GTK_TYPE_TREE_PATH : longint; { return type might be wrong }

function GTK_TYPE_TREE_ROW_REFERENCE : longint; { return type might be wrong }

type
  T_GtkTreeIter = TGtkTreeIter;
  T_GtkTreePath = TGtkTreePath;
  T_GtkTreeRowReference = TGtkTreeRowReference;
  T_GtkTreeModel = TGtkTreeModel;

  T_GtkTreeModelIface = TGtkTreeModelIface;


  TGtkTreeModelForeachFunc = function (model:PTGtkTreeModel; path:PTGtkTreePath; iter:PTGtkTreeIter; data:Tgpointer):Tgboolean;cdecl;


  TGtkTreeModelFlags = (GTK_TREE_MODEL_ITERS_PERSIST := 1 shl 0,GTK_TREE_MODEL_LIST_ONLY := 1 shl 1
    );

  T_GtkTreeIter = record
      stamp : longint;
      user_data : Tgpointer;
      user_data2 : Tgpointer;
      user_data3 : Tgpointer;
    end;






  T_GtkTreeModelIface = record
      g_iface : TGTypeInterface;
      row_changed : procedure (tree_model:PTGtkTreeModel; path:PTGtkTreePath; iter:PTGtkTreeIter);cdecl;
      row_inserted : procedure (tree_model:PTGtkTreeModel; path:PTGtkTreePath; iter:PTGtkTreeIter);cdecl;
      row_has_child_toggled : procedure (tree_model:PTGtkTreeModel; path:PTGtkTreePath; iter:PTGtkTreeIter);cdecl;
      row_deleted : procedure (tree_model:PTGtkTreeModel; path:PTGtkTreePath);cdecl;
      rows_reordered : procedure (tree_model:PTGtkTreeModel; path:PTGtkTreePath; iter:PTGtkTreeIter; new_order:Plongint);cdecl;
      get_flags : function (tree_model:PTGtkTreeModel):TGtkTreeModelFlags;cdecl;
      get_n_columns : function (tree_model:PTGtkTreeModel):longint;cdecl;
      get_column_type : function (tree_model:PTGtkTreeModel; index_:longint):TGType;cdecl;
      get_iter : function (tree_model:PTGtkTreeModel; iter:PTGtkTreeIter; path:PTGtkTreePath):Tgboolean;cdecl;
      get_path : function (tree_model:PTGtkTreeModel; iter:PTGtkTreeIter):PTGtkTreePath;cdecl;
      get_value : procedure (tree_model:PTGtkTreeModel; iter:PTGtkTreeIter; column:longint; value:PTGValue);cdecl;
      iter_next : function (tree_model:PTGtkTreeModel; iter:PTGtkTreeIter):Tgboolean;cdecl;
      iter_previous : function (tree_model:PTGtkTreeModel; iter:PTGtkTreeIter):Tgboolean;cdecl;
      iter_children : function (tree_model:PTGtkTreeModel; iter:PTGtkTreeIter; parent:PTGtkTreeIter):Tgboolean;cdecl;
      iter_has_child : function (tree_model:PTGtkTreeModel; iter:PTGtkTreeIter):Tgboolean;cdecl;
      iter_n_children : function (tree_model:PTGtkTreeModel; iter:PTGtkTreeIter):longint;cdecl;
      iter_nth_child : function (tree_model:PTGtkTreeModel; iter:PTGtkTreeIter; parent:PTGtkTreeIter; n:longint):Tgboolean;cdecl;
      iter_parent : function (tree_model:PTGtkTreeModel; iter:PTGtkTreeIter; child:PTGtkTreeIter):Tgboolean;cdecl;
      ref_node : procedure (tree_model:PTGtkTreeModel; iter:PTGtkTreeIter);cdecl;
      unref_node : procedure (tree_model:PTGtkTreeModel; iter:PTGtkTreeIter);cdecl;
    end;



function gtk_tree_path_new:^TGtkTreePath;cdecl;external;
function gtk_tree_path_new_from_string(path:Pchar):^TGtkTreePath;cdecl;external;
function gtk_tree_path_new_from_indices(first_index:longint; args:array of const):^TGtkTreePath;cdecl;external;
function gtk_tree_path_new_from_indices(first_index:longint):^TGtkTreePath;cdecl;external;
function gtk_tree_path_new_from_indicesv(indices:Plongint; length:Tgsize):^TGtkTreePath;cdecl;external;
function gtk_tree_path_to_string(path:PTGtkTreePath):^char;cdecl;external;
function gtk_tree_path_new_first:^TGtkTreePath;cdecl;external;
procedure gtk_tree_path_append_index(path:PTGtkTreePath; index_:longint);cdecl;external;
procedure gtk_tree_path_prepend_index(path:PTGtkTreePath; index_:longint);cdecl;external;
function gtk_tree_path_get_depth(path:PTGtkTreePath):longint;cdecl;external;
function gtk_tree_path_get_indices(path:PTGtkTreePath):^longint;cdecl;external;
function gtk_tree_path_get_indices_with_depth(path:PTGtkTreePath; depth:Plongint):^longint;cdecl;external;
procedure gtk_tree_path_free(path:PTGtkTreePath);cdecl;external;
function gtk_tree_path_copy(path:PTGtkTreePath):^TGtkTreePath;cdecl;external;
function gtk_tree_path_get_type:TGType;cdecl;external;
function gtk_tree_path_compare(a:PTGtkTreePath; b:PTGtkTreePath):longint;cdecl;external;
procedure gtk_tree_path_next(path:PTGtkTreePath);cdecl;external;
function gtk_tree_path_prev(path:PTGtkTreePath):Tgboolean;cdecl;external;
function gtk_tree_path_up(path:PTGtkTreePath):Tgboolean;cdecl;external;
procedure gtk_tree_path_down(path:PTGtkTreePath);cdecl;external;
function gtk_tree_path_is_ancestor(path:PTGtkTreePath; descendant:PTGtkTreePath):Tgboolean;cdecl;external;
function gtk_tree_path_is_descendant(path:PTGtkTreePath; ancestor:PTGtkTreePath):Tgboolean;cdecl;external;

function gtk_tree_row_reference_get_type:TGType;cdecl;external;
function gtk_tree_row_reference_new(model:PTGtkTreeModel; path:PTGtkTreePath):^TGtkTreeRowReference;cdecl;external;
function gtk_tree_row_reference_new_proxy(proxy:PTGObject; model:PTGtkTreeModel; path:PTGtkTreePath):^TGtkTreeRowReference;cdecl;external;
function gtk_tree_row_reference_get_path(reference:PTGtkTreeRowReference):^TGtkTreePath;cdecl;external;
function gtk_tree_row_reference_get_model(reference:PTGtkTreeRowReference):^TGtkTreeModel;cdecl;external;
function gtk_tree_row_reference_valid(reference:PTGtkTreeRowReference):Tgboolean;cdecl;external;
function gtk_tree_row_reference_copy(reference:PTGtkTreeRowReference):^TGtkTreeRowReference;cdecl;external;
procedure gtk_tree_row_reference_free(reference:PTGtkTreeRowReference);cdecl;external;

procedure gtk_tree_row_reference_inserted(proxy:PTGObject; path:PTGtkTreePath);cdecl;external;
procedure gtk_tree_row_reference_deleted(proxy:PTGObject; path:PTGtkTreePath);cdecl;external;
procedure gtk_tree_row_reference_reordered(proxy:PTGObject; path:PTGtkTreePath; iter:PTGtkTreeIter; new_order:Plongint);cdecl;external;

function gtk_tree_iter_copy(iter:PTGtkTreeIter):^TGtkTreeIter;cdecl;external;
procedure gtk_tree_iter_free(iter:PTGtkTreeIter);cdecl;external;
function gtk_tree_iter_get_type:TGType;cdecl;external;
function gtk_tree_model_get_type:TGType;cdecl;external;
function gtk_tree_model_get_flags(tree_model:PTGtkTreeModel):TGtkTreeModelFlags;cdecl;external;
function gtk_tree_model_get_n_columns(tree_model:PTGtkTreeModel):longint;cdecl;external;
function gtk_tree_model_get_column_type(tree_model:PTGtkTreeModel; index_:longint):TGType;cdecl;external;

function gtk_tree_model_get_iter(tree_model:PTGtkTreeModel; iter:PTGtkTreeIter; path:PTGtkTreePath):Tgboolean;cdecl;external;
function gtk_tree_model_get_iter_from_string(tree_model:PTGtkTreeModel; iter:PTGtkTreeIter; path_string:Pchar):Tgboolean;cdecl;external;
function gtk_tree_model_get_string_from_iter(tree_model:PTGtkTreeModel; iter:PTGtkTreeIter):^char;cdecl;external;
function gtk_tree_model_get_iter_first(tree_model:PTGtkTreeModel; iter:PTGtkTreeIter):Tgboolean;cdecl;external;
function gtk_tree_model_get_path(tree_model:PTGtkTreeModel; iter:PTGtkTreeIter):^TGtkTreePath;cdecl;external;
procedure gtk_tree_model_get_value(tree_model:PTGtkTreeModel; iter:PTGtkTreeIter; column:longint; value:PTGValue);cdecl;external;
function gtk_tree_model_iter_previous(tree_model:PTGtkTreeModel; iter:PTGtkTreeIter):Tgboolean;cdecl;external;
function gtk_tree_model_iter_next(tree_model:PTGtkTreeModel; iter:PTGtkTreeIter):Tgboolean;cdecl;external;
function gtk_tree_model_iter_children(tree_model:PTGtkTreeModel; iter:PTGtkTreeIter; parent:PTGtkTreeIter):Tgboolean;cdecl;external;
function gtk_tree_model_iter_has_child(tree_model:PTGtkTreeModel; iter:PTGtkTreeIter):Tgboolean;cdecl;external;
function gtk_tree_model_iter_n_children(tree_model:PTGtkTreeModel; iter:PTGtkTreeIter):longint;cdecl;external;
function gtk_tree_model_iter_nth_child(tree_model:PTGtkTreeModel; iter:PTGtkTreeIter; parent:PTGtkTreeIter; n:longint):Tgboolean;cdecl;external;
function gtk_tree_model_iter_parent(tree_model:PTGtkTreeModel; iter:PTGtkTreeIter; child:PTGtkTreeIter):Tgboolean;cdecl;external;
procedure gtk_tree_model_ref_node(tree_model:PTGtkTreeModel; iter:PTGtkTreeIter);cdecl;external;
procedure gtk_tree_model_unref_node(tree_model:PTGtkTreeModel; iter:PTGtkTreeIter);cdecl;external;
procedure gtk_tree_model_get(tree_model:PTGtkTreeModel; iter:PTGtkTreeIter; args:array of const);cdecl;external;
procedure gtk_tree_model_get(tree_model:PTGtkTreeModel; iter:PTGtkTreeIter);cdecl;external;
procedure gtk_tree_model_get_valist(tree_model:PTGtkTreeModel; iter:PTGtkTreeIter; var_args:Tva_list);cdecl;external;
procedure gtk_tree_model_foreach(model:PTGtkTreeModel; func:TGtkTreeModelForeachFunc; user_data:Tgpointer);cdecl;external;

procedure gtk_tree_model_row_changed(tree_model:PTGtkTreeModel; path:PTGtkTreePath; iter:PTGtkTreeIter);cdecl;external;
procedure gtk_tree_model_row_inserted(tree_model:PTGtkTreeModel; path:PTGtkTreePath; iter:PTGtkTreeIter);cdecl;external;
procedure gtk_tree_model_row_has_child_toggled(tree_model:PTGtkTreeModel; path:PTGtkTreePath; iter:PTGtkTreeIter);cdecl;external;
procedure gtk_tree_model_row_deleted(tree_model:PTGtkTreeModel; path:PTGtkTreePath);cdecl;external;
procedure gtk_tree_model_rows_reordered(tree_model:PTGtkTreeModel; path:PTGtkTreePath; iter:PTGtkTreeIter; new_order:Plongint);cdecl;external;
procedure gtk_tree_model_rows_reordered_with_length(tree_model:PTGtkTreeModel; path:PTGtkTreePath; iter:PTGtkTreeIter; new_order:Plongint; length:longint);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtktypebuiltins.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtktypebuiltins.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtktypebuiltins.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_TYPE_BUILTINS_H__}
//// {$define __GTK_TYPE_BUILTINS_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <glib-object.h>}
//// {$include <gdk/gdk.h>}


function gtk_license_get_type:TGType;cdecl;external;
function GTK_TYPE_LICENSE : longint; { return type might be wrong }


function gtk_application_inhibit_flags_get_type:TGType;cdecl;external;
function GTK_TYPE_APPLICATION_INHIBIT_FLAGS : longint; { return type might be wrong }


function gtk_assistant_page_type_get_type:TGType;cdecl;external;
function GTK_TYPE_ASSISTANT_PAGE_TYPE : longint; { return type might be wrong }


function gtk_builder_error_get_type:TGType;cdecl;external;
function GTK_TYPE_BUILDER_ERROR : longint; { return type might be wrong }


function gtk_builder_closure_flags_get_type:TGType;cdecl;external;
function GTK_TYPE_BUILDER_CLOSURE_FLAGS : longint; { return type might be wrong }


function gtk_cell_renderer_state_get_type:TGType;cdecl;external;
function GTK_TYPE_CELL_RENDERER_STATE : longint; { return type might be wrong }

function gtk_cell_renderer_mode_get_type:TGType;cdecl;external;
function GTK_TYPE_CELL_RENDERER_MODE : longint; { return type might be wrong }


function gtk_cell_renderer_accel_mode_get_type:TGType;cdecl;external;
function GTK_TYPE_CELL_RENDERER_ACCEL_MODE : longint; { return type might be wrong }


function gtk_debug_flags_get_type:TGType;cdecl;external;
function GTK_TYPE_DEBUG_FLAGS : longint; { return type might be wrong }


function gtk_dialog_flags_get_type:TGType;cdecl;external;
function GTK_TYPE_DIALOG_FLAGS : longint; { return type might be wrong }

function gtk_response_type_get_type:TGType;cdecl;external;
function GTK_TYPE_RESPONSE_TYPE : longint; { return type might be wrong }


function gtk_editable_properties_get_type:TGType;cdecl;external;
function GTK_TYPE_EDITABLE_PROPERTIES : longint; { return type might be wrong }


function gtk_entry_icon_position_get_type:TGType;cdecl;external;
function GTK_TYPE_ENTRY_ICON_POSITION : longint; { return type might be wrong }


function gtk_align_get_type:TGType;cdecl;external;
function GTK_TYPE_ALIGN : longint; { return type might be wrong }

function gtk_arrow_type_get_type:TGType;cdecl;external;
function GTK_TYPE_ARROW_TYPE : longint; { return type might be wrong }

function gtk_baseline_position_get_type:TGType;cdecl;external;
function GTK_TYPE_BASELINE_POSITION : longint; { return type might be wrong }

function gtk_content_fit_get_type:TGType;cdecl;external;
function GTK_TYPE_CONTENT_FIT : longint; { return type might be wrong }

function gtk_delete_type_get_type:TGType;cdecl;external;
function GTK_TYPE_DELETE_TYPE : longint; { return type might be wrong }

function gtk_direction_type_get_type:TGType;cdecl;external;
function GTK_TYPE_DIRECTION_TYPE : longint; { return type might be wrong }

function gtk_icon_size_get_type:TGType;cdecl;external;
function GTK_TYPE_ICON_SIZE : longint; { return type might be wrong }

function gtk_sensitivity_type_get_type:TGType;cdecl;external;
function GTK_TYPE_SENSITIVITY_TYPE : longint; { return type might be wrong }

function gtk_text_direction_get_type:TGType;cdecl;external;
function GTK_TYPE_TEXT_DIRECTION : longint; { return type might be wrong }

function gtk_justification_get_type:TGType;cdecl;external;
function GTK_TYPE_JUSTIFICATION : longint; { return type might be wrong }

function gtk_message_type_get_type:TGType;cdecl;external;
function GTK_TYPE_MESSAGE_TYPE : longint; { return type might be wrong }

function gtk_movement_step_get_type:TGType;cdecl;external;
function GTK_TYPE_MOVEMENT_STEP : longint; { return type might be wrong }

function gtk_natural_wrap_mode_get_type:TGType;cdecl;external;
function GTK_TYPE_NATURAL_WRAP_MODE : longint; { return type might be wrong }

function gtk_scroll_step_get_type:TGType;cdecl;external;
function GTK_TYPE_SCROLL_STEP : longint; { return type might be wrong }

function gtk_orientation_get_type:TGType;cdecl;external;
function GTK_TYPE_ORIENTATION : longint; { return type might be wrong }

function gtk_overflow_get_type:TGType;cdecl;external;
function GTK_TYPE_OVERFLOW : longint; { return type might be wrong }

function gtk_pack_type_get_type:TGType;cdecl;external;
function GTK_TYPE_PACK_TYPE : longint; { return type might be wrong }

function gtk_position_type_get_type:TGType;cdecl;external;
function GTK_TYPE_POSITION_TYPE : longint; { return type might be wrong }

function gtk_scroll_type_get_type:TGType;cdecl;external;
function GTK_TYPE_SCROLL_TYPE : longint; { return type might be wrong }

function gtk_selection_mode_get_type:TGType;cdecl;external;
function GTK_TYPE_SELECTION_MODE : longint; { return type might be wrong }

function gtk_wrap_mode_get_type:TGType;cdecl;external;
function GTK_TYPE_WRAP_MODE : longint; { return type might be wrong }

function gtk_sort_type_get_type:TGType;cdecl;external;
function GTK_TYPE_SORT_TYPE : longint; { return type might be wrong }

function gtk_print_pages_get_type:TGType;cdecl;external;
function GTK_TYPE_PRINT_PAGES : longint; { return type might be wrong }

function gtk_page_set_get_type:TGType;cdecl;external;
function GTK_TYPE_PAGE_SET : longint; { return type might be wrong }

function gtk_number_up_layout_get_type:TGType;cdecl;external;
function GTK_TYPE_NUMBER_UP_LAYOUT : longint; { return type might be wrong }

function gtk_ordering_get_type:TGType;cdecl;external;
function GTK_TYPE_ORDERING : longint; { return type might be wrong }

function gtk_page_orientation_get_type:TGType;cdecl;external;
function GTK_TYPE_PAGE_ORIENTATION : longint; { return type might be wrong }

function gtk_print_quality_get_type:TGType;cdecl;external;
function GTK_TYPE_PRINT_QUALITY : longint; { return type might be wrong }

function gtk_print_duplex_get_type:TGType;cdecl;external;
function GTK_TYPE_PRINT_DUPLEX : longint; { return type might be wrong }

function gtk_unit_get_type:TGType;cdecl;external;
function GTK_TYPE_UNIT : longint; { return type might be wrong }

function gtk_tree_view_grid_lines_get_type:TGType;cdecl;external;
function GTK_TYPE_TREE_VIEW_GRID_LINES : longint; { return type might be wrong }

function gtk_size_group_mode_get_type:TGType;cdecl;external;
function GTK_TYPE_SIZE_GROUP_MODE : longint; { return type might be wrong }

function gtk_size_request_mode_get_type:TGType;cdecl;external;
function GTK_TYPE_SIZE_REQUEST_MODE : longint; { return type might be wrong }

function gtk_scrollable_policy_get_type:TGType;cdecl;external;
function GTK_TYPE_SCROLLABLE_POLICY : longint; { return type might be wrong }

function gtk_state_flags_get_type:TGType;cdecl;external;
function GTK_TYPE_STATE_FLAGS : longint; { return type might be wrong }

function gtk_border_style_get_type:TGType;cdecl;external;
function GTK_TYPE_BORDER_STYLE : longint; { return type might be wrong }

function gtk_level_bar_mode_get_type:TGType;cdecl;external;
function GTK_TYPE_LEVEL_BAR_MODE : longint; { return type might be wrong }

function gtk_input_purpose_get_type:TGType;cdecl;external;
function GTK_TYPE_INPUT_PURPOSE : longint; { return type might be wrong }

function gtk_input_hints_get_type:TGType;cdecl;external;
function GTK_TYPE_INPUT_HINTS : longint; { return type might be wrong }

function gtk_propagation_phase_get_type:TGType;cdecl;external;
function GTK_TYPE_PROPAGATION_PHASE : longint; { return type might be wrong }

function gtk_propagation_limit_get_type:TGType;cdecl;external;
function GTK_TYPE_PROPAGATION_LIMIT : longint; { return type might be wrong }

function gtk_event_sequence_state_get_type:TGType;cdecl;external;
function GTK_TYPE_EVENT_SEQUENCE_STATE : longint; { return type might be wrong }

function gtk_pan_direction_get_type:TGType;cdecl;external;
function GTK_TYPE_PAN_DIRECTION : longint; { return type might be wrong }

function gtk_shortcut_scope_get_type:TGType;cdecl;external;
function GTK_TYPE_SHORTCUT_SCOPE : longint; { return type might be wrong }

function gtk_pick_flags_get_type:TGType;cdecl;external;
function GTK_TYPE_PICK_FLAGS : longint; { return type might be wrong }

function gtk_constraint_relation_get_type:TGType;cdecl;external;
function GTK_TYPE_CONSTRAINT_RELATION : longint; { return type might be wrong }

function gtk_constraint_strength_get_type:TGType;cdecl;external;
function GTK_TYPE_CONSTRAINT_STRENGTH : longint; { return type might be wrong }

function gtk_constraint_attribute_get_type:TGType;cdecl;external;
function GTK_TYPE_CONSTRAINT_ATTRIBUTE : longint; { return type might be wrong }

function gtk_constraint_vfl_parser_error_get_type:TGType;cdecl;external;
function GTK_TYPE_CONSTRAINT_VFL_PARSER_ERROR : longint; { return type might be wrong }

function gtk_system_setting_get_type:TGType;cdecl;external;
function GTK_TYPE_SYSTEM_SETTING : longint; { return type might be wrong }

function gtk_symbolic_color_get_type:TGType;cdecl;external;
function GTK_TYPE_SYMBOLIC_COLOR : longint; { return type might be wrong }

function gtk_accessible_role_get_type:TGType;cdecl;external;
function GTK_TYPE_ACCESSIBLE_ROLE : longint; { return type might be wrong }

function gtk_accessible_state_get_type:TGType;cdecl;external;
function GTK_TYPE_ACCESSIBLE_STATE : longint; { return type might be wrong }

function gtk_accessible_property_get_type:TGType;cdecl;external;
function GTK_TYPE_ACCESSIBLE_PROPERTY : longint; { return type might be wrong }

function gtk_accessible_relation_get_type:TGType;cdecl;external;
function GTK_TYPE_ACCESSIBLE_RELATION : longint; { return type might be wrong }

function gtk_accessible_tristate_get_type:TGType;cdecl;external;
function GTK_TYPE_ACCESSIBLE_TRISTATE : longint; { return type might be wrong }

function gtk_accessible_invalid_state_get_type:TGType;cdecl;external;
function GTK_TYPE_ACCESSIBLE_INVALID_STATE : longint; { return type might be wrong }

function gtk_accessible_autocomplete_get_type:TGType;cdecl;external;
function GTK_TYPE_ACCESSIBLE_AUTOCOMPLETE : longint; { return type might be wrong }

function gtk_accessible_sort_get_type:TGType;cdecl;external;
function GTK_TYPE_ACCESSIBLE_SORT : longint; { return type might be wrong }


function gtk_event_controller_scroll_flags_get_type:TGType;cdecl;external;
function GTK_TYPE_EVENT_CONTROLLER_SCROLL_FLAGS : longint; { return type might be wrong }


function gtk_file_chooser_action_get_type:TGType;cdecl;external;
function GTK_TYPE_FILE_CHOOSER_ACTION : longint; { return type might be wrong }

function gtk_file_chooser_error_get_type:TGType;cdecl;external;
function GTK_TYPE_FILE_CHOOSER_ERROR : longint; { return type might be wrong }


function gtk_filter_match_get_type:TGType;cdecl;external;
function GTK_TYPE_FILTER_MATCH : longint; { return type might be wrong }

function gtk_filter_change_get_type:TGType;cdecl;external;
function GTK_TYPE_FILTER_CHANGE : longint; { return type might be wrong }


function gtk_font_chooser_level_get_type:TGType;cdecl;external;
function GTK_TYPE_FONT_CHOOSER_LEVEL : longint; { return type might be wrong }


function gtk_icon_lookup_flags_get_type:TGType;cdecl;external;
function GTK_TYPE_ICON_LOOKUP_FLAGS : longint; { return type might be wrong }

function gtk_icon_theme_error_get_type:TGType;cdecl;external;
function GTK_TYPE_ICON_THEME_ERROR : longint; { return type might be wrong }


function gtk_icon_view_drop_position_get_type:TGType;cdecl;external;
function GTK_TYPE_ICON_VIEW_DROP_POSITION : longint; { return type might be wrong }


function gtk_image_type_get_type:TGType;cdecl;external;
function GTK_TYPE_IMAGE_TYPE : longint; { return type might be wrong }


function gtk_inscription_overflow_get_type:TGType;cdecl;external;
function GTK_TYPE_INSCRIPTION_OVERFLOW : longint; { return type might be wrong }


function gtk_buttons_type_get_type:TGType;cdecl;external;
function GTK_TYPE_BUTTONS_TYPE : longint; { return type might be wrong }


function gtk_notebook_tab_get_type:TGType;cdecl;external;
function GTK_TYPE_NOTEBOOK_TAB : longint; { return type might be wrong }


function gtk_pad_action_type_get_type:TGType;cdecl;external;
function GTK_TYPE_PAD_ACTION_TYPE : longint; { return type might be wrong }


function gtk_popover_menu_flags_get_type:TGType;cdecl;external;
function GTK_TYPE_POPOVER_MENU_FLAGS : longint; { return type might be wrong }


function gtk_print_status_get_type:TGType;cdecl;external;
function GTK_TYPE_PRINT_STATUS : longint; { return type might be wrong }

function gtk_print_operation_result_get_type:TGType;cdecl;external;
function GTK_TYPE_PRINT_OPERATION_RESULT : longint; { return type might be wrong }

function gtk_print_operation_action_get_type:TGType;cdecl;external;
function GTK_TYPE_PRINT_OPERATION_ACTION : longint; { return type might be wrong }

function gtk_print_error_get_type:TGType;cdecl;external;
function GTK_TYPE_PRINT_ERROR : longint; { return type might be wrong }


function gtk_recent_manager_error_get_type:TGType;cdecl;external;
function GTK_TYPE_RECENT_MANAGER_ERROR : longint; { return type might be wrong }


function gtk_revealer_transition_type_get_type:TGType;cdecl;external;
function GTK_TYPE_REVEALER_TRANSITION_TYPE : longint; { return type might be wrong }


function gtk_corner_type_get_type:TGType;cdecl;external;
function GTK_TYPE_CORNER_TYPE : longint; { return type might be wrong }

function gtk_policy_type_get_type:TGType;cdecl;external;
function GTK_TYPE_POLICY_TYPE : longint; { return type might be wrong }


function gtk_shortcut_action_flags_get_type:TGType;cdecl;external;
function GTK_TYPE_SHORTCUT_ACTION_FLAGS : longint; { return type might be wrong }


function gtk_shortcut_type_get_type:TGType;cdecl;external;
function GTK_TYPE_SHORTCUT_TYPE : longint; { return type might be wrong }


function gtk_sorter_order_get_type:TGType;cdecl;external;
function GTK_TYPE_SORTER_ORDER : longint; { return type might be wrong }

function gtk_sorter_change_get_type:TGType;cdecl;external;
function GTK_TYPE_SORTER_CHANGE : longint; { return type might be wrong }


function gtk_spin_button_update_policy_get_type:TGType;cdecl;external;
function GTK_TYPE_SPIN_BUTTON_UPDATE_POLICY : longint; { return type might be wrong }

function gtk_spin_type_get_type:TGType;cdecl;external;
function GTK_TYPE_SPIN_TYPE : longint; { return type might be wrong }


function gtk_stack_transition_type_get_type:TGType;cdecl;external;
function GTK_TYPE_STACK_TRANSITION_TYPE : longint; { return type might be wrong }


function gtk_string_filter_match_mode_get_type:TGType;cdecl;external;
function GTK_TYPE_STRING_FILTER_MATCH_MODE : longint; { return type might be wrong }


function gtk_style_context_print_flags_get_type:TGType;cdecl;external;
function GTK_TYPE_STYLE_CONTEXT_PRINT_FLAGS : longint; { return type might be wrong }


function gtk_text_search_flags_get_type:TGType;cdecl;external;
function GTK_TYPE_TEXT_SEARCH_FLAGS : longint; { return type might be wrong }


function gtk_text_window_type_get_type:TGType;cdecl;external;
function GTK_TYPE_TEXT_WINDOW_TYPE : longint; { return type might be wrong }

function gtk_text_view_layer_get_type:TGType;cdecl;external;
function GTK_TYPE_TEXT_VIEW_LAYER : longint; { return type might be wrong }

function gtk_text_extend_selection_get_type:TGType;cdecl;external;
function GTK_TYPE_TEXT_EXTEND_SELECTION : longint; { return type might be wrong }


function gtk_tree_model_flags_get_type:TGType;cdecl;external;
function GTK_TYPE_TREE_MODEL_FLAGS : longint; { return type might be wrong }


function gtk_tree_view_drop_position_get_type:TGType;cdecl;external;
function GTK_TYPE_TREE_VIEW_DROP_POSITION : longint; { return type might be wrong }


function gtk_tree_view_column_sizing_get_type:TGType;cdecl;external;
function GTK_TYPE_TREE_VIEW_COLUMN_SIZING : longint; { return type might be wrong }

//// {$endif}



// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkbookmarklist.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkbookmarklist.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkbookmarklist.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGtkBookmarkList  = ^GtkBookmarkList;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_BOOKMARK_LIST_H__}
//// {$define __GTK_BOOKMARK_LIST_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gio/gio.h>}

//// {$include <gdk/gdk.h>}

function GTK_TYPE_BOOKMARK_LIST : longint; { return type might be wrong }

function gtk_bookmark_list_new(filename:Pchar; attributes:Pchar):^TGtkBookmarkList;cdecl;external;
function gtk_bookmark_list_get_filename(self:PTGtkBookmarkList):^char;cdecl;external;
procedure gtk_bookmark_list_set_attributes(self:PTGtkBookmarkList; attributes:Pchar);cdecl;external;
function gtk_bookmark_list_get_attributes(self:PTGtkBookmarkList):^char;cdecl;external;
procedure gtk_bookmark_list_set_io_priority(self:PTGtkBookmarkList; io_priority:longint);cdecl;external;
function gtk_bookmark_list_get_io_priority(self:PTGtkBookmarkList):longint;cdecl;external;
function gtk_bookmark_list_is_loading(self:PTGtkBookmarkList):Tgboolean;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkflattenlistmodel.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkflattenlistmodel.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkflattenlistmodel.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGListModel  = ^GListModel;
PGtkFlattenListModel  = ^GtkFlattenListModel;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_FLATTEN_LIST_MODEL_H__}
//// {$define __GTK_FLATTEN_LIST_MODEL_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdk.h>}

function GTK_TYPE_FLATTEN_LIST_MODEL : longint; { return type might be wrong }

function gtk_flatten_list_model_new(model:PTGListModel):^TGtkFlattenListModel;cdecl;external;
procedure gtk_flatten_list_model_set_model(self:PTGtkFlattenListModel; model:PTGListModel);cdecl;external;
function gtk_flatten_list_model_get_model(self:PTGtkFlattenListModel):^TGListModel;cdecl;external;
function gtk_flatten_list_model_get_model_for_item(self:PTGtkFlattenListModel; position:Tguint):^TGListModel;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkcolorchooser.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkcolorchooser.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkcolorchooser.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGdkRGBA  = ^GdkRGBA;
PGtkColorChooser  = ^GtkColorChooser;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_COLOR_CHOOSER_H__}
//// {$define __GTK_COLOR_CHOOSER_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkwidget.h>}

function GTK_TYPE_COLOR_CHOOSER : longint; { return type might be wrong }

function GTK_COLOR_CHOOSER(obj : longint) : longint;

function GTK_IS_COLOR_CHOOSER(obj : longint) : longint;

function GTK_COLOR_CHOOSER_GET_IFACE(inst : longint) : longint;

type
  T_GtkColorChooser = TGtkColorChooser;
  T_GtkColorChooserInterface = TGtkColorChooserInterface;




  T_GtkColorChooserInterface = record
      base_interface : TGTypeInterface;
      get_rgba : procedure (chooser:PTGtkColorChooser; color:PTGdkRGBA);cdecl;
      set_rgba : procedure (chooser:PTGtkColorChooser; color:PTGdkRGBA);cdecl;
      add_palette : procedure (chooser:PTGtkColorChooser; orientation:TGtkOrientation; colors_per_line:longint; n_colors:longint; colors:PTGdkRGBA);cdecl;
      color_activated : procedure (chooser:PTGtkColorChooser; color:PTGdkRGBA);cdecl;
      padding : array[0..11] of Tgpointer;
    end;


function gtk_color_chooser_get_type:TGType;cdecl;external;
procedure gtk_color_chooser_get_rgba(chooser:PTGtkColorChooser; color:PTGdkRGBA);cdecl;external;
procedure gtk_color_chooser_set_rgba(chooser:PTGtkColorChooser; color:PTGdkRGBA);cdecl;external;
function gtk_color_chooser_get_use_alpha(chooser:PTGtkColorChooser):Tgboolean;cdecl;external;
procedure gtk_color_chooser_set_use_alpha(chooser:PTGtkColorChooser; use_alpha:Tgboolean);cdecl;external;
procedure gtk_color_chooser_add_palette(chooser:PTGtkColorChooser; orientation:TGtkOrientation; colors_per_line:longint; n_colors:longint; colors:PTGdkRGBA);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkpasswordentry.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkpasswordentry.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkpasswordentry.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGMenuModel  = ^GMenuModel;
PGtkPasswordEntry  = ^GtkPasswordEntry;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_PASSWORD_ENTRY_H__}
//// {$define __GTK_PASSWORD_ENTRY_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkentry.h>}

function GTK_TYPE_PASSWORD_ENTRY : longint; { return type might be wrong }

function GTK_PASSWORD_ENTRY(obj : longint) : longint;

function GTK_IS_PASSWORD_ENTRY(obj : longint) : longint;

type
  T_GtkPasswordEntry = TGtkPasswordEntry;
  T_GtkPasswordEntryClass = TGtkPasswordEntryClass;

function gtk_password_entry_get_type:TGType;cdecl;external;
function gtk_password_entry_new:^TGtkWidget;cdecl;external;
procedure gtk_password_entry_set_show_peek_icon(entry:PTGtkPasswordEntry; show_peek_icon:Tgboolean);cdecl;external;
function gtk_password_entry_get_show_peek_icon(entry:PTGtkPasswordEntry):Tgboolean;cdecl;external;
procedure gtk_password_entry_set_extra_menu(entry:PTGtkPasswordEntry; model:PTGMenuModel);cdecl;external;
function gtk_password_entry_get_extra_menu(entry:PTGtkPasswordEntry):^TGMenuModel;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkaccelgroup.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkaccelgroup.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkaccelgroup.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGdkDisplay  = ^GdkDisplay;
PGdkModifierType  = ^GdkModifierType;
Pguint  = ^guint;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef __GTK_ACCEL_GROUP_H__}
//// {$define __GTK_ACCEL_GROUP_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdk.h>}
//// {$include <gtk/gtkenums.h>}


function gtk_accelerator_valid(keyval:Tguint; modifiers:TGdkModifierType):Tgboolean;cdecl;external;
function gtk_accelerator_parse(accelerator:Pchar; accelerator_key:PTguint; accelerator_mods:PTGdkModifierType):Tgboolean;cdecl;external;
function gtk_accelerator_parse_with_keycode(accelerator:Pchar; display:PTGdkDisplay; accelerator_key:PTguint; accelerator_codes:PPTguint; accelerator_mods:PTGdkModifierType):Tgboolean;cdecl;external;
function gtk_accelerator_name(accelerator_key:Tguint; accelerator_mods:TGdkModifierType):^char;cdecl;external;
function gtk_accelerator_name_with_keycode(display:PTGdkDisplay; accelerator_key:Tguint; keycode:Tguint; accelerator_mods:TGdkModifierType):^char;cdecl;external;
function gtk_accelerator_get_label(accelerator_key:Tguint; accelerator_mods:TGdkModifierType):^char;cdecl;external;
function gtk_accelerator_get_label_with_keycode(display:PTGdkDisplay; accelerator_key:Tguint; keycode:Tguint; accelerator_mods:TGdkModifierType):^char;cdecl;external;
function gtk_accelerator_get_default_mod_mask:TGdkModifierType;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtktexttag.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtktexttag.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtktexttag.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGtkTextTag  = ^GtkTextTag;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_TEXT_TAG_H__}
//// {$define __GTK_TEXT_TAG_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdk.h>}
//// {$include <gtk/gtkenums.h>}
type
  T_GtkTextIter = TGtkTextIter;
  T_GtkTextTagTable = TGtkTextTagTable;

function GTK_TYPE_TEXT_TAG : longint; { return type might be wrong }

function GTK_TEXT_TAG(obj : longint) : longint;

function GTK_TEXT_TAG_CLASS(klass : longint) : longint;

function GTK_IS_TEXT_TAG(obj : longint) : longint;

function GTK_IS_TEXT_TAG_CLASS(klass : longint) : longint;

function GTK_TEXT_TAG_GET_CLASS(obj : longint) : longint;

type
  T_GtkTextTag = TGtkTextTag;
  T_GtkTextTagPrivate = TGtkTextTagPrivate;
  T_GtkTextTagClass = TGtkTextTagClass;
  T_GtkTextTag = record
      parent_instance : TGObject;
      priv : ^TGtkTextTagPrivate;
    end;


  T_GtkTextTagClass = record
      parent_class : TGObjectClass;
      padding : array[0..7] of Tgpointer;
    end;


function gtk_text_tag_get_type:TGType;cdecl;external;
function gtk_text_tag_new(name:Pchar):^TGtkTextTag;cdecl;external;
function gtk_text_tag_get_priority(tag:PTGtkTextTag):longint;cdecl;external;
procedure gtk_text_tag_set_priority(tag:PTGtkTextTag; priority:longint);cdecl;external;
procedure gtk_text_tag_changed(tag:PTGtkTextTag; size_changed:Tgboolean);cdecl;external;
//// {$endif}

// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkprintcontext.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkprintcontext.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkprintcontext.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pcairo_t  = ^cairo_t;
Pdouble  = ^double;
PGtkPrintContext  = ^GtkPrintContext;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_PRINT_CONTEXT_H__}
//// {$define __GTK_PRINT_CONTEXT_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <pango/pango.h>}
//// {$include <gtk/gtkpagesetup.h>}
type
  T_GtkPrintContext = TGtkPrintContext;

function GTK_TYPE_PRINT_CONTEXT : longint; { return type might be wrong }

function GTK_PRINT_CONTEXT(obj : longint) : longint;

function GTK_IS_PRINT_CONTEXT(obj : longint) : longint;

function gtk_print_context_get_type:TGType;cdecl;external;

function gtk_print_context_get_cairo_context(context:PTGtkPrintContext):^Tcairo_t;cdecl;external;
function gtk_print_context_get_page_setup(context:PTGtkPrintContext):^TGtkPageSetup;cdecl;external;
function gtk_print_context_get_width(context:PTGtkPrintContext):Tdouble;cdecl;external;
function gtk_print_context_get_height(context:PTGtkPrintContext):Tdouble;cdecl;external;
function gtk_print_context_get_dpi_x(context:PTGtkPrintContext):Tdouble;cdecl;external;
function gtk_print_context_get_dpi_y(context:PTGtkPrintContext):Tdouble;cdecl;external;
function gtk_print_context_get_hard_margins(context:PTGtkPrintContext; top:PTdouble; bottom:PTdouble; left:PTdouble; right:PTdouble):Tgboolean;cdecl;external;

function gtk_print_context_get_pango_fontmap(context:PTGtkPrintContext):^TPangoFontMap;cdecl;external;
function gtk_print_context_create_pango_context(context:PTGtkPrintContext):^TPangoContext;cdecl;external;
function gtk_print_context_create_pango_layout(context:PTGtkPrintContext):^TPangoLayout;cdecl;external;

procedure gtk_print_context_set_cairo_context(context:PTGtkPrintContext; cr:PTcairo_t; dpi_x:Tdouble; dpi_y:Tdouble);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkboolfilter.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkboolfilter.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkboolfilter.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGtkBoolFilter  = ^GtkBoolFilter;
PGtkExpression  = ^GtkExpression;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_BOOL_FILTER_H__}
//// {$define __GTK_BOOL_FILTER_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkexpression.h>}
//// {$include <gtk/gtkfilter.h>}

function GTK_TYPE_BOOL_FILTER : longint; { return type might be wrong }

function gtk_bool_filter_new(expression:PTGtkExpression):^TGtkBoolFilter;cdecl;external;
function gtk_bool_filter_get_expression(self:PTGtkBoolFilter):^TGtkExpression;cdecl;external;
procedure gtk_bool_filter_set_expression(self:PTGtkBoolFilter; expression:PTGtkExpression);cdecl;external;
function gtk_bool_filter_get_invert(self:PTGtkBoolFilter):Tgboolean;cdecl;external;
procedure gtk_bool_filter_set_invert(self:PTGtkBoolFilter; invert:Tgboolean);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkimmulticontext.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkimmulticontext.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkimmulticontext.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGtkIMMulticontext  = ^GtkIMMulticontext;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_IM_MULTICONTEXT_H__}
//// {$define __GTK_IM_MULTICONTEXT_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkimcontext.h>}

function GTK_TYPE_IM_MULTICONTEXT : longint; { return type might be wrong }

function GTK_IM_MULTICONTEXT(obj : longint) : longint;

function GTK_IM_MULTICONTEXT_CLASS(klass : longint) : longint;

function GTK_IS_IM_MULTICONTEXT(obj : longint) : longint;

function GTK_IS_IM_MULTICONTEXT_CLASS(klass : longint) : longint;

function GTK_IM_MULTICONTEXT_GET_CLASS(obj : longint) : longint;

type
  T_GtkIMMulticontext = TGtkIMMulticontext;
  T_GtkIMMulticontextClass = TGtkIMMulticontextClass;
  T_GtkIMMulticontextPrivate = TGtkIMMulticontextPrivate;

  T_GtkIMMulticontext = record
      object : TGtkIMContext;
      priv : ^TGtkIMMulticontextPrivate;
    end;


  T_GtkIMMulticontextClass = record
      parent_class : TGtkIMContextClass;
      _gtk_reserved1 : procedure ;cdecl;
      _gtk_reserved2 : procedure ;cdecl;
      _gtk_reserved3 : procedure ;cdecl;
      _gtk_reserved4 : procedure ;cdecl;
    end;


function gtk_im_multicontext_get_type:TGType;cdecl;external;
function gtk_im_multicontext_new:^TGtkIMContext;cdecl;external;
function gtk_im_multicontext_get_context_id(context:PTGtkIMMulticontext):^char;cdecl;external;
procedure gtk_im_multicontext_set_context_id(context:PTGtkIMMulticontext; context_id:Pchar);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkdrawingarea.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkdrawingarea.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkdrawingarea.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pcairo_t  = ^cairo_t;
PGtkDrawingArea  = ^GtkDrawingArea;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef __GTK_DRAWING_AREA_H__}
//// {$define __GTK_DRAWING_AREA_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkwidget.h>}

function GTK_TYPE_DRAWING_AREA : longint; { return type might be wrong }

function GTK_DRAWING_AREA(obj : longint) : longint;

function GTK_DRAWING_AREA_CLASS(klass : longint) : longint;

function GTK_IS_DRAWING_AREA(obj : longint) : longint;

function GTK_IS_DRAWING_AREA_CLASS(klass : longint) : longint;

function GTK_DRAWING_AREA_GET_CLASS(obj : longint) : longint;

type
  T_GtkDrawingArea = TGtkDrawingArea;
  T_GtkDrawingAreaClass = TGtkDrawingAreaClass;


  TGtkDrawingAreaDrawFunc = procedure (drawing_area:PTGtkDrawingArea; cr:PTcairo_t; width:longint; height:longint; user_data:Tgpointer);cdecl;
  T_GtkDrawingArea = record
      widget : TGtkWidget;cdecl;
    end;


  T_GtkDrawingAreaClass = record
      parent_class : TGtkWidgetClass;
      resize : procedure (area:PTGtkDrawingArea; width:longint; height:longint);cdecl;
      padding : array[0..7] of Tgpointer;
    end;


function gtk_drawing_area_get_type:TGType;cdecl;external;
function gtk_drawing_area_new:^TGtkWidget;cdecl;external;
procedure gtk_drawing_area_set_content_width(self:PTGtkDrawingArea; width:longint);cdecl;external;
function gtk_drawing_area_get_content_width(self:PTGtkDrawingArea):longint;cdecl;external;
procedure gtk_drawing_area_set_content_height(self:PTGtkDrawingArea; height:longint);cdecl;external;
function gtk_drawing_area_get_content_height(self:PTGtkDrawingArea):longint;cdecl;external;
procedure gtk_drawing_area_set_draw_func(self:PTGtkDrawingArea; draw_func:TGtkDrawingAreaDrawFunc; user_data:Tgpointer; destroy:TGDestroyNotify);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkfilechoosernative.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkfilechoosernative.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkfilechoosernative.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGtkFileChooserNative  = ^GtkFileChooserNative;
PGtkWindow  = ^GtkWindow;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_FILE_CHOOSER_NATIVE_H__}
//// {$define __GTK_FILE_CHOOSER_NATIVE_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkfilechooser.h>}
//// {$include <gtk/gtknativedialog.h>}

function GTK_TYPE_FILE_CHOOSER_NATIVE : longint; { return type might be wrong }

function gtk_file_chooser_native_new(title:Pchar; parent:PTGtkWindow; action:TGtkFileChooserAction; accept_label:Pchar; cancel_label:Pchar):^TGtkFileChooserNative;cdecl;external;
function gtk_file_chooser_native_get_accept_label(self:PTGtkFileChooserNative):^char;cdecl;external;
procedure gtk_file_chooser_native_set_accept_label(self:PTGtkFileChooserNative; accept_label:Pchar);cdecl;external;
function gtk_file_chooser_native_get_cancel_label(self:PTGtkFileChooserNative):^char;cdecl;external;
procedure gtk_file_chooser_native_set_cancel_label(self:PTGtkFileChooserNative; cancel_label:Pchar);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkcomboboxtext.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkcomboboxtext.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkcomboboxtext.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGtkComboBoxText  = ^GtkComboBoxText;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_COMBO_BOX_TEXT_H__}
//// {$define __GTK_COMBO_BOX_TEXT_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkcombobox.h>}

function GTK_TYPE_COMBO_BOX_TEXT : longint; { return type might be wrong }

function GTK_COMBO_BOX_TEXT(obj : longint) : longint;

function GTK_IS_COMBO_BOX_TEXT(obj : longint) : longint;

type
  T_GtkComboBoxText = TGtkComboBoxText;

function gtk_combo_box_text_get_type:TGType;cdecl;external;
function gtk_combo_box_text_new:^TGtkWidget;cdecl;external;
function gtk_combo_box_text_new_with_entry:^TGtkWidget;cdecl;external;
procedure gtk_combo_box_text_append_text(combo_box:PTGtkComboBoxText; text:Pchar);cdecl;external;
procedure gtk_combo_box_text_insert_text(combo_box:PTGtkComboBoxText; position:longint; text:Pchar);cdecl;external;
procedure gtk_combo_box_text_prepend_text(combo_box:PTGtkComboBoxText; text:Pchar);cdecl;external;
procedure gtk_combo_box_text_remove(combo_box:PTGtkComboBoxText; position:longint);cdecl;external;
procedure gtk_combo_box_text_remove_all(combo_box:PTGtkComboBoxText);cdecl;external;
function gtk_combo_box_text_get_active_text(combo_box:PTGtkComboBoxText):^char;cdecl;external;
procedure gtk_combo_box_text_insert(combo_box:PTGtkComboBoxText; position:longint; id:Pchar; text:Pchar);cdecl;external;
procedure gtk_combo_box_text_append(combo_box:PTGtkComboBoxText; id:Pchar; text:Pchar);cdecl;external;
procedure gtk_combo_box_text_prepend(combo_box:PTGtkComboBoxText; id:Pchar; text:Pchar);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkdropcontrollermotion.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkdropcontrollermotion.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkdropcontrollermotion.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGtkDropControllerMotion  = ^GtkDropControllerMotion;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_DROP_CONTROLLER_MOTION_H__}
//// {$define __GTK_DROP_CONTROLLER_MOTION_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdk.h>}
//// {$include <gtk/gtkeventcontroller.h>}

function GTK_TYPE_DROP_CONTROLLER_MOTION : longint; { return type might be wrong }

function GTK_DROP_CONTROLLER_MOTION(o : longint) : longint;

function GTK_DROP_CONTROLLER_MOTION_CLASS(k : longint) : longint;

function GTK_IS_DROP_CONTROLLER_MOTION(o : longint) : longint;

function GTK_IS_DROP_CONTROLLER_MOTION_CLASS(k : longint) : longint;

function GTK_DROP_CONTROLLER_MOTION_GET_CLASS(o : longint) : longint;

type
  T_GtkDropControllerMotion = TGtkDropControllerMotion;
  T_GtkDropControllerMotionClass = TGtkDropControllerMotionClass;

function gtk_drop_controller_motion_get_type:TGType;cdecl;external;
function gtk_drop_controller_motion_new:^TGtkEventController;cdecl;external;
function gtk_drop_controller_motion_contains_pointer(self:PTGtkDropControllerMotion):Tgboolean;cdecl;external;
function gtk_drop_controller_motion_get_drop(self:PTGtkDropControllerMotion):^TGdkDrop;cdecl;external;
function gtk_drop_controller_motion_is_pointer(self:PTGtkDropControllerMotion):Tgboolean;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkdialog.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkdialog.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkdialog.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGtkDialog  = ^GtkDialog;
PGtkWidget  = ^GtkWidget;
PGtkWindow  = ^GtkWindow;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef __GTK_DIALOG_H__}
//// {$define __GTK_DIALOG_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkwindow.h>}

type
  TGtkDialogFlags = (GTK_DIALOG_MODAL := 1 shl 0,GTK_DIALOG_DESTROY_WITH_PARENT := 1 shl 1,
    GTK_DIALOG_USE_HEADER_BAR := 1 shl 2);


  TGtkResponseType = (GTK_RESPONSE_NONE := -(1),GTK_RESPONSE_REJECT := -(2),
    GTK_RESPONSE_ACCEPT := -(3),GTK_RESPONSE_DELETE_EVENT := -(4),
    GTK_RESPONSE_OK := -(5),GTK_RESPONSE_CANCEL := -(6),
    GTK_RESPONSE_CLOSE := -(7),GTK_RESPONSE_YES := -(8),
    GTK_RESPONSE_NO := -(9),GTK_RESPONSE_APPLY := -(10),
    GTK_RESPONSE_HELP := -(11));

function GTK_TYPE_DIALOG : longint; { return type might be wrong }

function GTK_DIALOG(obj : longint) : longint;

function GTK_DIALOG_CLASS(klass : longint) : longint;

function GTK_IS_DIALOG(obj : longint) : longint;

function GTK_IS_DIALOG_CLASS(klass : longint) : longint;

function GTK_DIALOG_GET_CLASS(obj : longint) : longint;

type
  T_GtkDialog = TGtkDialog;
  T_GtkDialogClass = TGtkDialogClass;
  T_GtkDialog = record
      parent_instance : TGtkWindow;
    end;





  T_GtkDialogClass = record
      parent_class : TGtkWindowClass;
      response : procedure (dialog:PTGtkDialog; response_id:longint);cdecl;
      close : procedure (dialog:PTGtkDialog);cdecl;
      padding : array[0..7] of Tgpointer;
    end;


function gtk_dialog_get_type:TGType;cdecl;external;
function gtk_dialog_new:^TGtkWidget;cdecl;external;
function gtk_dialog_new_with_buttons(title:Pchar; parent:PTGtkWindow; flags:TGtkDialogFlags; first_button_text:Pchar; args:array of const):^TGtkWidget;cdecl;external;
function gtk_dialog_new_with_buttons(title:Pchar; parent:PTGtkWindow; flags:TGtkDialogFlags; first_button_text:Pchar):^TGtkWidget;cdecl;external;
procedure gtk_dialog_add_action_widget(dialog:PTGtkDialog; child:PTGtkWidget; response_id:longint);cdecl;external;
function gtk_dialog_add_button(dialog:PTGtkDialog; button_text:Pchar; response_id:longint):^TGtkWidget;cdecl;external;
procedure gtk_dialog_add_buttons(dialog:PTGtkDialog; first_button_text:Pchar; args:array of const);cdecl;external;
procedure gtk_dialog_add_buttons(dialog:PTGtkDialog; first_button_text:Pchar);cdecl;external;
procedure gtk_dialog_set_response_sensitive(dialog:PTGtkDialog; response_id:longint; setting:Tgboolean);cdecl;external;
procedure gtk_dialog_set_default_response(dialog:PTGtkDialog; response_id:longint);cdecl;external;
function gtk_dialog_get_widget_for_response(dialog:PTGtkDialog; response_id:longint):^TGtkWidget;cdecl;external;
function gtk_dialog_get_response_for_widget(dialog:PTGtkDialog; widget:PTGtkWidget):longint;cdecl;external;

procedure gtk_dialog_response(dialog:PTGtkDialog; response_id:longint);cdecl;external;
function gtk_dialog_get_content_area(dialog:PTGtkDialog):^TGtkWidget;cdecl;external;
function gtk_dialog_get_header_bar(dialog:PTGtkDialog):^TGtkWidget;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkcellrendereraccel.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkcellrendereraccel.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkcellrendereraccel.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_CELL_RENDERER_ACCEL_H__}
//// {$define __GTK_CELL_RENDERER_ACCEL_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkcellrenderertext.h>}

function GTK_TYPE_CELL_RENDERER_ACCEL : longint; { return type might be wrong }

function GTK_CELL_RENDERER_ACCEL(obj : longint) : longint;

function GTK_IS_CELL_RENDERER_ACCEL(obj : longint) : longint;

type
  T_GtkCellRendererAccel = TGtkCellRendererAccel;


  TGtkCellRendererAccelMode = (GTK_CELL_RENDERER_ACCEL_MODE_GTK,GTK_CELL_RENDERER_ACCEL_MODE_OTHER
    );

function gtk_cell_renderer_accel_get_type:TGType;cdecl;external;
function gtk_cell_renderer_accel_new:^TGtkCellRenderer;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtksearchentry.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtksearchentry.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtksearchentry.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGtkSearchEntry  = ^GtkSearchEntry;
PGtkWidget  = ^GtkWidget;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef __GTK_SEARCH_ENTRY_H__}
//// {$define __GTK_SEARCH_ENTRY_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkentry.h>}

function GTK_TYPE_SEARCH_ENTRY : longint; { return type might be wrong }

function GTK_SEARCH_ENTRY(obj : longint) : longint;

function GTK_IS_SEARCH_ENTRY(obj : longint) : longint;

type
  T_GtkSearchEntry = TGtkSearchEntry;

function gtk_search_entry_get_type:TGType;cdecl;external;
function gtk_search_entry_new:^TGtkWidget;cdecl;external;
procedure gtk_search_entry_set_key_capture_widget(entry:PTGtkSearchEntry; widget:PTGtkWidget);cdecl;external;
function gtk_search_entry_get_key_capture_widget(entry:PTGtkSearchEntry):^TGtkWidget;cdecl;external;
procedure gtk_search_entry_set_search_delay(entry:PTGtkSearchEntry; delay:Tguint);cdecl;external;
function gtk_search_entry_get_search_delay(entry:PTGtkSearchEntry):Tguint;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkgesturelongpress.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkgesturelongpress.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkgesturelongpress.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGtkGestureLongPress  = ^GtkGestureLongPress;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_GESTURE_LONG_PRESS_H__}
//// {$define __GTK_GESTURE_LONG_PRESS_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkgesturesingle.h>}

function GTK_TYPE_GESTURE_LONG_PRESS : longint; { return type might be wrong }

function GTK_GESTURE_LONG_PRESS(o : longint) : longint;

function GTK_GESTURE_LONG_PRESS_CLASS(k : longint) : longint;

function GTK_IS_GESTURE_LONG_PRESS(o : longint) : longint;

function GTK_IS_GESTURE_LONG_PRESS_CLASS(k : longint) : longint;

function GTK_GESTURE_LONG_PRESS_GET_CLASS(o : longint) : longint;

type
  T_GtkGestureLongPress = TGtkGestureLongPress;
  T_GtkGestureLongPressClass = TGtkGestureLongPressClass;

function gtk_gesture_long_press_get_type:TGType;cdecl;external;
function gtk_gesture_long_press_new:^TGtkGesture;cdecl;external;
procedure gtk_gesture_long_press_set_delay_factor(gesture:PTGtkGestureLongPress; delay_factor:Tdouble);cdecl;external;
function gtk_gesture_long_press_get_delay_factor(gesture:PTGtkGestureLongPress):Tdouble;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtktestatcontext.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtktestatcontext.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtktestatcontext.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGtkAccessible  = ^GtkAccessible;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkatcontext.h>}





function gtk_test_accessible_has_role(accessible:PTGtkAccessible; role:TGtkAccessibleRole):Tgboolean;cdecl;external;
function gtk_test_accessible_has_property(accessible:PTGtkAccessible; _property:TGtkAccessibleProperty):Tgboolean;cdecl;external;
function gtk_test_accessible_has_relation(accessible:PTGtkAccessible; relation:TGtkAccessibleRelation):Tgboolean;cdecl;external;
function gtk_test_accessible_has_state(accessible:PTGtkAccessible; state:TGtkAccessibleState):Tgboolean;cdecl;external;
function gtk_test_accessible_check_property(accessible:PTGtkAccessible; _property:TGtkAccessibleProperty; args:array of const):^char;cdecl;external;
function gtk_test_accessible_check_property(accessible:PTGtkAccessible; _property:TGtkAccessibleProperty):^char;cdecl;external;
function gtk_test_accessible_check_relation(accessible:PTGtkAccessible; relation:TGtkAccessibleRelation; args:array of const):^char;cdecl;external;
function gtk_test_accessible_check_relation(accessible:PTGtkAccessible; relation:TGtkAccessibleRelation):^char;cdecl;external;
function gtk_test_accessible_check_state(accessible:PTGtkAccessible; state:TGtkAccessibleState; args:array of const):^char;cdecl;external;
function gtk_test_accessible_check_state(accessible:PTGtkAccessible; state:TGtkAccessibleState):^char;cdecl;external;
procedure gtk_test_accessible_assertion_message_role(domain:Pchar; file:Pchar; line:longint; func:Pchar; expr:Pchar; 
            accessible:PTGtkAccessible; expected_role:TGtkAccessibleRole; actual_role:TGtkAccessibleRole);cdecl;external;

// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkcelllayout.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkcelllayout.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkcelllayout.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGList  = ^GList;
PGObject  = ^GObject;
Pgpointer  = ^gpointer;
PGtkBuildable  = ^GtkBuildable;
PGtkBuildableParser  = ^GtkBuildableParser;
PGtkBuilder  = ^GtkBuilder;
PGtkCellArea  = ^GtkCellArea;
PGtkCellLayout  = ^GtkCellLayout;
PGtkCellRenderer  = ^GtkCellRenderer;
PGtkTreeIter  = ^GtkTreeIter;
PGtkTreeModel  = ^GtkTreeModel;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_CELL_LAYOUT_H__}
//// {$define __GTK_CELL_LAYOUT_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkcellrenderer.h>}
//// {$include <gtk/gtkcellarea.h>}
//// {$include <gtk/gtkbuildable.h>}
//// {$include <gtk/gtkbuilder.h>}

function GTK_TYPE_CELL_LAYOUT : longint; { return type might be wrong }

function GTK_CELL_LAYOUT(obj : longint) : longint;

function GTK_IS_CELL_LAYOUT(obj : longint) : longint;

function GTK_CELL_LAYOUT_GET_IFACE(obj : longint) : longint;

type
  T_GtkCellLayout = TGtkCellLayout;

  T_GtkCellLayoutIface = TGtkCellLayoutIface;



  TGtkCellLayoutDataFunc = procedure (cell_layout:PTGtkCellLayout; cell:PTGtkCellRenderer; tree_model:PTGtkTreeModel; iter:PTGtkTreeIter; data:Tgpointer);cdecl;




  T_GtkCellLayoutIface = record
      g_iface : TGTypeInterface;cdecl;
      pack_start : procedure (cell_layout:PTGtkCellLayout; cell:PTGtkCellRenderer; expand:Tgboolean);cdecl;
      pack_end : procedure (cell_layout:PTGtkCellLayout; cell:PTGtkCellRenderer; expand:Tgboolean);cdecl;
      clear : procedure (cell_layout:PTGtkCellLayout);cdecl;
      add_attribute : procedure (cell_layout:PTGtkCellLayout; cell:PTGtkCellRenderer; attribute:Pchar; column:longint);cdecl;
      set_cell_data_func : procedure (cell_layout:PTGtkCellLayout; cell:PTGtkCellRenderer; func:TGtkCellLayoutDataFunc; func_data:Tgpointer; destroy:TGDestroyNotify);cdecl;
      clear_attributes : procedure (cell_layout:PTGtkCellLayout; cell:PTGtkCellRenderer);cdecl;
      reorder : procedure (cell_layout:PTGtkCellLayout; cell:PTGtkCellRenderer; position:longint);cdecl;
      get_cells : function (cell_layout:PTGtkCellLayout):PTGList;cdecl;
      get_area : function (cell_layout:PTGtkCellLayout):PTGtkCellArea;cdecl;
    end;


function gtk_cell_layout_get_type:TGType;cdecl;external;
procedure gtk_cell_layout_pack_start(cell_layout:PTGtkCellLayout; cell:PTGtkCellRenderer; expand:Tgboolean);cdecl;external;
procedure gtk_cell_layout_pack_end(cell_layout:PTGtkCellLayout; cell:PTGtkCellRenderer; expand:Tgboolean);cdecl;external;
function gtk_cell_layout_get_cells(cell_layout:PTGtkCellLayout):^TGList;cdecl;external;
procedure gtk_cell_layout_clear(cell_layout:PTGtkCellLayout);cdecl;external;
procedure gtk_cell_layout_set_attributes(cell_layout:PTGtkCellLayout; cell:PTGtkCellRenderer; args:array of const);cdecl;external;
procedure gtk_cell_layout_set_attributes(cell_layout:PTGtkCellLayout; cell:PTGtkCellRenderer);cdecl;external;
procedure gtk_cell_layout_add_attribute(cell_layout:PTGtkCellLayout; cell:PTGtkCellRenderer; attribute:Pchar; column:longint);cdecl;external;
procedure gtk_cell_layout_set_cell_data_func(cell_layout:PTGtkCellLayout; cell:PTGtkCellRenderer; func:TGtkCellLayoutDataFunc; func_data:Tgpointer; destroy:TGDestroyNotify);cdecl;external;
procedure gtk_cell_layout_clear_attributes(cell_layout:PTGtkCellLayout; cell:PTGtkCellRenderer);cdecl;external;
procedure gtk_cell_layout_reorder(cell_layout:PTGtkCellLayout; cell:PTGtkCellRenderer; position:longint);cdecl;external;
function gtk_cell_layout_get_area(cell_layout:PTGtkCellLayout):^TGtkCellArea;cdecl;external;
function _gtk_cell_layout_buildable_custom_tag_start(buildable:PTGtkBuildable; builder:PTGtkBuilder; child:PTGObject; tagname:Pchar; parser:PTGtkBuildableParser; 
           data:PTgpointer):Tgboolean;cdecl;external;
function _gtk_cell_layout_buildable_custom_tag_end(buildable:PTGtkBuildable; builder:PTGtkBuilder; child:PTGObject; tagname:Pchar; data:PTgpointer):Tgboolean;cdecl;external;
procedure _gtk_cell_layout_buildable_add_child(buildable:PTGtkBuildable; builder:PTGtkBuilder; child:PTGObject; _type:Pchar);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkstack.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkstack.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkstack.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGtkStack  = ^GtkStack;
PGtkStackPage  = ^GtkStackPage;
PGtkWidget  = ^GtkWidget;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_STACK_H__}
//// {$define __GTK_STACK_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkwidget.h>}
//// {$include <gtk/gtkselectionmodel.h>}

function GTK_TYPE_STACK : longint; { return type might be wrong }

function GTK_STACK(obj : longint) : longint;

function GTK_IS_STACK(obj : longint) : longint;

type
  T_GtkStack = TGtkStack;

function GTK_TYPE_STACK_PAGE : longint; { return type might be wrong }

function GTK_STACK_PAGE(obj : longint) : longint;

function GTK_IS_STACK_PAGE(obj : longint) : longint;

type
  T_GtkStackPage = TGtkStackPage;

  TGtkStackTransitionType = (GTK_STACK_TRANSITION_TYPE_NONE,GTK_STACK_TRANSITION_TYPE_CROSSFADE,
    GTK_STACK_TRANSITION_TYPE_SLIDE_RIGHT,
    GTK_STACK_TRANSITION_TYPE_SLIDE_LEFT,GTK_STACK_TRANSITION_TYPE_SLIDE_UP,
    GTK_STACK_TRANSITION_TYPE_SLIDE_DOWN,GTK_STACK_TRANSITION_TYPE_SLIDE_LEFT_RIGHT,
    GTK_STACK_TRANSITION_TYPE_SLIDE_UP_DOWN,
    GTK_STACK_TRANSITION_TYPE_OVER_UP,GTK_STACK_TRANSITION_TYPE_OVER_DOWN,
    GTK_STACK_TRANSITION_TYPE_OVER_LEFT,GTK_STACK_TRANSITION_TYPE_OVER_RIGHT,
    GTK_STACK_TRANSITION_TYPE_UNDER_UP,GTK_STACK_TRANSITION_TYPE_UNDER_DOWN,
    GTK_STACK_TRANSITION_TYPE_UNDER_LEFT,GTK_STACK_TRANSITION_TYPE_UNDER_RIGHT,
    GTK_STACK_TRANSITION_TYPE_OVER_UP_DOWN,
    GTK_STACK_TRANSITION_TYPE_OVER_DOWN_UP,
    GTK_STACK_TRANSITION_TYPE_OVER_LEFT_RIGHT,
    GTK_STACK_TRANSITION_TYPE_OVER_RIGHT_LEFT,
    GTK_STACK_TRANSITION_TYPE_ROTATE_LEFT,
    GTK_STACK_TRANSITION_TYPE_ROTATE_RIGHT,
    GTK_STACK_TRANSITION_TYPE_ROTATE_LEFT_RIGHT
    );

function gtk_stack_page_get_type:TGType;cdecl;external;
function gtk_stack_page_get_child(self:PTGtkStackPage):^TGtkWidget;cdecl;external;
function gtk_stack_page_get_visible(self:PTGtkStackPage):Tgboolean;cdecl;external;
procedure gtk_stack_page_set_visible(self:PTGtkStackPage; visible:Tgboolean);cdecl;external;
function gtk_stack_page_get_needs_attention(self:PTGtkStackPage):Tgboolean;cdecl;external;
procedure gtk_stack_page_set_needs_attention(self:PTGtkStackPage; setting:Tgboolean);cdecl;external;
function gtk_stack_page_get_use_underline(self:PTGtkStackPage):Tgboolean;cdecl;external;
procedure gtk_stack_page_set_use_underline(self:PTGtkStackPage; setting:Tgboolean);cdecl;external;
function gtk_stack_page_get_name(self:PTGtkStackPage):^char;cdecl;external;
procedure gtk_stack_page_set_name(self:PTGtkStackPage; setting:Pchar);cdecl;external;
function gtk_stack_page_get_title(self:PTGtkStackPage):^char;cdecl;external;
procedure gtk_stack_page_set_title(self:PTGtkStackPage; setting:Pchar);cdecl;external;
function gtk_stack_page_get_icon_name(self:PTGtkStackPage):^char;cdecl;external;
procedure gtk_stack_page_set_icon_name(self:PTGtkStackPage; setting:Pchar);cdecl;external;
function gtk_stack_get_type:TGType;cdecl;external;
function gtk_stack_new:^TGtkWidget;cdecl;external;
function gtk_stack_add_child(stack:PTGtkStack; child:PTGtkWidget):^TGtkStackPage;cdecl;external;
function gtk_stack_add_named(stack:PTGtkStack; child:PTGtkWidget; name:Pchar):^TGtkStackPage;cdecl;external;
function gtk_stack_add_titled(stack:PTGtkStack; child:PTGtkWidget; name:Pchar; title:Pchar):^TGtkStackPage;cdecl;external;
procedure gtk_stack_remove(stack:PTGtkStack; child:PTGtkWidget);cdecl;external;
function gtk_stack_get_page(stack:PTGtkStack; child:PTGtkWidget):^TGtkStackPage;cdecl;external;
function gtk_stack_get_child_by_name(stack:PTGtkStack; name:Pchar):^TGtkWidget;cdecl;external;
procedure gtk_stack_set_visible_child(stack:PTGtkStack; child:PTGtkWidget);cdecl;external;
function gtk_stack_get_visible_child(stack:PTGtkStack):^TGtkWidget;cdecl;external;
procedure gtk_stack_set_visible_child_name(stack:PTGtkStack; name:Pchar);cdecl;external;
function gtk_stack_get_visible_child_name(stack:PTGtkStack):^char;cdecl;external;
procedure gtk_stack_set_visible_child_full(stack:PTGtkStack; name:Pchar; transition:TGtkStackTransitionType);cdecl;external;
procedure gtk_stack_set_hhomogeneous(stack:PTGtkStack; hhomogeneous:Tgboolean);cdecl;external;
function gtk_stack_get_hhomogeneous(stack:PTGtkStack):Tgboolean;cdecl;external;
procedure gtk_stack_set_vhomogeneous(stack:PTGtkStack; vhomogeneous:Tgboolean);cdecl;external;
function gtk_stack_get_vhomogeneous(stack:PTGtkStack):Tgboolean;cdecl;external;
procedure gtk_stack_set_transition_duration(stack:PTGtkStack; duration:Tguint);cdecl;external;
function gtk_stack_get_transition_duration(stack:PTGtkStack):Tguint;cdecl;external;
procedure gtk_stack_set_transition_type(stack:PTGtkStack; transition:TGtkStackTransitionType);cdecl;external;
function gtk_stack_get_transition_type(stack:PTGtkStack):TGtkStackTransitionType;cdecl;external;
function gtk_stack_get_transition_running(stack:PTGtkStack):Tgboolean;cdecl;external;
procedure gtk_stack_set_interpolate_size(stack:PTGtkStack; interpolate_size:Tgboolean);cdecl;external;
function gtk_stack_get_interpolate_size(stack:PTGtkStack):Tgboolean;cdecl;external;
function gtk_stack_get_pages(stack:PTGtkStack):^TGtkSelectionModel;cdecl;external;
//// {$endif}

// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkshortcut.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkshortcut.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkshortcut.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGtkShortcut  = ^GtkShortcut;
PGtkShortcutAction  = ^GtkShortcutAction;
PGtkShortcutTrigger  = ^GtkShortcutTrigger;
PGVariant  = ^GVariant;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_SHORTCUT_H__}
//// {$define __GTK_SHORTCUT_H__}
//// {$include <gtk/gtktypes.h>}

function GTK_TYPE_SHORTCUT : longint; { return type might be wrong }

function gtk_shortcut_new(trigger:PTGtkShortcutTrigger; action:PTGtkShortcutAction):^TGtkShortcut;cdecl;external;
function gtk_shortcut_new_with_arguments(trigger:PTGtkShortcutTrigger; action:PTGtkShortcutAction; format_string:Pchar; args:array of const):^TGtkShortcut;cdecl;external;
function gtk_shortcut_new_with_arguments(trigger:PTGtkShortcutTrigger; action:PTGtkShortcutAction; format_string:Pchar):^TGtkShortcut;cdecl;external;
function gtk_shortcut_get_trigger(self:PTGtkShortcut):^TGtkShortcutTrigger;cdecl;external;
procedure gtk_shortcut_set_trigger(self:PTGtkShortcut; trigger:PTGtkShortcutTrigger);cdecl;external;
function gtk_shortcut_get_action(self:PTGtkShortcut):^TGtkShortcutAction;cdecl;external;
procedure gtk_shortcut_set_action(self:PTGtkShortcut; action:PTGtkShortcutAction);cdecl;external;
function gtk_shortcut_get_arguments(self:PTGtkShortcut):^TGVariant;cdecl;external;
procedure gtk_shortcut_set_arguments(self:PTGtkShortcut; args:PTGVariant);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkactionable.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkactionable.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkactionable.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGtkActionable  = ^GtkActionable;
PGVariant  = ^GVariant;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_ACTIONABLE_H__}
//// {$define __GTK_ACTIONABLE_H__}
//// {$include <glib-object.h>}
//// {$include <gdk/gdk.h>}

function GTK_TYPE_ACTIONABLE : longint; { return type might be wrong }

function GTK_ACTIONABLE(inst : longint) : longint;

function GTK_IS_ACTIONABLE(inst : longint) : longint;

function GTK_ACTIONABLE_GET_IFACE(inst : longint) : longint;

type
  T_GtkActionableInterface = TGtkActionableInterface;
  T_GtkActionable = TGtkActionable;


  T_GtkActionableInterface = record
      g_iface : TGTypeInterface;
      get_action_name : function (actionable:PTGtkActionable):Pchar;cdecl;
      set_action_name : procedure (actionable:PTGtkActionable; action_name:Pchar);cdecl;
      get_action_target_value : function (actionable:PTGtkActionable):PTGVariant;cdecl;
      set_action_target_value : procedure (actionable:PTGtkActionable; target_value:PTGVariant);cdecl;
    end;


function gtk_actionable_get_type:TGType;cdecl;external;
function gtk_actionable_get_action_name(actionable:PTGtkActionable):^char;cdecl;external;
procedure gtk_actionable_set_action_name(actionable:PTGtkActionable; action_name:Pchar);cdecl;external;
function gtk_actionable_get_action_target_value(actionable:PTGtkActionable):^TGVariant;cdecl;external;
procedure gtk_actionable_set_action_target_value(actionable:PTGtkActionable; target_value:PTGVariant);cdecl;external;
procedure gtk_actionable_set_action_target(actionable:PTGtkActionable; format_string:Pchar; args:array of const);cdecl;external;
procedure gtk_actionable_set_action_target(actionable:PTGtkActionable; format_string:Pchar);cdecl;external;
procedure gtk_actionable_set_detailed_action_name(actionable:PTGtkActionable; detailed_action_name:Pchar);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkfixedlayout.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkfixedlayout.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkfixedlayout.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGskTransform  = ^GskTransform;
PGtkFixedLayoutChild  = ^GtkFixedLayoutChild;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$include <gtk/gtklayoutmanager.h>}

function GTK_TYPE_FIXED_LAYOUT : longint; { return type might be wrong }

function GTK_TYPE_FIXED_LAYOUT_CHILD : longint; { return type might be wrong }


function gtk_fixed_layout_new:^TGtkLayoutManager;cdecl;external;

procedure gtk_fixed_layout_child_set_transform(child:PTGtkFixedLayoutChild; transform:PTGskTransform);cdecl;external;
function gtk_fixed_layout_child_get_transform(child:PTGtkFixedLayoutChild):^TGskTransform;cdecl;external;

// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtktreemodelfilter.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtktreemodelfilter.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtktreemodelfilter.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGtkTreeIter  = ^GtkTreeIter;
PGtkTreeModel  = ^GtkTreeModel;
PGtkTreeModelFilter  = ^GtkTreeModelFilter;
PGtkTreePath  = ^GtkTreePath;
PGType  = ^GType;
PGValue  = ^GValue;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_TREE_MODEL_FILTER_H__}
//// {$define __GTK_TREE_MODEL_FILTER_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtktreemodel.h>}

function GTK_TYPE_TREE_MODEL_FILTER : longint; { return type might be wrong }

function GTK_TREE_MODEL_FILTER(obj : longint) : longint;

function GTK_TREE_MODEL_FILTER_CLASS(vtable : longint) : longint;

function GTK_IS_TREE_MODEL_FILTER(obj : longint) : longint;

function GTK_IS_TREE_MODEL_FILTER_CLASS(vtable : longint) : longint;

function GTK_TREE_MODEL_FILTER_GET_CLASS(obj : longint) : longint;


type

  TGtkTreeModelFilterVisibleFunc = function (model:PTGtkTreeModel; iter:PTGtkTreeIter; data:Tgpointer):Tgboolean;cdecl;


  TGtkTreeModelFilterModifyFunc = procedure (model:PTGtkTreeModel; iter:PTGtkTreeIter; value:PTGValue; column:longint; data:Tgpointer);cdecl;
  T_GtkTreeModelFilter = TGtkTreeModelFilter;
  T_GtkTreeModelFilterClass = TGtkTreeModelFilterClass;
  T_GtkTreeModelFilterPrivate = TGtkTreeModelFilterPrivate;

  T_GtkTreeModelFilter = record
      parent : TGObject;cdecl;
      priv : ^TGtkTreeModelFilterPrivate;
    end;


  T_GtkTreeModelFilterClass = record
      parent_class : TGObjectClass;
      visible : function (self:PTGtkTreeModelFilter; child_model:PTGtkTreeModel; iter:PTGtkTreeIter):Tgboolean;cdecl;
      modify : procedure (self:PTGtkTreeModelFilter; child_model:PTGtkTreeModel; iter:PTGtkTreeIter; value:PTGValue; column:longint);cdecl;
      padding : array[0..7] of Tgpointer;
    end;



function gtk_tree_model_filter_get_type:TGType;cdecl;external;
function gtk_tree_model_filter_new(child_model:PTGtkTreeModel; root:PTGtkTreePath):^TGtkTreeModel;cdecl;external;
procedure gtk_tree_model_filter_set_visible_func(filter:PTGtkTreeModelFilter; func:TGtkTreeModelFilterVisibleFunc; data:Tgpointer; destroy:TGDestroyNotify);cdecl;external;
procedure gtk_tree_model_filter_set_modify_func(filter:PTGtkTreeModelFilter; n_columns:longint; types:PTGType; func:TGtkTreeModelFilterModifyFunc; data:Tgpointer; 
            destroy:TGDestroyNotify);cdecl;external;
procedure gtk_tree_model_filter_set_visible_column(filter:PTGtkTreeModelFilter; column:longint);cdecl;external;
function gtk_tree_model_filter_get_model(filter:PTGtkTreeModelFilter):^TGtkTreeModel;cdecl;external;

function gtk_tree_model_filter_convert_child_iter_to_iter(filter:PTGtkTreeModelFilter; filter_iter:PTGtkTreeIter; child_iter:PTGtkTreeIter):Tgboolean;cdecl;external;
procedure gtk_tree_model_filter_convert_iter_to_child_iter(filter:PTGtkTreeModelFilter; child_iter:PTGtkTreeIter; filter_iter:PTGtkTreeIter);cdecl;external;
function gtk_tree_model_filter_convert_child_path_to_path(filter:PTGtkTreeModelFilter; child_path:PTGtkTreePath):^TGtkTreePath;cdecl;external;
function gtk_tree_model_filter_convert_path_to_child_path(filter:PTGtkTreeModelFilter; filter_path:PTGtkTreePath):^TGtkTreePath;cdecl;external;

procedure gtk_tree_model_filter_refilter(filter:PTGtkTreeModelFilter);cdecl;external;
procedure gtk_tree_model_filter_clear_cache(filter:PTGtkTreeModelFilter);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkmultifilter.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkmultifilter.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkmultifilter.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGtkFilter  = ^GtkFilter;
PGtkMultiFilter  = ^GtkMultiFilter;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_MULTI_FILTER_H__}
//// {$define __GTK_MULTI_FILTER_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkfilter.h>}
//// {$include <gtk/gtktypes.h>}

function GTK_TYPE_MULTI_FILTER : longint; { return type might be wrong }

procedure gtk_multi_filter_append(self:PTGtkMultiFilter; filter:PTGtkFilter);cdecl;external;
procedure gtk_multi_filter_remove(self:PTGtkMultiFilter; position:Tguint);cdecl;external;
function GTK_TYPE_ANY_FILTER : longint; { return type might be wrong }

function gtk_any_filter_new:^TGtkAnyFilter;cdecl;external;
function GTK_TYPE_EVERY_FILTER : longint; { return type might be wrong }

function gtk_every_filter_new:^TGtkEveryFilter;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkgesturerotate.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkgesturerotate.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkgesturerotate.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGtkGestureRotate  = ^GtkGestureRotate;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_GESTURE_ROTATE_H__}
//// {$define __GTK_GESTURE_ROTATE_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkwidget.h>}
//// {$include <gtk/gtkgesture.h>}

function GTK_TYPE_GESTURE_ROTATE : longint; { return type might be wrong }

function GTK_GESTURE_ROTATE(o : longint) : longint;

function GTK_GESTURE_ROTATE_CLASS(k : longint) : longint;

function GTK_IS_GESTURE_ROTATE(o : longint) : longint;

function GTK_IS_GESTURE_ROTATE_CLASS(k : longint) : longint;

function GTK_GESTURE_ROTATE_GET_CLASS(o : longint) : longint;

type
  T_GtkGestureRotate = TGtkGestureRotate;
  T_GtkGestureRotateClass = TGtkGestureRotateClass;

function gtk_gesture_rotate_get_type:TGType;cdecl;external;
function gtk_gesture_rotate_new:^TGtkGesture;cdecl;external;
function gtk_gesture_rotate_get_angle_delta(gesture:PTGtkGestureRotate):Tdouble;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkpadcontroller.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkpadcontroller.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkpadcontroller.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGActionGroup  = ^GActionGroup;
PGdkDevice  = ^GdkDevice;
PGtkPadActionEntry  = ^GtkPadActionEntry;
PGtkPadController  = ^GtkPadController;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_PAD_CONTROLLER_H__}
//// {$define __GTK_PAD_CONTROLLER_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdk.h>}
//// {$include <gtk/gtkeventcontroller.h>}

function GTK_TYPE_PAD_CONTROLLER : longint; { return type might be wrong }

function GTK_PAD_CONTROLLER(o : longint) : longint;

function GTK_PAD_CONTROLLER_CLASS(k : longint) : longint;

function GTK_IS_PAD_CONTROLLER(o : longint) : longint;

function GTK_IS_PAD_CONTROLLER_CLASS(k : longint) : longint;

function GTK_PAD_CONTROLLER_GET_CLASS(o : longint) : longint;

type
  T_GtkPadController = TGtkPadController;
  T_GtkPadControllerClass = TGtkPadControllerClass;
  T_GtkPadActionEntry = TGtkPadActionEntry;


  TGtkPadActionType = (GTK_PAD_ACTION_BUTTON,GTK_PAD_ACTION_RING,
    GTK_PAD_ACTION_STRIP);

  T_GtkPadActionEntry = record
      _type : TGtkPadActionType;
      index : longint;
      mode : longint;
      _label : ^char;
      action_name : ^char;
    end;


function gtk_pad_controller_get_type:TGType;cdecl;external;
function gtk_pad_controller_new(group:PTGActionGroup; pad:PTGdkDevice):^TGtkPadController;cdecl;external;
procedure gtk_pad_controller_set_action_entries(controller:PTGtkPadController; entries:PTGtkPadActionEntry; n_entries:longint);cdecl;external;
procedure gtk_pad_controller_set_action(controller:PTGtkPadController; _type:TGtkPadActionType; index:longint; mode:longint; _label:Pchar; 
            action_name:Pchar);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtktestutils.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtktestutils.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtktestutils.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGtkWidget  = ^GtkWidget;
Pguint  = ^guint;
Plongint  = ^longint;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_TEST_UTILS_H__}
//// {$define __GTK_TEST_UTILS_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkwidget.h>}
//// {$include <gtk/gtkspinbutton.h>}


procedure gtk_test_init(argcp:Plongint; argvp:PPPchar; args:array of const);cdecl;external;
procedure gtk_test_init(argcp:Plongint; argvp:PPPchar);cdecl;external;
procedure gtk_test_register_all_types;cdecl;external;
function gtk_test_list_all_types(n_types:PTguint):^TGType;cdecl;external;
procedure gtk_test_widget_wait_for_draw(widget:PTGtkWidget);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkpicture.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkpicture.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkpicture.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGdkPaintable  = ^GdkPaintable;
PGdkPixbuf  = ^GdkPixbuf;
PGFile  = ^GFile;
PGtkPicture  = ^GtkPicture;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_PICTURE_H__}
//// {$define __GTK_PICTURE_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gio/gio.h>}
//// {$include <gtk/gtkwidget.h>}

function GTK_TYPE_PICTURE : longint; { return type might be wrong }

function gtk_picture_new:^TGtkWidget;cdecl;external;
function gtk_picture_new_for_paintable(paintable:PTGdkPaintable):^TGtkWidget;cdecl;external;
function gtk_picture_new_for_pixbuf(pixbuf:PTGdkPixbuf):^TGtkWidget;cdecl;external;
function gtk_picture_new_for_file(file:PTGFile):^TGtkWidget;cdecl;external;
function gtk_picture_new_for_filename(filename:Pchar):^TGtkWidget;cdecl;external;
function gtk_picture_new_for_resource(resource_path:Pchar):^TGtkWidget;cdecl;external;
procedure gtk_picture_set_paintable(self:PTGtkPicture; paintable:PTGdkPaintable);cdecl;external;
function gtk_picture_get_paintable(self:PTGtkPicture):^TGdkPaintable;cdecl;external;
procedure gtk_picture_set_file(self:PTGtkPicture; file:PTGFile);cdecl;external;
function gtk_picture_get_file(self:PTGtkPicture):^TGFile;cdecl;external;
procedure gtk_picture_set_filename(self:PTGtkPicture; filename:Pchar);cdecl;external;
procedure gtk_picture_set_resource(self:PTGtkPicture; resource_path:Pchar);cdecl;external;
procedure gtk_picture_set_pixbuf(self:PTGtkPicture; pixbuf:PTGdkPixbuf);cdecl;external;
procedure gtk_picture_set_keep_aspect_ratio(self:PTGtkPicture; keep_aspect_ratio:Tgboolean);cdecl;external;
function gtk_picture_get_keep_aspect_ratio(self:PTGtkPicture):Tgboolean;cdecl;external;
procedure gtk_picture_set_can_shrink(self:PTGtkPicture; can_shrink:Tgboolean);cdecl;external;
function gtk_picture_get_can_shrink(self:PTGtkPicture):Tgboolean;cdecl;external;
procedure gtk_picture_set_content_fit(self:PTGtkPicture; content_fit:TGtkContentFit);cdecl;external;
function gtk_picture_get_content_fit(self:PTGtkPicture):TGtkContentFit;cdecl;external;
procedure gtk_picture_set_alternative_text(self:PTGtkPicture; alternative_text:Pchar);cdecl;external;
function gtk_picture_get_alternative_text(self:PTGtkPicture):^char;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtksettings.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtksettings.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtksettings.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGdkDisplay  = ^GdkDisplay;
PGtkSettings  = ^GtkSettings;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_SETTINGS_H__}
//// {$define __GTK_SETTINGS_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdk.h>}
//// {$include <gtk/gtktypes.h>}


function GTK_TYPE_SETTINGS : longint; { return type might be wrong }

function GTK_SETTINGS(obj : longint) : longint;

function GTK_IS_SETTINGS(obj : longint) : longint;


function gtk_settings_get_type:TGType;cdecl;external;
function gtk_settings_get_default:^TGtkSettings;cdecl;external;
function gtk_settings_get_for_display(display:PTGdkDisplay):^TGtkSettings;cdecl;external;
procedure gtk_settings_reset_property(settings:PTGtkSettings; name:Pchar);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtktooltip.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtktooltip.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtktooltip.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGdkPaintable  = ^GdkPaintable;
PGdkRectangle  = ^GdkRectangle;
PGIcon  = ^GIcon;
PGtkTooltip  = ^GtkTooltip;
PGtkWidget  = ^GtkWidget;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_TOOLTIP_H__}
//// {$define __GTK_TOOLTIP_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkwindow.h>}

function GTK_TYPE_TOOLTIP : longint; { return type might be wrong }

function GTK_TOOLTIP(obj : longint) : longint;

function GTK_IS_TOOLTIP(obj : longint) : longint;

function gtk_tooltip_get_type:TGType;cdecl;external;
procedure gtk_tooltip_set_markup(tooltip:PTGtkTooltip; markup:Pchar);cdecl;external;
procedure gtk_tooltip_set_text(tooltip:PTGtkTooltip; text:Pchar);cdecl;external;
procedure gtk_tooltip_set_icon(tooltip:PTGtkTooltip; paintable:PTGdkPaintable);cdecl;external;
procedure gtk_tooltip_set_icon_from_icon_name(tooltip:PTGtkTooltip; icon_name:Pchar);cdecl;external;
procedure gtk_tooltip_set_icon_from_gicon(tooltip:PTGtkTooltip; gicon:PTGIcon);cdecl;external;
procedure gtk_tooltip_set_custom(tooltip:PTGtkTooltip; custom_widget:PTGtkWidget);cdecl;external;
procedure gtk_tooltip_set_tip_area(tooltip:PTGtkTooltip; rect:PTGdkRectangle);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkeditable.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkeditable.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkeditable.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGObject  = ^GObject;
PGObjectClass  = ^GObjectClass;
PGParamSpec  = ^GParamSpec;
PGtkEditable  = ^GtkEditable;
PGValue  = ^GValue;
Plongint  = ^longint;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef __GTK_EDITABLE_H__}
//// {$define __GTK_EDITABLE_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkwidget.h>}

function GTK_TYPE_EDITABLE : longint; { return type might be wrong }

function GTK_EDITABLE(obj : longint) : longint;

function GTK_IS_EDITABLE(obj : longint) : longint;

function GTK_EDITABLE_GET_IFACE(inst : longint) : longint;

type
  T_GtkEditable = TGtkEditable;

  T_GtkEditableInterface = TGtkEditableInterface;


  T_GtkEditableInterface = record
      base_iface : TGTypeInterface;
      insert_text : procedure (editable:PTGtkEditable; text:Pchar; length:longint; position:Plongint);cdecl;
      delete_text : procedure (editable:PTGtkEditable; start_pos:longint; end_pos:longint);cdecl;
      changed : procedure (editable:PTGtkEditable);cdecl;
      get_text : function (editable:PTGtkEditable):Pchar;cdecl;
      do_insert_text : procedure (editable:PTGtkEditable; text:Pchar; length:longint; position:Plongint);cdecl;
      do_delete_text : procedure (editable:PTGtkEditable; start_pos:longint; end_pos:longint);cdecl;
      get_selection_bounds : function (editable:PTGtkEditable; start_pos:Plongint; end_pos:Plongint):Tgboolean;cdecl;
      set_selection_bounds : procedure (editable:PTGtkEditable; start_pos:longint; end_pos:longint);cdecl;
      get_delegate : function (editable:PTGtkEditable):PTGtkEditable;cdecl;
    end;


function gtk_editable_get_type:TGType;cdecl;external;
function gtk_editable_get_text(editable:PTGtkEditable):^char;cdecl;external;
procedure gtk_editable_set_text(editable:PTGtkEditable; text:Pchar);cdecl;external;
function gtk_editable_get_chars(editable:PTGtkEditable; start_pos:longint; end_pos:longint):^char;cdecl;external;
procedure gtk_editable_insert_text(editable:PTGtkEditable; text:Pchar; length:longint; position:Plongint);cdecl;external;
procedure gtk_editable_delete_text(editable:PTGtkEditable; start_pos:longint; end_pos:longint);cdecl;external;
function gtk_editable_get_selection_bounds(editable:PTGtkEditable; start_pos:Plongint; end_pos:Plongint):Tgboolean;cdecl;external;
procedure gtk_editable_delete_selection(editable:PTGtkEditable);cdecl;external;
procedure gtk_editable_select_region(editable:PTGtkEditable; start_pos:longint; end_pos:longint);cdecl;external;
procedure gtk_editable_set_position(editable:PTGtkEditable; position:longint);cdecl;external;
function gtk_editable_get_position(editable:PTGtkEditable):longint;cdecl;external;
function gtk_editable_get_editable(editable:PTGtkEditable):Tgboolean;cdecl;external;
procedure gtk_editable_set_editable(editable:PTGtkEditable; is_editable:Tgboolean);cdecl;external;
function gtk_editable_get_alignment(editable:PTGtkEditable):single;cdecl;external;
procedure gtk_editable_set_alignment(editable:PTGtkEditable; xalign:single);cdecl;external;
function gtk_editable_get_width_chars(editable:PTGtkEditable):longint;cdecl;external;
procedure gtk_editable_set_width_chars(editable:PTGtkEditable; n_chars:longint);cdecl;external;
function gtk_editable_get_max_width_chars(editable:PTGtkEditable):longint;cdecl;external;
procedure gtk_editable_set_max_width_chars(editable:PTGtkEditable; n_chars:longint);cdecl;external;
function gtk_editable_get_enable_undo(editable:PTGtkEditable):Tgboolean;cdecl;external;
procedure gtk_editable_set_enable_undo(editable:PTGtkEditable; enable_undo:Tgboolean);cdecl;external;


type
  TGtkEditableProperties = (GTK_EDITABLE_PROP_TEXT,GTK_EDITABLE_PROP_CURSOR_POSITION,
    GTK_EDITABLE_PROP_SELECTION_BOUND,GTK_EDITABLE_PROP_EDITABLE,
    GTK_EDITABLE_PROP_WIDTH_CHARS,GTK_EDITABLE_PROP_MAX_WIDTH_CHARS,
    GTK_EDITABLE_PROP_XALIGN,GTK_EDITABLE_PROP_ENABLE_UNDO,
    GTK_EDITABLE_NUM_PROPERTIES);

function gtk_editable_install_properties(object_class:PTGObjectClass; first_prop:Tguint):Tguint;cdecl;external;
function gtk_editable_get_delegate(editable:PTGtkEditable):^TGtkEditable;cdecl;external;
procedure gtk_editable_init_delegate(editable:PTGtkEditable);cdecl;external;
procedure gtk_editable_finish_delegate(editable:PTGtkEditable);cdecl;external;
function gtk_editable_delegate_set_property(object:PTGObject; prop_id:Tguint; value:PTGValue; pspec:PTGParamSpec):Tgboolean;cdecl;external;
function gtk_editable_delegate_get_property(object:PTGObject; prop_id:Tguint; value:PTGValue; pspec:PTGParamSpec):Tgboolean;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkbuilder.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkbuilder.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkbuilder.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGError  = ^GError;
PGObject  = ^GObject;
PGParamSpec  = ^GParamSpec;
PGtkBuilder  = ^GtkBuilder;
PGtkBuilderScope  = ^GtkBuilderScope;
PGValue  = ^GValue;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_BUILDER_H__}
//// {$define __GTK_BUILDER_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkbuilderscope.h>}
//// {$include <gtk/gtkwidget.h>}

function GTK_TYPE_BUILDER : longint; { return type might be wrong }

function GTK_BUILDER(obj : longint) : longint;

function GTK_BUILDER_CLASS(klass : longint) : longint;

function GTK_IS_BUILDER(obj : longint) : longint;

function GTK_IS_BUILDER_CLASS(klass : longint) : longint;

function GTK_BUILDER_GET_CLASS(obj : longint) : longint;

function GTK_BUILDER_ERROR : longint; { return type might be wrong }

type
  T_GtkBuilderClass = TGtkBuilderClass;


  TGtkBuilderError = (GTK_BUILDER_ERROR_INVALID_TYPE_FUNCTION,
    GTK_BUILDER_ERROR_UNHANDLED_TAG,GTK_BUILDER_ERROR_MISSING_ATTRIBUTE,
    GTK_BUILDER_ERROR_INVALID_ATTRIBUTE,GTK_BUILDER_ERROR_INVALID_TAG,
    GTK_BUILDER_ERROR_MISSING_PROPERTY_VALUE,
    GTK_BUILDER_ERROR_INVALID_VALUE,GTK_BUILDER_ERROR_VERSION_MISMATCH,
    GTK_BUILDER_ERROR_DUPLICATE_ID,GTK_BUILDER_ERROR_OBJECT_TYPE_REFUSED,
    GTK_BUILDER_ERROR_TEMPLATE_MISMATCH,GTK_BUILDER_ERROR_INVALID_PROPERTY,
    GTK_BUILDER_ERROR_INVALID_SIGNAL,GTK_BUILDER_ERROR_INVALID_ID,
    GTK_BUILDER_ERROR_INVALID_FUNCTION);

function gtk_builder_error_quark:TGQuark;cdecl;external;
function gtk_builder_get_type:TGType;cdecl;external;
function gtk_builder_new:^TGtkBuilder;cdecl;external;
function gtk_builder_add_from_file(builder:PTGtkBuilder; filename:Pchar; error:PPTGError):Tgboolean;cdecl;external;
function gtk_builder_add_from_resource(builder:PTGtkBuilder; resource_path:Pchar; error:PPTGError):Tgboolean;cdecl;external;
function gtk_builder_add_from_string(builder:PTGtkBuilder; buffer:Pchar; length:Tgssize; error:PPTGError):Tgboolean;cdecl;external;
function gtk_builder_add_objects_from_file(builder:PTGtkBuilder; filename:Pchar; object_ids:PPchar; error:PPTGError):Tgboolean;cdecl;external;
function gtk_builder_add_objects_from_resource(builder:PTGtkBuilder; resource_path:Pchar; object_ids:PPchar; error:PPTGError):Tgboolean;cdecl;external;
function gtk_builder_add_objects_from_string(builder:PTGtkBuilder; buffer:Pchar; length:Tgssize; object_ids:PPchar; error:PPTGError):Tgboolean;cdecl;external;
function gtk_builder_get_object(builder:PTGtkBuilder; name:Pchar):^TGObject;cdecl;external;
function gtk_builder_get_objects(builder:PTGtkBuilder):^TGSList;cdecl;external;
procedure gtk_builder_expose_object(builder:PTGtkBuilder; name:Pchar; object:PTGObject);cdecl;external;
function gtk_builder_get_current_object(builder:PTGtkBuilder):^TGObject;cdecl;external;
procedure gtk_builder_set_current_object(builder:PTGtkBuilder; current_object:PTGObject);cdecl;external;
procedure gtk_builder_set_translation_domain(builder:PTGtkBuilder; domain:Pchar);cdecl;external;
function gtk_builder_get_translation_domain(builder:PTGtkBuilder):^char;cdecl;external;
function gtk_builder_get_scope(builder:PTGtkBuilder):^TGtkBuilderScope;cdecl;external;
procedure gtk_builder_set_scope(builder:PTGtkBuilder; scope:PTGtkBuilderScope);cdecl;external;
function gtk_builder_get_type_from_name(builder:PTGtkBuilder; type_name:Pchar):TGType;cdecl;external;
function gtk_builder_value_from_string(builder:PTGtkBuilder; pspec:PTGParamSpec; _string:Pchar; value:PTGValue; error:PPTGError):Tgboolean;cdecl;external;
function gtk_builder_value_from_string_type(builder:PTGtkBuilder; _type:TGType; _string:Pchar; value:PTGValue; error:PPTGError):Tgboolean;cdecl;external;
function gtk_builder_new_from_file(filename:Pchar):^TGtkBuilder;cdecl;external;
function gtk_builder_new_from_resource(resource_path:Pchar):^TGtkBuilder;cdecl;external;
function gtk_builder_new_from_string(_string:Pchar; length:Tgssize):^TGtkBuilder;cdecl;external;
function gtk_builder_create_closure(builder:PTGtkBuilder; function_name:Pchar; flags:TGtkBuilderClosureFlags; object:PTGObject; error:PPTGError):^TGClosure;cdecl;external;

function GTK_BUILDER_WARN_INVALID_CHILD_TYPE(object,_type : longint) : longint;

function gtk_builder_extend_with_template(builder:PTGtkBuilder; object:PTGObject; template_type:TGType; buffer:Pchar; length:Tgssize; 
           error:PPTGError):Tgboolean;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkprintsettings.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkprintsettings.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkprintsettings.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGError  = ^GError;
PGKeyFile  = ^GKeyFile;
PGtkPageRange  = ^GtkPageRange;
PGtkPaperSize  = ^GtkPaperSize;
PGtkPrintSettings  = ^GtkPrintSettings;
PGVariant  = ^GVariant;
Plongint  = ^longint;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_PRINT_SETTINGS_H__}
//// {$define __GTK_PRINT_SETTINGS_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkpapersize.h>}
type
  T_GtkPrintSettings = TGtkPrintSettings;

function GTK_TYPE_PRINT_SETTINGS : longint; { return type might be wrong }

function GTK_PRINT_SETTINGS(obj : longint) : longint;

function GTK_IS_PRINT_SETTINGS(obj : longint) : longint;

type

  TGtkPrintSettingsFunc = procedure (key:Pchar; value:Pchar; user_data:Tgpointer);cdecl;
  T_GtkPageRange = TGtkPageRange;

  T_GtkPageRange = record
      start : longint;cdecl;
      end : longint;
    end;


function gtk_print_settings_get_type:TGType;cdecl;external;
function gtk_print_settings_new:^TGtkPrintSettings;cdecl;external;
function gtk_print_settings_copy(other:PTGtkPrintSettings):^TGtkPrintSettings;cdecl;external;
function gtk_print_settings_new_from_file(file_name:Pchar; error:PPTGError):^TGtkPrintSettings;cdecl;external;
function gtk_print_settings_load_file(settings:PTGtkPrintSettings; file_name:Pchar; error:PPTGError):Tgboolean;cdecl;external;
function gtk_print_settings_to_file(settings:PTGtkPrintSettings; file_name:Pchar; error:PPTGError):Tgboolean;cdecl;external;
function gtk_print_settings_new_from_key_file(key_file:PTGKeyFile; group_name:Pchar; error:PPTGError):^TGtkPrintSettings;cdecl;external;
function gtk_print_settings_load_key_file(settings:PTGtkPrintSettings; key_file:PTGKeyFile; group_name:Pchar; error:PPTGError):Tgboolean;cdecl;external;
procedure gtk_print_settings_to_key_file(settings:PTGtkPrintSettings; key_file:PTGKeyFile; group_name:Pchar);cdecl;external;
function gtk_print_settings_has_key(settings:PTGtkPrintSettings; key:Pchar):Tgboolean;cdecl;external;
function gtk_print_settings_get(settings:PTGtkPrintSettings; key:Pchar):^char;cdecl;external;
procedure gtk_print_settings_set(settings:PTGtkPrintSettings; key:Pchar; value:Pchar);cdecl;external;
procedure gtk_print_settings_unset(settings:PTGtkPrintSettings; key:Pchar);cdecl;external;
procedure gtk_print_settings_foreach(settings:PTGtkPrintSettings; func:TGtkPrintSettingsFunc; user_data:Tgpointer);cdecl;external;
function gtk_print_settings_get_bool(settings:PTGtkPrintSettings; key:Pchar):Tgboolean;cdecl;external;
procedure gtk_print_settings_set_bool(settings:PTGtkPrintSettings; key:Pchar; value:Tgboolean);cdecl;external;
function gtk_print_settings_get_double(settings:PTGtkPrintSettings; key:Pchar):Tdouble;cdecl;external;
function gtk_print_settings_get_double_with_default(settings:PTGtkPrintSettings; key:Pchar; def:Tdouble):Tdouble;cdecl;external;
procedure gtk_print_settings_set_double(settings:PTGtkPrintSettings; key:Pchar; value:Tdouble);cdecl;external;
function gtk_print_settings_get_length(settings:PTGtkPrintSettings; key:Pchar; unit:TGtkUnit):Tdouble;cdecl;external;
procedure gtk_print_settings_set_length(settings:PTGtkPrintSettings; key:Pchar; value:Tdouble; unit:TGtkUnit);cdecl;external;
function gtk_print_settings_get_int(settings:PTGtkPrintSettings; key:Pchar):longint;cdecl;external;
function gtk_print_settings_get_int_with_default(settings:PTGtkPrintSettings; key:Pchar; def:longint):longint;cdecl;external;
procedure gtk_print_settings_set_int(settings:PTGtkPrintSettings; key:Pchar; value:longint);cdecl;external;
const
  GTK_PRINT_SETTINGS_PRINTER = 'printer';  
  GTK_PRINT_SETTINGS_ORIENTATION = 'orientation';  
  GTK_PRINT_SETTINGS_PAPER_FORMAT = 'paper-format';  
  GTK_PRINT_SETTINGS_PAPER_WIDTH = 'paper-width';  
  GTK_PRINT_SETTINGS_PAPER_HEIGHT = 'paper-height';  
  GTK_PRINT_SETTINGS_N_COPIES = 'n-copies';  
  GTK_PRINT_SETTINGS_DEFAULT_SOURCE = 'default-source';  
  GTK_PRINT_SETTINGS_QUALITY = 'quality';  
  GTK_PRINT_SETTINGS_RESOLUTION = 'resolution';  
  GTK_PRINT_SETTINGS_USE_COLOR = 'use-color';  
  GTK_PRINT_SETTINGS_DUPLEX = 'duplex';  
  GTK_PRINT_SETTINGS_COLLATE = 'collate';  
  GTK_PRINT_SETTINGS_REVERSE = 'reverse';  
  GTK_PRINT_SETTINGS_MEDIA_TYPE = 'media-type';  
  GTK_PRINT_SETTINGS_DITHER = 'dither';  
  GTK_PRINT_SETTINGS_SCALE = 'scale';  
  GTK_PRINT_SETTINGS_PRINT_PAGES = 'print-pages';  
  GTK_PRINT_SETTINGS_PAGE_RANGES = 'page-ranges';  
  GTK_PRINT_SETTINGS_PAGE_SET = 'page-set';  
  GTK_PRINT_SETTINGS_FINISHINGS = 'finishings';  
  GTK_PRINT_SETTINGS_NUMBER_UP = 'number-up';  
  GTK_PRINT_SETTINGS_NUMBER_UP_LAYOUT = 'number-up-layout';  
  GTK_PRINT_SETTINGS_OUTPUT_BIN = 'output-bin';  
  GTK_PRINT_SETTINGS_RESOLUTION_X = 'resolution-x';  
  GTK_PRINT_SETTINGS_RESOLUTION_Y = 'resolution-y';  
  GTK_PRINT_SETTINGS_PRINTER_LPI = 'printer-lpi';  

  GTK_PRINT_SETTINGS_OUTPUT_DIR = 'output-dir';  

  GTK_PRINT_SETTINGS_OUTPUT_BASENAME = 'output-basename';  

  GTK_PRINT_SETTINGS_OUTPUT_FILE_FORMAT = 'output-file-format';  

  GTK_PRINT_SETTINGS_OUTPUT_URI = 'output-uri';  
  GTK_PRINT_SETTINGS_WIN32_DRIVER_VERSION = 'win32-driver-version';  
  GTK_PRINT_SETTINGS_WIN32_DRIVER_EXTRA = 'win32-driver-extra';  


function gtk_print_settings_get_printer(settings:PTGtkPrintSettings):^char;cdecl;external;
procedure gtk_print_settings_set_printer(settings:PTGtkPrintSettings; printer:Pchar);cdecl;external;
function gtk_print_settings_get_orientation(settings:PTGtkPrintSettings):TGtkPageOrientation;cdecl;external;
procedure gtk_print_settings_set_orientation(settings:PTGtkPrintSettings; orientation:TGtkPageOrientation);cdecl;external;
function gtk_print_settings_get_paper_size(settings:PTGtkPrintSettings):^TGtkPaperSize;cdecl;external;
procedure gtk_print_settings_set_paper_size(settings:PTGtkPrintSettings; paper_size:PTGtkPaperSize);cdecl;external;
function gtk_print_settings_get_paper_width(settings:PTGtkPrintSettings; unit:TGtkUnit):Tdouble;cdecl;external;
procedure gtk_print_settings_set_paper_width(settings:PTGtkPrintSettings; width:Tdouble; unit:TGtkUnit);cdecl;external;
function gtk_print_settings_get_paper_height(settings:PTGtkPrintSettings; unit:TGtkUnit):Tdouble;cdecl;external;
procedure gtk_print_settings_set_paper_height(settings:PTGtkPrintSettings; height:Tdouble; unit:TGtkUnit);cdecl;external;
function gtk_print_settings_get_use_color(settings:PTGtkPrintSettings):Tgboolean;cdecl;external;
procedure gtk_print_settings_set_use_color(settings:PTGtkPrintSettings; use_color:Tgboolean);cdecl;external;
function gtk_print_settings_get_collate(settings:PTGtkPrintSettings):Tgboolean;cdecl;external;
procedure gtk_print_settings_set_collate(settings:PTGtkPrintSettings; collate:Tgboolean);cdecl;external;
function gtk_print_settings_get_reverse(settings:PTGtkPrintSettings):Tgboolean;cdecl;external;
procedure gtk_print_settings_set_reverse(settings:PTGtkPrintSettings; reverse:Tgboolean);cdecl;external;
function gtk_print_settings_get_duplex(settings:PTGtkPrintSettings):TGtkPrintDuplex;cdecl;external;
procedure gtk_print_settings_set_duplex(settings:PTGtkPrintSettings; duplex:TGtkPrintDuplex);cdecl;external;
function gtk_print_settings_get_quality(settings:PTGtkPrintSettings):TGtkPrintQuality;cdecl;external;
procedure gtk_print_settings_set_quality(settings:PTGtkPrintSettings; quality:TGtkPrintQuality);cdecl;external;
function gtk_print_settings_get_n_copies(settings:PTGtkPrintSettings):longint;cdecl;external;
procedure gtk_print_settings_set_n_copies(settings:PTGtkPrintSettings; num_copies:longint);cdecl;external;
function gtk_print_settings_get_number_up(settings:PTGtkPrintSettings):longint;cdecl;external;
procedure gtk_print_settings_set_number_up(settings:PTGtkPrintSettings; number_up:longint);cdecl;external;
function gtk_print_settings_get_number_up_layout(settings:PTGtkPrintSettings):TGtkNumberUpLayout;cdecl;external;
procedure gtk_print_settings_set_number_up_layout(settings:PTGtkPrintSettings; number_up_layout:TGtkNumberUpLayout);cdecl;external;
function gtk_print_settings_get_resolution(settings:PTGtkPrintSettings):longint;cdecl;external;
procedure gtk_print_settings_set_resolution(settings:PTGtkPrintSettings; resolution:longint);cdecl;external;
function gtk_print_settings_get_resolution_x(settings:PTGtkPrintSettings):longint;cdecl;external;
function gtk_print_settings_get_resolution_y(settings:PTGtkPrintSettings):longint;cdecl;external;
procedure gtk_print_settings_set_resolution_xy(settings:PTGtkPrintSettings; resolution_x:longint; resolution_y:longint);cdecl;external;
function gtk_print_settings_get_printer_lpi(settings:PTGtkPrintSettings):Tdouble;cdecl;external;
procedure gtk_print_settings_set_printer_lpi(settings:PTGtkPrintSettings; lpi:Tdouble);cdecl;external;
function gtk_print_settings_get_scale(settings:PTGtkPrintSettings):Tdouble;cdecl;external;
procedure gtk_print_settings_set_scale(settings:PTGtkPrintSettings; scale:Tdouble);cdecl;external;
function gtk_print_settings_get_print_pages(settings:PTGtkPrintSettings):TGtkPrintPages;cdecl;external;
procedure gtk_print_settings_set_print_pages(settings:PTGtkPrintSettings; pages:TGtkPrintPages);cdecl;external;
function gtk_print_settings_get_page_ranges(settings:PTGtkPrintSettings; num_ranges:Plongint):^TGtkPageRange;cdecl;external;
procedure gtk_print_settings_set_page_ranges(settings:PTGtkPrintSettings; page_ranges:PTGtkPageRange; num_ranges:longint);cdecl;external;
function gtk_print_settings_get_page_set(settings:PTGtkPrintSettings):TGtkPageSet;cdecl;external;
procedure gtk_print_settings_set_page_set(settings:PTGtkPrintSettings; page_set:TGtkPageSet);cdecl;external;
function gtk_print_settings_get_default_source(settings:PTGtkPrintSettings):^char;cdecl;external;
procedure gtk_print_settings_set_default_source(settings:PTGtkPrintSettings; default_source:Pchar);cdecl;external;
function gtk_print_settings_get_media_type(settings:PTGtkPrintSettings):^char;cdecl;external;
procedure gtk_print_settings_set_media_type(settings:PTGtkPrintSettings; media_type:Pchar);cdecl;external;
function gtk_print_settings_get_dither(settings:PTGtkPrintSettings):^char;cdecl;external;
procedure gtk_print_settings_set_dither(settings:PTGtkPrintSettings; dither:Pchar);cdecl;external;
function gtk_print_settings_get_finishings(settings:PTGtkPrintSettings):^char;cdecl;external;
procedure gtk_print_settings_set_finishings(settings:PTGtkPrintSettings; finishings:Pchar);cdecl;external;
function gtk_print_settings_get_output_bin(settings:PTGtkPrintSettings):^char;cdecl;external;
procedure gtk_print_settings_set_output_bin(settings:PTGtkPrintSettings; output_bin:Pchar);cdecl;external;
function gtk_print_settings_to_gvariant(settings:PTGtkPrintSettings):^TGVariant;cdecl;external;
function gtk_print_settings_new_from_gvariant(variant:PTGVariant):^TGtkPrintSettings;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkcenterlayout.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkcenterlayout.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkcenterlayout.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGtkCenterLayout  = ^GtkCenterLayout;
PGtkWidget  = ^GtkWidget;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$include <gtk/gtklayoutmanager.h>}

function GTK_TYPE_CENTER_LAYOUT : longint; { return type might be wrong }

function gtk_center_layout_new:^TGtkLayoutManager;cdecl;external;
procedure gtk_center_layout_set_orientation(self:PTGtkCenterLayout; orientation:TGtkOrientation);cdecl;external;
function gtk_center_layout_get_orientation(self:PTGtkCenterLayout):TGtkOrientation;cdecl;external;
procedure gtk_center_layout_set_baseline_position(self:PTGtkCenterLayout; baseline_position:TGtkBaselinePosition);cdecl;external;
function gtk_center_layout_get_baseline_position(self:PTGtkCenterLayout):TGtkBaselinePosition;cdecl;external;
procedure gtk_center_layout_set_start_widget(self:PTGtkCenterLayout; widget:PTGtkWidget);cdecl;external;
function gtk_center_layout_get_start_widget(self:PTGtkCenterLayout):^TGtkWidget;cdecl;external;
procedure gtk_center_layout_set_center_widget(self:PTGtkCenterLayout; widget:PTGtkWidget);cdecl;external;
function gtk_center_layout_get_center_widget(self:PTGtkCenterLayout):^TGtkWidget;cdecl;external;
procedure gtk_center_layout_set_end_widget(self:PTGtkCenterLayout; widget:PTGtkWidget);cdecl;external;
function gtk_center_layout_get_end_widget(self:PTGtkCenterLayout):^TGtkWidget;cdecl;external;

// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkappchooserwidget.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkappchooserwidget.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkappchooserwidget.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGtkAppChooserWidget  = ^GtkAppChooserWidget;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_APP_CHOOSER_WIDGET_H__}
//// {$define __GTK_APP_CHOOSER_WIDGET_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkwidget.h>}
//// {$include <gio/gio.h>}

function GTK_TYPE_APP_CHOOSER_WIDGET : longint; { return type might be wrong }

function GTK_APP_CHOOSER_WIDGET(obj : longint) : longint;

function GTK_IS_APP_CHOOSER_WIDGET(obj : longint) : longint;

type
  T_GtkAppChooserWidget = TGtkAppChooserWidget;

function gtk_app_chooser_widget_get_type:TGType;cdecl;external;
function gtk_app_chooser_widget_new(content_type:Pchar):^TGtkWidget;cdecl;external;
procedure gtk_app_chooser_widget_set_show_default(self:PTGtkAppChooserWidget; setting:Tgboolean);cdecl;external;
function gtk_app_chooser_widget_get_show_default(self:PTGtkAppChooserWidget):Tgboolean;cdecl;external;
procedure gtk_app_chooser_widget_set_show_recommended(self:PTGtkAppChooserWidget; setting:Tgboolean);cdecl;external;
function gtk_app_chooser_widget_get_show_recommended(self:PTGtkAppChooserWidget):Tgboolean;cdecl;external;
procedure gtk_app_chooser_widget_set_show_fallback(self:PTGtkAppChooserWidget; setting:Tgboolean);cdecl;external;
function gtk_app_chooser_widget_get_show_fallback(self:PTGtkAppChooserWidget):Tgboolean;cdecl;external;
procedure gtk_app_chooser_widget_set_show_other(self:PTGtkAppChooserWidget; setting:Tgboolean);cdecl;external;
function gtk_app_chooser_widget_get_show_other(self:PTGtkAppChooserWidget):Tgboolean;cdecl;external;
procedure gtk_app_chooser_widget_set_show_all(self:PTGtkAppChooserWidget; setting:Tgboolean);cdecl;external;
function gtk_app_chooser_widget_get_show_all(self:PTGtkAppChooserWidget):Tgboolean;cdecl;external;
procedure gtk_app_chooser_widget_set_default_text(self:PTGtkAppChooserWidget; text:Pchar);cdecl;external;
function gtk_app_chooser_widget_get_default_text(self:PTGtkAppChooserWidget):^char;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkwindowcontrols.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkwindowcontrols.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkwindowcontrols.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGtkWindowControls  = ^GtkWindowControls;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkwidget.h>}

function GTK_TYPE_WINDOW_CONTROLS : longint; { return type might be wrong }

function gtk_window_controls_new(side:TGtkPackType):^TGtkWidget;cdecl;external;
function gtk_window_controls_get_side(self:PTGtkWindowControls):TGtkPackType;cdecl;external;
procedure gtk_window_controls_set_side(self:PTGtkWindowControls; side:TGtkPackType);cdecl;external;
function gtk_window_controls_get_decoration_layout(self:PTGtkWindowControls):^char;cdecl;external;
procedure gtk_window_controls_set_decoration_layout(self:PTGtkWindowControls; layout:Pchar);cdecl;external;
function gtk_window_controls_get_empty(self:PTGtkWindowControls):Tgboolean;cdecl;external;

// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtktogglebutton.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtktogglebutton.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtktogglebutton.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGtkToggleButton  = ^GtkToggleButton;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef __GTK_TOGGLE_BUTTON_H__}
//// {$define __GTK_TOGGLE_BUTTON_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkbutton.h>}

function GTK_TYPE_TOGGLE_BUTTON : longint; { return type might be wrong }

function GTK_TOGGLE_BUTTON(obj : longint) : longint;

function GTK_TOGGLE_BUTTON_CLASS(klass : longint) : longint;

function GTK_IS_TOGGLE_BUTTON(obj : longint) : longint;

function GTK_IS_TOGGLE_BUTTON_CLASS(klass : longint) : longint;

function GTK_TOGGLE_BUTTON_GET_CLASS(obj : longint) : longint;

type
  T_GtkToggleButton = TGtkToggleButton;
  T_GtkToggleButtonClass = TGtkToggleButtonClass;

  T_GtkToggleButton = record
      button : TGtkButton;
    end;


  T_GtkToggleButtonClass = record
      parent_class : TGtkButtonClass;
      toggled : procedure (toggle_button:PTGtkToggleButton);cdecl;
      padding : array[0..7] of Tgpointer;
    end;


function gtk_toggle_button_get_type:TGType;cdecl;external;
function gtk_toggle_button_new:^TGtkWidget;cdecl;external;
function gtk_toggle_button_new_with_label(_label:Pchar):^TGtkWidget;cdecl;external;
function gtk_toggle_button_new_with_mnemonic(_label:Pchar):^TGtkWidget;cdecl;external;
procedure gtk_toggle_button_set_active(toggle_button:PTGtkToggleButton; is_active:Tgboolean);cdecl;external;
function gtk_toggle_button_get_active(toggle_button:PTGtkToggleButton):Tgboolean;cdecl;external;
procedure gtk_toggle_button_toggled(toggle_button:PTGtkToggleButton);cdecl;external;
procedure gtk_toggle_button_set_group(toggle_button:PTGtkToggleButton; group:PTGtkToggleButton);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkstringlist.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkstringlist.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkstringlist.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGtkStringList  = ^GtkStringList;
PGtkStringObject  = ^GtkStringObject;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_STRING_LIST_H__}
//// {$define __GTK_STRING_LIST_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gio/gio.h>}

//// {$include <gdk/gdk.h>}

function GTK_TYPE_STRING_OBJECT : longint; { return type might be wrong }

function gtk_string_object_new(_string:Pchar):^TGtkStringObject;cdecl;external;
function gtk_string_object_get_string(self:PTGtkStringObject):^char;cdecl;external;
function GTK_TYPE_STRING_LIST : longint; { return type might be wrong }

function gtk_string_list_new(strings:PPchar):^TGtkStringList;cdecl;external;
procedure gtk_string_list_append(self:PTGtkStringList; _string:Pchar);cdecl;external;
procedure gtk_string_list_take(self:PTGtkStringList; _string:Pchar);cdecl;external;
procedure gtk_string_list_remove(self:PTGtkStringList; position:Tguint);cdecl;external;
procedure gtk_string_list_splice(self:PTGtkStringList; position:Tguint; n_removals:Tguint; additions:PPchar);cdecl;external;
function gtk_string_list_get_string(self:PTGtkStringList; position:Tguint):^char;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkboxlayout.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkboxlayout.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkboxlayout.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGtkBoxLayout  = ^GtkBoxLayout;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkenums.h>}
//// {$include <gtk/gtklayoutmanager.h>}

function GTK_TYPE_BOX_LAYOUT : longint; { return type might be wrong }

function gtk_box_layout_new(orientation:TGtkOrientation):^TGtkLayoutManager;cdecl;external;
procedure gtk_box_layout_set_homogeneous(box_layout:PTGtkBoxLayout; homogeneous:Tgboolean);cdecl;external;
function gtk_box_layout_get_homogeneous(box_layout:PTGtkBoxLayout):Tgboolean;cdecl;external;
procedure gtk_box_layout_set_spacing(box_layout:PTGtkBoxLayout; spacing:Tguint);cdecl;external;
function gtk_box_layout_get_spacing(box_layout:PTGtkBoxLayout):Tguint;cdecl;external;
procedure gtk_box_layout_set_baseline_position(box_layout:PTGtkBoxLayout; position:TGtkBaselinePosition);cdecl;external;
function gtk_box_layout_get_baseline_position(box_layout:PTGtkBoxLayout):TGtkBaselinePosition;cdecl;external;

// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkmessagedialog.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkmessagedialog.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkmessagedialog.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGtkMessageDialog  = ^GtkMessageDialog;
PGtkWindow  = ^GtkWindow;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef __GTK_MESSAGE_DIALOG_H__}
//// {$define __GTK_MESSAGE_DIALOG_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkdialog.h>}
//// {$include <gtk/gtkenums.h>}

function GTK_TYPE_MESSAGE_DIALOG : longint; { return type might be wrong }

function GTK_MESSAGE_DIALOG(obj : longint) : longint;

function GTK_IS_MESSAGE_DIALOG(obj : longint) : longint;

type
  T_GtkMessageDialog = TGtkMessageDialog;
  T_GtkMessageDialogClass = TGtkMessageDialogClass;
  T_GtkMessageDialog = record
      parent_instance : TGtkDialog;
    end;



  TGtkButtonsType = (GTK_BUTTONS_NONE,GTK_BUTTONS_OK,GTK_BUTTONS_CLOSE,
    GTK_BUTTONS_CANCEL,GTK_BUTTONS_YES_NO,GTK_BUTTONS_OK_CANCEL
    );

function gtk_message_dialog_get_type:TGType;cdecl;external;
function gtk_message_dialog_new(parent:PTGtkWindow; flags:TGtkDialogFlags; _type:TGtkMessageType; buttons:TGtkButtonsType; message_format:Pchar; 
           args:array of const):^TGtkWidget;cdecl;external;
function gtk_message_dialog_new(parent:PTGtkWindow; flags:TGtkDialogFlags; _type:TGtkMessageType; buttons:TGtkButtonsType; message_format:Pchar):^TGtkWidget;cdecl;external;
function gtk_message_dialog_new_with_markup(parent:PTGtkWindow; flags:TGtkDialogFlags; _type:TGtkMessageType; buttons:TGtkButtonsType; message_format:Pchar; 
           args:array of const):^TGtkWidget;cdecl;external;
function gtk_message_dialog_new_with_markup(parent:PTGtkWindow; flags:TGtkDialogFlags; _type:TGtkMessageType; buttons:TGtkButtonsType; message_format:Pchar):^TGtkWidget;cdecl;external;
procedure gtk_message_dialog_set_markup(message_dialog:PTGtkMessageDialog; str:Pchar);cdecl;external;
procedure gtk_message_dialog_format_secondary_text(message_dialog:PTGtkMessageDialog; message_format:Pchar; args:array of const);cdecl;external;
procedure gtk_message_dialog_format_secondary_text(message_dialog:PTGtkMessageDialog; message_format:Pchar);cdecl;external;
procedure gtk_message_dialog_format_secondary_markup(message_dialog:PTGtkMessageDialog; message_format:Pchar; args:array of const);cdecl;external;
procedure gtk_message_dialog_format_secondary_markup(message_dialog:PTGtkMessageDialog; message_format:Pchar);cdecl;external;
function gtk_message_dialog_get_message_area(message_dialog:PTGtkMessageDialog):^TGtkWidget;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkfilefilter.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkfilefilter.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkfilefilter.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGtkFileFilter  = ^GtkFileFilter;
PGVariant  = ^GVariant;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_FILE_FILTER_H__}
//// {$define __GTK_FILE_FILTER_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <glib-object.h>}
//// {$include <gdk/gdk.h>}

function GTK_TYPE_FILE_FILTER : longint; { return type might be wrong }

function GTK_FILE_FILTER(obj : longint) : longint;

function GTK_IS_FILE_FILTER(obj : longint) : longint;

type
  T_GtkFileFilter = TGtkFileFilter;

function gtk_file_filter_get_type:TGType;cdecl;external;
function gtk_file_filter_new:^TGtkFileFilter;cdecl;external;
procedure gtk_file_filter_set_name(filter:PTGtkFileFilter; name:Pchar);cdecl;external;
function gtk_file_filter_get_name(filter:PTGtkFileFilter):^char;cdecl;external;
procedure gtk_file_filter_add_mime_type(filter:PTGtkFileFilter; mime_type:Pchar);cdecl;external;
procedure gtk_file_filter_add_pattern(filter:PTGtkFileFilter; pattern:Pchar);cdecl;external;
procedure gtk_file_filter_add_suffix(filter:PTGtkFileFilter; suffix:Pchar);cdecl;external;
procedure gtk_file_filter_add_pixbuf_formats(filter:PTGtkFileFilter);cdecl;external;
function gtk_file_filter_get_attributes(filter:PTGtkFileFilter):^^char;cdecl;external;
function gtk_file_filter_to_gvariant(filter:PTGtkFileFilter):^TGVariant;cdecl;external;
function gtk_file_filter_new_from_gvariant(variant:PTGVariant):^TGtkFileFilter;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkappchooser.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkappchooser.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkappchooser.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGtkAppChooser  = ^GtkAppChooser;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_APP_CHOOSER_H__}
//// {$define __GTK_APP_CHOOSER_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <glib.h>}
//// {$include <gio/gio.h>}
//// {$include <gdk/gdk.h>}

function GTK_TYPE_APP_CHOOSER : longint; { return type might be wrong }

function GTK_APP_CHOOSER(obj : longint) : longint;

function GTK_IS_APP_CHOOSER(obj : longint) : longint;

type
  T_GtkAppChooser = TGtkAppChooser;

function gtk_app_chooser_get_type:TGType;cdecl;external;
function gtk_app_chooser_get_app_info(self:PTGtkAppChooser):^TGAppInfo;cdecl;external;
function gtk_app_chooser_get_content_type(self:PTGtkAppChooser):^char;cdecl;external;
procedure gtk_app_chooser_refresh(self:PTGtkAppChooser);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtksizerequest.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtksizerequest.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtksizerequest.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGtkRequestedSize  = ^GtkRequestedSize;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_SIZE_REQUEST_H__}
//// {$define __GTK_SIZE_REQUEST_H__}
//// {$include <gtk/gtkwidget.h>}
type
  T_GtkRequestedSize = TGtkRequestedSize;

  T_GtkRequestedSize = record
      data : Tgpointer;
      minimum_size : longint;
      natural_size : longint;
    end;



function gtk_distribute_natural_allocation(extra_space:longint; n_requested_sizes:Tguint; sizes:PTGtkRequestedSize):longint;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkcalendar.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkcalendar.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkcalendar.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGDateTime  = ^GDateTime;
PGtkCalendar  = ^GtkCalendar;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef __GTK_CALENDAR_H__}
//// {$define __GTK_CALENDAR_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkwidget.h>}

function GTK_TYPE_CALENDAR : longint; { return type might be wrong }

function GTK_CALENDAR(obj : longint) : longint;

function GTK_IS_CALENDAR(obj : longint) : longint;

type
  T_GtkCalendar = TGtkCalendar;

function gtk_calendar_get_type:TGType;cdecl;external;
function gtk_calendar_new:^TGtkWidget;cdecl;external;
procedure gtk_calendar_select_day(self:PTGtkCalendar; date:PTGDateTime);cdecl;external;
procedure gtk_calendar_mark_day(calendar:PTGtkCalendar; day:Tguint);cdecl;external;
procedure gtk_calendar_unmark_day(calendar:PTGtkCalendar; day:Tguint);cdecl;external;
procedure gtk_calendar_clear_marks(calendar:PTGtkCalendar);cdecl;external;
procedure gtk_calendar_set_show_week_numbers(self:PTGtkCalendar; value:Tgboolean);cdecl;external;
function gtk_calendar_get_show_week_numbers(self:PTGtkCalendar):Tgboolean;cdecl;external;
procedure gtk_calendar_set_show_heading(self:PTGtkCalendar; value:Tgboolean);cdecl;external;
function gtk_calendar_get_show_heading(self:PTGtkCalendar):Tgboolean;cdecl;external;
procedure gtk_calendar_set_show_day_names(self:PTGtkCalendar; value:Tgboolean);cdecl;external;
function gtk_calendar_get_show_day_names(self:PTGtkCalendar):Tgboolean;cdecl;external;
function gtk_calendar_get_date(self:PTGtkCalendar):^TGDateTime;cdecl;external;
function gtk_calendar_get_day_is_marked(calendar:PTGtkCalendar; day:Tguint):Tgboolean;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkprintoperationpreview.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkprintoperationpreview.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkprintoperationpreview.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGtkPageSetup  = ^GtkPageSetup;
PGtkPrintContext  = ^GtkPrintContext;
PGtkPrintOperationPreview  = ^GtkPrintOperationPreview;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_PRINT_OPERATION_PREVIEW_H__}
//// {$define __GTK_PRINT_OPERATION_PREVIEW_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <cairo.h>}
//// {$include <gtk/gtkprintcontext.h>}

function GTK_TYPE_PRINT_OPERATION_PREVIEW : longint; { return type might be wrong }

function GTK_PRINT_OPERATION_PREVIEW(obj : longint) : longint;

function GTK_IS_PRINT_OPERATION_PREVIEW(obj : longint) : longint;

function GTK_PRINT_OPERATION_PREVIEW_GET_IFACE(obj : longint) : longint;

type
  T_GtkPrintOperationPreview = TGtkPrintOperationPreview;

  T_GtkPrintOperationPreviewIface = TGtkPrintOperationPreviewIface;



  T_GtkPrintOperationPreviewIface = record
      g_iface : TGTypeInterface;
      ready : procedure (preview:PTGtkPrintOperationPreview; context:PTGtkPrintContext);cdecl;
      got_page_size : procedure (preview:PTGtkPrintOperationPreview; context:PTGtkPrintContext; page_setup:PTGtkPageSetup);cdecl;
      render_page : procedure (preview:PTGtkPrintOperationPreview; page_nr:longint);cdecl;
      is_selected : function (preview:PTGtkPrintOperationPreview; page_nr:longint):Tgboolean;cdecl;
      end_preview : procedure (preview:PTGtkPrintOperationPreview);cdecl;
      _gtk_reserved1 : procedure ;cdecl;
      _gtk_reserved2 : procedure ;cdecl;
      _gtk_reserved3 : procedure ;cdecl;
      _gtk_reserved4 : procedure ;cdecl;
      _gtk_reserved5 : procedure ;cdecl;
      _gtk_reserved6 : procedure ;cdecl;
      _gtk_reserved7 : procedure ;cdecl;
      _gtk_reserved8 : procedure ;cdecl;
    end;


function gtk_print_operation_preview_get_type:TGType;cdecl;external;
procedure gtk_print_operation_preview_render_page(preview:PTGtkPrintOperationPreview; page_nr:longint);cdecl;external;
procedure gtk_print_operation_preview_end_preview(preview:PTGtkPrintOperationPreview);cdecl;external;
function gtk_print_operation_preview_is_selected(preview:PTGtkPrintOperationPreview; page_nr:longint):Tgboolean;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkwindowgroup.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkwindowgroup.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkwindowgroup.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGtkWindow  = ^GtkWindow;
PGtkWindowGroup  = ^GtkWindowGroup;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef __GTK_WINDOW_GROUP_H__}
//// {$define __GTK_WINDOW_GROUP_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include "gtkwindow.h"}

function GTK_TYPE_WINDOW_GROUP : longint; { return type might be wrong }

function GTK_WINDOW_GROUP(object : longint) : longint;

function GTK_WINDOW_GROUP_CLASS(klass : longint) : longint;

function GTK_IS_WINDOW_GROUP(object : longint) : longint;

function GTK_IS_WINDOW_GROUP_CLASS(klass : longint) : longint;

function GTK_WINDOW_GROUP_GET_CLASS(obj : longint) : longint;

type
  T_GtkWindowGroup = record
      parent_instance : TGObject;
      priv : ^TGtkWindowGroupPrivate;
    end;


  T_GtkWindowGroupClass = record
      parent_class : TGObjectClass;
      _gtk_reserved1 : procedure ;cdecl;
      _gtk_reserved2 : procedure ;cdecl;
      _gtk_reserved3 : procedure ;cdecl;
      _gtk_reserved4 : procedure ;cdecl;
    end;



function gtk_window_group_get_type:TGType;cdecl;external;
function gtk_window_group_new:^TGtkWindowGroup;cdecl;external;
procedure gtk_window_group_add_window(window_group:PTGtkWindowGroup; window:PTGtkWindow);cdecl;external;
procedure gtk_window_group_remove_window(window_group:PTGtkWindowGroup; window:PTGtkWindow);cdecl;external;
function gtk_window_group_list_windows(window_group:PTGtkWindowGroup):^TGList;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtksorter.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtksorter.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtksorter.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGtkSorter  = ^GtkSorter;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_SORTER_H__}
//// {$define __GTK_SORTER_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdk.h>}
//// {$include <gtk/gtkenums.h>}

type
  TGtkSorterOrder = (GTK_SORTER_ORDER_PARTIAL,GTK_SORTER_ORDER_NONE,
    GTK_SORTER_ORDER_TOTAL);


  TGtkSorterChange = (GTK_SORTER_CHANGE_DIFFERENT,GTK_SORTER_CHANGE_INVERTED,
    GTK_SORTER_CHANGE_LESS_STRICT,GTK_SORTER_CHANGE_MORE_STRICT
    );

function GTK_TYPE_SORTER : longint; { return type might be wrong }




type
  T_GtkSorterClass = record
      parent_class : TGObjectClass;
      compare : function (self:PTGtkSorter; item1:Tgpointer; item2:Tgpointer):TGtkOrdering;cdecl;
      get_order : function (self:PTGtkSorter):TGtkSorterOrder;cdecl;
      _gtk_reserved1 : procedure ;cdecl;
      _gtk_reserved2 : procedure ;cdecl;
      _gtk_reserved3 : procedure ;cdecl;
      _gtk_reserved4 : procedure ;cdecl;
      _gtk_reserved5 : procedure ;cdecl;
      _gtk_reserved6 : procedure ;cdecl;
      _gtk_reserved7 : procedure ;cdecl;
      _gtk_reserved8 : procedure ;cdecl;
    end;


function gtk_sorter_compare(self:PTGtkSorter; item1:Tgpointer; item2:Tgpointer):TGtkOrdering;cdecl;external;
function gtk_sorter_get_order(self:PTGtkSorter):TGtkSorterOrder;cdecl;external;

procedure gtk_sorter_changed(self:PTGtkSorter; change:TGtkSorterChange);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkcolumnview.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkcolumnview.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkcolumnview.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGtkColumnView  = ^GtkColumnView;
PGtkColumnViewColumn  = ^GtkColumnViewColumn;
PGtkSelectionModel  = ^GtkSelectionModel;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_COLUMN_VIEW_H__}
//// {$define __GTK_COLUMN_VIEW_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtktypes.h>}
//// {$include <gtk/gtksortlistmodel.h>}
//// {$include <gtk/gtkselectionmodel.h>}
//// {$include <gtk/gtksorter.h>}

function GTK_TYPE_COLUMN_VIEW : longint; { return type might be wrong }

function GTK_COLUMN_VIEW(o : longint) : longint;

function GTK_COLUMN_VIEW_CLASS(k : longint) : longint;

function GTK_IS_COLUMN_VIEW(o : longint) : longint;

function GTK_IS_COLUMN_VIEW_CLASS(k : longint) : longint;

function GTK_COLUMN_VIEW_GET_CLASS(o : longint) : longint;

type
  T_GtkColumnView = TGtkColumnView;
  T_GtkColumnViewClass = TGtkColumnViewClass;

  T_GtkColumnViewColumn = TGtkColumnViewColumn;

function gtk_column_view_get_type:TGType;cdecl;external;
function gtk_column_view_new(model:PTGtkSelectionModel):^TGtkWidget;cdecl;external;
function gtk_column_view_get_columns(self:PTGtkColumnView):^TGListModel;cdecl;external;
procedure gtk_column_view_append_column(self:PTGtkColumnView; column:PTGtkColumnViewColumn);cdecl;external;
procedure gtk_column_view_remove_column(self:PTGtkColumnView; column:PTGtkColumnViewColumn);cdecl;external;
procedure gtk_column_view_insert_column(self:PTGtkColumnView; position:Tguint; column:PTGtkColumnViewColumn);cdecl;external;
function gtk_column_view_get_model(self:PTGtkColumnView):^TGtkSelectionModel;cdecl;external;
procedure gtk_column_view_set_model(self:PTGtkColumnView; model:PTGtkSelectionModel);cdecl;external;
function gtk_column_view_get_show_row_separators(self:PTGtkColumnView):Tgboolean;cdecl;external;
procedure gtk_column_view_set_show_row_separators(self:PTGtkColumnView; show_row_separators:Tgboolean);cdecl;external;
function gtk_column_view_get_show_column_separators(self:PTGtkColumnView):Tgboolean;cdecl;external;
procedure gtk_column_view_set_show_column_separators(self:PTGtkColumnView; show_column_separators:Tgboolean);cdecl;external;
function gtk_column_view_get_sorter(self:PTGtkColumnView):^TGtkSorter;cdecl;external;
procedure gtk_column_view_sort_by_column(self:PTGtkColumnView; column:PTGtkColumnViewColumn; direction:TGtkSortType);cdecl;external;
procedure gtk_column_view_set_single_click_activate(self:PTGtkColumnView; single_click_activate:Tgboolean);cdecl;external;
function gtk_column_view_get_single_click_activate(self:PTGtkColumnView):Tgboolean;cdecl;external;
procedure gtk_column_view_set_reorderable(self:PTGtkColumnView; reorderable:Tgboolean);cdecl;external;
function gtk_column_view_get_reorderable(self:PTGtkColumnView):Tgboolean;cdecl;external;
procedure gtk_column_view_set_enable_rubberband(self:PTGtkColumnView; enable_rubberband:Tgboolean);cdecl;external;
function gtk_column_view_get_enable_rubberband(self:PTGtkColumnView):Tgboolean;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtklayoutchild.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtklayoutchild.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtklayoutchild.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGtkLayoutChild  = ^GtkLayoutChild;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}


//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtktypes.h>}

function GTK_TYPE_LAYOUT_CHILD : longint; { return type might be wrong }


type
  T_GtkLayoutChildClass = record
      parent_class : TGObjectClass;
    end;


function gtk_layout_child_get_layout_manager(layout_child:PTGtkLayoutChild):^TGtkLayoutManager;cdecl;external;
function gtk_layout_child_get_child_widget(layout_child:PTGtkLayoutChild):^TGtkWidget;cdecl;external;

// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkcenterbox.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkcenterbox.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkcenterbox.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGtkCenterBox  = ^GtkCenterBox;
PGtkWidget  = ^GtkWidget;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_CENTER_BOX_H__}
//// {$define __GTK_CENTER_BOX_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include "gtkwidget.h"}

function GTK_TYPE_CENTER_BOX : longint; { return type might be wrong }

function GTK_CENTER_BOX(obj : longint) : longint;

function GTK_CENTER_BOX_CLASS(klass : longint) : longint;

function GTK_IS_CENTER_BOX(obj : longint) : longint;

function GTK_IS_CENTER_BOX_CLASS(klass : longint) : longint;

function GTK_CENTER_BOX_GET_CLASS(obj : longint) : longint;

type
  T_GtkCenterBox = TGtkCenterBox;
  T_GtkCenterBoxClass = TGtkCenterBoxClass;

function gtk_center_box_get_type:TGType;cdecl;external;
function gtk_center_box_new:^TGtkWidget;cdecl;external;
procedure gtk_center_box_set_start_widget(self:PTGtkCenterBox; child:PTGtkWidget);cdecl;external;
procedure gtk_center_box_set_center_widget(self:PTGtkCenterBox; child:PTGtkWidget);cdecl;external;
procedure gtk_center_box_set_end_widget(self:PTGtkCenterBox; child:PTGtkWidget);cdecl;external;
function gtk_center_box_get_start_widget(self:PTGtkCenterBox):^TGtkWidget;cdecl;external;
function gtk_center_box_get_center_widget(self:PTGtkCenterBox):^TGtkWidget;cdecl;external;
function gtk_center_box_get_end_widget(self:PTGtkCenterBox):^TGtkWidget;cdecl;external;
procedure gtk_center_box_set_baseline_position(self:PTGtkCenterBox; position:TGtkBaselinePosition);cdecl;external;
function gtk_center_box_get_baseline_position(self:PTGtkCenterBox):TGtkBaselinePosition;cdecl;external;
//// {$endif}

// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtksignallistitemfactory.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtksignallistitemfactory.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtksignallistitemfactory.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_SIGNAL_LIST_ITEM_FACTORY_H__}
//// {$define __GTK_SIGNAL_LIST_ITEM_FACTORY_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtklistitemfactory.h>}

function GTK_TYPE_SIGNAL_LIST_ITEM_FACTORY : longint; { return type might be wrong }

function GTK_SIGNAL_LIST_ITEM_FACTORY(o : longint) : longint;

function GTK_SIGNAL_LIST_ITEM_FACTORY_CLASS(k : longint) : longint;

function GTK_IS_SIGNAL_LIST_ITEM_FACTORY(o : longint) : longint;

function GTK_IS_SIGNAL_LIST_ITEM_FACTORY_CLASS(k : longint) : longint;

function GTK_SIGNAL_LIST_ITEM_FACTORY_GET_CLASS(o : longint) : longint;

type
  T_GtkSignalListItemFactory = TGtkSignalListItemFactory;
  T_GtkSignalListItemFactoryClass = TGtkSignalListItemFactoryClass;

function gtk_signal_list_item_factory_get_type:TGType;cdecl;external;
function gtk_signal_list_item_factory_new:^TGtkListItemFactory;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkadjustment.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkadjustment.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkadjustment.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGtkAdjustment  = ^GtkAdjustment;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef __GTK_ADJUSTMENT_H__}
//// {$define __GTK_ADJUSTMENT_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdk.h>}
//// {$include <gtk/gtktypes.h>}

function GTK_TYPE_ADJUSTMENT : longint; { return type might be wrong }

function GTK_ADJUSTMENT(obj : longint) : longint;

function GTK_ADJUSTMENT_CLASS(klass : longint) : longint;

function GTK_IS_ADJUSTMENT(obj : longint) : longint;

function GTK_IS_ADJUSTMENT_CLASS(klass : longint) : longint;

function GTK_ADJUSTMENT_GET_CLASS(obj : longint) : longint;

type
  T_GtkAdjustmentClass = TGtkAdjustmentClass;
  T_GtkAdjustment = record
      parent_instance : TGInitiallyUnowned;
    end;


  T_GtkAdjustmentClass = record
      parent_class : TGInitiallyUnownedClass;
      changed : procedure (adjustment:PTGtkAdjustment);cdecl;
      value_changed : procedure (adjustment:PTGtkAdjustment);cdecl;
      _gtk_reserved1 : procedure ;cdecl;
      _gtk_reserved2 : procedure ;cdecl;
      _gtk_reserved3 : procedure ;cdecl;
      _gtk_reserved4 : procedure ;cdecl;
    end;


function gtk_adjustment_get_type:TGType;cdecl;external;
function gtk_adjustment_new(value:Tdouble; lower:Tdouble; upper:Tdouble; step_increment:Tdouble; page_increment:Tdouble; 
           page_size:Tdouble):^TGtkAdjustment;cdecl;external;
procedure gtk_adjustment_clamp_page(adjustment:PTGtkAdjustment; lower:Tdouble; upper:Tdouble);cdecl;external;
function gtk_adjustment_get_value(adjustment:PTGtkAdjustment):Tdouble;cdecl;external;
procedure gtk_adjustment_set_value(adjustment:PTGtkAdjustment; value:Tdouble);cdecl;external;
function gtk_adjustment_get_lower(adjustment:PTGtkAdjustment):Tdouble;cdecl;external;
procedure gtk_adjustment_set_lower(adjustment:PTGtkAdjustment; lower:Tdouble);cdecl;external;
function gtk_adjustment_get_upper(adjustment:PTGtkAdjustment):Tdouble;cdecl;external;
procedure gtk_adjustment_set_upper(adjustment:PTGtkAdjustment; upper:Tdouble);cdecl;external;
function gtk_adjustment_get_step_increment(adjustment:PTGtkAdjustment):Tdouble;cdecl;external;
procedure gtk_adjustment_set_step_increment(adjustment:PTGtkAdjustment; step_increment:Tdouble);cdecl;external;
function gtk_adjustment_get_page_increment(adjustment:PTGtkAdjustment):Tdouble;cdecl;external;
procedure gtk_adjustment_set_page_increment(adjustment:PTGtkAdjustment; page_increment:Tdouble);cdecl;external;
function gtk_adjustment_get_page_size(adjustment:PTGtkAdjustment):Tdouble;cdecl;external;
procedure gtk_adjustment_set_page_size(adjustment:PTGtkAdjustment; page_size:Tdouble);cdecl;external;
procedure gtk_adjustment_configure(adjustment:PTGtkAdjustment; value:Tdouble; lower:Tdouble; upper:Tdouble; step_increment:Tdouble; 
            page_increment:Tdouble; page_size:Tdouble);cdecl;external;
function gtk_adjustment_get_minimum_increment(adjustment:PTGtkAdjustment):Tdouble;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkstatusbar.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkstatusbar.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkstatusbar.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGtkStatusbar  = ^GtkStatusbar;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef __GTK_STATUSBAR_H__}
//// {$define __GTK_STATUSBAR_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkwidget.h>}

function GTK_TYPE_STATUSBAR : longint; { return type might be wrong }

function GTK_STATUSBAR(obj : longint) : longint;

function GTK_IS_STATUSBAR(obj : longint) : longint;

type
  T_GtkStatusbar = TGtkStatusbar;

function gtk_statusbar_get_type:TGType;cdecl;external;
function gtk_statusbar_new:^TGtkWidget;cdecl;external;
function gtk_statusbar_get_context_id(statusbar:PTGtkStatusbar; context_description:Pchar):Tguint;cdecl;external;
function gtk_statusbar_push(statusbar:PTGtkStatusbar; context_id:Tguint; text:Pchar):Tguint;cdecl;external;
procedure gtk_statusbar_pop(statusbar:PTGtkStatusbar; context_id:Tguint);cdecl;external;
procedure gtk_statusbar_remove(statusbar:PTGtkStatusbar; context_id:Tguint; message_id:Tguint);cdecl;external;
procedure gtk_statusbar_remove_all(statusbar:PTGtkStatusbar; context_id:Tguint);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkshortcutmanager.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkshortcutmanager.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkshortcutmanager.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGtkShortcutController  = ^GtkShortcutController;
PGtkShortcutManager  = ^GtkShortcutManager;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_SHORTCUT_MANAGER_H__}
//// {$define __GTK_SHORTCUT_MANAGER_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkshortcutcontroller.h>}
//// {$include <gtk/gtkwidget.h>}

function GTK_TYPE_SHORTCUT_MANAGER : longint; { return type might be wrong }




type
  T_GtkShortcutManagerInterface = record
      g_iface : TGTypeInterface;
      add_controller : procedure (self:PTGtkShortcutManager; controller:PTGtkShortcutController);cdecl;
      remove_controller : procedure (self:PTGtkShortcutManager; controller:PTGtkShortcutController);cdecl;
    end;

//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkshortcutsshortcut.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkshortcutsshortcut.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkshortcutsshortcut.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef GTK_SHORTCUTS_SHORTCUT_H}
//// {$define GTK_SHORTCUTS_SHORTCUT_H}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdk.h>}

function GTK_TYPE_SHORTCUTS_SHORTCUT : longint; { return type might be wrong }

function GTK_SHORTCUTS_SHORTCUT(obj : longint) : longint;

function GTK_IS_SHORTCUTS_SHORTCUT(obj : longint) : longint;

type
  T_GtkShortcutsShortcut = TGtkShortcutsShortcut;
  T_GtkShortcutsShortcutClass = TGtkShortcutsShortcutClass;


  TGtkShortcutType = (GTK_SHORTCUT_ACCELERATOR,GTK_SHORTCUT_GESTURE_PINCH,
    GTK_SHORTCUT_GESTURE_STRETCH,GTK_SHORTCUT_GESTURE_ROTATE_CLOCKWISE,
    GTK_SHORTCUT_GESTURE_ROTATE_COUNTERCLOCKWISE,
    GTK_SHORTCUT_GESTURE_TWO_FINGER_SWIPE_LEFT,
    GTK_SHORTCUT_GESTURE_TWO_FINGER_SWIPE_RIGHT,
    GTK_SHORTCUT_GESTURE,GTK_SHORTCUT_GESTURE_SWIPE_LEFT,
    GTK_SHORTCUT_GESTURE_SWIPE_RIGHT);

function gtk_shortcuts_shortcut_get_type:TGType;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkcellrendererspinner.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkcellrendererspinner.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkcellrendererspinner.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_CELL_RENDERER_SPINNER_H__}
//// {$define __GTK_CELL_RENDERER_SPINNER_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkcellrenderer.h>}

function GTK_TYPE_CELL_RENDERER_SPINNER : longint; { return type might be wrong }

function GTK_CELL_RENDERER_SPINNER(obj : longint) : longint;

function GTK_IS_CELL_RENDERER_SPINNER(obj : longint) : longint;

type
  T_GtkCellRendererSpinner = TGtkCellRendererSpinner;

function gtk_cell_renderer_spinner_get_type:TGType;cdecl;external;
function gtk_cell_renderer_spinner_new:^TGtkCellRenderer;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkfontchooser.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkfontchooser.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkfontchooser.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGtkFontChooser  = ^GtkFontChooser;
PPangoFontDescription  = ^PangoFontDescription;
PPangoFontFace  = ^PangoFontFace;
PPangoFontFamily  = ^PangoFontFamily;
PPangoFontMap  = ^PangoFontMap;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_FONT_CHOOSER_H__}
//// {$define __GTK_FONT_CHOOSER_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkwidget.h>}

type

  TGtkFontFilterFunc = function (family:PTPangoFontFamily; face:PTPangoFontFace; data:Tgpointer):Tgboolean;cdecl;


  TGtkFontChooserLevel = (GTK_FONT_CHOOSER_LEVEL_FAMILY := 0,GTK_FONT_CHOOSER_LEVEL_STYLE := 1 shl 0,
    GTK_FONT_CHOOSER_LEVEL_SIZE := 1 shl 1,GTK_FONT_CHOOSER_LEVEL_VARIATIONS := 1 shl 2,
    GTK_FONT_CHOOSER_LEVEL_FEATURES := 1 shl 3
    );

function GTK_TYPE_FONT_CHOOSER : longint; { return type might be wrong }

function GTK_FONT_CHOOSER(obj : longint) : longint;

function GTK_IS_FONT_CHOOSER(obj : longint) : longint;

function GTK_FONT_CHOOSER_GET_IFACE(inst : longint) : longint;

type
  T_GtkFontChooser = TGtkFontChooser;

  T_GtkFontChooserIface = TGtkFontChooserIface;





  T_GtkFontChooserIface = record
      base_iface : TGTypeInterface;
      get_font_family : function (fontchooser:PTGtkFontChooser):PTPangoFontFamily;cdecl;
      get_font_face : function (fontchooser:PTGtkFontChooser):PTPangoFontFace;cdecl;
      get_font_size : function (fontchooser:PTGtkFontChooser):longint;cdecl;
      set_filter_func : procedure (fontchooser:PTGtkFontChooser; filter:TGtkFontFilterFunc; user_data:Tgpointer; destroy:TGDestroyNotify);cdecl;
      font_activated : procedure (chooser:PTGtkFontChooser; fontname:Pchar);cdecl;
      set_font_map : procedure (fontchooser:PTGtkFontChooser; fontmap:PTPangoFontMap);cdecl;
      get_font_map : function (fontchooser:PTGtkFontChooser):PTPangoFontMap;cdecl;
      padding : array[0..9] of Tgpointer;
    end;


function gtk_font_chooser_get_type:TGType;cdecl;external;
function gtk_font_chooser_get_font_family(fontchooser:PTGtkFontChooser):^TPangoFontFamily;cdecl;external;
function gtk_font_chooser_get_font_face(fontchooser:PTGtkFontChooser):^TPangoFontFace;cdecl;external;
function gtk_font_chooser_get_font_size(fontchooser:PTGtkFontChooser):longint;cdecl;external;
function gtk_font_chooser_get_font_desc(fontchooser:PTGtkFontChooser):^TPangoFontDescription;cdecl;external;
procedure gtk_font_chooser_set_font_desc(fontchooser:PTGtkFontChooser; font_desc:PTPangoFontDescription);cdecl;external;
function gtk_font_chooser_get_font(fontchooser:PTGtkFontChooser):^char;cdecl;external;
procedure gtk_font_chooser_set_font(fontchooser:PTGtkFontChooser; fontname:Pchar);cdecl;external;
function gtk_font_chooser_get_preview_text(fontchooser:PTGtkFontChooser):^char;cdecl;external;
procedure gtk_font_chooser_set_preview_text(fontchooser:PTGtkFontChooser; text:Pchar);cdecl;external;
function gtk_font_chooser_get_show_preview_entry(fontchooser:PTGtkFontChooser):Tgboolean;cdecl;external;
procedure gtk_font_chooser_set_show_preview_entry(fontchooser:PTGtkFontChooser; show_preview_entry:Tgboolean);cdecl;external;
procedure gtk_font_chooser_set_filter_func(fontchooser:PTGtkFontChooser; filter:TGtkFontFilterFunc; user_data:Tgpointer; destroy:TGDestroyNotify);cdecl;external;
procedure gtk_font_chooser_set_font_map(fontchooser:PTGtkFontChooser; fontmap:PTPangoFontMap);cdecl;external;
function gtk_font_chooser_get_font_map(fontchooser:PTGtkFontChooser):^TPangoFontMap;cdecl;external;
procedure gtk_font_chooser_set_level(fontchooser:PTGtkFontChooser; level:TGtkFontChooserLevel);cdecl;external;
function gtk_font_chooser_get_level(fontchooser:PTGtkFontChooser):TGtkFontChooserLevel;cdecl;external;
function gtk_font_chooser_get_font_features(fontchooser:PTGtkFontChooser):^char;cdecl;external;
function gtk_font_chooser_get_language(fontchooser:PTGtkFontChooser):^char;cdecl;external;
procedure gtk_font_chooser_set_language(fontchooser:PTGtkFontChooser; language:Pchar);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkbox.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkbox.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkbox.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGtkBox  = ^GtkBox;
PGtkWidget  = ^GtkWidget;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef __GTK_BOX_H__}
//// {$define __GTK_BOX_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkwidget.h>}

function GTK_TYPE_BOX : longint; { return type might be wrong }

function GTK_BOX(obj : longint) : longint;

function GTK_BOX_CLASS(klass : longint) : longint;

function GTK_IS_BOX(obj : longint) : longint;

function GTK_IS_BOX_CLASS(klass : longint) : longint;

function GTK_BOX_GET_CLASS(obj : longint) : longint;

type
  T_GtkBox = TGtkBox;
  T_GtkBoxClass = TGtkBoxClass;
  T_GtkBox = record
      parent_instance : TGtkWidget;
    end;



  T_GtkBoxClass = record
      parent_class : TGtkWidgetClass;
      padding : array[0..7] of Tgpointer;
    end;


function gtk_box_get_type:TGType;cdecl;external;
function gtk_box_new(orientation:TGtkOrientation; spacing:longint):^TGtkWidget;cdecl;external;
procedure gtk_box_set_homogeneous(box:PTGtkBox; homogeneous:Tgboolean);cdecl;external;
function gtk_box_get_homogeneous(box:PTGtkBox):Tgboolean;cdecl;external;
procedure gtk_box_set_spacing(box:PTGtkBox; spacing:longint);cdecl;external;
function gtk_box_get_spacing(box:PTGtkBox):longint;cdecl;external;
procedure gtk_box_set_baseline_position(box:PTGtkBox; position:TGtkBaselinePosition);cdecl;external;
function gtk_box_get_baseline_position(box:PTGtkBox):TGtkBaselinePosition;cdecl;external;
procedure gtk_box_append(box:PTGtkBox; child:PTGtkWidget);cdecl;external;
procedure gtk_box_prepend(box:PTGtkBox; child:PTGtkWidget);cdecl;external;
procedure gtk_box_remove(box:PTGtkBox; child:PTGtkWidget);cdecl;external;
procedure gtk_box_insert_child_after(box:PTGtkBox; child:PTGtkWidget; sibling:PTGtkWidget);cdecl;external;
procedure gtk_box_reorder_child_after(box:PTGtkBox; child:PTGtkWidget; sibling:PTGtkWidget);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkaspectframe.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkaspectframe.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkaspectframe.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGtkAspectFrame  = ^GtkAspectFrame;
PGtkWidget  = ^GtkWidget;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef __GTK_ASPECT_FRAME_H__}
//// {$define __GTK_ASPECT_FRAME_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkwidget.h>}

function GTK_TYPE_ASPECT_FRAME : longint; { return type might be wrong }

function GTK_ASPECT_FRAME(obj : longint) : longint;

function GTK_IS_ASPECT_FRAME(obj : longint) : longint;

type
  T_GtkAspectFrame = TGtkAspectFrame;

function gtk_aspect_frame_get_type:TGType;cdecl;external;
function gtk_aspect_frame_new(xalign:single; yalign:single; ratio:single; obey_child:Tgboolean):^TGtkWidget;cdecl;external;
procedure gtk_aspect_frame_set_xalign(self:PTGtkAspectFrame; xalign:single);cdecl;external;
function gtk_aspect_frame_get_xalign(self:PTGtkAspectFrame):single;cdecl;external;
procedure gtk_aspect_frame_set_yalign(self:PTGtkAspectFrame; yalign:single);cdecl;external;
function gtk_aspect_frame_get_yalign(self:PTGtkAspectFrame):single;cdecl;external;
procedure gtk_aspect_frame_set_ratio(self:PTGtkAspectFrame; ratio:single);cdecl;external;
function gtk_aspect_frame_get_ratio(self:PTGtkAspectFrame):single;cdecl;external;
procedure gtk_aspect_frame_set_obey_child(self:PTGtkAspectFrame; obey_child:Tgboolean);cdecl;external;
function gtk_aspect_frame_get_obey_child(self:PTGtkAspectFrame):Tgboolean;cdecl;external;
procedure gtk_aspect_frame_set_child(self:PTGtkAspectFrame; child:PTGtkWidget);cdecl;external;
function gtk_aspect_frame_get_child(self:PTGtkAspectFrame):^TGtkWidget;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkiconview.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkiconview.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkiconview.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGdkContentFormats  = ^GdkContentFormats;
PGdkRectangle  = ^GdkRectangle;
PGtkCellArea  = ^GtkCellArea;
PGtkCellRenderer  = ^GtkCellRenderer;
PGtkIconView  = ^GtkIconView;
PGtkIconViewDropPosition  = ^GtkIconViewDropPosition;
PGtkTooltip  = ^GtkTooltip;
PGtkTreeIter  = ^GtkTreeIter;
PGtkTreeModel  = ^GtkTreeModel;
PGtkTreePath  = ^GtkTreePath;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_ICON_VIEW_H__}
//// {$define __GTK_ICON_VIEW_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkwidget.h>}
//// {$include <gtk/gtktreemodel.h>}
//// {$include <gtk/gtkcellrenderer.h>}
//// {$include <gtk/gtkcellarea.h>}
//// {$include <gtk/gtktooltip.h>}

function GTK_TYPE_ICON_VIEW : longint; { return type might be wrong }

function GTK_ICON_VIEW(obj : longint) : longint;

function GTK_IS_ICON_VIEW(obj : longint) : longint;

type
  T_GtkIconView = TGtkIconView;


  TGtkIconViewForeachFunc = procedure (icon_view:PTGtkIconView; path:PTGtkTreePath; data:Tgpointer);cdecl;


  TGtkIconViewDropPosition = (GTK_ICON_VIEW_NO_DROP,GTK_ICON_VIEW_DROP_INTO,
    GTK_ICON_VIEW_DROP_LEFT,GTK_ICON_VIEW_DROP_RIGHT,
    GTK_ICON_VIEW_DROP_ABOVE,GTK_ICON_VIEW_DROP_BELOW
    );

function gtk_icon_view_get_type:TGType;cdecl;external;
function gtk_icon_view_new:^TGtkWidget;cdecl;external;
function gtk_icon_view_new_with_area(area:PTGtkCellArea):^TGtkWidget;cdecl;external;
function gtk_icon_view_new_with_model(model:PTGtkTreeModel):^TGtkWidget;cdecl;external;
procedure gtk_icon_view_set_model(icon_view:PTGtkIconView; model:PTGtkTreeModel);cdecl;external;
function gtk_icon_view_get_model(icon_view:PTGtkIconView):^TGtkTreeModel;cdecl;external;
procedure gtk_icon_view_set_text_column(icon_view:PTGtkIconView; column:longint);cdecl;external;
function gtk_icon_view_get_text_column(icon_view:PTGtkIconView):longint;cdecl;external;
procedure gtk_icon_view_set_markup_column(icon_view:PTGtkIconView; column:longint);cdecl;external;
function gtk_icon_view_get_markup_column(icon_view:PTGtkIconView):longint;cdecl;external;
procedure gtk_icon_view_set_pixbuf_column(icon_view:PTGtkIconView; column:longint);cdecl;external;
function gtk_icon_view_get_pixbuf_column(icon_view:PTGtkIconView):longint;cdecl;external;
procedure gtk_icon_view_set_item_orientation(icon_view:PTGtkIconView; orientation:TGtkOrientation);cdecl;external;
function gtk_icon_view_get_item_orientation(icon_view:PTGtkIconView):TGtkOrientation;cdecl;external;
procedure gtk_icon_view_set_columns(icon_view:PTGtkIconView; columns:longint);cdecl;external;
function gtk_icon_view_get_columns(icon_view:PTGtkIconView):longint;cdecl;external;
procedure gtk_icon_view_set_item_width(icon_view:PTGtkIconView; item_width:longint);cdecl;external;
function gtk_icon_view_get_item_width(icon_view:PTGtkIconView):longint;cdecl;external;
procedure gtk_icon_view_set_spacing(icon_view:PTGtkIconView; spacing:longint);cdecl;external;
function gtk_icon_view_get_spacing(icon_view:PTGtkIconView):longint;cdecl;external;
procedure gtk_icon_view_set_row_spacing(icon_view:PTGtkIconView; row_spacing:longint);cdecl;external;
function gtk_icon_view_get_row_spacing(icon_view:PTGtkIconView):longint;cdecl;external;
procedure gtk_icon_view_set_column_spacing(icon_view:PTGtkIconView; column_spacing:longint);cdecl;external;
function gtk_icon_view_get_column_spacing(icon_view:PTGtkIconView):longint;cdecl;external;
procedure gtk_icon_view_set_margin(icon_view:PTGtkIconView; margin:longint);cdecl;external;
function gtk_icon_view_get_margin(icon_view:PTGtkIconView):longint;cdecl;external;
procedure gtk_icon_view_set_item_padding(icon_view:PTGtkIconView; item_padding:longint);cdecl;external;
function gtk_icon_view_get_item_padding(icon_view:PTGtkIconView):longint;cdecl;external;
function gtk_icon_view_get_path_at_pos(icon_view:PTGtkIconView; x:longint; y:longint):^TGtkTreePath;cdecl;external;
function gtk_icon_view_get_item_at_pos(icon_view:PTGtkIconView; x:longint; y:longint; path:PPTGtkTreePath; cell:PPTGtkCellRenderer):Tgboolean;cdecl;external;
function gtk_icon_view_get_visible_range(icon_view:PTGtkIconView; start_path:PPTGtkTreePath; end_path:PPTGtkTreePath):Tgboolean;cdecl;external;
procedure gtk_icon_view_set_activate_on_single_click(icon_view:PTGtkIconView; single:Tgboolean);cdecl;external;
function gtk_icon_view_get_activate_on_single_click(icon_view:PTGtkIconView):Tgboolean;cdecl;external;
procedure gtk_icon_view_selected_foreach(icon_view:PTGtkIconView; func:TGtkIconViewForeachFunc; data:Tgpointer);cdecl;external;
procedure gtk_icon_view_set_selection_mode(icon_view:PTGtkIconView; mode:TGtkSelectionMode);cdecl;external;
function gtk_icon_view_get_selection_mode(icon_view:PTGtkIconView):TGtkSelectionMode;cdecl;external;
procedure gtk_icon_view_select_path(icon_view:PTGtkIconView; path:PTGtkTreePath);cdecl;external;
procedure gtk_icon_view_unselect_path(icon_view:PTGtkIconView; path:PTGtkTreePath);cdecl;external;
function gtk_icon_view_path_is_selected(icon_view:PTGtkIconView; path:PTGtkTreePath):Tgboolean;cdecl;external;
function gtk_icon_view_get_item_row(icon_view:PTGtkIconView; path:PTGtkTreePath):longint;cdecl;external;
function gtk_icon_view_get_item_column(icon_view:PTGtkIconView; path:PTGtkTreePath):longint;cdecl;external;
function gtk_icon_view_get_selected_items(icon_view:PTGtkIconView):^TGList;cdecl;external;
procedure gtk_icon_view_select_all(icon_view:PTGtkIconView);cdecl;external;
procedure gtk_icon_view_unselect_all(icon_view:PTGtkIconView);cdecl;external;
procedure gtk_icon_view_item_activated(icon_view:PTGtkIconView; path:PTGtkTreePath);cdecl;external;
procedure gtk_icon_view_set_cursor(icon_view:PTGtkIconView; path:PTGtkTreePath; cell:PTGtkCellRenderer; start_editing:Tgboolean);cdecl;external;
function gtk_icon_view_get_cursor(icon_view:PTGtkIconView; path:PPTGtkTreePath; cell:PPTGtkCellRenderer):Tgboolean;cdecl;external;
procedure gtk_icon_view_scroll_to_path(icon_view:PTGtkIconView; path:PTGtkTreePath; use_align:Tgboolean; row_align:single; col_align:single);cdecl;external;

procedure gtk_icon_view_enable_model_drag_source(icon_view:PTGtkIconView; start_button_mask:TGdkModifierType; formats:PTGdkContentFormats; actions:TGdkDragAction);cdecl;external;
procedure gtk_icon_view_enable_model_drag_dest(icon_view:PTGtkIconView; formats:PTGdkContentFormats; actions:TGdkDragAction);cdecl;external;
procedure gtk_icon_view_unset_model_drag_source(icon_view:PTGtkIconView);cdecl;external;
procedure gtk_icon_view_unset_model_drag_dest(icon_view:PTGtkIconView);cdecl;external;
procedure gtk_icon_view_set_reorderable(icon_view:PTGtkIconView; reorderable:Tgboolean);cdecl;external;
function gtk_icon_view_get_reorderable(icon_view:PTGtkIconView):Tgboolean;cdecl;external;

procedure gtk_icon_view_set_drag_dest_item(icon_view:PTGtkIconView; path:PTGtkTreePath; pos:TGtkIconViewDropPosition);cdecl;external;
procedure gtk_icon_view_get_drag_dest_item(icon_view:PTGtkIconView; path:PPTGtkTreePath; pos:PTGtkIconViewDropPosition);cdecl;external;
function gtk_icon_view_get_dest_item_at_pos(icon_view:PTGtkIconView; drag_x:longint; drag_y:longint; path:PPTGtkTreePath; pos:PTGtkIconViewDropPosition):Tgboolean;cdecl;external;
function gtk_icon_view_create_drag_icon(icon_view:PTGtkIconView; path:PTGtkTreePath):^TGdkPaintable;cdecl;external;
function gtk_icon_view_get_cell_rect(icon_view:PTGtkIconView; path:PTGtkTreePath; cell:PTGtkCellRenderer; rect:PTGdkRectangle):Tgboolean;cdecl;external;
procedure gtk_icon_view_set_tooltip_item(icon_view:PTGtkIconView; tooltip:PTGtkTooltip; path:PTGtkTreePath);cdecl;external;
procedure gtk_icon_view_set_tooltip_cell(icon_view:PTGtkIconView; tooltip:PTGtkTooltip; path:PTGtkTreePath; cell:PTGtkCellRenderer);cdecl;external;
function gtk_icon_view_get_tooltip_context(icon_view:PTGtkIconView; x:longint; y:longint; keyboard_tip:Tgboolean; model:PPTGtkTreeModel; 
           path:PPTGtkTreePath; iter:PTGtkTreeIter):Tgboolean;cdecl;external;
procedure gtk_icon_view_set_tooltip_column(icon_view:PTGtkIconView; column:longint);cdecl;external;
function gtk_icon_view_get_tooltip_column(icon_view:PTGtkIconView):longint;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkfilechooser.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkfilechooser.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkfilechooser.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGError  = ^GError;
PGFile  = ^GFile;
PGtkFileChooser  = ^GtkFileChooser;
PGtkFileFilter  = ^GtkFileFilter;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_FILE_CHOOSER_H__}
//// {$define __GTK_FILE_CHOOSER_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkfilefilter.h>}
//// {$include <gtk/gtkwidget.h>}

function GTK_TYPE_FILE_CHOOSER : longint; { return type might be wrong }

function GTK_FILE_CHOOSER(obj : longint) : longint;

function GTK_IS_FILE_CHOOSER(obj : longint) : longint;

type
  T_GtkFileChooser = TGtkFileChooser;


  TGtkFileChooserAction = (GTK_FILE_CHOOSER_ACTION_OPEN,GTK_FILE_CHOOSER_ACTION_SAVE,
    GTK_FILE_CHOOSER_ACTION_SELECT_FOLDER
    );

function gtk_file_chooser_get_type:TGType;cdecl;external;


function GTK_FILE_CHOOSER_ERROR : longint; { return type might be wrong }


type
  TGtkFileChooserError = (GTK_FILE_CHOOSER_ERROR_NONEXISTENT,GTK_FILE_CHOOSER_ERROR_BAD_FILENAME,
    GTK_FILE_CHOOSER_ERROR_ALREADY_EXISTS,
    GTK_FILE_CHOOSER_ERROR_INCOMPLETE_HOSTNAME
    );

function gtk_file_chooser_error_quark:TGQuark;cdecl;external;

procedure gtk_file_chooser_set_action(chooser:PTGtkFileChooser; action:TGtkFileChooserAction);cdecl;external;
function gtk_file_chooser_get_action(chooser:PTGtkFileChooser):TGtkFileChooserAction;cdecl;external;
procedure gtk_file_chooser_set_select_multiple(chooser:PTGtkFileChooser; select_multiple:Tgboolean);cdecl;external;
function gtk_file_chooser_get_select_multiple(chooser:PTGtkFileChooser):Tgboolean;cdecl;external;
procedure gtk_file_chooser_set_create_folders(chooser:PTGtkFileChooser; create_folders:Tgboolean);cdecl;external;
function gtk_file_chooser_get_create_folders(chooser:PTGtkFileChooser):Tgboolean;cdecl;external;

procedure gtk_file_chooser_set_current_name(chooser:PTGtkFileChooser; name:Pchar);cdecl;external;
function gtk_file_chooser_get_current_name(chooser:PTGtkFileChooser):^char;cdecl;external;

function gtk_file_chooser_get_file(chooser:PTGtkFileChooser):^TGFile;cdecl;external;
function gtk_file_chooser_set_file(chooser:PTGtkFileChooser; file:PTGFile; error:PPTGError):Tgboolean;cdecl;external;
function gtk_file_chooser_get_files(chooser:PTGtkFileChooser):^TGListModel;cdecl;external;
function gtk_file_chooser_set_current_folder(chooser:PTGtkFileChooser; file:PTGFile; error:PPTGError):Tgboolean;cdecl;external;
function gtk_file_chooser_get_current_folder(chooser:PTGtkFileChooser):^TGFile;cdecl;external;

procedure gtk_file_chooser_add_filter(chooser:PTGtkFileChooser; filter:PTGtkFileFilter);cdecl;external;
procedure gtk_file_chooser_remove_filter(chooser:PTGtkFileChooser; filter:PTGtkFileFilter);cdecl;external;
function gtk_file_chooser_get_filters(chooser:PTGtkFileChooser):^TGListModel;cdecl;external;

procedure gtk_file_chooser_set_filter(chooser:PTGtkFileChooser; filter:PTGtkFileFilter);cdecl;external;
function gtk_file_chooser_get_filter(chooser:PTGtkFileChooser):^TGtkFileFilter;cdecl;external;

function gtk_file_chooser_add_shortcut_folder(chooser:PTGtkFileChooser; folder:PTGFile; error:PPTGError):Tgboolean;cdecl;external;
function gtk_file_chooser_remove_shortcut_folder(chooser:PTGtkFileChooser; folder:PTGFile; error:PPTGError):Tgboolean;cdecl;external;
function gtk_file_chooser_get_shortcut_folders(chooser:PTGtkFileChooser):^TGListModel;cdecl;external;

procedure gtk_file_chooser_add_choice(chooser:PTGtkFileChooser; id:Pchar; _label:Pchar; options:PPchar; option_labels:PPchar);cdecl;external;
procedure gtk_file_chooser_remove_choice(chooser:PTGtkFileChooser; id:Pchar);cdecl;external;
procedure gtk_file_chooser_set_choice(chooser:PTGtkFileChooser; id:Pchar; option:Pchar);cdecl;external;
function gtk_file_chooser_get_choice(chooser:PTGtkFileChooser; id:Pchar):^char;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkwidgetpaintable.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkwidgetpaintable.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkwidgetpaintable.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGtkWidget  = ^GtkWidget;
PGtkWidgetPaintable  = ^GtkWidgetPaintable;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_WIDGET_PAINTABLE_H__}
//// {$define __GTK_WIDGET_PAINTABLE_H__}
//// {$include <gtk/gtktypes.h>}

function GTK_TYPE_WIDGET_PAINTABLE : longint; { return type might be wrong }

function gtk_widget_paintable_new(widget:PTGtkWidget):^TGdkPaintable;cdecl;external;
function gtk_widget_paintable_get_widget(self:PTGtkWidgetPaintable):^TGtkWidget;cdecl;external;
procedure gtk_widget_paintable_set_widget(self:PTGtkWidgetPaintable; widget:PTGtkWidget);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkseparator.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkseparator.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkseparator.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef __GTK_SEPARATOR_H__}
//// {$define __GTK_SEPARATOR_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkwidget.h>}

function GTK_TYPE_SEPARATOR : longint; { return type might be wrong }

function GTK_SEPARATOR(obj : longint) : longint;

function GTK_IS_SEPARATOR(obj : longint) : longint;

type
  T_GtkSeparator = TGtkSeparator;

function gtk_separator_get_type:TGType;cdecl;external;
function gtk_separator_new(orientation:TGtkOrientation):^TGtkWidget;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtknoselection.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtknoselection.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtknoselection.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGListModel  = ^GListModel;
PGtkNoSelection  = ^GtkNoSelection;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_NO_SELECTION_H__}
//// {$define __GTK_NO_SELECTION_H__}
//// {$include <gtk/gtktypes.h>}

function GTK_TYPE_NO_SELECTION : longint; { return type might be wrong }

function gtk_no_selection_new(model:PTGListModel):^TGtkNoSelection;cdecl;external;
function gtk_no_selection_get_model(self:PTGtkNoSelection):^TGListModel;cdecl;external;
procedure gtk_no_selection_set_model(self:PTGtkNoSelection; model:PTGListModel);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtktreestore.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtktreestore.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtktreestore.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGtkTreeIter  = ^GtkTreeIter;
PGtkTreeStore  = ^GtkTreeStore;
PGType  = ^GType;
PGValue  = ^GValue;
Plongint  = ^longint;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_TREE_STORE_H__}
//// {$define __GTK_TREE_STORE_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdk.h>}
//// {$include <gtk/gtktreemodel.h>}
//// {$include <gtk/gtktreesortable.h>}
//// {$include <stdarg.h>}

function GTK_TYPE_TREE_STORE : longint; { return type might be wrong }

function GTK_TREE_STORE(obj : longint) : longint;

function GTK_TREE_STORE_CLASS(klass : longint) : longint;

function GTK_IS_TREE_STORE(obj : longint) : longint;

function GTK_IS_TREE_STORE_CLASS(klass : longint) : longint;

function GTK_TREE_STORE_GET_CLASS(obj : longint) : longint;

type
  T_GtkTreeStore = TGtkTreeStore;
  T_GtkTreeStoreClass = TGtkTreeStoreClass;
  T_GtkTreeStorePrivate = TGtkTreeStorePrivate;
  T_GtkTreeStore = record
      parent : TGObject;
      priv : ^TGtkTreeStorePrivate;
    end;


  T_GtkTreeStoreClass = record
      parent_class : TGObjectClass;
      padding : array[0..7] of Tgpointer;
    end;


function gtk_tree_store_get_type:TGType;cdecl;external;
function gtk_tree_store_new(n_columns:longint; args:array of const):^TGtkTreeStore;cdecl;external;
function gtk_tree_store_new(n_columns:longint):^TGtkTreeStore;cdecl;external;
function gtk_tree_store_newv(n_columns:longint; types:PTGType):^TGtkTreeStore;cdecl;external;
procedure gtk_tree_store_set_column_types(tree_store:PTGtkTreeStore; n_columns:longint; types:PTGType);cdecl;external;

procedure gtk_tree_store_set_value(tree_store:PTGtkTreeStore; iter:PTGtkTreeIter; column:longint; value:PTGValue);cdecl;external;
procedure gtk_tree_store_set(tree_store:PTGtkTreeStore; iter:PTGtkTreeIter; args:array of const);cdecl;external;
procedure gtk_tree_store_set(tree_store:PTGtkTreeStore; iter:PTGtkTreeIter);cdecl;external;
procedure gtk_tree_store_set_valuesv(tree_store:PTGtkTreeStore; iter:PTGtkTreeIter; columns:Plongint; values:PTGValue; n_values:longint);cdecl;external;
procedure gtk_tree_store_set_valist(tree_store:PTGtkTreeStore; iter:PTGtkTreeIter; var_args:Tva_list);cdecl;external;
function gtk_tree_store_remove(tree_store:PTGtkTreeStore; iter:PTGtkTreeIter):Tgboolean;cdecl;external;
procedure gtk_tree_store_insert(tree_store:PTGtkTreeStore; iter:PTGtkTreeIter; parent:PTGtkTreeIter; position:longint);cdecl;external;
procedure gtk_tree_store_insert_before(tree_store:PTGtkTreeStore; iter:PTGtkTreeIter; parent:PTGtkTreeIter; sibling:PTGtkTreeIter);cdecl;external;
procedure gtk_tree_store_insert_after(tree_store:PTGtkTreeStore; iter:PTGtkTreeIter; parent:PTGtkTreeIter; sibling:PTGtkTreeIter);cdecl;external;
procedure gtk_tree_store_insert_with_values(tree_store:PTGtkTreeStore; iter:PTGtkTreeIter; parent:PTGtkTreeIter; position:longint; args:array of const);cdecl;external;
procedure gtk_tree_store_insert_with_values(tree_store:PTGtkTreeStore; iter:PTGtkTreeIter; parent:PTGtkTreeIter; position:longint);cdecl;external;
procedure gtk_tree_store_insert_with_valuesv(tree_store:PTGtkTreeStore; iter:PTGtkTreeIter; parent:PTGtkTreeIter; position:longint; columns:Plongint; 
            values:PTGValue; n_values:longint);cdecl;external;
procedure gtk_tree_store_prepend(tree_store:PTGtkTreeStore; iter:PTGtkTreeIter; parent:PTGtkTreeIter);cdecl;external;
procedure gtk_tree_store_append(tree_store:PTGtkTreeStore; iter:PTGtkTreeIter; parent:PTGtkTreeIter);cdecl;external;
function gtk_tree_store_is_ancestor(tree_store:PTGtkTreeStore; iter:PTGtkTreeIter; descendant:PTGtkTreeIter):Tgboolean;cdecl;external;
function gtk_tree_store_iter_depth(tree_store:PTGtkTreeStore; iter:PTGtkTreeIter):longint;cdecl;external;
procedure gtk_tree_store_clear(tree_store:PTGtkTreeStore);cdecl;external;
function gtk_tree_store_iter_is_valid(tree_store:PTGtkTreeStore; iter:PTGtkTreeIter):Tgboolean;cdecl;external;
procedure gtk_tree_store_reorder(tree_store:PTGtkTreeStore; parent:PTGtkTreeIter; new_order:Plongint);cdecl;external;
procedure gtk_tree_store_swap(tree_store:PTGtkTreeStore; a:PTGtkTreeIter; b:PTGtkTreeIter);cdecl;external;
procedure gtk_tree_store_move_before(tree_store:PTGtkTreeStore; iter:PTGtkTreeIter; position:PTGtkTreeIter);cdecl;external;
procedure gtk_tree_store_move_after(tree_store:PTGtkTreeStore; iter:PTGtkTreeIter; position:PTGtkTreeIter);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkdroptargetasync.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkdroptargetasync.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkdroptargetasync.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGdkContentFormats  = ^GdkContentFormats;
PGdkDrop  = ^GdkDrop;
PGtkDropTargetAsync  = ^GtkDropTargetAsync;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}





//// {$ifndef __GTK_DROP_TARGET_ASYNC_H__}
//// {$define __GTK_DROP_TARGET_ASYNC_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkwidget.h>}
type
  T_GtkDropTargetAsync = TGtkDropTargetAsync;
  T_GtkDropTargetAsyncClass = TGtkDropTargetAsyncClass;

function GTK_TYPE_DROP_TARGET_ASYNC : longint; { return type might be wrong }

function GTK_DROP_TARGET_ASYNC(o : longint) : longint;

function GTK_DROP_TARGET_ASYNC_CLASS(k : longint) : longint;

function GTK_IS_DROP_TARGET_ASYNC(o : longint) : longint;

function GTK_IS_DROP_TARGET_ASYNC_CLASS(k : longint) : longint;

function GTK_DROP_TARGET_ASYNC_GET_CLASS(o : longint) : longint;

function gtk_drop_target_async_get_type:TGType;cdecl;external;
function gtk_drop_target_async_new(formats:PTGdkContentFormats; actions:TGdkDragAction):^TGtkDropTargetAsync;cdecl;external;
procedure gtk_drop_target_async_set_formats(self:PTGtkDropTargetAsync; formats:PTGdkContentFormats);cdecl;external;
function gtk_drop_target_async_get_formats(self:PTGtkDropTargetAsync):^TGdkContentFormats;cdecl;external;
procedure gtk_drop_target_async_set_actions(self:PTGtkDropTargetAsync; actions:TGdkDragAction);cdecl;external;
function gtk_drop_target_async_get_actions(self:PTGtkDropTargetAsync):TGdkDragAction;cdecl;external;
procedure gtk_drop_target_async_reject_drop(self:PTGtkDropTargetAsync; drop:PTGdkDrop);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkglarea.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkglarea.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkglarea.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGdkGLContext  = ^GdkGLContext;
PGError  = ^GError;
PGtkGLArea  = ^GtkGLArea;
Plongint  = ^longint;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_GL_AREA_H__}
//// {$define __GTK_GL_AREA_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkwidget.h>}

function GTK_TYPE_GL_AREA : longint; { return type might be wrong }

function GTK_GL_AREA(obj : longint) : longint;

function GTK_IS_GL_AREA(obj : longint) : longint;

function GTK_GL_AREA_CLASS(klass : longint) : longint;

function GTK_IS_GL_AREA_CLASS(klass : longint) : longint;

function GTK_GL_AREA_GET_CLASS(obj : longint) : longint;

type
  T_GtkGLArea = TGtkGLArea;
  T_GtkGLAreaClass = TGtkGLAreaClass;

  T_GtkGLArea = record
      parent_instance : TGtkWidget;
    end;





  T_GtkGLAreaClass = record
      parent_class : TGtkWidgetClass;
      render : function (area:PTGtkGLArea; context:PTGdkGLContext):Tgboolean;cdecl;
      resize : procedure (area:PTGtkGLArea; width:longint; height:longint);cdecl;
      create_context : function (area:PTGtkGLArea):PTGdkGLContext;cdecl;
      _padding : array[0..7] of Tgpointer;
    end;


function gtk_gl_area_get_type:TGType;cdecl;external;
function gtk_gl_area_new:^TGtkWidget;cdecl;external;
procedure gtk_gl_area_set_use_es(area:PTGtkGLArea; use_es:Tgboolean);cdecl;external;
function gtk_gl_area_get_use_es(area:PTGtkGLArea):Tgboolean;cdecl;external;
procedure gtk_gl_area_set_required_version(area:PTGtkGLArea; major:longint; minor:longint);cdecl;external;
procedure gtk_gl_area_get_required_version(area:PTGtkGLArea; major:Plongint; minor:Plongint);cdecl;external;
function gtk_gl_area_get_has_depth_buffer(area:PTGtkGLArea):Tgboolean;cdecl;external;
procedure gtk_gl_area_set_has_depth_buffer(area:PTGtkGLArea; has_depth_buffer:Tgboolean);cdecl;external;
function gtk_gl_area_get_has_stencil_buffer(area:PTGtkGLArea):Tgboolean;cdecl;external;
procedure gtk_gl_area_set_has_stencil_buffer(area:PTGtkGLArea; has_stencil_buffer:Tgboolean);cdecl;external;
function gtk_gl_area_get_auto_render(area:PTGtkGLArea):Tgboolean;cdecl;external;
procedure gtk_gl_area_set_auto_render(area:PTGtkGLArea; auto_render:Tgboolean);cdecl;external;
procedure gtk_gl_area_queue_render(area:PTGtkGLArea);cdecl;external;
function gtk_gl_area_get_context(area:PTGtkGLArea):^TGdkGLContext;cdecl;external;
procedure gtk_gl_area_make_current(area:PTGtkGLArea);cdecl;external;
procedure gtk_gl_area_attach_buffers(area:PTGtkGLArea);cdecl;external;
procedure gtk_gl_area_set_error(area:PTGtkGLArea; error:PTGError);cdecl;external;
function gtk_gl_area_get_error(area:PTGtkGLArea):^TGError;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtklockbutton.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtklockbutton.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtklockbutton.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGPermission  = ^GPermission;
PGtkLockButton  = ^GtkLockButton;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_LOCK_BUTTON_H__}
//// {$define __GTK_LOCK_BUTTON_H__}
//// {$include <gtk/gtkbutton.h>}
//// {$include <gio/gio.h>}

function GTK_TYPE_LOCK_BUTTON : longint; { return type might be wrong }

function GTK_LOCK_BUTTON(o : longint) : longint;

function GTK_IS_LOCK_BUTTON(o : longint) : longint;

type
  T_GtkLockButton = TGtkLockButton;

function gtk_lock_button_get_type:TGType;cdecl;external;
function gtk_lock_button_new(permission:PTGPermission):^TGtkWidget;cdecl;external;
function gtk_lock_button_get_permission(button:PTGtkLockButton):^TGPermission;cdecl;external;
procedure gtk_lock_button_set_permission(button:PTGtkLockButton; permission:PTGPermission);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkdragsource.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkdragsource.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkdragsource.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGdkContentProvider  = ^GdkContentProvider;
PGdkPaintable  = ^GdkPaintable;
PGtkDragSource  = ^GtkDragSource;
PGtkWidget  = ^GtkWidget;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}





//// {$ifndef __GTK_DRAG_SOURCE_H__}
//// {$define __GTK_DRAG_SOURCE_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkwidget.h>}

function GTK_TYPE_DRAG_SOURCE : longint; { return type might be wrong }

function GTK_DRAG_SOURCE(o : longint) : longint;

function GTK_DRAG_SOURCE_CLASS(k : longint) : longint;

function GTK_IS_DRAG_SOURCE(o : longint) : longint;

function GTK_IS_DRAG_SOURCE_CLASS(k : longint) : longint;

function GTK_DRAG_SOURCE_GET_CLASS(o : longint) : longint;

type
  T_GtkDragSource = TGtkDragSource;
  T_GtkDragSourceClass = TGtkDragSourceClass;

function gtk_drag_source_get_type:TGType;cdecl;external;
function gtk_drag_source_new:^TGtkDragSource;cdecl;external;
procedure gtk_drag_source_set_content(source:PTGtkDragSource; content:PTGdkContentProvider);cdecl;external;
function gtk_drag_source_get_content(source:PTGtkDragSource):^TGdkContentProvider;cdecl;external;
procedure gtk_drag_source_set_actions(source:PTGtkDragSource; actions:TGdkDragAction);cdecl;external;
function gtk_drag_source_get_actions(source:PTGtkDragSource):TGdkDragAction;cdecl;external;
procedure gtk_drag_source_set_icon(source:PTGtkDragSource; paintable:PTGdkPaintable; hot_x:longint; hot_y:longint);cdecl;external;
procedure gtk_drag_source_drag_cancel(source:PTGtkDragSource);cdecl;external;
function gtk_drag_source_get_drag(source:PTGtkDragSource):^TGdkDrag;cdecl;external;
function gtk_drag_check_threshold(widget:PTGtkWidget; start_x:longint; start_y:longint; current_x:longint; current_y:longint):Tgboolean;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkimage.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkimage.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkimage.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGdkPaintable  = ^GdkPaintable;
PGdkPixbuf  = ^GdkPixbuf;
PGIcon  = ^GIcon;
PGtkImage  = ^GtkImage;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef __GTK_IMAGE_H__}
//// {$define __GTK_IMAGE_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gio/gio.h>}
//// {$include <gtk/gtkwidget.h>}

function GTK_TYPE_IMAGE : longint; { return type might be wrong }

function GTK_IMAGE(obj : longint) : longint;

function GTK_IS_IMAGE(obj : longint) : longint;

type
  T_GtkImage = TGtkImage;


  TGtkImageType = (GTK_IMAGE_EMPTY,GTK_IMAGE_ICON_NAME,GTK_IMAGE_GICON,
    GTK_IMAGE_PAINTABLE);

function gtk_image_get_type:TGType;cdecl;external;
function gtk_image_new:^TGtkWidget;cdecl;external;
function gtk_image_new_from_file(filename:Pchar):^TGtkWidget;cdecl;external;
function gtk_image_new_from_resource(resource_path:Pchar):^TGtkWidget;cdecl;external;
function gtk_image_new_from_pixbuf(pixbuf:PTGdkPixbuf):^TGtkWidget;cdecl;external;
function gtk_image_new_from_paintable(paintable:PTGdkPaintable):^TGtkWidget;cdecl;external;
function gtk_image_new_from_icon_name(icon_name:Pchar):^TGtkWidget;cdecl;external;
function gtk_image_new_from_gicon(icon:PTGIcon):^TGtkWidget;cdecl;external;
procedure gtk_image_clear(image:PTGtkImage);cdecl;external;
procedure gtk_image_set_from_file(image:PTGtkImage; filename:Pchar);cdecl;external;
procedure gtk_image_set_from_resource(image:PTGtkImage; resource_path:Pchar);cdecl;external;
procedure gtk_image_set_from_pixbuf(image:PTGtkImage; pixbuf:PTGdkPixbuf);cdecl;external;
procedure gtk_image_set_from_paintable(image:PTGtkImage; paintable:PTGdkPaintable);cdecl;external;
procedure gtk_image_set_from_icon_name(image:PTGtkImage; icon_name:Pchar);cdecl;external;
procedure gtk_image_set_from_gicon(image:PTGtkImage; icon:PTGIcon);cdecl;external;
procedure gtk_image_set_pixel_size(image:PTGtkImage; pixel_size:longint);cdecl;external;
procedure gtk_image_set_icon_size(image:PTGtkImage; icon_size:TGtkIconSize);cdecl;external;
function gtk_image_get_storage_type(image:PTGtkImage):TGtkImageType;cdecl;external;
function gtk_image_get_paintable(image:PTGtkImage):^TGdkPaintable;cdecl;external;
function gtk_image_get_icon_name(image:PTGtkImage):^char;cdecl;external;
function gtk_image_get_gicon(image:PTGtkImage):^TGIcon;cdecl;external;
function gtk_image_get_pixel_size(image:PTGtkImage):longint;cdecl;external;
function gtk_image_get_icon_size(image:PTGtkImage):TGtkIconSize;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkshortcutcontroller.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkshortcutcontroller.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkshortcutcontroller.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGListModel  = ^GListModel;
PGtkShortcut  = ^GtkShortcut;
PGtkShortcutController  = ^GtkShortcutController;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_SHORTCUT_CONTROLLER_H__}
//// {$define __GTK_SHORTCUT_CONTROLLER_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkeventcontroller.h>}

function GTK_TYPE_SHORTCUT_CONTROLLER : longint; { return type might be wrong }

function GTK_SHORTCUT_CONTROLLER(o : longint) : longint;

function GTK_SHORTCUT_CONTROLLER_CLASS(k : longint) : longint;

function GTK_IS_SHORTCUT_CONTROLLER(o : longint) : longint;

function GTK_IS_SHORTCUT_CONTROLLER_CLASS(k : longint) : longint;

function GTK_SHORTCUT_CONTROLLER_GET_CLASS(o : longint) : longint;

type
  T_GtkShortcutController = TGtkShortcutController;
  T_GtkShortcutControllerClass = TGtkShortcutControllerClass;

function gtk_shortcut_controller_get_type:TGType;cdecl;external;
function gtk_shortcut_controller_new:^TGtkEventController;cdecl;external;
function gtk_shortcut_controller_new_for_model(model:PTGListModel):^TGtkEventController;cdecl;external;
procedure gtk_shortcut_controller_set_mnemonics_modifiers(self:PTGtkShortcutController; modifiers:TGdkModifierType);cdecl;external;
function gtk_shortcut_controller_get_mnemonics_modifiers(self:PTGtkShortcutController):TGdkModifierType;cdecl;external;
procedure gtk_shortcut_controller_set_scope(self:PTGtkShortcutController; scope:TGtkShortcutScope);cdecl;external;
function gtk_shortcut_controller_get_scope(self:PTGtkShortcutController):TGtkShortcutScope;cdecl;external;
procedure gtk_shortcut_controller_add_shortcut(self:PTGtkShortcutController; shortcut:PTGtkShortcut);cdecl;external;
procedure gtk_shortcut_controller_remove_shortcut(self:PTGtkShortcutController; shortcut:PTGtkShortcut);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtklistview.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtklistview.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtklistview.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGtkListItemFactory  = ^GtkListItemFactory;
PGtkListView  = ^GtkListView;
PGtkSelectionModel  = ^GtkSelectionModel;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_LIST_VIEW_H__}
//// {$define __GTK_LIST_VIEW_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtklistbase.h>}

function GTK_TYPE_LIST_VIEW : longint; { return type might be wrong }

function GTK_LIST_VIEW(o : longint) : longint;

function GTK_LIST_VIEW_CLASS(k : longint) : longint;

function GTK_IS_LIST_VIEW(o : longint) : longint;

function GTK_IS_LIST_VIEW_CLASS(k : longint) : longint;

function GTK_LIST_VIEW_GET_CLASS(o : longint) : longint;

type
  T_GtkListView = TGtkListView;
  T_GtkListViewClass = TGtkListViewClass;

function gtk_list_view_get_type:TGType;cdecl;external;
function gtk_list_view_new(model:PTGtkSelectionModel; factory:PTGtkListItemFactory):^TGtkWidget;cdecl;external;
function gtk_list_view_get_model(self:PTGtkListView):^TGtkSelectionModel;cdecl;external;
procedure gtk_list_view_set_model(self:PTGtkListView; model:PTGtkSelectionModel);cdecl;external;
procedure gtk_list_view_set_factory(self:PTGtkListView; factory:PTGtkListItemFactory);cdecl;external;
function gtk_list_view_get_factory(self:PTGtkListView):^TGtkListItemFactory;cdecl;external;
procedure gtk_list_view_set_show_separators(self:PTGtkListView; show_separators:Tgboolean);cdecl;external;
function gtk_list_view_get_show_separators(self:PTGtkListView):Tgboolean;cdecl;external;
procedure gtk_list_view_set_single_click_activate(self:PTGtkListView; single_click_activate:Tgboolean);cdecl;external;
function gtk_list_view_get_single_click_activate(self:PTGtkListView):Tgboolean;cdecl;external;
procedure gtk_list_view_set_enable_rubberband(self:PTGtkListView; enable_rubberband:Tgboolean);cdecl;external;
function gtk_list_view_get_enable_rubberband(self:PTGtkListView):Tgboolean;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkentrycompletion.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkentrycompletion.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkentrycompletion.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGtkCellArea  = ^GtkCellArea;
PGtkEntryCompletion  = ^GtkEntryCompletion;
PGtkTreeIter  = ^GtkTreeIter;
PGtkTreeModel  = ^GtkTreeModel;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_ENTRY_COMPLETION_H__}
//// {$define __GTK_ENTRY_COMPLETION_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdk.h>}
//// {$include <gtk/gtktreemodel.h>}
//// {$include <gtk/gtkliststore.h>}
//// {$include <gtk/gtkcellarea.h>}
//// {$include <gtk/gtktreeviewcolumn.h>}
//// {$include <gtk/gtktreemodelfilter.h>}

function GTK_TYPE_ENTRY_COMPLETION : longint; { return type might be wrong }

function GTK_ENTRY_COMPLETION(obj : longint) : longint;

function GTK_IS_ENTRY_COMPLETION(obj : longint) : longint;

type
  T_GtkEntryCompletion = TGtkEntryCompletion;


  TGtkEntryCompletionMatchFunc = function (completion:PTGtkEntryCompletion; key:Pchar; iter:PTGtkTreeIter; user_data:Tgpointer):Tgboolean;cdecl;

function gtk_entry_completion_get_type:TGType;cdecl;external;
function gtk_entry_completion_new:^TGtkEntryCompletion;cdecl;external;
function gtk_entry_completion_new_with_area(area:PTGtkCellArea):^TGtkEntryCompletion;cdecl;external;
function gtk_entry_completion_get_entry(completion:PTGtkEntryCompletion):^TGtkWidget;cdecl;external;
procedure gtk_entry_completion_set_model(completion:PTGtkEntryCompletion; model:PTGtkTreeModel);cdecl;external;
function gtk_entry_completion_get_model(completion:PTGtkEntryCompletion):^TGtkTreeModel;cdecl;external;
procedure gtk_entry_completion_set_match_func(completion:PTGtkEntryCompletion; func:TGtkEntryCompletionMatchFunc; func_data:Tgpointer; func_notify:TGDestroyNotify);cdecl;external;
procedure gtk_entry_completion_set_minimum_key_length(completion:PTGtkEntryCompletion; length:longint);cdecl;external;
function gtk_entry_completion_get_minimum_key_length(completion:PTGtkEntryCompletion):longint;cdecl;external;
function gtk_entry_completion_compute_prefix(completion:PTGtkEntryCompletion; key:Pchar):^char;cdecl;external;
procedure gtk_entry_completion_complete(completion:PTGtkEntryCompletion);cdecl;external;
procedure gtk_entry_completion_insert_prefix(completion:PTGtkEntryCompletion);cdecl;external;
procedure gtk_entry_completion_set_inline_completion(completion:PTGtkEntryCompletion; inline_completion:Tgboolean);cdecl;external;
function gtk_entry_completion_get_inline_completion(completion:PTGtkEntryCompletion):Tgboolean;cdecl;external;
procedure gtk_entry_completion_set_inline_selection(completion:PTGtkEntryCompletion; inline_selection:Tgboolean);cdecl;external;
function gtk_entry_completion_get_inline_selection(completion:PTGtkEntryCompletion):Tgboolean;cdecl;external;
procedure gtk_entry_completion_set_popup_completion(completion:PTGtkEntryCompletion; popup_completion:Tgboolean);cdecl;external;
function gtk_entry_completion_get_popup_completion(completion:PTGtkEntryCompletion):Tgboolean;cdecl;external;
procedure gtk_entry_completion_set_popup_set_width(completion:PTGtkEntryCompletion; popup_set_width:Tgboolean);cdecl;external;
function gtk_entry_completion_get_popup_set_width(completion:PTGtkEntryCompletion):Tgboolean;cdecl;external;
procedure gtk_entry_completion_set_popup_single_match(completion:PTGtkEntryCompletion; popup_single_match:Tgboolean);cdecl;external;
function gtk_entry_completion_get_popup_single_match(completion:PTGtkEntryCompletion):Tgboolean;cdecl;external;
function gtk_entry_completion_get_completion_prefix(completion:PTGtkEntryCompletion):^char;cdecl;external;

procedure gtk_entry_completion_set_text_column(completion:PTGtkEntryCompletion; column:longint);cdecl;external;
function gtk_entry_completion_get_text_column(completion:PTGtkEntryCompletion):longint;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtktextview.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtktextview.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtktextview.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGdkEvent  = ^GdkEvent;
PGdkRectangle  = ^GdkRectangle;
PGMenuModel  = ^GMenuModel;
PGtkSnapshot  = ^GtkSnapshot;
PGtkTextBuffer  = ^GtkTextBuffer;
PGtkTextChildAnchor  = ^GtkTextChildAnchor;
PGtkTextIter  = ^GtkTextIter;
PGtkTextMark  = ^GtkTextMark;
PGtkTextView  = ^GtkTextView;
PGtkWidget  = ^GtkWidget;
Plongint  = ^longint;
PPangoTabArray  = ^PangoTabArray;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef __GTK_TEXT_VIEW_H__}
//// {$define __GTK_TEXT_VIEW_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkwidget.h>}
//// {$include <gtk/gtkimcontext.h>}
//// {$include <gtk/gtktextbuffer.h>}

function GTK_TYPE_TEXT_VIEW : longint; { return type might be wrong }

function GTK_TEXT_VIEW(obj : longint) : longint;

function GTK_TEXT_VIEW_CLASS(klass : longint) : longint;

function GTK_IS_TEXT_VIEW(obj : longint) : longint;

function GTK_IS_TEXT_VIEW_CLASS(klass : longint) : longint;

function GTK_TEXT_VIEW_GET_CLASS(obj : longint) : longint;


type
  TGtkTextWindowType = (GTK_TEXT_WINDOW_WIDGET := 1,GTK_TEXT_WINDOW_TEXT,
    GTK_TEXT_WINDOW_LEFT,GTK_TEXT_WINDOW_RIGHT,
    GTK_TEXT_WINDOW_TOP,GTK_TEXT_WINDOW_BOTTOM
    );


  TGtkTextViewLayer = (GTK_TEXT_VIEW_LAYER_BELOW_TEXT,GTK_TEXT_VIEW_LAYER_ABOVE_TEXT
    );


  TGtkTextExtendSelection = (GTK_TEXT_EXTEND_SELECTION_WORD,GTK_TEXT_EXTEND_SELECTION_LINE
    );


const
  GTK_TEXT_VIEW_PRIORITY_VALIDATE = GDK_PRIORITY_REDRAW+5;  
type
  T_GtkTextView = TGtkTextView;
  T_GtkTextViewPrivate = TGtkTextViewPrivate;
  T_GtkTextViewClass = TGtkTextViewClass;

  T_GtkTextView = record
      parent_instance : TGtkWidget;
      priv : ^TGtkTextViewPrivate;
    end;




  T_GtkTextViewClass = record
      parent_class : TGtkWidgetClass;
      move_cursor : procedure (text_view:PTGtkTextView; step:TGtkMovementStep; count:longint; extend_selection:Tgboolean);cdecl;
      set_anchor : procedure (text_view:PTGtkTextView);cdecl;
      insert_at_cursor : procedure (text_view:PTGtkTextView; str:Pchar);cdecl;
      delete_from_cursor : procedure (text_view:PTGtkTextView; _type:TGtkDeleteType; count:longint);cdecl;
      backspace : procedure (text_view:PTGtkTextView);cdecl;
      cut_clipboard : procedure (text_view:PTGtkTextView);cdecl;
      copy_clipboard : procedure (text_view:PTGtkTextView);cdecl;
      paste_clipboard : procedure (text_view:PTGtkTextView);cdecl;
      toggle_overwrite : procedure (text_view:PTGtkTextView);cdecl;
      create_buffer : function (text_view:PTGtkTextView):PTGtkTextBuffer;cdecl;
      snapshot_layer : procedure (text_view:PTGtkTextView; layer:TGtkTextViewLayer; snapshot:PTGtkSnapshot);cdecl;
      extend_selection : function (text_view:PTGtkTextView; granularity:TGtkTextExtendSelection; location:PTGtkTextIter; start:PTGtkTextIter; end:PTGtkTextIter):Tgboolean;cdecl;
      insert_emoji : procedure (text_view:PTGtkTextView);cdecl;
      padding : array[0..7] of Tgpointer;
    end;


function gtk_text_view_get_type:TGType;cdecl;external;
function gtk_text_view_new:^TGtkWidget;cdecl;external;
function gtk_text_view_new_with_buffer(buffer:PTGtkTextBuffer):^TGtkWidget;cdecl;external;
procedure gtk_text_view_set_buffer(text_view:PTGtkTextView; buffer:PTGtkTextBuffer);cdecl;external;
function gtk_text_view_get_buffer(text_view:PTGtkTextView):^TGtkTextBuffer;cdecl;external;
function gtk_text_view_scroll_to_iter(text_view:PTGtkTextView; iter:PTGtkTextIter; within_margin:Tdouble; use_align:Tgboolean; xalign:Tdouble; 
           yalign:Tdouble):Tgboolean;cdecl;external;
procedure gtk_text_view_scroll_to_mark(text_view:PTGtkTextView; mark:PTGtkTextMark; within_margin:Tdouble; use_align:Tgboolean; xalign:Tdouble; 
            yalign:Tdouble);cdecl;external;
procedure gtk_text_view_scroll_mark_onscreen(text_view:PTGtkTextView; mark:PTGtkTextMark);cdecl;external;
function gtk_text_view_move_mark_onscreen(text_view:PTGtkTextView; mark:PTGtkTextMark):Tgboolean;cdecl;external;
function gtk_text_view_place_cursor_onscreen(text_view:PTGtkTextView):Tgboolean;cdecl;external;
procedure gtk_text_view_get_visible_rect(text_view:PTGtkTextView; visible_rect:PTGdkRectangle);cdecl;external;
procedure gtk_text_view_set_cursor_visible(text_view:PTGtkTextView; setting:Tgboolean);cdecl;external;
function gtk_text_view_get_cursor_visible(text_view:PTGtkTextView):Tgboolean;cdecl;external;
procedure gtk_text_view_reset_cursor_blink(text_view:PTGtkTextView);cdecl;external;
procedure gtk_text_view_get_cursor_locations(text_view:PTGtkTextView; iter:PTGtkTextIter; strong:PTGdkRectangle; weak:PTGdkRectangle);cdecl;external;
procedure gtk_text_view_get_iter_location(text_view:PTGtkTextView; iter:PTGtkTextIter; location:PTGdkRectangle);cdecl;external;
function gtk_text_view_get_iter_at_location(text_view:PTGtkTextView; iter:PTGtkTextIter; x:longint; y:longint):Tgboolean;cdecl;external;
function gtk_text_view_get_iter_at_position(text_view:PTGtkTextView; iter:PTGtkTextIter; trailing:Plongint; x:longint; y:longint):Tgboolean;cdecl;external;
procedure gtk_text_view_get_line_yrange(text_view:PTGtkTextView; iter:PTGtkTextIter; y:Plongint; height:Plongint);cdecl;external;
procedure gtk_text_view_get_line_at_y(text_view:PTGtkTextView; target_iter:PTGtkTextIter; y:longint; line_top:Plongint);cdecl;external;
procedure gtk_text_view_buffer_to_window_coords(text_view:PTGtkTextView; win:TGtkTextWindowType; buffer_x:longint; buffer_y:longint; window_x:Plongint; 
            window_y:Plongint);cdecl;external;
procedure gtk_text_view_window_to_buffer_coords(text_view:PTGtkTextView; win:TGtkTextWindowType; window_x:longint; window_y:longint; buffer_x:Plongint; 
            buffer_y:Plongint);cdecl;external;
function gtk_text_view_forward_display_line(text_view:PTGtkTextView; iter:PTGtkTextIter):Tgboolean;cdecl;external;
function gtk_text_view_backward_display_line(text_view:PTGtkTextView; iter:PTGtkTextIter):Tgboolean;cdecl;external;
function gtk_text_view_forward_display_line_end(text_view:PTGtkTextView; iter:PTGtkTextIter):Tgboolean;cdecl;external;
function gtk_text_view_backward_display_line_start(text_view:PTGtkTextView; iter:PTGtkTextIter):Tgboolean;cdecl;external;
function gtk_text_view_starts_display_line(text_view:PTGtkTextView; iter:PTGtkTextIter):Tgboolean;cdecl;external;
function gtk_text_view_move_visually(text_view:PTGtkTextView; iter:PTGtkTextIter; count:longint):Tgboolean;cdecl;external;
function gtk_text_view_im_context_filter_keypress(text_view:PTGtkTextView; event:PTGdkEvent):Tgboolean;cdecl;external;
procedure gtk_text_view_reset_im_context(text_view:PTGtkTextView);cdecl;external;

function gtk_text_view_get_gutter(text_view:PTGtkTextView; win:TGtkTextWindowType):^TGtkWidget;cdecl;external;
procedure gtk_text_view_set_gutter(text_view:PTGtkTextView; win:TGtkTextWindowType; widget:PTGtkWidget);cdecl;external;
procedure gtk_text_view_add_child_at_anchor(text_view:PTGtkTextView; child:PTGtkWidget; anchor:PTGtkTextChildAnchor);cdecl;external;
procedure gtk_text_view_add_overlay(text_view:PTGtkTextView; child:PTGtkWidget; xpos:longint; ypos:longint);cdecl;external;
procedure gtk_text_view_move_overlay(text_view:PTGtkTextView; child:PTGtkWidget; xpos:longint; ypos:longint);cdecl;external;
procedure gtk_text_view_remove(text_view:PTGtkTextView; child:PTGtkWidget);cdecl;external;

procedure gtk_text_view_set_wrap_mode(text_view:PTGtkTextView; wrap_mode:TGtkWrapMode);cdecl;external;
function gtk_text_view_get_wrap_mode(text_view:PTGtkTextView):TGtkWrapMode;cdecl;external;
procedure gtk_text_view_set_editable(text_view:PTGtkTextView; setting:Tgboolean);cdecl;external;
function gtk_text_view_get_editable(text_view:PTGtkTextView):Tgboolean;cdecl;external;
procedure gtk_text_view_set_overwrite(text_view:PTGtkTextView; overwrite:Tgboolean);cdecl;external;
function gtk_text_view_get_overwrite(text_view:PTGtkTextView):Tgboolean;cdecl;external;
procedure gtk_text_view_set_accepts_tab(text_view:PTGtkTextView; accepts_tab:Tgboolean);cdecl;external;
function gtk_text_view_get_accepts_tab(text_view:PTGtkTextView):Tgboolean;cdecl;external;
procedure gtk_text_view_set_pixels_above_lines(text_view:PTGtkTextView; pixels_above_lines:longint);cdecl;external;
function gtk_text_view_get_pixels_above_lines(text_view:PTGtkTextView):longint;cdecl;external;
procedure gtk_text_view_set_pixels_below_lines(text_view:PTGtkTextView; pixels_below_lines:longint);cdecl;external;
function gtk_text_view_get_pixels_below_lines(text_view:PTGtkTextView):longint;cdecl;external;
procedure gtk_text_view_set_pixels_inside_wrap(text_view:PTGtkTextView; pixels_inside_wrap:longint);cdecl;external;
function gtk_text_view_get_pixels_inside_wrap(text_view:PTGtkTextView):longint;cdecl;external;
procedure gtk_text_view_set_justification(text_view:PTGtkTextView; justification:TGtkJustification);cdecl;external;
function gtk_text_view_get_justification(text_view:PTGtkTextView):TGtkJustification;cdecl;external;
procedure gtk_text_view_set_left_margin(text_view:PTGtkTextView; left_margin:longint);cdecl;external;
function gtk_text_view_get_left_margin(text_view:PTGtkTextView):longint;cdecl;external;
procedure gtk_text_view_set_right_margin(text_view:PTGtkTextView; right_margin:longint);cdecl;external;
function gtk_text_view_get_right_margin(text_view:PTGtkTextView):longint;cdecl;external;
procedure gtk_text_view_set_top_margin(text_view:PTGtkTextView; top_margin:longint);cdecl;external;
function gtk_text_view_get_top_margin(text_view:PTGtkTextView):longint;cdecl;external;
procedure gtk_text_view_set_bottom_margin(text_view:PTGtkTextView; bottom_margin:longint);cdecl;external;
function gtk_text_view_get_bottom_margin(text_view:PTGtkTextView):longint;cdecl;external;
procedure gtk_text_view_set_indent(text_view:PTGtkTextView; indent:longint);cdecl;external;
function gtk_text_view_get_indent(text_view:PTGtkTextView):longint;cdecl;external;
procedure gtk_text_view_set_tabs(text_view:PTGtkTextView; tabs:PTPangoTabArray);cdecl;external;
function gtk_text_view_get_tabs(text_view:PTGtkTextView):^TPangoTabArray;cdecl;external;
procedure gtk_text_view_set_input_purpose(text_view:PTGtkTextView; purpose:TGtkInputPurpose);cdecl;external;
function gtk_text_view_get_input_purpose(text_view:PTGtkTextView):TGtkInputPurpose;cdecl;external;
procedure gtk_text_view_set_input_hints(text_view:PTGtkTextView; hints:TGtkInputHints);cdecl;external;
function gtk_text_view_get_input_hints(text_view:PTGtkTextView):TGtkInputHints;cdecl;external;
procedure gtk_text_view_set_monospace(text_view:PTGtkTextView; monospace:Tgboolean);cdecl;external;
function gtk_text_view_get_monospace(text_view:PTGtkTextView):Tgboolean;cdecl;external;
procedure gtk_text_view_set_extra_menu(text_view:PTGtkTextView; model:PTGMenuModel);cdecl;external;
function gtk_text_view_get_extra_menu(text_view:PTGtkTextView):^TGMenuModel;cdecl;external;
function gtk_text_view_get_rtl_context(text_view:PTGtkTextView):^TPangoContext;cdecl;external;
function gtk_text_view_get_ltr_context(text_view:PTGtkTextView):^TPangoContext;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkmultisorter.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkmultisorter.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkmultisorter.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGtkMultiSorter  = ^GtkMultiSorter;
PGtkSorter  = ^GtkSorter;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_MULTI_SORTER_H__}
//// {$define __GTK_MULTI_SORTER_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkexpression.h>}
//// {$include <gtk/gtksorter.h>}

function GTK_TYPE_MULTI_SORTER : longint; { return type might be wrong }

function gtk_multi_sorter_new:^TGtkMultiSorter;cdecl;external;
procedure gtk_multi_sorter_append(self:PTGtkMultiSorter; sorter:PTGtkSorter);cdecl;external;
procedure gtk_multi_sorter_remove(self:PTGtkMultiSorter; position:Tguint);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtktexttagtable.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtktexttagtable.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtktexttagtable.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGtkTextTag  = ^GtkTextTag;
PGtkTextTagTable  = ^GtkTextTagTable;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef __GTK_TEXT_TAG_TABLE_H__}
//// {$define __GTK_TEXT_TAG_TABLE_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtktexttag.h>}

type

  TGtkTextTagTableForeach = procedure (tag:PTGtkTextTag; data:Tgpointer);cdecl;

function GTK_TYPE_TEXT_TAG_TABLE : longint; { return type might be wrong }

function GTK_TEXT_TAG_TABLE(obj : longint) : longint;

function GTK_IS_TEXT_TAG_TABLE(obj : longint) : longint;

function gtk_text_tag_table_get_type:TGType;cdecl;external;
function gtk_text_tag_table_new:^TGtkTextTagTable;cdecl;external;
function gtk_text_tag_table_add(table:PTGtkTextTagTable; tag:PTGtkTextTag):Tgboolean;cdecl;external;
procedure gtk_text_tag_table_remove(table:PTGtkTextTagTable; tag:PTGtkTextTag);cdecl;external;
function gtk_text_tag_table_lookup(table:PTGtkTextTagTable; name:Pchar):^TGtkTextTag;cdecl;external;
procedure gtk_text_tag_table_foreach(table:PTGtkTextTagTable; func:TGtkTextTagTableForeach; data:Tgpointer);cdecl;external;
function gtk_text_tag_table_get_size(table:PTGtkTextTagTable):longint;cdecl;external;
//// {$endif}

// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtktreelistmodel.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtktreelistmodel.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtktreelistmodel.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGListModel  = ^GListModel;
PGtkTreeListModel  = ^GtkTreeListModel;
PGtkTreeListRow  = ^GtkTreeListRow;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_TREE_LIST_MODEL_H__}
//// {$define __GTK_TREE_LIST_MODEL_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gio/gio.h>}
//// {$include <gtk/gtkwidget.h>}

function GTK_TYPE_TREE_LIST_MODEL : longint; { return type might be wrong }

function GTK_TYPE_TREE_LIST_ROW : longint; { return type might be wrong }


type
  TGtkTreeListModelCreateModelFunc = function (item:Tgpointer; user_data:Tgpointer):PTGListModel;cdecl;

function gtk_tree_list_model_new(root:PTGListModel; passthrough:Tgboolean; autoexpand:Tgboolean; create_func:TGtkTreeListModelCreateModelFunc; user_data:Tgpointer; 
           user_destroy:TGDestroyNotify):^TGtkTreeListModel;cdecl;external;
function gtk_tree_list_model_get_model(self:PTGtkTreeListModel):^TGListModel;cdecl;external;
function gtk_tree_list_model_get_passthrough(self:PTGtkTreeListModel):Tgboolean;cdecl;external;
procedure gtk_tree_list_model_set_autoexpand(self:PTGtkTreeListModel; autoexpand:Tgboolean);cdecl;external;
function gtk_tree_list_model_get_autoexpand(self:PTGtkTreeListModel):Tgboolean;cdecl;external;
function gtk_tree_list_model_get_child_row(self:PTGtkTreeListModel; position:Tguint):^TGtkTreeListRow;cdecl;external;
function gtk_tree_list_model_get_row(self:PTGtkTreeListModel; position:Tguint):^TGtkTreeListRow;cdecl;external;
function gtk_tree_list_row_get_item(self:PTGtkTreeListRow):Tgpointer;cdecl;external;
procedure gtk_tree_list_row_set_expanded(self:PTGtkTreeListRow; expanded:Tgboolean);cdecl;external;
function gtk_tree_list_row_get_expanded(self:PTGtkTreeListRow):Tgboolean;cdecl;external;
function gtk_tree_list_row_is_expandable(self:PTGtkTreeListRow):Tgboolean;cdecl;external;
function gtk_tree_list_row_get_position(self:PTGtkTreeListRow):Tguint;cdecl;external;
function gtk_tree_list_row_get_depth(self:PTGtkTreeListRow):Tguint;cdecl;external;
function gtk_tree_list_row_get_children(self:PTGtkTreeListRow):^TGListModel;cdecl;external;
function gtk_tree_list_row_get_parent(self:PTGtkTreeListRow):^TGtkTreeListRow;cdecl;external;
function gtk_tree_list_row_get_child_row(self:PTGtkTreeListRow; position:Tguint):^TGtkTreeListRow;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkmenubutton.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkmenubutton.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkmenubutton.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGMenuModel  = ^GMenuModel;
PGtkMenuButton  = ^GtkMenuButton;
PGtkWidget  = ^GtkWidget;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_MENU_BUTTON_H__}
//// {$define __GTK_MENU_BUTTON_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtktogglebutton.h>}
//// {$include <gtk/gtkpopover.h>}

function GTK_TYPE_MENU_BUTTON : longint; { return type might be wrong }

function GTK_MENU_BUTTON(obj : longint) : longint;

function GTK_IS_MENU_BUTTON(obj : longint) : longint;

type
  T_GtkMenuButton = TGtkMenuButton;


  TGtkMenuButtonCreatePopupFunc = procedure (menu_button:PTGtkMenuButton; user_data:Tgpointer);cdecl;

function gtk_menu_button_get_type:TGType;cdecl;external;
function gtk_menu_button_new:^TGtkWidget;cdecl;external;
procedure gtk_menu_button_set_popover(menu_button:PTGtkMenuButton; popover:PTGtkWidget);cdecl;external;
function gtk_menu_button_get_popover(menu_button:PTGtkMenuButton):^TGtkPopover;cdecl;external;
procedure gtk_menu_button_set_direction(menu_button:PTGtkMenuButton; direction:TGtkArrowType);cdecl;external;
function gtk_menu_button_get_direction(menu_button:PTGtkMenuButton):TGtkArrowType;cdecl;external;
procedure gtk_menu_button_set_menu_model(menu_button:PTGtkMenuButton; menu_model:PTGMenuModel);cdecl;external;
function gtk_menu_button_get_menu_model(menu_button:PTGtkMenuButton):^TGMenuModel;cdecl;external;
procedure gtk_menu_button_set_icon_name(menu_button:PTGtkMenuButton; icon_name:Pchar);cdecl;external;
function gtk_menu_button_get_icon_name(menu_button:PTGtkMenuButton):^char;cdecl;external;
procedure gtk_menu_button_set_always_show_arrow(menu_button:PTGtkMenuButton; always_show_arrow:Tgboolean);cdecl;external;
function gtk_menu_button_get_always_show_arrow(menu_button:PTGtkMenuButton):Tgboolean;cdecl;external;
procedure gtk_menu_button_set_label(menu_button:PTGtkMenuButton; _label:Pchar);cdecl;external;
function gtk_menu_button_get_label(menu_button:PTGtkMenuButton):^char;cdecl;external;
procedure gtk_menu_button_set_use_underline(menu_button:PTGtkMenuButton; use_underline:Tgboolean);cdecl;external;
function gtk_menu_button_get_use_underline(menu_button:PTGtkMenuButton):Tgboolean;cdecl;external;
procedure gtk_menu_button_set_has_frame(menu_button:PTGtkMenuButton; has_frame:Tgboolean);cdecl;external;
function gtk_menu_button_get_has_frame(menu_button:PTGtkMenuButton):Tgboolean;cdecl;external;
procedure gtk_menu_button_popup(menu_button:PTGtkMenuButton);cdecl;external;
procedure gtk_menu_button_popdown(menu_button:PTGtkMenuButton);cdecl;external;
procedure gtk_menu_button_set_create_popup_func(menu_button:PTGtkMenuButton; func:TGtkMenuButtonCreatePopupFunc; user_data:Tgpointer; destroy_notify:TGDestroyNotify);cdecl;external;
procedure gtk_menu_button_set_primary(menu_button:PTGtkMenuButton; primary:Tgboolean);cdecl;external;
function gtk_menu_button_get_primary(menu_button:PTGtkMenuButton):Tgboolean;cdecl;external;
procedure gtk_menu_button_set_child(menu_button:PTGtkMenuButton; child:PTGtkWidget);cdecl;external;
function gtk_menu_button_get_child(menu_button:PTGtkMenuButton):^TGtkWidget;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkcssprovider.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkcssprovider.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkcssprovider.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGFile  = ^GFile;
PGtkCssProvider  = ^GtkCssProvider;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_CSS_PROVIDER_H__}
//// {$define __GTK_CSS_PROVIDER_H__}
//// {$include <gio/gio.h>}
//// {$include <gtk/css/gtkcss.h>}

function GTK_TYPE_CSS_PROVIDER : longint; { return type might be wrong }

function GTK_CSS_PROVIDER(o : longint) : longint;

function GTK_IS_CSS_PROVIDER(o : longint) : longint;

type
  T_GtkCssProvider = TGtkCssProvider;
  T_GtkCssProviderClass = TGtkCssProviderClass;
  T_GtkCssProviderPrivate = TGtkCssProviderPrivate;
  T_GtkCssProvider = record
      parent_instance : TGObject;
    end;


function gtk_css_provider_get_type:TGType;cdecl;external;
function gtk_css_provider_new:^TGtkCssProvider;cdecl;external;
function gtk_css_provider_to_string(provider:PTGtkCssProvider):^char;cdecl;external;
procedure gtk_css_provider_load_from_data(css_provider:PTGtkCssProvider; data:Pchar; length:Tgssize);cdecl;external;
procedure gtk_css_provider_load_from_file(css_provider:PTGtkCssProvider; file:PTGFile);cdecl;external;
procedure gtk_css_provider_load_from_path(css_provider:PTGtkCssProvider; path:Pchar);cdecl;external;
procedure gtk_css_provider_load_from_resource(css_provider:PTGtkCssProvider; resource_path:Pchar);cdecl;external;
procedure gtk_css_provider_load_named(provider:PTGtkCssProvider; name:Pchar; variant:Pchar);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkaccessible.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkaccessible.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkaccessible.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGtkAccessible  = ^GtkAccessible;
PGtkAccessibleProperty  = ^GtkAccessibleProperty;
PGtkAccessibleRelation  = ^GtkAccessibleRelation;
PGtkAccessibleState  = ^GtkAccessibleState;
PGValue  = ^GValue;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <glib-object.h>}
//// {$include <gtk/gtktypes.h>}
//// {$include <gtk/gtkenums.h>}

function GTK_TYPE_ACCESSIBLE : longint; { return type might be wrong }

function gtk_accessible_get_accessible_role(self:PTGtkAccessible):TGtkAccessibleRole;cdecl;external;
procedure gtk_accessible_update_state(self:PTGtkAccessible; first_state:TGtkAccessibleState; args:array of const);cdecl;external;
procedure gtk_accessible_update_state(self:PTGtkAccessible; first_state:TGtkAccessibleState);cdecl;external;
procedure gtk_accessible_update_property(self:PTGtkAccessible; first_property:TGtkAccessibleProperty; args:array of const);cdecl;external;
procedure gtk_accessible_update_property(self:PTGtkAccessible; first_property:TGtkAccessibleProperty);cdecl;external;
procedure gtk_accessible_update_relation(self:PTGtkAccessible; first_relation:TGtkAccessibleRelation; args:array of const);cdecl;external;
procedure gtk_accessible_update_relation(self:PTGtkAccessible; first_relation:TGtkAccessibleRelation);cdecl;external;
procedure gtk_accessible_update_state_value(self:PTGtkAccessible; n_states:longint; states:PTGtkAccessibleState; values:PTGValue);cdecl;external;
procedure gtk_accessible_update_property_value(self:PTGtkAccessible; n_properties:longint; properties:PTGtkAccessibleProperty; values:PTGValue);cdecl;external;
procedure gtk_accessible_update_relation_value(self:PTGtkAccessible; n_relations:longint; relations:PTGtkAccessibleRelation; values:PTGValue);cdecl;external;
procedure gtk_accessible_reset_state(self:PTGtkAccessible; state:TGtkAccessibleState);cdecl;external;
procedure gtk_accessible_reset_property(self:PTGtkAccessible; _property:TGtkAccessibleProperty);cdecl;external;
procedure gtk_accessible_reset_relation(self:PTGtkAccessible; relation:TGtkAccessibleRelation);cdecl;external;
procedure gtk_accessible_state_init_value(state:TGtkAccessibleState; value:PTGValue);cdecl;external;
procedure gtk_accessible_property_init_value(_property:TGtkAccessibleProperty; value:PTGValue);cdecl;external;
procedure gtk_accessible_relation_init_value(relation:TGtkAccessibleRelation; value:PTGValue);cdecl;external;

// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkscrollable.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkscrollable.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkscrollable.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGtkAdjustment  = ^GtkAdjustment;
PGtkBorder  = ^GtkBorder;
PGtkScrollable  = ^GtkScrollable;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_SCROLLABLE_H__}
//// {$define __GTK_SCROLLABLE_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdk.h>}
//// {$include <gtk/gtkenums.h>}
//// {$include <gtk/gtktypes.h>}
//// {$include <gtk/gtkborder.h>}

function GTK_TYPE_SCROLLABLE : longint; { return type might be wrong }

function GTK_SCROLLABLE(obj : longint) : longint;

function GTK_IS_SCROLLABLE(obj : longint) : longint;

function GTK_SCROLLABLE_GET_IFACE(inst : longint) : longint;

type
  T_GtkScrollable = TGtkScrollable;

  T_GtkScrollableInterface = TGtkScrollableInterface;
  T_GtkScrollableInterface = record
      base_iface : TGTypeInterface;
      get_border : function (scrollable:PTGtkScrollable; border:PTGtkBorder):Tgboolean;cdecl;
    end;



function gtk_scrollable_get_type:TGType;cdecl;external;
function gtk_scrollable_get_hadjustment(scrollable:PTGtkScrollable):^TGtkAdjustment;cdecl;external;
procedure gtk_scrollable_set_hadjustment(scrollable:PTGtkScrollable; hadjustment:PTGtkAdjustment);cdecl;external;
function gtk_scrollable_get_vadjustment(scrollable:PTGtkScrollable):^TGtkAdjustment;cdecl;external;
procedure gtk_scrollable_set_vadjustment(scrollable:PTGtkScrollable; vadjustment:PTGtkAdjustment);cdecl;external;
function gtk_scrollable_get_hscroll_policy(scrollable:PTGtkScrollable):TGtkScrollablePolicy;cdecl;external;
procedure gtk_scrollable_set_hscroll_policy(scrollable:PTGtkScrollable; policy:TGtkScrollablePolicy);cdecl;external;
function gtk_scrollable_get_vscroll_policy(scrollable:PTGtkScrollable):TGtkScrollablePolicy;cdecl;external;
procedure gtk_scrollable_set_vscroll_policy(scrollable:PTGtkScrollable; policy:TGtkScrollablePolicy);cdecl;external;
function gtk_scrollable_get_border(scrollable:PTGtkScrollable; border:PTGtkBorder):Tgboolean;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkcustomlayout.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkcustomlayout.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkcustomlayout.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGtkWidget  = ^GtkWidget;
Plongint  = ^longint;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$include <gtk/gtklayoutmanager.h>}

function GTK_TYPE_CUSTOM_LAYOUT : longint; { return type might be wrong }


type

  TGtkCustomRequestModeFunc = function (widget:PTGtkWidget):TGtkSizeRequestMode;cdecl;


  TGtkCustomMeasureFunc = procedure (widget:PTGtkWidget; orientation:TGtkOrientation; for_size:longint; minimum:Plongint; natural:Plongint; 
                minimum_baseline:Plongint; natural_baseline:Plongint);cdecl;


  TGtkCustomAllocateFunc = procedure (widget:PTGtkWidget; width:longint; height:longint; baseline:longint);cdecl;

function gtk_custom_layout_new(request_mode:TGtkCustomRequestModeFunc; measure:TGtkCustomMeasureFunc; allocate:TGtkCustomAllocateFunc):^TGtkLayoutManager;cdecl;external;

// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkshow.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkshow.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkshow.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGAsyncResult  = ^GAsyncResult;
PGCancellable  = ^GCancellable;
PGError  = ^GError;
PGtkWindow  = ^GtkWindow;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_SHOW_H__}
//// {$define __GTK_SHOW_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkwindow.h>}

procedure gtk_show_uri_full(parent:PTGtkWindow; uri:Pchar; timestamp:Tguint32; cancellable:PTGCancellable; callback:TGAsyncReadyCallback; 
            user_data:Tgpointer);cdecl;external;
function gtk_show_uri_full_finish(parent:PTGtkWindow; result:PTGAsyncResult; error:PPTGError):Tgboolean;cdecl;external;
procedure gtk_show_uri(parent:PTGtkWindow; uri:Pchar; timestamp:Tguint32);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkshortcuttrigger.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkshortcuttrigger.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkshortcuttrigger.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGdkDisplay  = ^GdkDisplay;
PGdkEvent  = ^GdkEvent;
PGString  = ^GString;
PGtkAlternativeTrigger  = ^GtkAlternativeTrigger;
PGtkKeyvalTrigger  = ^GtkKeyvalTrigger;
PGtkMnemonicTrigger  = ^GtkMnemonicTrigger;
PGtkShortcutTrigger  = ^GtkShortcutTrigger;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_SHORTCUT_TRIGGER_H__}
//// {$define __GTK_SHORTCUT_TRIGGER_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtktypes.h>}

function GTK_TYPE_SHORTCUT_TRIGGER : longint; { return type might be wrong }

function gtk_shortcut_trigger_parse_string(_string:Pchar):^TGtkShortcutTrigger;cdecl;external;
function gtk_shortcut_trigger_to_string(self:PTGtkShortcutTrigger):^char;cdecl;external;
procedure gtk_shortcut_trigger_print(self:PTGtkShortcutTrigger; _string:PTGString);cdecl;external;
function gtk_shortcut_trigger_to_label(self:PTGtkShortcutTrigger; display:PTGdkDisplay):^char;cdecl;external;
function gtk_shortcut_trigger_print_label(self:PTGtkShortcutTrigger; display:PTGdkDisplay; _string:PTGString):Tgboolean;cdecl;external;
function gtk_shortcut_trigger_hash(trigger:Tgconstpointer):Tguint;cdecl;external;
function gtk_shortcut_trigger_equal(trigger1:Tgconstpointer; trigger2:Tgconstpointer):Tgboolean;cdecl;external;
function gtk_shortcut_trigger_compare(trigger1:Tgconstpointer; trigger2:Tgconstpointer):longint;cdecl;external;
function gtk_shortcut_trigger_trigger(self:PTGtkShortcutTrigger; event:PTGdkEvent; enable_mnemonics:Tgboolean):TGdkKeyMatch;cdecl;external;
function GTK_TYPE_NEVER_TRIGGER : longint; { return type might be wrong }


function gtk_never_trigger_get:^TGtkShortcutTrigger;cdecl;external;
function GTK_TYPE_KEYVAL_TRIGGER : longint; { return type might be wrong }


function gtk_keyval_trigger_new(keyval:Tguint; modifiers:TGdkModifierType):^TGtkShortcutTrigger;cdecl;external;
function gtk_keyval_trigger_get_modifiers(self:PTGtkKeyvalTrigger):TGdkModifierType;cdecl;external;
function gtk_keyval_trigger_get_keyval(self:PTGtkKeyvalTrigger):Tguint;cdecl;external;
function GTK_TYPE_MNEMONIC_TRIGGER : longint; { return type might be wrong }


function gtk_mnemonic_trigger_new(keyval:Tguint):^TGtkShortcutTrigger;cdecl;external;
function gtk_mnemonic_trigger_get_keyval(self:PTGtkMnemonicTrigger):Tguint;cdecl;external;
function GTK_TYPE_ALTERNATIVE_TRIGGER : longint; { return type might be wrong }


function gtk_alternative_trigger_new(first:PTGtkShortcutTrigger; second:PTGtkShortcutTrigger):^TGtkShortcutTrigger;cdecl;external;
function gtk_alternative_trigger_get_first(self:PTGtkAlternativeTrigger):^TGtkShortcutTrigger;cdecl;external;
function gtk_alternative_trigger_get_second(self:PTGtkAlternativeTrigger):^TGtkShortcutTrigger;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkmountoperation.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkmountoperation.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkmountoperation.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGdkDisplay  = ^GdkDisplay;
PGtkMountOperation  = ^GtkMountOperation;
PGtkWindow  = ^GtkWindow;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef __GTK_MOUNT_OPERATION_H__}
//// {$define __GTK_MOUNT_OPERATION_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}

function GTK_TYPE_MOUNT_OPERATION : longint; { return type might be wrong }

function GTK_MOUNT_OPERATION(o : longint) : longint;

function GTK_MOUNT_OPERATION_CLASS(k : longint) : longint;

function GTK_IS_MOUNT_OPERATION(o : longint) : longint;

function GTK_IS_MOUNT_OPERATION_CLASS(k : longint) : longint;

function GTK_MOUNT_OPERATION_GET_CLASS(o : longint) : longint;

type
  T_GtkMountOperation = TGtkMountOperation;
  T_GtkMountOperationClass = TGtkMountOperationClass;
  T_GtkMountOperationPrivate = TGtkMountOperationPrivate;
  T_GtkMountOperation = record
      parent_instance : TGMountOperation;
      priv : ^TGtkMountOperationPrivate;
    end;




  T_GtkMountOperationClass = record
      parent_class : TGMountOperationClass;
      _gtk_reserved1 : procedure ;cdecl;
      _gtk_reserved2 : procedure ;cdecl;
      _gtk_reserved3 : procedure ;cdecl;
      _gtk_reserved4 : procedure ;cdecl;
    end;


function gtk_mount_operation_get_type:TGType;cdecl;external;
function gtk_mount_operation_new(parent:PTGtkWindow):^TGMountOperation;cdecl;external;
function gtk_mount_operation_is_showing(op:PTGtkMountOperation):Tgboolean;cdecl;external;
procedure gtk_mount_operation_set_parent(op:PTGtkMountOperation; parent:PTGtkWindow);cdecl;external;
function gtk_mount_operation_get_parent(op:PTGtkMountOperation):^TGtkWindow;cdecl;external;
procedure gtk_mount_operation_set_display(op:PTGtkMountOperation; display:PTGdkDisplay);cdecl;external;
function gtk_mount_operation_get_display(op:PTGtkMountOperation):^TGdkDisplay;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkfontchooserdialog.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkfontchooserdialog.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkfontchooserdialog.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGtkWindow  = ^GtkWindow;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_FONT_CHOOSER_DIALOG_H__}
//// {$define __GTK_FONT_CHOOSER_DIALOG_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkdialog.h>}

function GTK_TYPE_FONT_CHOOSER_DIALOG : longint; { return type might be wrong }

function GTK_FONT_CHOOSER_DIALOG(obj : longint) : longint;

function GTK_IS_FONT_CHOOSER_DIALOG(obj : longint) : longint;

type
  T_GtkFontChooserDialog = TGtkFontChooserDialog;

function gtk_font_chooser_dialog_get_type:TGType;cdecl;external;
function gtk_font_chooser_dialog_new(title:Pchar; parent:PTGtkWindow):^TGtkWidget;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkconstraint.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkconstraint.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkconstraint.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGtkConstraint  = ^GtkConstraint;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$include <gtk/gtktypes.h>}
//// {$include <gtk/gtkenums.h>}
type
  T_GtkConstraintTarget = TGtkConstraintTarget;

function GTK_TYPE_CONSTRAINT_TARGET : longint; { return type might be wrong }


function GTK_TYPE_CONSTRAINT : longint; { return type might be wrong }

function gtk_constraint_new(target:Tgpointer; target_attribute:TGtkConstraintAttribute; relation:TGtkConstraintRelation; source:Tgpointer; source_attribute:TGtkConstraintAttribute; 
           multiplier:Tdouble; constant:Tdouble; strength:longint):^TGtkConstraint;cdecl;external;
function gtk_constraint_new_constant(target:Tgpointer; target_attribute:TGtkConstraintAttribute; relation:TGtkConstraintRelation; constant:Tdouble; strength:longint):^TGtkConstraint;cdecl;external;
function gtk_constraint_get_target(constraint:PTGtkConstraint):^TGtkConstraintTarget;cdecl;external;
function gtk_constraint_get_target_attribute(constraint:PTGtkConstraint):TGtkConstraintAttribute;cdecl;external;
function gtk_constraint_get_source(constraint:PTGtkConstraint):^TGtkConstraintTarget;cdecl;external;
function gtk_constraint_get_source_attribute(constraint:PTGtkConstraint):TGtkConstraintAttribute;cdecl;external;
function gtk_constraint_get_relation(constraint:PTGtkConstraint):TGtkConstraintRelation;cdecl;external;
function gtk_constraint_get_multiplier(constraint:PTGtkConstraint):Tdouble;cdecl;external;
function gtk_constraint_get_constant(constraint:PTGtkConstraint):Tdouble;cdecl;external;
function gtk_constraint_get_strength(constraint:PTGtkConstraint):longint;cdecl;external;
function gtk_constraint_is_required(constraint:PTGtkConstraint):Tgboolean;cdecl;external;
function gtk_constraint_is_attached(constraint:PTGtkConstraint):Tgboolean;cdecl;external;
function gtk_constraint_is_constant(constraint:PTGtkConstraint):Tgboolean;cdecl;external;

// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkpagesetup.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkpagesetup.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkpagesetup.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGError  = ^GError;
PGKeyFile  = ^GKeyFile;
PGtkPageSetup  = ^GtkPageSetup;
PGtkPaperSize  = ^GtkPaperSize;
PGVariant  = ^GVariant;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_PAGE_SETUP_H__}
//// {$define __GTK_PAGE_SETUP_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkpapersize.h>}
type
  T_GtkPageSetup = TGtkPageSetup;

function GTK_TYPE_PAGE_SETUP : longint; { return type might be wrong }

function GTK_PAGE_SETUP(obj : longint) : longint;

function GTK_IS_PAGE_SETUP(obj : longint) : longint;

function gtk_page_setup_get_type:TGType;cdecl;external;
function gtk_page_setup_new:^TGtkPageSetup;cdecl;external;
function gtk_page_setup_copy(other:PTGtkPageSetup):^TGtkPageSetup;cdecl;external;
function gtk_page_setup_get_orientation(setup:PTGtkPageSetup):TGtkPageOrientation;cdecl;external;
procedure gtk_page_setup_set_orientation(setup:PTGtkPageSetup; orientation:TGtkPageOrientation);cdecl;external;
function gtk_page_setup_get_paper_size(setup:PTGtkPageSetup):^TGtkPaperSize;cdecl;external;
procedure gtk_page_setup_set_paper_size(setup:PTGtkPageSetup; size:PTGtkPaperSize);cdecl;external;
function gtk_page_setup_get_top_margin(setup:PTGtkPageSetup; unit:TGtkUnit):Tdouble;cdecl;external;
procedure gtk_page_setup_set_top_margin(setup:PTGtkPageSetup; margin:Tdouble; unit:TGtkUnit);cdecl;external;
function gtk_page_setup_get_bottom_margin(setup:PTGtkPageSetup; unit:TGtkUnit):Tdouble;cdecl;external;
procedure gtk_page_setup_set_bottom_margin(setup:PTGtkPageSetup; margin:Tdouble; unit:TGtkUnit);cdecl;external;
function gtk_page_setup_get_left_margin(setup:PTGtkPageSetup; unit:TGtkUnit):Tdouble;cdecl;external;
procedure gtk_page_setup_set_left_margin(setup:PTGtkPageSetup; margin:Tdouble; unit:TGtkUnit);cdecl;external;
function gtk_page_setup_get_right_margin(setup:PTGtkPageSetup; unit:TGtkUnit):Tdouble;cdecl;external;
procedure gtk_page_setup_set_right_margin(setup:PTGtkPageSetup; margin:Tdouble; unit:TGtkUnit);cdecl;external;
procedure gtk_page_setup_set_paper_size_and_default_margins(setup:PTGtkPageSetup; size:PTGtkPaperSize);cdecl;external;

function gtk_page_setup_get_paper_width(setup:PTGtkPageSetup; unit:TGtkUnit):Tdouble;cdecl;external;
function gtk_page_setup_get_paper_height(setup:PTGtkPageSetup; unit:TGtkUnit):Tdouble;cdecl;external;

function gtk_page_setup_get_page_width(setup:PTGtkPageSetup; unit:TGtkUnit):Tdouble;cdecl;external;
function gtk_page_setup_get_page_height(setup:PTGtkPageSetup; unit:TGtkUnit):Tdouble;cdecl;external;

function gtk_page_setup_new_from_file(file_name:Pchar; error:PPTGError):^TGtkPageSetup;cdecl;external;
function gtk_page_setup_load_file(setup:PTGtkPageSetup; file_name:Pchar; error:PPTGError):Tgboolean;cdecl;external;
function gtk_page_setup_to_file(setup:PTGtkPageSetup; file_name:Pchar; error:PPTGError):Tgboolean;cdecl;external;
function gtk_page_setup_new_from_key_file(key_file:PTGKeyFile; group_name:Pchar; error:PPTGError):^TGtkPageSetup;cdecl;external;
function gtk_page_setup_load_key_file(setup:PTGtkPageSetup; key_file:PTGKeyFile; group_name:Pchar; error:PPTGError):Tgboolean;cdecl;external;
procedure gtk_page_setup_to_key_file(setup:PTGtkPageSetup; key_file:PTGKeyFile; group_name:Pchar);cdecl;external;
function gtk_page_setup_to_gvariant(setup:PTGtkPageSetup):^TGVariant;cdecl;external;
function gtk_page_setup_new_from_gvariant(variant:PTGVariant):^TGtkPageSetup;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkvolumebutton.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkvolumebutton.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkvolumebutton.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef __GTK_VOLUME_BUTTON_H__}
//// {$define __GTK_VOLUME_BUTTON_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkscalebutton.h>}

function GTK_TYPE_VOLUME_BUTTON : longint; { return type might be wrong }

function GTK_VOLUME_BUTTON(obj : longint) : longint;

function GTK_IS_VOLUME_BUTTON(obj : longint) : longint;

type
  T_GtkVolumeButton = TGtkVolumeButton;
  T_GtkVolumeButton = record
      parent : TGtkScaleButton;
    end;


function gtk_volume_button_get_type:TGType;cdecl;external;
function gtk_volume_button_new:^TGtkWidget;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkcellarea.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkcellarea.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkcellarea.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGdkEvent  = ^GdkEvent;
PGdkRectangle  = ^GdkRectangle;
PGParamSpec  = ^GParamSpec;
PGtkCellArea  = ^GtkCellArea;
PGtkCellAreaClass  = ^GtkCellAreaClass;
PGtkCellAreaContext  = ^GtkCellAreaContext;
PGtkCellRenderer  = ^GtkCellRenderer;
PGtkSnapshot  = ^GtkSnapshot;
PGtkTreeIter  = ^GtkTreeIter;
PGtkTreeModel  = ^GtkTreeModel;
PGtkWidget  = ^GtkWidget;
Pguint  = ^guint;
PGValue  = ^GValue;
Plongint  = ^longint;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_CELL_AREA_H__}
//// {$define __GTK_CELL_AREA_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkcellrenderer.h>}
//// {$include <gtk/gtkwidget.h>}
//// {$include <gtk/gtktreemodel.h>}

function GTK_TYPE_CELL_AREA : longint; { return type might be wrong }

function GTK_CELL_AREA(obj : longint) : longint;

function GTK_CELL_AREA_CLASS(klass : longint) : longint;

function GTK_IS_CELL_AREA(obj : longint) : longint;

function GTK_IS_CELL_AREA_CLASS(klass : longint) : longint;

function GTK_CELL_AREA_GET_CLASS(obj : longint) : longint;

type
  T_GtkCellArea = TGtkCellArea;
  T_GtkCellAreaClass = TGtkCellAreaClass;
  T_GtkCellAreaContext = TGtkCellAreaContext;


function GTK_CELL_AREA_WARN_INVALID_CELL_PROPERTY_ID(object,property_id,pspec : longint) : longint;


type

  TGtkCellCallback = function (renderer:PTGtkCellRenderer; data:Tgpointer):Tgboolean;cdecl;


  TGtkCellAllocCallback = function (renderer:PTGtkCellRenderer; cell_area:PTGdkRectangle; cell_background:PTGdkRectangle; data:Tgpointer):Tgboolean;cdecl;

  T_GtkCellArea = record
      parent_instance : TGInitiallyUnowned;cdecl;
    end;









  T_GtkCellAreaClass = record
      parent_class : TGInitiallyUnownedClass;
      add : procedure (area:PTGtkCellArea; renderer:PTGtkCellRenderer);cdecl;
      remove : procedure (area:PTGtkCellArea; renderer:PTGtkCellRenderer);cdecl;
      foreach : procedure (area:PTGtkCellArea; callback:TGtkCellCallback; callback_data:Tgpointer);cdecl;
      foreach_alloc : procedure (area:PTGtkCellArea; context:PTGtkCellAreaContext; widget:PTGtkWidget; cell_area:PTGdkRectangle; background_area:PTGdkRectangle; 
                    callback:TGtkCellAllocCallback; callback_data:Tgpointer);cdecl;
      event : function (area:PTGtkCellArea; context:PTGtkCellAreaContext; widget:PTGtkWidget; event:PTGdkEvent; cell_area:PTGdkRectangle; 
                   flags:TGtkCellRendererState):longint;cdecl;
      snapshot : procedure (area:PTGtkCellArea; context:PTGtkCellAreaContext; widget:PTGtkWidget; snapshot:PTGtkSnapshot; background_area:PTGdkRectangle; 
                    cell_area:PTGdkRectangle; flags:TGtkCellRendererState; paint_focus:Tgboolean);cdecl;
      apply_attributes : procedure (area:PTGtkCellArea; tree_model:PTGtkTreeModel; iter:PTGtkTreeIter; is_expander:Tgboolean; is_expanded:Tgboolean);cdecl;
      create_context : function (area:PTGtkCellArea):PTGtkCellAreaContext;cdecl;
      copy_context : function (area:PTGtkCellArea; context:PTGtkCellAreaContext):PTGtkCellAreaContext;cdecl;
      get_request_mode : function (area:PTGtkCellArea):TGtkSizeRequestMode;cdecl;
      get_preferred_width : procedure (area:PTGtkCellArea; context:PTGtkCellAreaContext; widget:PTGtkWidget; minimum_width:Plongint; natural_width:Plongint);cdecl;
      get_preferred_height_for_width : procedure (area:PTGtkCellArea; context:PTGtkCellAreaContext; widget:PTGtkWidget; width:longint; minimum_height:Plongint; 
                    natural_height:Plongint);cdecl;
      get_preferred_height : procedure (area:PTGtkCellArea; context:PTGtkCellAreaContext; widget:PTGtkWidget; minimum_height:Plongint; natural_height:Plongint);cdecl;
      get_preferred_width_for_height : procedure (area:PTGtkCellArea; context:PTGtkCellAreaContext; widget:PTGtkWidget; height:longint; minimum_width:Plongint; 
                    natural_width:Plongint);cdecl;
      set_cell_property : procedure (area:PTGtkCellArea; renderer:PTGtkCellRenderer; property_id:Tguint; value:PTGValue; pspec:PTGParamSpec);cdecl;
      get_cell_property : procedure (area:PTGtkCellArea; renderer:PTGtkCellRenderer; property_id:Tguint; value:PTGValue; pspec:PTGParamSpec);cdecl;
      focus : function (area:PTGtkCellArea; direction:TGtkDirectionType):Tgboolean;cdecl;
      is_activatable : function (area:PTGtkCellArea):Tgboolean;cdecl;
      activate : function (area:PTGtkCellArea; context:PTGtkCellAreaContext; widget:PTGtkWidget; cell_area:PTGdkRectangle; flags:TGtkCellRendererState; 
                   edit_only:Tgboolean):Tgboolean;cdecl;
      padding : array[0..7] of Tgpointer;
    end;


function gtk_cell_area_get_type:TGType;cdecl;external;

procedure gtk_cell_area_add(area:PTGtkCellArea; renderer:PTGtkCellRenderer);cdecl;external;
procedure gtk_cell_area_remove(area:PTGtkCellArea; renderer:PTGtkCellRenderer);cdecl;external;
function gtk_cell_area_has_renderer(area:PTGtkCellArea; renderer:PTGtkCellRenderer):Tgboolean;cdecl;external;
procedure gtk_cell_area_foreach(area:PTGtkCellArea; callback:TGtkCellCallback; callback_data:Tgpointer);cdecl;external;
procedure gtk_cell_area_foreach_alloc(area:PTGtkCellArea; context:PTGtkCellAreaContext; widget:PTGtkWidget; cell_area:PTGdkRectangle; background_area:PTGdkRectangle; 
            callback:TGtkCellAllocCallback; callback_data:Tgpointer);cdecl;external;
function gtk_cell_area_event(area:PTGtkCellArea; context:PTGtkCellAreaContext; widget:PTGtkWidget; event:PTGdkEvent; cell_area:PTGdkRectangle; 
           flags:TGtkCellRendererState):longint;cdecl;external;
procedure gtk_cell_area_snapshot(area:PTGtkCellArea; context:PTGtkCellAreaContext; widget:PTGtkWidget; snapshot:PTGtkSnapshot; background_area:PTGdkRectangle; 
            cell_area:PTGdkRectangle; flags:TGtkCellRendererState; paint_focus:Tgboolean);cdecl;external;
procedure gtk_cell_area_get_cell_allocation(area:PTGtkCellArea; context:PTGtkCellAreaContext; widget:PTGtkWidget; renderer:PTGtkCellRenderer; cell_area:PTGdkRectangle; 
            allocation:PTGdkRectangle);cdecl;external;
function gtk_cell_area_get_cell_at_position(area:PTGtkCellArea; context:PTGtkCellAreaContext; widget:PTGtkWidget; cell_area:PTGdkRectangle; x:longint; 
           y:longint; alloc_area:PTGdkRectangle):^TGtkCellRenderer;cdecl;external;

function gtk_cell_area_create_context(area:PTGtkCellArea):^TGtkCellAreaContext;cdecl;external;
function gtk_cell_area_copy_context(area:PTGtkCellArea; context:PTGtkCellAreaContext):^TGtkCellAreaContext;cdecl;external;
function gtk_cell_area_get_request_mode(area:PTGtkCellArea):TGtkSizeRequestMode;cdecl;external;
procedure gtk_cell_area_get_preferred_width(area:PTGtkCellArea; context:PTGtkCellAreaContext; widget:PTGtkWidget; minimum_width:Plongint; natural_width:Plongint);cdecl;external;
procedure gtk_cell_area_get_preferred_height_for_width(area:PTGtkCellArea; context:PTGtkCellAreaContext; widget:PTGtkWidget; width:longint; minimum_height:Plongint; 
            natural_height:Plongint);cdecl;external;
procedure gtk_cell_area_get_preferred_height(area:PTGtkCellArea; context:PTGtkCellAreaContext; widget:PTGtkWidget; minimum_height:Plongint; natural_height:Plongint);cdecl;external;
procedure gtk_cell_area_get_preferred_width_for_height(area:PTGtkCellArea; context:PTGtkCellAreaContext; widget:PTGtkWidget; height:longint; minimum_width:Plongint; 
            natural_width:Plongint);cdecl;external;
function gtk_cell_area_get_current_path_string(area:PTGtkCellArea):^char;cdecl;external;

procedure gtk_cell_area_apply_attributes(area:PTGtkCellArea; tree_model:PTGtkTreeModel; iter:PTGtkTreeIter; is_expander:Tgboolean; is_expanded:Tgboolean);cdecl;external;
procedure gtk_cell_area_attribute_connect(area:PTGtkCellArea; renderer:PTGtkCellRenderer; attribute:Pchar; column:longint);cdecl;external;
procedure gtk_cell_area_attribute_disconnect(area:PTGtkCellArea; renderer:PTGtkCellRenderer; attribute:Pchar);cdecl;external;
function gtk_cell_area_attribute_get_column(area:PTGtkCellArea; renderer:PTGtkCellRenderer; attribute:Pchar):longint;cdecl;external;

procedure gtk_cell_area_class_install_cell_property(aclass:PTGtkCellAreaClass; property_id:Tguint; pspec:PTGParamSpec);cdecl;external;
function gtk_cell_area_class_find_cell_property(aclass:PTGtkCellAreaClass; property_name:Pchar):^TGParamSpec;cdecl;external;
function gtk_cell_area_class_list_cell_properties(aclass:PTGtkCellAreaClass; n_properties:PTguint):^^TGParamSpec;cdecl;external;
procedure gtk_cell_area_add_with_properties(area:PTGtkCellArea; renderer:PTGtkCellRenderer; first_prop_name:Pchar; args:array of const);cdecl;external;
procedure gtk_cell_area_add_with_properties(area:PTGtkCellArea; renderer:PTGtkCellRenderer; first_prop_name:Pchar);cdecl;external;
procedure gtk_cell_area_cell_set(area:PTGtkCellArea; renderer:PTGtkCellRenderer; first_prop_name:Pchar; args:array of const);cdecl;external;
procedure gtk_cell_area_cell_set(area:PTGtkCellArea; renderer:PTGtkCellRenderer; first_prop_name:Pchar);cdecl;external;
procedure gtk_cell_area_cell_get(area:PTGtkCellArea; renderer:PTGtkCellRenderer; first_prop_name:Pchar; args:array of const);cdecl;external;
procedure gtk_cell_area_cell_get(area:PTGtkCellArea; renderer:PTGtkCellRenderer; first_prop_name:Pchar);cdecl;external;
procedure gtk_cell_area_cell_set_valist(area:PTGtkCellArea; renderer:PTGtkCellRenderer; first_property_name:Pchar; var_args:Tva_list);cdecl;external;
procedure gtk_cell_area_cell_get_valist(area:PTGtkCellArea; renderer:PTGtkCellRenderer; first_property_name:Pchar; var_args:Tva_list);cdecl;external;
procedure gtk_cell_area_cell_set_property(area:PTGtkCellArea; renderer:PTGtkCellRenderer; property_name:Pchar; value:PTGValue);cdecl;external;
procedure gtk_cell_area_cell_get_property(area:PTGtkCellArea; renderer:PTGtkCellRenderer; property_name:Pchar; value:PTGValue);cdecl;external;

function gtk_cell_area_is_activatable(area:PTGtkCellArea):Tgboolean;cdecl;external;
function gtk_cell_area_activate(area:PTGtkCellArea; context:PTGtkCellAreaContext; widget:PTGtkWidget; cell_area:PTGdkRectangle; flags:TGtkCellRendererState; 
           edit_only:Tgboolean):Tgboolean;cdecl;external;
function gtk_cell_area_focus(area:PTGtkCellArea; direction:TGtkDirectionType):Tgboolean;cdecl;external;
procedure gtk_cell_area_set_focus_cell(area:PTGtkCellArea; renderer:PTGtkCellRenderer);cdecl;external;
function gtk_cell_area_get_focus_cell(area:PTGtkCellArea):^TGtkCellRenderer;cdecl;external;

procedure gtk_cell_area_add_focus_sibling(area:PTGtkCellArea; renderer:PTGtkCellRenderer; sibling:PTGtkCellRenderer);cdecl;external;
procedure gtk_cell_area_remove_focus_sibling(area:PTGtkCellArea; renderer:PTGtkCellRenderer; sibling:PTGtkCellRenderer);cdecl;external;
function gtk_cell_area_is_focus_sibling(area:PTGtkCellArea; renderer:PTGtkCellRenderer; sibling:PTGtkCellRenderer):Tgboolean;cdecl;external;
function gtk_cell_area_get_focus_siblings(area:PTGtkCellArea; renderer:PTGtkCellRenderer):^TGList;cdecl;external;
function gtk_cell_area_get_focus_from_sibling(area:PTGtkCellArea; renderer:PTGtkCellRenderer):^TGtkCellRenderer;cdecl;external;

function gtk_cell_area_get_edited_cell(area:PTGtkCellArea):^TGtkCellRenderer;cdecl;external;
function gtk_cell_area_get_edit_widget(area:PTGtkCellArea):^TGtkCellEditable;cdecl;external;
function gtk_cell_area_activate_cell(area:PTGtkCellArea; widget:PTGtkWidget; renderer:PTGtkCellRenderer; event:PTGdkEvent; cell_area:PTGdkRectangle; 
           flags:TGtkCellRendererState):Tgboolean;cdecl;external;
procedure gtk_cell_area_stop_editing(area:PTGtkCellArea; canceled:Tgboolean);cdecl;external;


procedure gtk_cell_area_inner_cell_area(area:PTGtkCellArea; widget:PTGtkWidget; cell_area:PTGdkRectangle; inner_area:PTGdkRectangle);cdecl;external;

procedure gtk_cell_area_request_renderer(area:PTGtkCellArea; renderer:PTGtkCellRenderer; orientation:TGtkOrientation; widget:PTGtkWidget; for_size:longint; 
            minimum_size:Plongint; natural_size:Plongint);cdecl;external;

procedure _gtk_cell_area_set_cell_data_func_with_proxy(area:PTGtkCellArea; cell:PTGtkCellRenderer; func:TGFunc; func_data:Tgpointer; destroy:TGDestroyNotify; 
            proxy:Tgpointer);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtksizegroup.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtksizegroup.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtksizegroup.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGtkSizeGroup  = ^GtkSizeGroup;
PGtkWidget  = ^GtkWidget;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_SIZE_GROUP_H__}
//// {$define __GTK_SIZE_GROUP_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkwidget.h>}

function GTK_TYPE_SIZE_GROUP : longint; { return type might be wrong }

function GTK_SIZE_GROUP(obj : longint) : longint;

function GTK_IS_SIZE_GROUP(obj : longint) : longint;

type
  T_GtkSizeGroup = TGtkSizeGroup;
  T_GtkSizeGroup = record
      parent_instance : TGObject;
    end;


function gtk_size_group_get_type:TGType;cdecl;external;
function gtk_size_group_new(mode:TGtkSizeGroupMode):^TGtkSizeGroup;cdecl;external;
procedure gtk_size_group_set_mode(size_group:PTGtkSizeGroup; mode:TGtkSizeGroupMode);cdecl;external;
function gtk_size_group_get_mode(size_group:PTGtkSizeGroup):TGtkSizeGroupMode;cdecl;external;
procedure gtk_size_group_add_widget(size_group:PTGtkSizeGroup; widget:PTGtkWidget);cdecl;external;
procedure gtk_size_group_remove_widget(size_group:PTGtkSizeGroup; widget:PTGtkWidget);cdecl;external;
function gtk_size_group_get_widgets(size_group:PTGtkSizeGroup):^TGSList;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkatcontext.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkatcontext.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkatcontext.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGdkDisplay  = ^GdkDisplay;
PGtkAccessible  = ^GtkAccessible;
PGtkATContext  = ^GtkATContext;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtktypes.h>}
//// {$include <gtk/gtkenums.h>}
//// {$include <gtk/gtkaccessible.h>}

function GTK_TYPE_AT_CONTEXT : longint; { return type might be wrong }

function gtk_at_context_get_accessible(self:PTGtkATContext):^TGtkAccessible;cdecl;external;
function gtk_at_context_get_accessible_role(self:PTGtkATContext):TGtkAccessibleRole;cdecl;external;
function gtk_at_context_create(accessible_role:TGtkAccessibleRole; accessible:PTGtkAccessible; display:PTGdkDisplay):^TGtkATContext;cdecl;external;

// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkcellview.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkcellview.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkcellview.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGdkTexture  = ^GdkTexture;
PGtkCellArea  = ^GtkCellArea;
PGtkCellAreaContext  = ^GtkCellAreaContext;
PGtkCellView  = ^GtkCellView;
PGtkTreeModel  = ^GtkTreeModel;
PGtkTreePath  = ^GtkTreePath;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_CELL_VIEW_H__}
//// {$define __GTK_CELL_VIEW_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkwidget.h>}
//// {$include <gtk/gtkcellrenderer.h>}
//// {$include <gtk/gtkcellarea.h>}
//// {$include <gtk/gtkcellareacontext.h>}
//// {$include <gtk/gtktreemodel.h>}

function GTK_TYPE_CELL_VIEW : longint; { return type might be wrong }

function GTK_CELL_VIEW(obj : longint) : longint;

function GTK_IS_CELL_VIEW(obj : longint) : longint;

type
  T_GtkCellView = TGtkCellView;

function gtk_cell_view_get_type:TGType;cdecl;external;
function gtk_cell_view_new:^TGtkWidget;cdecl;external;
function gtk_cell_view_new_with_context(area:PTGtkCellArea; context:PTGtkCellAreaContext):^TGtkWidget;cdecl;external;
function gtk_cell_view_new_with_text(text:Pchar):^TGtkWidget;cdecl;external;
function gtk_cell_view_new_with_markup(markup:Pchar):^TGtkWidget;cdecl;external;
function gtk_cell_view_new_with_texture(texture:PTGdkTexture):^TGtkWidget;cdecl;external;
procedure gtk_cell_view_set_model(cell_view:PTGtkCellView; model:PTGtkTreeModel);cdecl;external;
function gtk_cell_view_get_model(cell_view:PTGtkCellView):^TGtkTreeModel;cdecl;external;
procedure gtk_cell_view_set_displayed_row(cell_view:PTGtkCellView; path:PTGtkTreePath);cdecl;external;
function gtk_cell_view_get_displayed_row(cell_view:PTGtkCellView):^TGtkTreePath;cdecl;external;
function gtk_cell_view_get_draw_sensitive(cell_view:PTGtkCellView):Tgboolean;cdecl;external;
procedure gtk_cell_view_set_draw_sensitive(cell_view:PTGtkCellView; draw_sensitive:Tgboolean);cdecl;external;
function gtk_cell_view_get_fit_model(cell_view:PTGtkCellView):Tgboolean;cdecl;external;
procedure gtk_cell_view_set_fit_model(cell_view:PTGtkCellView; fit_model:Tgboolean);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkscale.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkscale.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkscale.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGtkAdjustment  = ^GtkAdjustment;
PGtkScale  = ^GtkScale;
Plongint  = ^longint;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef __GTK_SCALE_H__}
//// {$define __GTK_SCALE_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkrange.h>}

function GTK_TYPE_SCALE : longint; { return type might be wrong }

function GTK_SCALE(obj : longint) : longint;

function GTK_SCALE_CLASS(klass : longint) : longint;

function GTK_IS_SCALE(obj : longint) : longint;

function GTK_IS_SCALE_CLASS(klass : longint) : longint;

function GTK_SCALE_GET_CLASS(obj : longint) : longint;

type
  T_GtkScale = TGtkScale;
  T_GtkScaleClass = TGtkScaleClass;
  T_GtkScale = record
      parent_instance : TGtkRange;
    end;


  T_GtkScaleClass = record
      parent_class : TGtkRangeClass;
      get_layout_offsets : procedure (scale:PTGtkScale; x:Plongint; y:Plongint);cdecl;
      padding : array[0..7] of Tgpointer;
    end;



  TGtkScaleFormatValueFunc = function (scale:PTGtkScale; value:Tdouble; user_data:Tgpointer):Pchar;cdecl;

function gtk_scale_get_type:TGType;cdecl;external;
function gtk_scale_new(orientation:TGtkOrientation; adjustment:PTGtkAdjustment):^TGtkWidget;cdecl;external;
function gtk_scale_new_with_range(orientation:TGtkOrientation; min:Tdouble; max:Tdouble; step:Tdouble):^TGtkWidget;cdecl;external;
procedure gtk_scale_set_digits(scale:PTGtkScale; digits:longint);cdecl;external;
function gtk_scale_get_digits(scale:PTGtkScale):longint;cdecl;external;
procedure gtk_scale_set_draw_value(scale:PTGtkScale; draw_value:Tgboolean);cdecl;external;
function gtk_scale_get_draw_value(scale:PTGtkScale):Tgboolean;cdecl;external;
procedure gtk_scale_set_has_origin(scale:PTGtkScale; has_origin:Tgboolean);cdecl;external;
function gtk_scale_get_has_origin(scale:PTGtkScale):Tgboolean;cdecl;external;
procedure gtk_scale_set_value_pos(scale:PTGtkScale; pos:TGtkPositionType);cdecl;external;
function gtk_scale_get_value_pos(scale:PTGtkScale):TGtkPositionType;cdecl;external;
function gtk_scale_get_layout(scale:PTGtkScale):^TPangoLayout;cdecl;external;
procedure gtk_scale_get_layout_offsets(scale:PTGtkScale; x:Plongint; y:Plongint);cdecl;external;
procedure gtk_scale_add_mark(scale:PTGtkScale; value:Tdouble; position:TGtkPositionType; markup:Pchar);cdecl;external;
procedure gtk_scale_clear_marks(scale:PTGtkScale);cdecl;external;
procedure gtk_scale_set_format_value_func(scale:PTGtkScale; func:TGtkScaleFormatValueFunc; user_data:Tgpointer; destroy_notify:TGDestroyNotify);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkscrollbar.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkscrollbar.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkscrollbar.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGtkAdjustment  = ^GtkAdjustment;
PGtkScrollbar  = ^GtkScrollbar;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef __GTK_SCROLLBAR_H__}
//// {$define __GTK_SCROLLBAR_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkwidget.h>}

function GTK_TYPE_SCROLLBAR : longint; { return type might be wrong }

function GTK_SCROLLBAR(obj : longint) : longint;

function GTK_IS_SCROLLBAR(obj : longint) : longint;

type
  T_GtkScrollbar = TGtkScrollbar;

function gtk_scrollbar_get_type:TGType;cdecl;external;
function gtk_scrollbar_new(orientation:TGtkOrientation; adjustment:PTGtkAdjustment):^TGtkWidget;cdecl;external;
procedure gtk_scrollbar_set_adjustment(self:PTGtkScrollbar; adjustment:PTGtkAdjustment);cdecl;external;
function gtk_scrollbar_get_adjustment(self:PTGtkScrollbar):^TGtkAdjustment;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkstyleprovider.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkstyleprovider.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkstyleprovider.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_STYLE_PROVIDER_H__}
//// {$define __GTK_STYLE_PROVIDER_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gdk/gdk.h>}
//// {$include <gtk/gtkenums.h>}
//// {$include <gtk/gtktypes.h>}

function GTK_TYPE_STYLE_PROVIDER : longint; { return type might be wrong }

function GTK_STYLE_PROVIDER(o : longint) : longint;

function GTK_IS_STYLE_PROVIDER(o : longint) : longint;


const
  GTK_STYLE_PROVIDER_PRIORITY_FALLBACK = 1;  

  GTK_STYLE_PROVIDER_PRIORITY_THEME = 200;  

  GTK_STYLE_PROVIDER_PRIORITY_SETTINGS = 400;  

  GTK_STYLE_PROVIDER_PRIORITY_APPLICATION = 600;  

  GTK_STYLE_PROVIDER_PRIORITY_USER = 800;  
type
  T_GtkStyleProvider = TGtkStyleProvider;


function gtk_style_provider_get_type:TGType;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkinscription.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkinscription.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkinscription.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGtkInscription  = ^GtkInscription;
PPangoAttrList  = ^PangoAttrList;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_INSCRIPTION_H__}
//// {$define __GTK_INSCRIPTION_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkwidget.h>}

function GTK_TYPE_INSCRIPTION : longint; { return type might be wrong }


type
  TGtkInscriptionOverflow = (GTK_INSCRIPTION_OVERFLOW_CLIP,GTK_INSCRIPTION_OVERFLOW_ELLIPSIZE_START,
    GTK_INSCRIPTION_OVERFLOW_ELLIPSIZE_MIDDLE,
    GTK_INSCRIPTION_OVERFLOW_ELLIPSIZE_END
    );

function gtk_inscription_new(text:Pchar):^TGtkWidget;cdecl;external;
function gtk_inscription_get_text(self:PTGtkInscription):^char;cdecl;external;
procedure gtk_inscription_set_text(self:PTGtkInscription; text:Pchar);cdecl;external;
function gtk_inscription_get_attributes(self:PTGtkInscription):^TPangoAttrList;cdecl;external;
procedure gtk_inscription_set_attributes(self:PTGtkInscription; attrs:PTPangoAttrList);cdecl;external;
procedure gtk_inscription_set_markup(self:PTGtkInscription; markup:Pchar);cdecl;external;
function gtk_inscription_get_text_overflow(self:PTGtkInscription):TGtkInscriptionOverflow;cdecl;external;
procedure gtk_inscription_set_text_overflow(self:PTGtkInscription; overflow:TGtkInscriptionOverflow);cdecl;external;
function gtk_inscription_get_wrap_mode(self:PTGtkInscription):TPangoWrapMode;cdecl;external;
procedure gtk_inscription_set_wrap_mode(self:PTGtkInscription; wrap_mode:TPangoWrapMode);cdecl;external;
function gtk_inscription_get_min_chars(self:PTGtkInscription):Tguint;cdecl;external;
procedure gtk_inscription_set_min_chars(self:PTGtkInscription; min_chars:Tguint);cdecl;external;
function gtk_inscription_get_nat_chars(self:PTGtkInscription):Tguint;cdecl;external;
procedure gtk_inscription_set_nat_chars(self:PTGtkInscription; nat_chars:Tguint);cdecl;external;
function gtk_inscription_get_min_lines(self:PTGtkInscription):Tguint;cdecl;external;
procedure gtk_inscription_set_min_lines(self:PTGtkInscription; min_lines:Tguint);cdecl;external;
function gtk_inscription_get_nat_lines(self:PTGtkInscription):Tguint;cdecl;external;
procedure gtk_inscription_set_nat_lines(self:PTGtkInscription; nat_lines:Tguint);cdecl;external;
function gtk_inscription_get_xalign(self:PTGtkInscription):single;cdecl;external;
procedure gtk_inscription_set_xalign(self:PTGtkInscription; xalign:single);cdecl;external;
function gtk_inscription_get_yalign(self:PTGtkInscription):single;cdecl;external;
procedure gtk_inscription_set_yalign(self:PTGtkInscription; yalign:single);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkrecentmanager.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkrecentmanager.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkrecentmanager.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGDateTime  = ^GDateTime;
PGError  = ^GError;
Pgsize  = ^gsize;
PGtkRecentData  = ^GtkRecentData;
PGtkRecentInfo  = ^GtkRecentInfo;
PGtkRecentManager  = ^GtkRecentManager;
Pguint  = ^guint;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_RECENT_MANAGER_H__}
//// {$define __GTK_RECENT_MANAGER_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gdk-pixbuf/gdk-pixbuf.h>}
//// {$include <gdk/gdk.h>}
//// {$include <time.h>}

function GTK_TYPE_RECENT_INFO : longint; { return type might be wrong }

function GTK_TYPE_RECENT_MANAGER : longint; { return type might be wrong }

function GTK_RECENT_MANAGER(obj : longint) : longint;

function GTK_IS_RECENT_MANAGER(obj : longint) : longint;

function GTK_RECENT_MANAGER_CLASS(klass : longint) : longint;

function GTK_IS_RECENT_MANAGER_CLASS(klass : longint) : longint;

function GTK_RECENT_MANAGER_GET_CLASS(obj : longint) : longint;

type
  T_GtkRecentInfo = TGtkRecentInfo;
  T_GtkRecentData = TGtkRecentData;
  T_GtkRecentManager = TGtkRecentManager;
  T_GtkRecentManagerClass = TGtkRecentManagerClass;
  T_GtkRecentManagerPrivate = TGtkRecentManagerPrivate;

  T_GtkRecentData = record
      display_name : ^char;
      description : ^char;
      mime_type : ^char;
      app_name : ^char;
      app_exec : ^char;
      groups : ^^char;
      is_private : Tgboolean;
    end;


  T_GtkRecentManager = record
      parent_instance : TGObject;
      priv : ^TGtkRecentManagerPrivate;
    end;




  T_GtkRecentManagerClass = record
      parent_class : TGObjectClass;
      changed : procedure (manager:PTGtkRecentManager);cdecl;
      _gtk_recent1 : procedure ;cdecl;
      _gtk_recent2 : procedure ;cdecl;
      _gtk_recent3 : procedure ;cdecl;
      _gtk_recent4 : procedure ;cdecl;
    end;



  TGtkRecentManagerError = (GTK_RECENT_MANAGER_ERROR_NOT_FOUND,GTK_RECENT_MANAGER_ERROR_INVALID_URI,
    GTK_RECENT_MANAGER_ERROR_INVALID_ENCODING,
    GTK_RECENT_MANAGER_ERROR_NOT_REGISTERED,
    GTK_RECENT_MANAGER_ERROR_READ,GTK_RECENT_MANAGER_ERROR_WRITE,
    GTK_RECENT_MANAGER_ERROR_UNKNOWN);


function GTK_RECENT_MANAGER_ERROR : longint; { return type might be wrong }

function gtk_recent_manager_error_quark:TGQuark;cdecl;external;
function gtk_recent_manager_get_type:TGType;cdecl;external;
function gtk_recent_manager_new:^TGtkRecentManager;cdecl;external;
function gtk_recent_manager_get_default:^TGtkRecentManager;cdecl;external;
function gtk_recent_manager_add_item(manager:PTGtkRecentManager; uri:Pchar):Tgboolean;cdecl;external;
function gtk_recent_manager_add_full(manager:PTGtkRecentManager; uri:Pchar; recent_data:PTGtkRecentData):Tgboolean;cdecl;external;
function gtk_recent_manager_remove_item(manager:PTGtkRecentManager; uri:Pchar; error:PPTGError):Tgboolean;cdecl;external;
function gtk_recent_manager_lookup_item(manager:PTGtkRecentManager; uri:Pchar; error:PPTGError):^TGtkRecentInfo;cdecl;external;
function gtk_recent_manager_has_item(manager:PTGtkRecentManager; uri:Pchar):Tgboolean;cdecl;external;
function gtk_recent_manager_move_item(manager:PTGtkRecentManager; uri:Pchar; new_uri:Pchar; error:PPTGError):Tgboolean;cdecl;external;
function gtk_recent_manager_get_items(manager:PTGtkRecentManager):^TGList;cdecl;external;
function gtk_recent_manager_purge_items(manager:PTGtkRecentManager; error:PPTGError):longint;cdecl;external;
function gtk_recent_info_get_type:TGType;cdecl;external;
function gtk_recent_info_ref(info:PTGtkRecentInfo):^TGtkRecentInfo;cdecl;external;
procedure gtk_recent_info_unref(info:PTGtkRecentInfo);cdecl;external;
function gtk_recent_info_get_uri(info:PTGtkRecentInfo):^char;cdecl;external;
function gtk_recent_info_get_display_name(info:PTGtkRecentInfo):^char;cdecl;external;
function gtk_recent_info_get_description(info:PTGtkRecentInfo):^char;cdecl;external;
function gtk_recent_info_get_mime_type(info:PTGtkRecentInfo):^char;cdecl;external;
function gtk_recent_info_get_added(info:PTGtkRecentInfo):^TGDateTime;cdecl;external;
function gtk_recent_info_get_modified(info:PTGtkRecentInfo):^TGDateTime;cdecl;external;
function gtk_recent_info_get_visited(info:PTGtkRecentInfo):^TGDateTime;cdecl;external;
function gtk_recent_info_get_private_hint(info:PTGtkRecentInfo):Tgboolean;cdecl;external;
function gtk_recent_info_get_application_info(info:PTGtkRecentInfo; app_name:Pchar; app_exec:PPchar; count:PTguint; stamp:PPTGDateTime):Tgboolean;cdecl;external;
function gtk_recent_info_create_app_info(info:PTGtkRecentInfo; app_name:Pchar; error:PPTGError):^TGAppInfo;cdecl;external;
function gtk_recent_info_get_applications(info:PTGtkRecentInfo; length:PTgsize):^^char;cdecl;external;
function gtk_recent_info_last_application(info:PTGtkRecentInfo):^char;cdecl;external;
function gtk_recent_info_has_application(info:PTGtkRecentInfo; app_name:Pchar):Tgboolean;cdecl;external;
function gtk_recent_info_get_groups(info:PTGtkRecentInfo; length:PTgsize):^^char;cdecl;external;
function gtk_recent_info_has_group(info:PTGtkRecentInfo; group_name:Pchar):Tgboolean;cdecl;external;
function gtk_recent_info_get_gicon(info:PTGtkRecentInfo):^TGIcon;cdecl;external;
function gtk_recent_info_get_short_name(info:PTGtkRecentInfo):^char;cdecl;external;
function gtk_recent_info_get_uri_display(info:PTGtkRecentInfo):^char;cdecl;external;
function gtk_recent_info_get_age(info:PTGtkRecentInfo):longint;cdecl;external;
function gtk_recent_info_is_local(info:PTGtkRecentInfo):Tgboolean;cdecl;external;
function gtk_recent_info_exists(info:PTGtkRecentInfo):Tgboolean;cdecl;external;
function gtk_recent_info_match(info_a:PTGtkRecentInfo; info_b:PTGtkRecentInfo):Tgboolean;cdecl;external;

procedure _gtk_recent_manager_sync;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkstacksidebar.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkstacksidebar.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkstacksidebar.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGtkStack  = ^GtkStack;
PGtkStackSidebar  = ^GtkStackSidebar;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_STACK_SIDEBAR_H__}
//// {$define __GTK_STACK_SIDEBAR_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkstack.h>}

function GTK_TYPE_STACK_SIDEBAR : longint; { return type might be wrong }

function GTK_STACK_SIDEBAR(obj : longint) : longint;

function GTK_IS_STACK_SIDEBAR(obj : longint) : longint;

type
  T_GtkStackSidebar = TGtkStackSidebar;

function gtk_stack_sidebar_get_type:TGType;cdecl;external;
function gtk_stack_sidebar_new:^TGtkWidget;cdecl;external;
procedure gtk_stack_sidebar_set_stack(self:PTGtkStackSidebar; stack:PTGtkStack);cdecl;external;
function gtk_stack_sidebar_get_stack(self:PTGtkStackSidebar):^TGtkStack;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkfontchooserwidget.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkfontchooserwidget.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkfontchooserwidget.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_FONT_CHOOSER_WIDGET_H__}
//// {$define __GTK_FONT_CHOOSER_WIDGET_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkwidget.h>}

function GTK_TYPE_FONT_CHOOSER_WIDGET : longint; { return type might be wrong }

function GTK_FONT_CHOOSER_WIDGET(obj : longint) : longint;

function GTK_IS_FONT_CHOOSER_WIDGET(obj : longint) : longint;

type
  T_GtkFontChooserWidget = TGtkFontChooserWidget;

function gtk_font_chooser_widget_get_type:TGType;cdecl;external;
function gtk_font_chooser_widget_new:^TGtkWidget;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkwindow.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkwindow.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkwindow.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGdkDisplay  = ^GdkDisplay;
PGdkMonitor  = ^GdkMonitor;
PGtkApplication  = ^GtkApplication;
PGtkWidget  = ^GtkWidget;
PGtkWindow  = ^GtkWindow;
Plongint  = ^longint;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef __GTK_WINDOW_H__}
//// {$define __GTK_WINDOW_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkapplication.h>}
//// {$include <gtk/gtkaccelgroup.h>}
//// {$include <gtk/gtkwidget.h>}

function GTK_TYPE_WINDOW : longint; { return type might be wrong }

function GTK_WINDOW(obj : longint) : longint;

function GTK_WINDOW_CLASS(klass : longint) : longint;

function GTK_IS_WINDOW(obj : longint) : longint;

function GTK_IS_WINDOW_CLASS(klass : longint) : longint;

function GTK_WINDOW_GET_CLASS(obj : longint) : longint;

type
  T_GtkWindowClass = TGtkWindowClass;
  T_GtkWindowGroup = TGtkWindowGroup;
  T_GtkWindowGroupClass = TGtkWindowGroupClass;
  T_GtkWindowGroupPrivate = TGtkWindowGroupPrivate;
  T_GtkWindow = record
      parent_instance : TGtkWidget;
    end;





  T_GtkWindowClass = record
      parent_class : TGtkWidgetClass;
      activate_focus : procedure (window:PTGtkWindow);cdecl;
      activate_default : procedure (window:PTGtkWindow);cdecl;
      keys_changed : procedure (window:PTGtkWindow);cdecl;
      enable_debugging : function (window:PTGtkWindow; toggle:Tgboolean):Tgboolean;cdecl;
      close_request : function (window:PTGtkWindow):Tgboolean;cdecl;
      padding : array[0..7] of Tgpointer;
    end;


function gtk_window_get_type:TGType;cdecl;external;
function gtk_window_new:^TGtkWidget;cdecl;external;
procedure gtk_window_set_title(window:PTGtkWindow; title:Pchar);cdecl;external;
function gtk_window_get_title(window:PTGtkWindow):^char;cdecl;external;
procedure gtk_window_set_startup_id(window:PTGtkWindow; startup_id:Pchar);cdecl;external;
procedure gtk_window_set_focus(window:PTGtkWindow; focus:PTGtkWidget);cdecl;external;
function gtk_window_get_focus(window:PTGtkWindow):^TGtkWidget;cdecl;external;
procedure gtk_window_set_default_widget(window:PTGtkWindow; default_widget:PTGtkWidget);cdecl;external;
function gtk_window_get_default_widget(window:PTGtkWindow):^TGtkWidget;cdecl;external;
procedure gtk_window_set_transient_for(window:PTGtkWindow; parent:PTGtkWindow);cdecl;external;
function gtk_window_get_transient_for(window:PTGtkWindow):^TGtkWindow;cdecl;external;
procedure gtk_window_set_destroy_with_parent(window:PTGtkWindow; setting:Tgboolean);cdecl;external;
function gtk_window_get_destroy_with_parent(window:PTGtkWindow):Tgboolean;cdecl;external;
procedure gtk_window_set_hide_on_close(window:PTGtkWindow; setting:Tgboolean);cdecl;external;
function gtk_window_get_hide_on_close(window:PTGtkWindow):Tgboolean;cdecl;external;
procedure gtk_window_set_mnemonics_visible(window:PTGtkWindow; setting:Tgboolean);cdecl;external;
function gtk_window_get_mnemonics_visible(window:PTGtkWindow):Tgboolean;cdecl;external;
procedure gtk_window_set_focus_visible(window:PTGtkWindow; setting:Tgboolean);cdecl;external;
function gtk_window_get_focus_visible(window:PTGtkWindow):Tgboolean;cdecl;external;
procedure gtk_window_set_resizable(window:PTGtkWindow; resizable:Tgboolean);cdecl;external;
function gtk_window_get_resizable(window:PTGtkWindow):Tgboolean;cdecl;external;
procedure gtk_window_set_display(window:PTGtkWindow; display:PTGdkDisplay);cdecl;external;
function gtk_window_is_active(window:PTGtkWindow):Tgboolean;cdecl;external;
procedure gtk_window_set_decorated(window:PTGtkWindow; setting:Tgboolean);cdecl;external;
function gtk_window_get_decorated(window:PTGtkWindow):Tgboolean;cdecl;external;
procedure gtk_window_set_deletable(window:PTGtkWindow; setting:Tgboolean);cdecl;external;
function gtk_window_get_deletable(window:PTGtkWindow):Tgboolean;cdecl;external;
procedure gtk_window_set_icon_name(window:PTGtkWindow; name:Pchar);cdecl;external;
function gtk_window_get_icon_name(window:PTGtkWindow):^char;cdecl;external;
procedure gtk_window_set_default_icon_name(name:Pchar);cdecl;external;
function gtk_window_get_default_icon_name:^char;cdecl;external;
procedure gtk_window_set_auto_startup_notification(setting:Tgboolean);cdecl;external;

procedure gtk_window_set_modal(window:PTGtkWindow; modal:Tgboolean);cdecl;external;
function gtk_window_get_modal(window:PTGtkWindow):Tgboolean;cdecl;external;
function gtk_window_get_toplevels:^TGListModel;cdecl;external;
function gtk_window_list_toplevels:^TGList;cdecl;external;
procedure gtk_window_present(window:PTGtkWindow);cdecl;external;
procedure gtk_window_present_with_time(window:PTGtkWindow; timestamp:Tguint32);cdecl;external;
procedure gtk_window_minimize(window:PTGtkWindow);cdecl;external;
procedure gtk_window_unminimize(window:PTGtkWindow);cdecl;external;
procedure gtk_window_maximize(window:PTGtkWindow);cdecl;external;
procedure gtk_window_unmaximize(window:PTGtkWindow);cdecl;external;
procedure gtk_window_fullscreen(window:PTGtkWindow);cdecl;external;
procedure gtk_window_unfullscreen(window:PTGtkWindow);cdecl;external;
procedure gtk_window_fullscreen_on_monitor(window:PTGtkWindow; monitor:PTGdkMonitor);cdecl;external;
procedure gtk_window_close(window:PTGtkWindow);cdecl;external;

procedure gtk_window_set_default_size(window:PTGtkWindow; width:longint; height:longint);cdecl;external;
procedure gtk_window_get_default_size(window:PTGtkWindow; width:Plongint; height:Plongint);cdecl;external;
function gtk_window_get_group(window:PTGtkWindow):^TGtkWindowGroup;cdecl;external;
function gtk_window_has_group(window:PTGtkWindow):Tgboolean;cdecl;external;
function gtk_window_get_application(window:PTGtkWindow):^TGtkApplication;cdecl;external;
procedure gtk_window_set_application(window:PTGtkWindow; application:PTGtkApplication);cdecl;external;
procedure gtk_window_set_child(window:PTGtkWindow; child:PTGtkWidget);cdecl;external;
function gtk_window_get_child(window:PTGtkWindow):^TGtkWidget;cdecl;external;
procedure gtk_window_set_titlebar(window:PTGtkWindow; titlebar:PTGtkWidget);cdecl;external;
function gtk_window_get_titlebar(window:PTGtkWindow):^TGtkWidget;cdecl;external;
function gtk_window_is_maximized(window:PTGtkWindow):Tgboolean;cdecl;external;
function gtk_window_is_fullscreen(window:PTGtkWindow):Tgboolean;cdecl;external;
procedure gtk_window_destroy(window:PTGtkWindow);cdecl;external;
procedure gtk_window_set_interactive_debugging(enable:Tgboolean);cdecl;external;
procedure gtk_window_set_handle_menubar_accel(window:PTGtkWindow; handle_menubar_accel:Tgboolean);cdecl;external;
function gtk_window_get_handle_menubar_accel(window:PTGtkWindow):Tgboolean;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkfilechooserwidget.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkfilechooserwidget.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkfilechooserwidget.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_FILE_CHOOSER_WIDGET_H__}
//// {$define __GTK_FILE_CHOOSER_WIDGET_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkfilechooser.h>}
//// {$include <gtk/gtkbox.h>}

function GTK_TYPE_FILE_CHOOSER_WIDGET : longint; { return type might be wrong }

function GTK_FILE_CHOOSER_WIDGET(obj : longint) : longint;

function GTK_IS_FILE_CHOOSER_WIDGET(obj : longint) : longint;

type
  T_GtkFileChooserWidget = TGtkFileChooserWidget;

function gtk_file_chooser_widget_get_type:TGType;cdecl;external;
function gtk_file_chooser_widget_new(action:TGtkFileChooserAction):^TGtkWidget;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtk.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtk.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtk.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef __GTK_H__}
//// {$define __GTK_H__}
//// {$define __GTK_H_INSIDE__}
//// {$include <gtk/css/gtkcss.h>}
//// {$include <gdk/gdk.h>}
//// {$include <gsk/gsk.h>}
//// {$include <gtk/gtkaboutdialog.h>}
//// {$include <gtk/gtkaccelgroup.h>}
//// {$include <gtk/gtkaccessible.h>}
//// {$include <gtk/gtkactionable.h>}
//// {$include <gtk/gtkactionbar.h>}
//// {$include <gtk/gtkadjustment.h>}
//// {$include <gtk/gtkappchooser.h>}
//// {$include <gtk/gtkappchooserdialog.h>}
//// {$include <gtk/gtkappchooserwidget.h>}
//// {$include <gtk/gtkappchooserbutton.h>}
//// {$include <gtk/gtkapplication.h>}
//// {$include <gtk/gtkapplicationwindow.h>}
//// {$include <gtk/gtkaspectframe.h>}
//// {$include <gtk/gtkassistant.h>}
//// {$include <gtk/gtkatcontext.h>}
//// {$include <gtk/gtkbinlayout.h>}
//// {$include <gtk/gtkbitset.h>}
//// {$include <gtk/gtkbookmarklist.h>}
//// {$include <gtk/gtkboolfilter.h>}
//// {$include <gtk/gtkborder.h>}
//// {$include <gtk/gtkboxlayout.h>}
//// {$include <gtk/gtkbox.h>}
//// {$include <gtk/gtkbuildable.h>}
//// {$include <gtk/gtkbuilder.h>}
//// {$include <gtk/gtkbuilderlistitemfactory.h>}
//// {$include <gtk/gtkbuilderscope.h>}
//// {$include <gtk/gtkbutton.h>}
//// {$include <gtk/gtkcalendar.h>}
//// {$include <gtk/gtkcellarea.h>}
//// {$include <gtk/gtkcellareabox.h>}
//// {$include <gtk/gtkcellareacontext.h>}
//// {$include <gtk/gtkcelleditable.h>}
//// {$include <gtk/gtkcelllayout.h>}
//// {$include <gtk/gtkcellrenderer.h>}
//// {$include <gtk/gtkcellrendereraccel.h>}
//// {$include <gtk/gtkcellrenderercombo.h>}
//// {$include <gtk/gtkcellrendererpixbuf.h>}
//// {$include <gtk/gtkcellrendererprogress.h>}
//// {$include <gtk/gtkcellrendererspin.h>}
//// {$include <gtk/gtkcellrendererspinner.h>}
//// {$include <gtk/gtkcellrenderertext.h>}
//// {$include <gtk/gtkcellrenderertoggle.h>}
//// {$include <gtk/gtkcellview.h>}
//// {$include <gtk/gtkcenterbox.h>}
//// {$include <gtk/gtkcenterlayout.h>}
//// {$include <gtk/gtkcheckbutton.h>}
//// {$include <gtk/gtkcolorbutton.h>}
//// {$include <gtk/gtkcolorchooser.h>}
//// {$include <gtk/gtkcolorchooserdialog.h>}
//// {$include <gtk/gtkcolorchooserwidget.h>}
//// {$include <gtk/gtkcolorutils.h>}
//// {$include <gtk/gtkcolumnview.h>}
//// {$include <gtk/gtkcolumnviewcolumn.h>}
//// {$include <gtk/gtkcombobox.h>}
//// {$include <gtk/gtkcomboboxtext.h>}
//// {$include <gtk/gtkconstraintlayout.h>}
//// {$include <gtk/gtkconstraint.h>}
//// {$include <gtk/gtkcssprovider.h>}
//// {$include <gtk/gtkcustomlayout.h>}
//// {$include <gtk/gtkcustomsorter.h>}
//// {$include <gtk/gtkdebug.h>}
//// {$include <gtk/gtkdialog.h>}
//// {$include <gtk/gtkdirectorylist.h>}
//// {$include <gtk/gtkdragicon.h>}
//// {$include <gtk/gtkdragsource.h>}
//// {$include <gtk/gtkdrawingarea.h>}
//// {$include <gtk/gtkdropcontrollermotion.h>}
//// {$include <gtk/gtkdroptarget.h>}
//// {$include <gtk/gtkdroptargetasync.h>}
//// {$include <gtk/gtkdropdown.h>}
//// {$include <gtk/gtkeditable.h>}
//// {$include <gtk/gtkeditablelabel.h>}
//// {$include <gtk/gtkemojichooser.h>}
//// {$include <gtk/gtkentry.h>}
//// {$include <gtk/gtkentrybuffer.h>}
//// {$include <gtk/gtkentrycompletion.h>}
//// {$include <gtk/gtkenums.h>}
//// {$include <gtk/gtkeventcontroller.h>}
//// {$include <gtk/gtkeventcontrollerfocus.h>}
//// {$include <gtk/gtkeventcontrollerkey.h>}
//// {$include <gtk/gtkeventcontrollerlegacy.h>}
//// {$include <gtk/gtkeventcontrollermotion.h>}
//// {$include <gtk/gtkeventcontrollerscroll.h>}
//// {$include <gtk/gtkexpander.h>}
//// {$include <gtk/gtkexpression.h>}
//// {$include <gtk/gtkfixed.h>}
//// {$include <gtk/gtkfixedlayout.h>}
//// {$include <gtk/gtkfilechooser.h>}
//// {$include <gtk/gtkfilechooserdialog.h>}
//// {$include <gtk/gtkfilechoosernative.h>}
//// {$include <gtk/gtkfilechooserwidget.h>}
//// {$include <gtk/gtkfilefilter.h>}
//// {$include <gtk/gtkfilter.h>}
//// {$include <gtk/gtkfilterlistmodel.h>}
//// {$include <gtk/gtkcustomfilter.h>}
//// {$include <gtk/gtkflattenlistmodel.h>}
//// {$include <gtk/gtkflowbox.h>}
//// {$include <gtk/gtkfontbutton.h>}
//// {$include <gtk/gtkfontchooser.h>}
//// {$include <gtk/gtkfontchooserdialog.h>}
//// {$include <gtk/gtkfontchooserwidget.h>}
//// {$include <gtk/gtkframe.h>}
//// {$include <gtk/gtkgesture.h>}
//// {$include <gtk/gtkgestureclick.h>}
//// {$include <gtk/gtkgesturedrag.h>}
//// {$include <gtk/gtkgesturelongpress.h>}
//// {$include <gtk/gtkgesturepan.h>}
//// {$include <gtk/gtkgesturerotate.h>}
//// {$include <gtk/gtkgesturesingle.h>}
//// {$include <gtk/gtkgesturestylus.h>}
//// {$include <gtk/gtkgestureswipe.h>}
//// {$include <gtk/gtkgesturezoom.h>}
//// {$include <gtk/gtkglarea.h>}
//// {$include <gtk/gtkgrid.h>}
//// {$include <gtk/gtkgridlayout.h>}
//// {$include <gtk/gtkgridview.h>}
//// {$include <gtk/gtkheaderbar.h>}
//// {$include <gtk/gtkicontheme.h>}
//// {$include <gtk/gtkiconview.h>}
//// {$include <gtk/gtkimage.h>}
//// {$include <gtk/gtkimcontext.h>}
//// {$include <gtk/gtkimcontextsimple.h>}
//// {$include <gtk/gtkimmulticontext.h>}
//// {$include <gtk/gtkinfobar.h>}
//// {$include <gtk/gtkinscription.h>}
//// {$include <gtk/gtklabel.h>}
//// {$include <gtk/gtklayoutmanager.h>}
//// {$include <gtk/gtklayoutchild.h>}
//// {$include <gtk/gtklevelbar.h>}
//// {$include <gtk/gtklistbase.h>}
//// {$include <gtk/gtklinkbutton.h>}
//// {$include <gtk/gtklistbox.h>}
//// {$include <gtk/gtklistitem.h>}
//// {$include <gtk/gtklistitemfactory.h>}
//// {$include <gtk/gtkliststore.h>}
//// {$include <gtk/gtklistview.h>}
//// {$include <gtk/gtklockbutton.h>}
//// {$include <gtk/gtkmain.h>}
//// {$include <gtk/gtkmaplistmodel.h>}
//// {$include <gtk/gtkmediacontrols.h>}
//// {$include <gtk/gtkmediafile.h>}
//// {$include <gtk/gtkmediastream.h>}
//// {$include <gtk/gtkmenubutton.h>}
//// {$include <gtk/gtkmessagedialog.h>}
//// {$include <gtk/gtkmountoperation.h>}
//// {$include <gtk/gtkmultifilter.h>}
//// {$include <gtk/gtkmultiselection.h>}
//// {$include <gtk/gtkmultisorter.h>}
//// {$include <gtk/gtknative.h>}
//// {$include <gtk/gtknativedialog.h>}
//// {$include <gtk/gtknoselection.h>}
//// {$include <gtk/gtknotebook.h>}
//// {$include <gtk/gtknumericsorter.h>}
//// {$include <gtk/gtkorientable.h>}
//// {$include <gtk/gtkoverlay.h>}
//// {$include <gtk/gtkoverlaylayout.h>}
//// {$include <gtk/gtkpadcontroller.h>}
//// {$include <gtk/gtkpagesetup.h>}
//// {$include <gtk/gtkpaned.h>}
//// {$include <gtk/gtkpapersize.h>}
//// {$include <gtk/gtkpasswordentry.h>}
//// {$include <gtk/gtkpasswordentrybuffer.h>}
//// {$include <gtk/gtkpicture.h>}
//// {$include <gtk/gtkpopover.h>}
//// {$include <gtk/gtkpopovermenu.h>}
//// {$include <gtk/gtkpopovermenubar.h>}
//// {$include <gtk/gtkprintcontext.h>}
//// {$include <gtk/gtkprintoperation.h>}
//// {$include <gtk/gtkprintoperationpreview.h>}
//// {$include <gtk/gtkprintsettings.h>}
//// {$include <gtk/gtkprogressbar.h>}
//// {$include <gtk/gtkrange.h>}
//// {$include <gtk/gtkrecentmanager.h>}
//// {$include <gtk/gtkrender.h>}
//// {$include <gtk/gtkrevealer.h>}
//// {$include <gtk/gtkroot.h>}
//// {$include <gtk/gtkscale.h>}
//// {$include <gtk/gtkscalebutton.h>}
//// {$include <gtk/gtkscrollable.h>}
//// {$include <gtk/gtkscrollbar.h>}
//// {$include <gtk/gtkscrolledwindow.h>}
//// {$include <gtk/gtksearchbar.h>}
//// {$include <gtk/gtksearchentry.h>}
//// {$include <gtk/gtkselectionfiltermodel.h>}
//// {$include <gtk/gtkselectionmodel.h>}
//// {$include <gtk/gtkseparator.h>}
//// {$include <gtk/gtksettings.h>}
//// {$include <gtk/gtkshortcut.h>}
//// {$include <gtk/gtkshortcutaction.h>}
//// {$include <gtk/gtkshortcutcontroller.h>}
//// {$include <gtk/gtkshortcutlabel.h>}
//// {$include <gtk/gtkshortcutmanager.h>}
//// {$include <gtk/gtkshortcutsgroup.h>}
//// {$include <gtk/gtkshortcutssection.h>}
//// {$include <gtk/gtkshortcutsshortcut.h>}
//// {$include <gtk/gtkshortcutswindow.h>}
//// {$include <gtk/gtkshortcuttrigger.h>}
//// {$include <gtk/gtkshow.h>}
//// {$include <gtk/gtksignallistitemfactory.h>}
//// {$include <gtk/gtksingleselection.h>}
//// {$include <gtk/gtkslicelistmodel.h>}
//// {$include <gtk/gtksnapshot.h>}
//// {$include <gtk/gtksorter.h>}
//// {$include <gtk/gtksortlistmodel.h>}
//// {$include <gtk/gtkstacksidebar.h>}
//// {$include <gtk/gtksizegroup.h>}
//// {$include <gtk/gtksizerequest.h>}
//// {$include <gtk/gtkspinbutton.h>}
//// {$include <gtk/gtkspinner.h>}
//// {$include <gtk/gtkstack.h>}
//// {$include <gtk/gtkstackswitcher.h>}
//// {$include <gtk/gtkstatusbar.h>}
//// {$include <gtk/gtkstringfilter.h>}
//// {$include <gtk/gtkstringlist.h>}
//// {$include <gtk/gtkstringsorter.h>}
//// {$include <gtk/gtkstylecontext.h>}
//// {$include <gtk/gtkstyleprovider.h>}
//// {$include <gtk/gtkswitch.h>}
//// {$include <gtk/gtksymbolicpaintable.h>}
//// {$include <gtk/gtktext.h>}
//// {$include <gtk/gtktextbuffer.h>}
//// {$include <gtk/gtktextchild.h>}
//// {$include <gtk/gtktextiter.h>}
//// {$include <gtk/gtktextmark.h>}
//// {$include <gtk/gtktexttag.h>}
//// {$include <gtk/gtktexttagtable.h>}
//// {$include <gtk/gtktextview.h>}
//// {$include <gtk/gtktogglebutton.h>}
//// {$include <gtk/gtktooltip.h>}
//// {$include <gtk/gtktestatcontext.h>}
//// {$include <gtk/gtktestutils.h>}
//// {$include <gtk/gtktreednd.h>}
//// {$include <gtk/gtktreeexpander.h>}
//// {$include <gtk/gtktreelistmodel.h>}
//// {$include <gtk/gtktreelistrowsorter.h>}
//// {$include <gtk/gtktreemodel.h>}
//// {$include <gtk/gtktreemodelfilter.h>}
//// {$include <gtk/gtktreemodelsort.h>}
//// {$include <gtk/gtktreeselection.h>}
//// {$include <gtk/gtktreesortable.h>}
//// {$include <gtk/gtktreestore.h>}
//// {$include <gtk/gtktreeview.h>}
//// {$include <gtk/gtktreeviewcolumn.h>}
//// {$include <gtk/gtktypebuiltins.h>}
//// {$include <gtk/gtktypes.h>}
//// {$include <gtk/gtkversion.h>}
//// {$include <gtk/gtkvideo.h>}
//// {$include <gtk/gtkviewport.h>}
//// {$include <gtk/gtkvolumebutton.h>}
//// {$include <gtk/gtkwidget.h>}
//// {$include <gtk/gtkwidgetpaintable.h>}
//// {$include <gtk/gtkwindow.h>}
//// {$include <gtk/gtkwindowcontrols.h>}
//// {$include <gtk/gtkwindowgroup.h>}
//// {$include <gtk/gtkwindowhandle.h>}
//// {$include <gtk/gtk-autocleanups.h>}
//// {$undef __GTK_H_INSIDE__}
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtktreelistrowsorter.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtktreelistrowsorter.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtktreelistrowsorter.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGtkSorter  = ^GtkSorter;
PGtkTreeListRowSorter  = ^GtkTreeListRowSorter;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_TREE_LIST_ROW_SORTER_H__}
//// {$define __GTK_TREE_LIST_ROW_SORTER_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkexpression.h>}
//// {$include <gtk/gtksorter.h>}

function GTK_TYPE_TREE_LIST_ROW_SORTER : longint; { return type might be wrong }

function gtk_tree_list_row_sorter_new(sorter:PTGtkSorter):^TGtkTreeListRowSorter;cdecl;external;
function gtk_tree_list_row_sorter_get_sorter(self:PTGtkTreeListRowSorter):^TGtkSorter;cdecl;external;
procedure gtk_tree_list_row_sorter_set_sorter(self:PTGtkTreeListRowSorter; sorter:PTGtkSorter);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkdirectorylist.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkdirectorylist.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkdirectorylist.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGFile  = ^GFile;
PGtkDirectoryList  = ^GtkDirectoryList;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_DIRECTORY_LIST_H__}
//// {$define __GTK_DIRECTORY_LIST_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gio/gio.h>}

//// {$include <gdk/gdk.h>}

function GTK_TYPE_DIRECTORY_LIST : longint; { return type might be wrong }

function gtk_directory_list_new(attributes:Pchar; file:PTGFile):^TGtkDirectoryList;cdecl;external;
procedure gtk_directory_list_set_file(self:PTGtkDirectoryList; file:PTGFile);cdecl;external;
function gtk_directory_list_get_file(self:PTGtkDirectoryList):^TGFile;cdecl;external;
procedure gtk_directory_list_set_attributes(self:PTGtkDirectoryList; attributes:Pchar);cdecl;external;
function gtk_directory_list_get_attributes(self:PTGtkDirectoryList):^char;cdecl;external;
procedure gtk_directory_list_set_io_priority(self:PTGtkDirectoryList; io_priority:longint);cdecl;external;
function gtk_directory_list_get_io_priority(self:PTGtkDirectoryList):longint;cdecl;external;
function gtk_directory_list_is_loading(self:PTGtkDirectoryList):Tgboolean;cdecl;external;
function gtk_directory_list_get_error(self:PTGtkDirectoryList):^TGError;cdecl;external;
procedure gtk_directory_list_set_monitored(self:PTGtkDirectoryList; monitored:Tgboolean);cdecl;external;
function gtk_directory_list_get_monitored(self:PTGtkDirectoryList):Tgboolean;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkdroptarget.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkdroptarget.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkdroptarget.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pgsize  = ^gsize;
PGtkDropTarget  = ^GtkDropTarget;
PGType  = ^GType;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_DROP_TARGET_H__}
//// {$define __GTK_DROP_TARGET_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtktypes.h>}
type
  T_GtkDropTarget = TGtkDropTarget;

function GTK_TYPE_DROP_TARGET : longint; { return type might be wrong }

function GTK_DROP_TARGET(o : longint) : longint;

function GTK_DROP_TARGET_CLASS(k : longint) : longint;

function GTK_IS_DROP_TARGET(o : longint) : longint;

function GTK_IS_DROP_TARGET_CLASS(k : longint) : longint;

function GTK_DROP_TARGET_GET_CLASS(o : longint) : longint;

type
  T_GtkDropTargetClass = TGtkDropTargetClass;

function gtk_drop_target_get_type:TGType;cdecl;external;
function gtk_drop_target_new(_type:TGType; actions:TGdkDragAction):^TGtkDropTarget;cdecl;external;
procedure gtk_drop_target_set_gtypes(self:PTGtkDropTarget; types:PTGType; n_types:Tgsize);cdecl;external;
function gtk_drop_target_get_gtypes(self:PTGtkDropTarget; n_types:PTgsize):^TGType;cdecl;external;
function gtk_drop_target_get_formats(self:PTGtkDropTarget):^TGdkContentFormats;cdecl;external;
procedure gtk_drop_target_set_actions(self:PTGtkDropTarget; actions:TGdkDragAction);cdecl;external;
function gtk_drop_target_get_actions(self:PTGtkDropTarget):TGdkDragAction;cdecl;external;
procedure gtk_drop_target_set_preload(self:PTGtkDropTarget; preload:Tgboolean);cdecl;external;
function gtk_drop_target_get_preload(self:PTGtkDropTarget):Tgboolean;cdecl;external;
function gtk_drop_target_get_drop(self:PTGtkDropTarget):^TGdkDrop;cdecl;external;
function gtk_drop_target_get_current_drop(self:PTGtkDropTarget):^TGdkDrop;cdecl;external;
function gtk_drop_target_get_value(self:PTGtkDropTarget):^TGValue;cdecl;external;
procedure gtk_drop_target_reject(self:PTGtkDropTarget);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtklabel.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtklabel.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtklabel.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGMenuModel  = ^GMenuModel;
PGtkLabel  = ^GtkLabel;
PGtkWidget  = ^GtkWidget;
Plongint  = ^longint;
PPangoAttrList  = ^PangoAttrList;
PPangoTabArray  = ^PangoTabArray;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef __GTK_LABEL_H__}
//// {$define __GTK_LABEL_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkwidget.h>}

function GTK_TYPE_LABEL : longint; { return type might be wrong }

function GTK_LABEL(obj : longint) : longint;

function GTK_IS_LABEL(obj : longint) : longint;

type
  T_GtkLabel = TGtkLabel;

function gtk_label_get_type:TGType;cdecl;external;
function gtk_label_new(str:Pchar):^TGtkWidget;cdecl;external;
function gtk_label_new_with_mnemonic(str:Pchar):^TGtkWidget;cdecl;external;
procedure gtk_label_set_text(self:PTGtkLabel; str:Pchar);cdecl;external;
function gtk_label_get_text(self:PTGtkLabel):^char;cdecl;external;
procedure gtk_label_set_attributes(self:PTGtkLabel; attrs:PTPangoAttrList);cdecl;external;
function gtk_label_get_attributes(self:PTGtkLabel):^TPangoAttrList;cdecl;external;
procedure gtk_label_set_label(self:PTGtkLabel; str:Pchar);cdecl;external;
function gtk_label_get_label(self:PTGtkLabel):^char;cdecl;external;
procedure gtk_label_set_markup(self:PTGtkLabel; str:Pchar);cdecl;external;
procedure gtk_label_set_use_markup(self:PTGtkLabel; setting:Tgboolean);cdecl;external;
function gtk_label_get_use_markup(self:PTGtkLabel):Tgboolean;cdecl;external;
procedure gtk_label_set_use_underline(self:PTGtkLabel; setting:Tgboolean);cdecl;external;
function gtk_label_get_use_underline(self:PTGtkLabel):Tgboolean;cdecl;external;
procedure gtk_label_set_markup_with_mnemonic(self:PTGtkLabel; str:Pchar);cdecl;external;
function gtk_label_get_mnemonic_keyval(self:PTGtkLabel):Tguint;cdecl;external;
procedure gtk_label_set_mnemonic_widget(self:PTGtkLabel; widget:PTGtkWidget);cdecl;external;
function gtk_label_get_mnemonic_widget(self:PTGtkLabel):^TGtkWidget;cdecl;external;
procedure gtk_label_set_text_with_mnemonic(self:PTGtkLabel; str:Pchar);cdecl;external;
procedure gtk_label_set_justify(self:PTGtkLabel; jtype:TGtkJustification);cdecl;external;
function gtk_label_get_justify(self:PTGtkLabel):TGtkJustification;cdecl;external;
procedure gtk_label_set_ellipsize(self:PTGtkLabel; mode:TPangoEllipsizeMode);cdecl;external;
function gtk_label_get_ellipsize(self:PTGtkLabel):TPangoEllipsizeMode;cdecl;external;
procedure gtk_label_set_width_chars(self:PTGtkLabel; n_chars:longint);cdecl;external;
function gtk_label_get_width_chars(self:PTGtkLabel):longint;cdecl;external;
procedure gtk_label_set_max_width_chars(self:PTGtkLabel; n_chars:longint);cdecl;external;
function gtk_label_get_max_width_chars(self:PTGtkLabel):longint;cdecl;external;
procedure gtk_label_set_lines(self:PTGtkLabel; lines:longint);cdecl;external;
function gtk_label_get_lines(self:PTGtkLabel):longint;cdecl;external;
procedure gtk_label_set_wrap(self:PTGtkLabel; wrap:Tgboolean);cdecl;external;
function gtk_label_get_wrap(self:PTGtkLabel):Tgboolean;cdecl;external;
procedure gtk_label_set_wrap_mode(self:PTGtkLabel; wrap_mode:TPangoWrapMode);cdecl;external;
function gtk_label_get_wrap_mode(self:PTGtkLabel):TPangoWrapMode;cdecl;external;
procedure gtk_label_set_natural_wrap_mode(self:PTGtkLabel; wrap_mode:TGtkNaturalWrapMode);cdecl;external;
function gtk_label_get_natural_wrap_mode(self:PTGtkLabel):TGtkNaturalWrapMode;cdecl;external;
procedure gtk_label_set_selectable(self:PTGtkLabel; setting:Tgboolean);cdecl;external;
function gtk_label_get_selectable(self:PTGtkLabel):Tgboolean;cdecl;external;
procedure gtk_label_select_region(self:PTGtkLabel; start_offset:longint; end_offset:longint);cdecl;external;
function gtk_label_get_selection_bounds(self:PTGtkLabel; start:Plongint; end:Plongint):Tgboolean;cdecl;external;
function gtk_label_get_layout(self:PTGtkLabel):^TPangoLayout;cdecl;external;
procedure gtk_label_get_layout_offsets(self:PTGtkLabel; x:Plongint; y:Plongint);cdecl;external;
procedure gtk_label_set_single_line_mode(self:PTGtkLabel; single_line_mode:Tgboolean);cdecl;external;
function gtk_label_get_single_line_mode(self:PTGtkLabel):Tgboolean;cdecl;external;
function gtk_label_get_current_uri(self:PTGtkLabel):^char;cdecl;external;
procedure gtk_label_set_xalign(self:PTGtkLabel; xalign:single);cdecl;external;
function gtk_label_get_xalign(self:PTGtkLabel):single;cdecl;external;
procedure gtk_label_set_yalign(self:PTGtkLabel; yalign:single);cdecl;external;
function gtk_label_get_yalign(self:PTGtkLabel):single;cdecl;external;
procedure gtk_label_set_extra_menu(self:PTGtkLabel; model:PTGMenuModel);cdecl;external;
function gtk_label_get_extra_menu(self:PTGtkLabel):^TGMenuModel;cdecl;external;
procedure gtk_label_set_tabs(self:PTGtkLabel; tabs:PTPangoTabArray);cdecl;external;
function gtk_label_get_tabs(self:PTGtkLabel):^TPangoTabArray;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkentry.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkentry.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkentry.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGdkContentProvider  = ^GdkContentProvider;
PGdkPaintable  = ^GdkPaintable;
PGdkRectangle  = ^GdkRectangle;
PGIcon  = ^GIcon;
PGMenuModel  = ^GMenuModel;
PGtkEntry  = ^GtkEntry;
PGtkEntryBuffer  = ^GtkEntryBuffer;
PGtkEntryCompletion  = ^GtkEntryCompletion;
PPangoAttrList  = ^PangoAttrList;
PPangoTabArray  = ^PangoTabArray;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef __GTK_ENTRY_H__}
//// {$define __GTK_ENTRY_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkeditable.h>}
//// {$include <gtk/gtkimcontext.h>}
//// {$include <gtk/gtkentrybuffer.h>}
//// {$include <gtk/gtkentrycompletion.h>}
//// {$include <gtk/gtkimage.h>}

function GTK_TYPE_ENTRY : longint; { return type might be wrong }

function GTK_ENTRY(obj : longint) : longint;

function GTK_ENTRY_CLASS(klass : longint) : longint;

function GTK_IS_ENTRY(obj : longint) : longint;

function GTK_IS_ENTRY_CLASS(klass : longint) : longint;

function GTK_ENTRY_GET_CLASS(obj : longint) : longint;


type
  TGtkEntryIconPosition = (GTK_ENTRY_ICON_PRIMARY,GTK_ENTRY_ICON_SECONDARY
    );
  T_GtkEntry = TGtkEntry;
  T_GtkEntryClass = TGtkEntryClass;

  T_GtkEntry = record
      parent_instance : TGtkWidget;
    end;




  T_GtkEntryClass = record
      parent_class : TGtkWidgetClass;
      activate : procedure (entry:PTGtkEntry);cdecl;
      padding : array[0..7] of Tgpointer;
    end;


function gtk_entry_get_type:TGType;cdecl;external;
function gtk_entry_new:^TGtkWidget;cdecl;external;
function gtk_entry_new_with_buffer(buffer:PTGtkEntryBuffer):^TGtkWidget;cdecl;external;
function gtk_entry_get_buffer(entry:PTGtkEntry):^TGtkEntryBuffer;cdecl;external;
procedure gtk_entry_set_buffer(entry:PTGtkEntry; buffer:PTGtkEntryBuffer);cdecl;external;
procedure gtk_entry_set_visibility(entry:PTGtkEntry; visible:Tgboolean);cdecl;external;
function gtk_entry_get_visibility(entry:PTGtkEntry):Tgboolean;cdecl;external;
procedure gtk_entry_set_invisible_char(entry:PTGtkEntry; ch:Tgunichar);cdecl;external;
function gtk_entry_get_invisible_char(entry:PTGtkEntry):Tgunichar;cdecl;external;
procedure gtk_entry_unset_invisible_char(entry:PTGtkEntry);cdecl;external;
procedure gtk_entry_set_has_frame(entry:PTGtkEntry; setting:Tgboolean);cdecl;external;
function gtk_entry_get_has_frame(entry:PTGtkEntry):Tgboolean;cdecl;external;
procedure gtk_entry_set_overwrite_mode(entry:PTGtkEntry; overwrite:Tgboolean);cdecl;external;
function gtk_entry_get_overwrite_mode(entry:PTGtkEntry):Tgboolean;cdecl;external;

procedure gtk_entry_set_max_length(entry:PTGtkEntry; max:longint);cdecl;external;
function gtk_entry_get_max_length(entry:PTGtkEntry):longint;cdecl;external;
function gtk_entry_get_text_length(entry:PTGtkEntry):Tguint16;cdecl;external;
procedure gtk_entry_set_activates_default(entry:PTGtkEntry; setting:Tgboolean);cdecl;external;
function gtk_entry_get_activates_default(entry:PTGtkEntry):Tgboolean;cdecl;external;
procedure gtk_entry_set_alignment(entry:PTGtkEntry; xalign:single);cdecl;external;
function gtk_entry_get_alignment(entry:PTGtkEntry):single;cdecl;external;
procedure gtk_entry_set_completion(entry:PTGtkEntry; completion:PTGtkEntryCompletion);cdecl;external;
function gtk_entry_get_completion(entry:PTGtkEntry):^TGtkEntryCompletion;cdecl;external;

procedure gtk_entry_set_progress_fraction(entry:PTGtkEntry; fraction:Tdouble);cdecl;external;
function gtk_entry_get_progress_fraction(entry:PTGtkEntry):Tdouble;cdecl;external;
procedure gtk_entry_set_progress_pulse_step(entry:PTGtkEntry; fraction:Tdouble);cdecl;external;
function gtk_entry_get_progress_pulse_step(entry:PTGtkEntry):Tdouble;cdecl;external;
procedure gtk_entry_progress_pulse(entry:PTGtkEntry);cdecl;external;
function gtk_entry_get_placeholder_text(entry:PTGtkEntry):^char;cdecl;external;
procedure gtk_entry_set_placeholder_text(entry:PTGtkEntry; text:Pchar);cdecl;external;

procedure gtk_entry_set_icon_from_paintable(entry:PTGtkEntry; icon_pos:TGtkEntryIconPosition; paintable:PTGdkPaintable);cdecl;external;
procedure gtk_entry_set_icon_from_icon_name(entry:PTGtkEntry; icon_pos:TGtkEntryIconPosition; icon_name:Pchar);cdecl;external;
procedure gtk_entry_set_icon_from_gicon(entry:PTGtkEntry; icon_pos:TGtkEntryIconPosition; icon:PTGIcon);cdecl;external;
function gtk_entry_get_icon_storage_type(entry:PTGtkEntry; icon_pos:TGtkEntryIconPosition):TGtkImageType;cdecl;external;
function gtk_entry_get_icon_paintable(entry:PTGtkEntry; icon_pos:TGtkEntryIconPosition):^TGdkPaintable;cdecl;external;
function gtk_entry_get_icon_name(entry:PTGtkEntry; icon_pos:TGtkEntryIconPosition):^char;cdecl;external;
function gtk_entry_get_icon_gicon(entry:PTGtkEntry; icon_pos:TGtkEntryIconPosition):^TGIcon;cdecl;external;
procedure gtk_entry_set_icon_activatable(entry:PTGtkEntry; icon_pos:TGtkEntryIconPosition; activatable:Tgboolean);cdecl;external;
function gtk_entry_get_icon_activatable(entry:PTGtkEntry; icon_pos:TGtkEntryIconPosition):Tgboolean;cdecl;external;
procedure gtk_entry_set_icon_sensitive(entry:PTGtkEntry; icon_pos:TGtkEntryIconPosition; sensitive:Tgboolean);cdecl;external;
function gtk_entry_get_icon_sensitive(entry:PTGtkEntry; icon_pos:TGtkEntryIconPosition):Tgboolean;cdecl;external;
function gtk_entry_get_icon_at_pos(entry:PTGtkEntry; x:longint; y:longint):longint;cdecl;external;
procedure gtk_entry_set_icon_tooltip_text(entry:PTGtkEntry; icon_pos:TGtkEntryIconPosition; tooltip:Pchar);cdecl;external;
function gtk_entry_get_icon_tooltip_text(entry:PTGtkEntry; icon_pos:TGtkEntryIconPosition):^char;cdecl;external;
procedure gtk_entry_set_icon_tooltip_markup(entry:PTGtkEntry; icon_pos:TGtkEntryIconPosition; tooltip:Pchar);cdecl;external;
function gtk_entry_get_icon_tooltip_markup(entry:PTGtkEntry; icon_pos:TGtkEntryIconPosition):^char;cdecl;external;
procedure gtk_entry_set_icon_drag_source(entry:PTGtkEntry; icon_pos:TGtkEntryIconPosition; provider:PTGdkContentProvider; actions:TGdkDragAction);cdecl;external;
function gtk_entry_get_current_icon_drag_source(entry:PTGtkEntry):longint;cdecl;external;
procedure gtk_entry_get_icon_area(entry:PTGtkEntry; icon_pos:TGtkEntryIconPosition; icon_area:PTGdkRectangle);cdecl;external;
procedure gtk_entry_reset_im_context(entry:PTGtkEntry);cdecl;external;
procedure gtk_entry_set_input_purpose(entry:PTGtkEntry; purpose:TGtkInputPurpose);cdecl;external;
function gtk_entry_get_input_purpose(entry:PTGtkEntry):TGtkInputPurpose;cdecl;external;
procedure gtk_entry_set_input_hints(entry:PTGtkEntry; hints:TGtkInputHints);cdecl;external;
function gtk_entry_get_input_hints(entry:PTGtkEntry):TGtkInputHints;cdecl;external;
procedure gtk_entry_set_attributes(entry:PTGtkEntry; attrs:PTPangoAttrList);cdecl;external;
function gtk_entry_get_attributes(entry:PTGtkEntry):^TPangoAttrList;cdecl;external;
procedure gtk_entry_set_tabs(entry:PTGtkEntry; tabs:PTPangoTabArray);cdecl;external;
function gtk_entry_get_tabs(entry:PTGtkEntry):^TPangoTabArray;cdecl;external;
function gtk_entry_grab_focus_without_selecting(entry:PTGtkEntry):Tgboolean;cdecl;external;
procedure gtk_entry_set_extra_menu(entry:PTGtkEntry; model:PTGMenuModel);cdecl;external;
function gtk_entry_get_extra_menu(entry:PTGtkEntry):^TGMenuModel;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkgridlayout.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkgridlayout.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkgridlayout.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGtkGridLayout  = ^GtkGridLayout;
PGtkGridLayoutChild  = ^GtkGridLayoutChild;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$include <gtk/gtklayoutmanager.h>}

function GTK_TYPE_GRID_LAYOUT : longint; { return type might be wrong }

function GTK_TYPE_GRID_LAYOUT_CHILD : longint; { return type might be wrong }

function gtk_grid_layout_new:^TGtkLayoutManager;cdecl;external;
procedure gtk_grid_layout_set_row_homogeneous(grid:PTGtkGridLayout; homogeneous:Tgboolean);cdecl;external;
function gtk_grid_layout_get_row_homogeneous(grid:PTGtkGridLayout):Tgboolean;cdecl;external;
procedure gtk_grid_layout_set_row_spacing(grid:PTGtkGridLayout; spacing:Tguint);cdecl;external;
function gtk_grid_layout_get_row_spacing(grid:PTGtkGridLayout):Tguint;cdecl;external;
procedure gtk_grid_layout_set_column_homogeneous(grid:PTGtkGridLayout; homogeneous:Tgboolean);cdecl;external;
function gtk_grid_layout_get_column_homogeneous(grid:PTGtkGridLayout):Tgboolean;cdecl;external;
procedure gtk_grid_layout_set_column_spacing(grid:PTGtkGridLayout; spacing:Tguint);cdecl;external;
function gtk_grid_layout_get_column_spacing(grid:PTGtkGridLayout):Tguint;cdecl;external;
procedure gtk_grid_layout_set_row_baseline_position(grid:PTGtkGridLayout; row:longint; pos:TGtkBaselinePosition);cdecl;external;
function gtk_grid_layout_get_row_baseline_position(grid:PTGtkGridLayout; row:longint):TGtkBaselinePosition;cdecl;external;
procedure gtk_grid_layout_set_baseline_row(grid:PTGtkGridLayout; row:longint);cdecl;external;
function gtk_grid_layout_get_baseline_row(grid:PTGtkGridLayout):longint;cdecl;external;
procedure gtk_grid_layout_child_set_row(child:PTGtkGridLayoutChild; row:longint);cdecl;external;
function gtk_grid_layout_child_get_row(child:PTGtkGridLayoutChild):longint;cdecl;external;
procedure gtk_grid_layout_child_set_column(child:PTGtkGridLayoutChild; column:longint);cdecl;external;
function gtk_grid_layout_child_get_column(child:PTGtkGridLayoutChild):longint;cdecl;external;
procedure gtk_grid_layout_child_set_column_span(child:PTGtkGridLayoutChild; span:longint);cdecl;external;
function gtk_grid_layout_child_get_column_span(child:PTGtkGridLayoutChild):longint;cdecl;external;
procedure gtk_grid_layout_child_set_row_span(child:PTGtkGridLayoutChild; span:longint);cdecl;external;
function gtk_grid_layout_child_get_row_span(child:PTGtkGridLayoutChild):longint;cdecl;external;

// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkappchooserdialog.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkappchooserdialog.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkappchooserdialog.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGFile  = ^GFile;
PGtkAppChooserDialog  = ^GtkAppChooserDialog;
PGtkWindow  = ^GtkWindow;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_APP_CHOOSER_DIALOG_H__}
//// {$define __GTK_APP_CHOOSER_DIALOG_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkdialog.h>}
//// {$include <gio/gio.h>}

function GTK_TYPE_APP_CHOOSER_DIALOG : longint; { return type might be wrong }

function GTK_APP_CHOOSER_DIALOG(obj : longint) : longint;

function GTK_IS_APP_CHOOSER_DIALOG(obj : longint) : longint;

type
  T_GtkAppChooserDialog = TGtkAppChooserDialog;

function gtk_app_chooser_dialog_get_type:TGType;cdecl;external;
function gtk_app_chooser_dialog_new(parent:PTGtkWindow; flags:TGtkDialogFlags; file:PTGFile):^TGtkWidget;cdecl;external;
function gtk_app_chooser_dialog_new_for_content_type(parent:PTGtkWindow; flags:TGtkDialogFlags; content_type:Pchar):^TGtkWidget;cdecl;external;
function gtk_app_chooser_dialog_get_widget(self:PTGtkAppChooserDialog):^TGtkWidget;cdecl;external;
procedure gtk_app_chooser_dialog_set_heading(self:PTGtkAppChooserDialog; heading:Pchar);cdecl;external;
function gtk_app_chooser_dialog_get_heading(self:PTGtkAppChooserDialog):^char;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkwindowhandle.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkwindowhandle.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkwindowhandle.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGtkWidget  = ^GtkWidget;
PGtkWindowHandle  = ^GtkWindowHandle;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkwidget.h>}

function GTK_TYPE_WINDOW_HANDLE : longint; { return type might be wrong }

function gtk_window_handle_new:^TGtkWidget;cdecl;external;
function gtk_window_handle_get_child(self:PTGtkWindowHandle):^TGtkWidget;cdecl;external;
procedure gtk_window_handle_set_child(self:PTGtkWindowHandle; child:PTGtkWidget);cdecl;external;

// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkappchooserbutton.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkappchooserbutton.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkappchooserbutton.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGIcon  = ^GIcon;
PGtkAppChooserButton  = ^GtkAppChooserButton;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_APP_CHOOSER_BUTTON_H__}
//// {$define __GTK_APP_CHOOSER_BUTTON_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkwidget.h>}
//// {$include <gio/gio.h>}

function GTK_TYPE_APP_CHOOSER_BUTTON : longint; { return type might be wrong }

function GTK_APP_CHOOSER_BUTTON(obj : longint) : longint;

function GTK_IS_APP_CHOOSER_BUTTON(obj : longint) : longint;

type
  T_GtkAppChooserButton = TGtkAppChooserButton;

function gtk_app_chooser_button_get_type:TGType;cdecl;external;
function gtk_app_chooser_button_new(content_type:Pchar):^TGtkWidget;cdecl;external;
procedure gtk_app_chooser_button_append_separator(self:PTGtkAppChooserButton);cdecl;external;
procedure gtk_app_chooser_button_append_custom_item(self:PTGtkAppChooserButton; name:Pchar; _label:Pchar; icon:PTGIcon);cdecl;external;
procedure gtk_app_chooser_button_set_active_custom_item(self:PTGtkAppChooserButton; name:Pchar);cdecl;external;
procedure gtk_app_chooser_button_set_show_dialog_item(self:PTGtkAppChooserButton; setting:Tgboolean);cdecl;external;
function gtk_app_chooser_button_get_show_dialog_item(self:PTGtkAppChooserButton):Tgboolean;cdecl;external;
procedure gtk_app_chooser_button_set_heading(self:PTGtkAppChooserButton; heading:Pchar);cdecl;external;
function gtk_app_chooser_button_get_heading(self:PTGtkAppChooserButton):^char;cdecl;external;
procedure gtk_app_chooser_button_set_show_default_item(self:PTGtkAppChooserButton; setting:Tgboolean);cdecl;external;
function gtk_app_chooser_button_get_show_default_item(self:PTGtkAppChooserButton):Tgboolean;cdecl;external;
function gtk_app_chooser_button_get_modal(self:PTGtkAppChooserButton):Tgboolean;cdecl;external;
procedure gtk_app_chooser_button_set_modal(self:PTGtkAppChooserButton; modal:Tgboolean);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkcombobox.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkcombobox.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkcombobox.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGdkDevice  = ^GdkDevice;
PGtkComboBox  = ^GtkComboBox;
PGtkTreeIter  = ^GtkTreeIter;
PGtkTreeModel  = ^GtkTreeModel;
PGtkWidget  = ^GtkWidget;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_COMBO_BOX_H__}
//// {$define __GTK_COMBO_BOX_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkwidget.h>}
//// {$include <gtk/gtktreemodel.h>}
//// {$include <gtk/gtktreeview.h>}

function GTK_TYPE_COMBO_BOX : longint; { return type might be wrong }

function GTK_COMBO_BOX(obj : longint) : longint;

function GTK_COMBO_BOX_CLASS(vtable : longint) : longint;

function GTK_IS_COMBO_BOX(obj : longint) : longint;

function GTK_IS_COMBO_BOX_CLASS(vtable : longint) : longint;

function GTK_COMBO_BOX_GET_CLASS(inst : longint) : longint;

type
  T_GtkComboBox = TGtkComboBox;
  T_GtkComboBoxClass = TGtkComboBoxClass;
  T_GtkComboBox = record
      parent_instance : TGtkWidget;
    end;





  T_GtkComboBoxClass = record
      parent_class : TGtkWidgetClass;
      changed : procedure (combo_box:PTGtkComboBox);cdecl;
      format_entry_text : function (combo_box:PTGtkComboBox; path:Pchar):Pchar;cdecl;
      activate : procedure (combo_box:PTGtkComboBox);cdecl;
      padding : array[0..6] of Tgpointer;
    end;



function gtk_combo_box_get_type:TGType;cdecl;external;
function gtk_combo_box_new:^TGtkWidget;cdecl;external;
function gtk_combo_box_new_with_entry:^TGtkWidget;cdecl;external;
function gtk_combo_box_new_with_model(model:PTGtkTreeModel):^TGtkWidget;cdecl;external;
function gtk_combo_box_new_with_model_and_entry(model:PTGtkTreeModel):^TGtkWidget;cdecl;external;

function gtk_combo_box_get_active(combo_box:PTGtkComboBox):longint;cdecl;external;
procedure gtk_combo_box_set_active(combo_box:PTGtkComboBox; index_:longint);cdecl;external;
function gtk_combo_box_get_active_iter(combo_box:PTGtkComboBox; iter:PTGtkTreeIter):Tgboolean;cdecl;external;
procedure gtk_combo_box_set_active_iter(combo_box:PTGtkComboBox; iter:PTGtkTreeIter);cdecl;external;

procedure gtk_combo_box_set_model(combo_box:PTGtkComboBox; model:PTGtkTreeModel);cdecl;external;
function gtk_combo_box_get_model(combo_box:PTGtkComboBox):^TGtkTreeModel;cdecl;external;
function gtk_combo_box_get_row_separator_func(combo_box:PTGtkComboBox):TGtkTreeViewRowSeparatorFunc;cdecl;external;
procedure gtk_combo_box_set_row_separator_func(combo_box:PTGtkComboBox; func:TGtkTreeViewRowSeparatorFunc; data:Tgpointer; destroy:TGDestroyNotify);cdecl;external;
procedure gtk_combo_box_set_button_sensitivity(combo_box:PTGtkComboBox; sensitivity:TGtkSensitivityType);cdecl;external;
function gtk_combo_box_get_button_sensitivity(combo_box:PTGtkComboBox):TGtkSensitivityType;cdecl;external;
function gtk_combo_box_get_has_entry(combo_box:PTGtkComboBox):Tgboolean;cdecl;external;
procedure gtk_combo_box_set_entry_text_column(combo_box:PTGtkComboBox; text_column:longint);cdecl;external;
function gtk_combo_box_get_entry_text_column(combo_box:PTGtkComboBox):longint;cdecl;external;
procedure gtk_combo_box_set_popup_fixed_width(combo_box:PTGtkComboBox; fixed:Tgboolean);cdecl;external;
function gtk_combo_box_get_popup_fixed_width(combo_box:PTGtkComboBox):Tgboolean;cdecl;external;

procedure gtk_combo_box_popup(combo_box:PTGtkComboBox);cdecl;external;
procedure gtk_combo_box_popup_for_device(combo_box:PTGtkComboBox; device:PTGdkDevice);cdecl;external;
procedure gtk_combo_box_popdown(combo_box:PTGtkComboBox);cdecl;external;
function gtk_combo_box_get_id_column(combo_box:PTGtkComboBox):longint;cdecl;external;
procedure gtk_combo_box_set_id_column(combo_box:PTGtkComboBox; id_column:longint);cdecl;external;
function gtk_combo_box_get_active_id(combo_box:PTGtkComboBox):^char;cdecl;external;
function gtk_combo_box_set_active_id(combo_box:PTGtkComboBox; active_id:Pchar):Tgboolean;cdecl;external;
procedure gtk_combo_box_set_child(combo_box:PTGtkComboBox; child:PTGtkWidget);cdecl;external;
function gtk_combo_box_get_child(combo_box:PTGtkComboBox):^TGtkWidget;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkpopover.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkpopover.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkpopover.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGdkRectangle  = ^GdkRectangle;
PGtkPopover  = ^GtkPopover;
PGtkWidget  = ^GtkWidget;
Plongint  = ^longint;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_POPOVER_H__}
//// {$define __GTK_POPOVER_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkwidget.h>}

function GTK_TYPE_POPOVER : longint; { return type might be wrong }

function GTK_POPOVER(obj : longint) : longint;

function GTK_POPOVER_CLASS(klass : longint) : longint;

function GTK_IS_POPOVER(obj : longint) : longint;

function GTK_IS_POPOVER_CLASS(klass : longint) : longint;

function GTK_POPOVER_GET_CLASS(obj : longint) : longint;

type
  T_GtkPopover = TGtkPopover;
  T_GtkPopoverClass = TGtkPopoverClass;
  T_GtkPopover = record
      parent : TGtkWidget;
    end;


  T_GtkPopoverClass = record
      parent_class : TGtkWidgetClass;
      closed : procedure (popover:PTGtkPopover);cdecl;
      activate_default : procedure (popover:PTGtkPopover);cdecl;
      reserved : array[0..7] of Tgpointer;
    end;


function gtk_popover_get_type:TGType;cdecl;external;
function gtk_popover_new:^TGtkWidget;cdecl;external;
procedure gtk_popover_set_child(popover:PTGtkPopover; child:PTGtkWidget);cdecl;external;
function gtk_popover_get_child(popover:PTGtkPopover):^TGtkWidget;cdecl;external;
procedure gtk_popover_set_pointing_to(popover:PTGtkPopover; rect:PTGdkRectangle);cdecl;external;
function gtk_popover_get_pointing_to(popover:PTGtkPopover; rect:PTGdkRectangle):Tgboolean;cdecl;external;
procedure gtk_popover_set_position(popover:PTGtkPopover; position:TGtkPositionType);cdecl;external;
function gtk_popover_get_position(popover:PTGtkPopover):TGtkPositionType;cdecl;external;
procedure gtk_popover_set_autohide(popover:PTGtkPopover; autohide:Tgboolean);cdecl;external;
function gtk_popover_get_autohide(popover:PTGtkPopover):Tgboolean;cdecl;external;
procedure gtk_popover_set_has_arrow(popover:PTGtkPopover; has_arrow:Tgboolean);cdecl;external;
function gtk_popover_get_has_arrow(popover:PTGtkPopover):Tgboolean;cdecl;external;
procedure gtk_popover_set_mnemonics_visible(popover:PTGtkPopover; mnemonics_visible:Tgboolean);cdecl;external;
function gtk_popover_get_mnemonics_visible(popover:PTGtkPopover):Tgboolean;cdecl;external;
procedure gtk_popover_popup(popover:PTGtkPopover);cdecl;external;
procedure gtk_popover_popdown(popover:PTGtkPopover);cdecl;external;
procedure gtk_popover_set_offset(popover:PTGtkPopover; x_offset:longint; y_offset:longint);cdecl;external;
procedure gtk_popover_get_offset(popover:PTGtkPopover; x_offset:Plongint; y_offset:Plongint);cdecl;external;
procedure gtk_popover_set_cascade_popdown(popover:PTGtkPopover; cascade_popdown:Tgboolean);cdecl;external;
function gtk_popover_get_cascade_popdown(popover:PTGtkPopover):Tgboolean;cdecl;external;
procedure gtk_popover_set_default_widget(popover:PTGtkPopover; widget:PTGtkWidget);cdecl;external;
procedure gtk_popover_present(popover:PTGtkPopover);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtknumericsorter.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtknumericsorter.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtknumericsorter.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGtkExpression  = ^GtkExpression;
PGtkNumericSorter  = ^GtkNumericSorter;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_NUMERIC_SORTER_H__}
//// {$define __GTK_NUMERIC_SORTER_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkexpression.h>}
//// {$include <gtk/gtksorter.h>}

function GTK_TYPE_NUMERIC_SORTER : longint; { return type might be wrong }

function gtk_numeric_sorter_new(expression:PTGtkExpression):^TGtkNumericSorter;cdecl;external;
function gtk_numeric_sorter_get_expression(self:PTGtkNumericSorter):^TGtkExpression;cdecl;external;
procedure gtk_numeric_sorter_set_expression(self:PTGtkNumericSorter; expression:PTGtkExpression);cdecl;external;
function gtk_numeric_sorter_get_sort_order(self:PTGtkNumericSorter):TGtkSortType;cdecl;external;
procedure gtk_numeric_sorter_set_sort_order(self:PTGtkNumericSorter; sort_order:TGtkSortType);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkmediacontrols.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkmediacontrols.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkmediacontrols.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGtkMediaControls  = ^GtkMediaControls;
PGtkMediaStream  = ^GtkMediaStream;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_MEDIA_CONTROLS_H__}
//// {$define __GTK_MEDIA_CONTROLS_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkmediastream.h>}
//// {$include <gtk/gtkwidget.h>}

function GTK_TYPE_MEDIA_CONTROLS : longint; { return type might be wrong }

function gtk_media_controls_new(stream:PTGtkMediaStream):^TGtkWidget;cdecl;external;
function gtk_media_controls_get_media_stream(controls:PTGtkMediaControls):^TGtkMediaStream;cdecl;external;
procedure gtk_media_controls_set_media_stream(controls:PTGtkMediaControls; stream:PTGtkMediaStream);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkbuilderlistitemfactory.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkbuilderlistitemfactory.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkbuilderlistitemfactory.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGBytes  = ^GBytes;
PGtkBuilderListItemFactory  = ^GtkBuilderListItemFactory;
PGtkBuilderScope  = ^GtkBuilderScope;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_BUILDER_LIST_ITEM_FACTORY_H__}
//// {$define __GTK_BUILDER_LIST_ITEM_FACTORY_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtklistitemfactory.h>}

function GTK_TYPE_BUILDER_LIST_ITEM_FACTORY : longint; { return type might be wrong }

function GTK_BUILDER_LIST_ITEM_FACTORY(o : longint) : longint;

function GTK_BUILDER_LIST_ITEM_FACTORY_CLASS(k : longint) : longint;

function GTK_IS_BUILDER_LIST_ITEM_FACTORY(o : longint) : longint;

function GTK_IS_BUILDER_LIST_ITEM_FACTORY_CLASS(k : longint) : longint;

function GTK_BUILDER_LIST_ITEM_FACTORY_GET_CLASS(o : longint) : longint;

type
  T_GtkBuilderListItemFactory = TGtkBuilderListItemFactory;
  T_GtkBuilderListItemFactoryClass = TGtkBuilderListItemFactoryClass;

function gtk_builder_list_item_factory_get_type:TGType;cdecl;external;
function gtk_builder_list_item_factory_new_from_bytes(scope:PTGtkBuilderScope; bytes:PTGBytes):^TGtkListItemFactory;cdecl;external;
function gtk_builder_list_item_factory_new_from_resource(scope:PTGtkBuilderScope; resource_path:Pchar):^TGtkListItemFactory;cdecl;external;
function gtk_builder_list_item_factory_get_bytes(self:PTGtkBuilderListItemFactory):^TGBytes;cdecl;external;
function gtk_builder_list_item_factory_get_resource(self:PTGtkBuilderListItemFactory):^char;cdecl;external;
function gtk_builder_list_item_factory_get_scope(self:PTGtkBuilderListItemFactory):^TGtkBuilderScope;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkcelleditable.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkcelleditable.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkcelleditable.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGdkEvent  = ^GdkEvent;
PGtkCellEditable  = ^GtkCellEditable;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_CELL_EDITABLE_H__}
//// {$define __GTK_CELL_EDITABLE_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkwidget.h>}

function GTK_TYPE_CELL_EDITABLE : longint; { return type might be wrong }

function GTK_CELL_EDITABLE(obj : longint) : longint;

function GTK_IS_CELL_EDITABLE(obj : longint) : longint;

function GTK_CELL_EDITABLE_GET_IFACE(obj : longint) : longint;

type
  T_GtkCellEditable = TGtkCellEditable;

  T_GtkCellEditableIface = TGtkCellEditableIface;





  T_GtkCellEditableIface = record
      g_iface : TGTypeInterface;
      editing_done : procedure (cell_editable:PTGtkCellEditable);cdecl;
      remove_widget : procedure (cell_editable:PTGtkCellEditable);cdecl;
      start_editing : procedure (cell_editable:PTGtkCellEditable; event:PTGdkEvent);cdecl;
    end;


function gtk_cell_editable_get_type:TGType;cdecl;external;
procedure gtk_cell_editable_start_editing(cell_editable:PTGtkCellEditable; event:PTGdkEvent);cdecl;external;
procedure gtk_cell_editable_editing_done(cell_editable:PTGtkCellEditable);cdecl;external;
procedure gtk_cell_editable_remove_widget(cell_editable:PTGtkCellEditable);cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkprogressbar.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkprogressbar.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkprogressbar.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
Pchar  = ^char;
PGtkProgressBar  = ^GtkProgressBar;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}




//// {$ifndef __GTK_PROGRESS_BAR_H__}
//// {$define __GTK_PROGRESS_BAR_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkwidget.h>}

function GTK_TYPE_PROGRESS_BAR : longint; { return type might be wrong }

function GTK_PROGRESS_BAR(obj : longint) : longint;

function GTK_IS_PROGRESS_BAR(obj : longint) : longint;

type
  T_GtkProgressBar = TGtkProgressBar;

function gtk_progress_bar_get_type:TGType;cdecl;external;
function gtk_progress_bar_new:^TGtkWidget;cdecl;external;
procedure gtk_progress_bar_pulse(pbar:PTGtkProgressBar);cdecl;external;
procedure gtk_progress_bar_set_text(pbar:PTGtkProgressBar; text:Pchar);cdecl;external;
procedure gtk_progress_bar_set_fraction(pbar:PTGtkProgressBar; fraction:Tdouble);cdecl;external;
procedure gtk_progress_bar_set_pulse_step(pbar:PTGtkProgressBar; fraction:Tdouble);cdecl;external;
procedure gtk_progress_bar_set_inverted(pbar:PTGtkProgressBar; inverted:Tgboolean);cdecl;external;
function gtk_progress_bar_get_text(pbar:PTGtkProgressBar):^char;cdecl;external;
function gtk_progress_bar_get_fraction(pbar:PTGtkProgressBar):Tdouble;cdecl;external;
function gtk_progress_bar_get_pulse_step(pbar:PTGtkProgressBar):Tdouble;cdecl;external;
function gtk_progress_bar_get_inverted(pbar:PTGtkProgressBar):Tgboolean;cdecl;external;
procedure gtk_progress_bar_set_ellipsize(pbar:PTGtkProgressBar; mode:TPangoEllipsizeMode);cdecl;external;
function gtk_progress_bar_get_ellipsize(pbar:PTGtkProgressBar):TPangoEllipsizeMode;cdecl;external;
procedure gtk_progress_bar_set_show_text(pbar:PTGtkProgressBar; show_text:Tgboolean);cdecl;external;
function gtk_progress_bar_get_show_text(pbar:PTGtkProgressBar):Tgboolean;cdecl;external;
//// {$endif}


// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtkcellareacontext.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtkcellareacontext.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtkcellareacontext.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

Type
PGtkCellAreaContext  = ^GtkCellAreaContext;
Plongint  = ^longint;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$ifndef __GTK_CELL_AREA_CONTEXT_H__}
//// {$define __GTK_CELL_AREA_CONTEXT_H__}
//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkcellarea.h>}

function GTK_TYPE_CELL_AREA_CONTEXT : longint; { return type might be wrong }

function GTK_CELL_AREA_CONTEXT(obj : longint) : longint;

function GTK_CELL_AREA_CONTEXT_CLASS(klass : longint) : longint;

function GTK_IS_CELL_AREA_CONTEXT(obj : longint) : longint;

function GTK_IS_CELL_AREA_CONTEXT_CLASS(klass : longint) : longint;

function GTK_CELL_AREA_CONTEXT_GET_CLASS(obj : longint) : longint;

type
  T_GtkCellAreaContextPrivate = TGtkCellAreaContextPrivate;
  T_GtkCellAreaContextClass = TGtkCellAreaContextClass;

  T_GtkCellAreaContext = record
      parent_instance : TGObject;
    end;





  T_GtkCellAreaContextClass = record
      parent_class : TGObjectClass;
      allocate : procedure (context:PTGtkCellAreaContext; width:longint; height:longint);cdecl;
      reset : procedure (context:PTGtkCellAreaContext);cdecl;
      get_preferred_height_for_width : procedure (context:PTGtkCellAreaContext; width:longint; minimum_height:Plongint; natural_height:Plongint);cdecl;
      get_preferred_width_for_height : procedure (context:PTGtkCellAreaContext; height:longint; minimum_width:Plongint; natural_width:Plongint);cdecl;
      padding : array[0..7] of Tgpointer;
    end;


function gtk_cell_area_context_get_type:TGType;cdecl;external;

function gtk_cell_area_context_get_area(context:PTGtkCellAreaContext):^TGtkCellArea;cdecl;external;
procedure gtk_cell_area_context_allocate(context:PTGtkCellAreaContext; width:longint; height:longint);cdecl;external;
procedure gtk_cell_area_context_reset(context:PTGtkCellAreaContext);cdecl;external;

procedure gtk_cell_area_context_get_preferred_width(context:PTGtkCellAreaContext; minimum_width:Plongint; natural_width:Plongint);cdecl;external;
procedure gtk_cell_area_context_get_preferred_height(context:PTGtkCellAreaContext; minimum_height:Plongint; natural_height:Plongint);cdecl;external;
procedure gtk_cell_area_context_get_preferred_height_for_width(context:PTGtkCellAreaContext; width:longint; minimum_height:Plongint; natural_height:Plongint);cdecl;external;
procedure gtk_cell_area_context_get_preferred_width_for_height(context:PTGtkCellAreaContext; height:longint; minimum_width:Plongint; natural_width:Plongint);cdecl;external;
procedure gtk_cell_area_context_get_allocation(context:PTGtkCellAreaContext; width:Plongint; height:Plongint);cdecl;external;

procedure gtk_cell_area_context_push_preferred_width(context:PTGtkCellAreaContext; minimum_width:longint; natural_width:longint);cdecl;external;
procedure gtk_cell_area_context_push_preferred_height(context:PTGtkCellAreaContext; minimum_height:longint; natural_height:longint);cdecl;external;
//// {$endif}



implementation
// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkeditablelabel.pp
// -------------------------------------------------

function GTK_TYPE_EDITABLE_LABEL : longint; { return type might be wrong }
  begin
    GTK_TYPE_EDITABLE_LABEL:=gtk_editable_label_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtktreednd.pp
// -------------------------------------------------

function GTK_TYPE_TREE_ROW_DATA : longint; { return type might be wrong }
  begin
    GTK_TYPE_TREE_ROW_DATA:=gtk_tree_row_data_get_type;
  end;

function GTK_TYPE_TREE_DRAG_SOURCE : longint; { return type might be wrong }
  begin
    GTK_TYPE_TREE_DRAG_SOURCE:=gtk_tree_drag_source_get_type;
  end;

function GTK_TREE_DRAG_SOURCE(obj : longint) : longint;
begin
  GTK_TREE_DRAG_SOURCE:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_TREE_DRAG_SOURCE,GtkTreeDragSource);
end;

function GTK_IS_TREE_DRAG_SOURCE(obj : longint) : longint;
begin
  GTK_IS_TREE_DRAG_SOURCE:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_TREE_DRAG_SOURCE);
end;

function GTK_TREE_DRAG_SOURCE_GET_IFACE(obj : longint) : longint;
begin
  GTK_TREE_DRAG_SOURCE_GET_IFACE:=G_TYPE_INSTANCE_GET_INTERFACE(obj,GTK_TYPE_TREE_DRAG_SOURCE,GtkTreeDragSourceIface);
end;

function GTK_TYPE_TREE_DRAG_DEST : longint; { return type might be wrong }
  begin
    GTK_TYPE_TREE_DRAG_DEST:=gtk_tree_drag_dest_get_type;
  end;

function GTK_TREE_DRAG_DEST(obj : longint) : longint;
begin
  GTK_TREE_DRAG_DEST:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_TREE_DRAG_DEST,GtkTreeDragDest);
end;

function GTK_IS_TREE_DRAG_DEST(obj : longint) : longint;
begin
  GTK_IS_TREE_DRAG_DEST:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_TREE_DRAG_DEST);
end;

function GTK_TREE_DRAG_DEST_GET_IFACE(obj : longint) : longint;
begin
  GTK_TREE_DRAG_DEST_GET_IFACE:=G_TYPE_INSTANCE_GET_INTERFACE(obj,GTK_TYPE_TREE_DRAG_DEST,GtkTreeDragDestIface);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkcolorchooserdialog.pp
// -------------------------------------------------

function GTK_TYPE_COLOR_CHOOSER_DIALOG : longint; { return type might be wrong }
  begin
    GTK_TYPE_COLOR_CHOOSER_DIALOG:=gtk_color_chooser_dialog_get_type;
  end;

function GTK_COLOR_CHOOSER_DIALOG(obj : longint) : longint;
begin
  GTK_COLOR_CHOOSER_DIALOG:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_COLOR_CHOOSER_DIALOG,GtkColorChooserDialog);
end;

function GTK_IS_COLOR_CHOOSER_DIALOG(obj : longint) : longint;
begin
  GTK_IS_COLOR_CHOOSER_DIALOG:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_COLOR_CHOOSER_DIALOG);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkspinbutton.pp
// -------------------------------------------------

function GTK_TYPE_SPIN_BUTTON : longint; { return type might be wrong }
  begin
    GTK_TYPE_SPIN_BUTTON:=gtk_spin_button_get_type;
  end;

function GTK_SPIN_BUTTON(obj : longint) : longint;
begin
  GTK_SPIN_BUTTON:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_SPIN_BUTTON,GtkSpinButton);
end;

function GTK_IS_SPIN_BUTTON(obj : longint) : longint;
begin
  GTK_IS_SPIN_BUTTON:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_SPIN_BUTTON);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkcolorbutton.pp
// -------------------------------------------------

function GTK_TYPE_COLOR_BUTTON : longint; { return type might be wrong }
  begin
    GTK_TYPE_COLOR_BUTTON:=gtk_color_button_get_type;
  end;

function GTK_COLOR_BUTTON(obj : longint) : longint;
begin
  GTK_COLOR_BUTTON:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_COLOR_BUTTON,GtkColorButton);
end;

function GTK_IS_COLOR_BUTTON(obj : longint) : longint;
begin
  GTK_IS_COLOR_BUTTON:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_COLOR_BUTTON);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkcellrendererspin.pp
// -------------------------------------------------

function GTK_TYPE_CELL_RENDERER_SPIN : longint; { return type might be wrong }
  begin
    GTK_TYPE_CELL_RENDERER_SPIN:=gtk_cell_renderer_spin_get_type;
  end;

function GTK_CELL_RENDERER_SPIN(obj : longint) : longint;
begin
  GTK_CELL_RENDERER_SPIN:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_CELL_RENDERER_SPIN,GtkCellRendererSpin);
end;

function GTK_IS_CELL_RENDERER_SPIN(obj : longint) : longint;
begin
  GTK_IS_CELL_RENDERER_SPIN:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_CELL_RENDERER_SPIN);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkliststore.pp
// -------------------------------------------------

function GTK_TYPE_LIST_STORE : longint; { return type might be wrong }
  begin
    GTK_TYPE_LIST_STORE:=gtk_list_store_get_type;
  end;

function GTK_LIST_STORE(obj : longint) : longint;
begin
  GTK_LIST_STORE:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_LIST_STORE,GtkListStore);
end;

function GTK_LIST_STORE_CLASS(klass : longint) : longint;
begin
  GTK_LIST_STORE_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_LIST_STORE,GtkListStoreClass);
end;

function GTK_IS_LIST_STORE(obj : longint) : longint;
begin
  GTK_IS_LIST_STORE:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_LIST_STORE);
end;

function GTK_IS_LIST_STORE_CLASS(klass : longint) : longint;
begin
  GTK_IS_LIST_STORE_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_LIST_STORE);
end;

function GTK_LIST_STORE_GET_CLASS(obj : longint) : longint;
begin
  GTK_LIST_STORE_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_LIST_STORE,GtkListStoreClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkshortcutswindow.pp
// -------------------------------------------------

function GTK_TYPE_SHORTCUTS_WINDOW : longint; { return type might be wrong }
  begin
    GTK_TYPE_SHORTCUTS_WINDOW:=gtk_shortcuts_window_get_type;
  end;

function GTK_SHORTCUTS_WINDOW(obj : longint) : longint;
begin
  GTK_SHORTCUTS_WINDOW:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_SHORTCUTS_WINDOW,GtkShortcutsWindow);
end;

function GTK_IS_SHORTCUTS_WINDOW(obj : longint) : longint;
begin
  GTK_IS_SHORTCUTS_WINDOW:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_SHORTCUTS_WINDOW);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkdropdown.pp
// -------------------------------------------------

function GTK_TYPE_DROP_DOWN : longint; { return type might be wrong }
  begin
    GTK_TYPE_DROP_DOWN:=gtk_drop_down_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtklistbox.pp
// -------------------------------------------------

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


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkgestureclick.pp
// -------------------------------------------------

function GTK_TYPE_GESTURE_CLICK : longint; { return type might be wrong }
  begin
    GTK_TYPE_GESTURE_CLICK:=gtk_gesture_click_get_type;
  end;

function GTK_GESTURE_CLICK(o : longint) : longint;
begin
  GTK_GESTURE_CLICK:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_GESTURE_CLICK,GtkGestureClick);
end;

function GTK_GESTURE_CLICK_CLASS(k : longint) : longint;
begin
  GTK_GESTURE_CLICK_CLASS:=G_TYPE_CHECK_CLASS_CAST(k,GTK_TYPE_GESTURE_CLICK,GtkGestureClickClass);
end;

function GTK_IS_GESTURE_CLICK(o : longint) : longint;
begin
  GTK_IS_GESTURE_CLICK:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_GESTURE_CLICK);
end;

function GTK_IS_GESTURE_CLICK_CLASS(k : longint) : longint;
begin
  GTK_IS_GESTURE_CLICK_CLASS:=G_TYPE_CHECK_CLASS_TYPE(k,GTK_TYPE_GESTURE_CLICK);
end;

function GTK_GESTURE_CLICK_GET_CLASS(o : longint) : longint;
begin
  GTK_GESTURE_CLICK_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GTK_TYPE_GESTURE_CLICK,GtkGestureClickClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtknativedialog.pp
// -------------------------------------------------

function GTK_TYPE_NATIVE_DIALOG : longint; { return type might be wrong }
  begin
    GTK_TYPE_NATIVE_DIALOG:=gtk_native_dialog_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkfontbutton.pp
// -------------------------------------------------

function GTK_TYPE_FONT_BUTTON : longint; { return type might be wrong }
  begin
    GTK_TYPE_FONT_BUTTON:=gtk_font_button_get_type;
  end;

function GTK_FONT_BUTTON(obj : longint) : longint;
begin
  GTK_FONT_BUTTON:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_FONT_BUTTON,GtkFontButton);
end;

function GTK_IS_FONT_BUTTON(obj : longint) : longint;
begin
  GTK_IS_FONT_BUTTON:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_FONT_BUTTON);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkmain.pp
// -------------------------------------------------

function gtk_init : longint;
begin
  gtk_init:=gtk_init_abi_check(2,sizeof(GtkWindow),sizeof(GtkBox));
end;

function gtk_init_check : longint;
begin
  gtk_init_check:=gtk_init_check_abi_check(2,sizeof(GtkWindow),sizeof(GtkBox));
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtklinkbutton.pp
// -------------------------------------------------

function GTK_TYPE_LINK_BUTTON : longint; { return type might be wrong }
  begin
    GTK_TYPE_LINK_BUTTON:=gtk_link_button_get_type;
  end;

function GTK_LINK_BUTTON(obj : longint) : longint;
begin
  GTK_LINK_BUTTON:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_LINK_BUTTON,GtkLinkButton);
end;

function GTK_IS_LINK_BUTTON(obj : longint) : longint;
begin
  GTK_IS_LINK_BUTTON:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_LINK_BUTTON);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkcolorchooserwidget.pp
// -------------------------------------------------

function GTK_TYPE_COLOR_CHOOSER_WIDGET : longint; { return type might be wrong }
  begin
    GTK_TYPE_COLOR_CHOOSER_WIDGET:=gtk_color_chooser_widget_get_type;
  end;

function GTK_COLOR_CHOOSER_WIDGET(obj : longint) : longint;
begin
  GTK_COLOR_CHOOSER_WIDGET:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_COLOR_CHOOSER_WIDGET,GtkColorChooserWidget);
end;

function GTK_IS_COLOR_CHOOSER_WIDGET(obj : longint) : longint;
begin
  GTK_IS_COLOR_CHOOSER_WIDGET:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_COLOR_CHOOSER_WIDGET);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtktreemodelsort.pp
// -------------------------------------------------

function GTK_TYPE_TREE_MODEL_SORT : longint; { return type might be wrong }
  begin
    GTK_TYPE_TREE_MODEL_SORT:=gtk_tree_model_sort_get_type;
  end;

function GTK_TREE_MODEL_SORT(obj : longint) : longint;
begin
  GTK_TREE_MODEL_SORT:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_TREE_MODEL_SORT,GtkTreeModelSort);
end;

function GTK_TREE_MODEL_SORT_CLASS(klass : longint) : longint;
begin
  GTK_TREE_MODEL_SORT_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_TREE_MODEL_SORT,GtkTreeModelSortClass);
end;

function GTK_IS_TREE_MODEL_SORT(obj : longint) : longint;
begin
  GTK_IS_TREE_MODEL_SORT:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_TREE_MODEL_SORT);
end;

function GTK_IS_TREE_MODEL_SORT_CLASS(klass : longint) : longint;
begin
  GTK_IS_TREE_MODEL_SORT_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_TREE_MODEL_SORT);
end;

function GTK_TREE_MODEL_SORT_GET_CLASS(obj : longint) : longint;
begin
  GTK_TREE_MODEL_SORT_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_TREE_MODEL_SORT,GtkTreeModelSortClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkbuildable.pp
// -------------------------------------------------

function GTK_TYPE_BUILDABLE : longint; { return type might be wrong }
  begin
    GTK_TYPE_BUILDABLE:=gtk_buildable_get_type;
  end;

function GTK_BUILDABLE(obj : longint) : longint;
begin
  GTK_BUILDABLE:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_BUILDABLE,GtkBuildable);
end;

function GTK_IS_BUILDABLE(obj : longint) : longint;
begin
  GTK_IS_BUILDABLE:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_BUILDABLE);
end;

function GTK_BUILDABLE_GET_IFACE(obj : longint) : longint;
begin
  GTK_BUILDABLE_GET_IFACE:=G_TYPE_INSTANCE_GET_INTERFACE(obj,GTK_TYPE_BUILDABLE,GtkBuildableIface);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkstringfilter.pp
// -------------------------------------------------

function GTK_TYPE_STRING_FILTER : longint; { return type might be wrong }
  begin
    GTK_TYPE_STRING_FILTER:=gtk_string_filter_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkheaderbar.pp
// -------------------------------------------------

function GTK_TYPE_HEADER_BAR : longint; { return type might be wrong }
  begin
    GTK_TYPE_HEADER_BAR:=gtk_header_bar_get_type;
  end;

function GTK_HEADER_BAR(obj : longint) : longint;
begin
  GTK_HEADER_BAR:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_HEADER_BAR,GtkHeaderBar);
end;

function GTK_IS_HEADER_BAR(obj : longint) : longint;
begin
  GTK_IS_HEADER_BAR:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_HEADER_BAR);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkconstraintguide.pp
// -------------------------------------------------

function GTK_TYPE_CONSTRAINT_GUIDE : longint; { return type might be wrong }
  begin
    GTK_TYPE_CONSTRAINT_GUIDE:=gtk_constraint_guide_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkprintoperation.pp
// -------------------------------------------------

function GTK_TYPE_PRINT_OPERATION : longint; { return type might be wrong }
  begin
    GTK_TYPE_PRINT_OPERATION:=gtk_print_operation_get_type;
  end;

function GTK_PRINT_OPERATION(obj : longint) : longint;
begin
  GTK_PRINT_OPERATION:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_PRINT_OPERATION,GtkPrintOperation);
end;

function GTK_PRINT_OPERATION_CLASS(klass : longint) : longint;
begin
  GTK_PRINT_OPERATION_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_PRINT_OPERATION,GtkPrintOperationClass);
end;

function GTK_IS_PRINT_OPERATION(obj : longint) : longint;
begin
  GTK_IS_PRINT_OPERATION:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_PRINT_OPERATION);
end;

function GTK_IS_PRINT_OPERATION_CLASS(klass : longint) : longint;
begin
  GTK_IS_PRINT_OPERATION_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_PRINT_OPERATION);
end;

function GTK_PRINT_OPERATION_GET_CLASS(obj : longint) : longint;
begin
  GTK_PRINT_OPERATION_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_PRINT_OPERATION,GtkPrintOperationClass);
end;

function GTK_PRINT_ERROR : longint; { return type might be wrong }
  begin
    GTK_PRINT_ERROR:=gtk_print_error_quark;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkorientable.pp
// -------------------------------------------------

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


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkenums.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkshortcutssection.pp
// -------------------------------------------------

function GTK_TYPE_SHORTCUTS_SECTION : longint; { return type might be wrong }
  begin
    GTK_TYPE_SHORTCUTS_SECTION:=gtk_shortcuts_section_get_type;
  end;

function GTK_SHORTCUTS_SECTION(obj : longint) : longint;
begin
  GTK_SHORTCUTS_SECTION:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_SHORTCUTS_SECTION,GtkShortcutsSection);
end;

function GTK_IS_SHORTCUTS_SECTION(obj : longint) : longint;
begin
  GTK_IS_SHORTCUTS_SECTION:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_SHORTCUTS_SECTION);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkgesturedrag.pp
// -------------------------------------------------

function GTK_TYPE_GESTURE_DRAG : longint; { return type might be wrong }
  begin
    GTK_TYPE_GESTURE_DRAG:=gtk_gesture_drag_get_type;
  end;

function GTK_GESTURE_DRAG(o : longint) : longint;
begin
  GTK_GESTURE_DRAG:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_GESTURE_DRAG,GtkGestureDrag);
end;

function GTK_GESTURE_DRAG_CLASS(k : longint) : longint;
begin
  GTK_GESTURE_DRAG_CLASS:=G_TYPE_CHECK_CLASS_CAST(k,GTK_TYPE_GESTURE_DRAG,GtkGestureDragClass);
end;

function GTK_IS_GESTURE_DRAG(o : longint) : longint;
begin
  GTK_IS_GESTURE_DRAG:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_GESTURE_DRAG);
end;

function GTK_IS_GESTURE_DRAG_CLASS(k : longint) : longint;
begin
  GTK_IS_GESTURE_DRAG_CLASS:=G_TYPE_CHECK_CLASS_TYPE(k,GTK_TYPE_GESTURE_DRAG);
end;

function GTK_GESTURE_DRAG_GET_CLASS(o : longint) : longint;
begin
  GTK_GESTURE_DRAG_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GTK_TYPE_GESTURE_DRAG,GtkGestureDragClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkapplication.pp
// -------------------------------------------------

function GTK_TYPE_APPLICATION : longint; { return type might be wrong }
  begin
    GTK_TYPE_APPLICATION:=gtk_application_get_type;
  end;

function GTK_APPLICATION(obj : longint) : longint;
begin
  GTK_APPLICATION:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_APPLICATION,GtkApplication);
end;

function GTK_APPLICATION_CLASS(klass : longint) : longint;
begin
  GTK_APPLICATION_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_APPLICATION,GtkApplicationClass);
end;

function GTK_IS_APPLICATION(obj : longint) : longint;
begin
  GTK_IS_APPLICATION:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_APPLICATION);
end;

function GTK_IS_APPLICATION_CLASS(klass : longint) : longint;
begin
  GTK_IS_APPLICATION_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_APPLICATION);
end;

function GTK_APPLICATION_GET_CLASS(obj : longint) : longint;
begin
  GTK_APPLICATION_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_APPLICATION,GtkApplicationClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkoverlay.pp
// -------------------------------------------------

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


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkgesturesingle.pp
// -------------------------------------------------

function GTK_TYPE_GESTURE_SINGLE : longint; { return type might be wrong }
  begin
    GTK_TYPE_GESTURE_SINGLE:=gtk_gesture_single_get_type;
  end;

function GTK_GESTURE_SINGLE(o : longint) : longint;
begin
  GTK_GESTURE_SINGLE:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_GESTURE_SINGLE,GtkGestureSingle);
end;

function GTK_GESTURE_SINGLE_CLASS(k : longint) : longint;
begin
  GTK_GESTURE_SINGLE_CLASS:=G_TYPE_CHECK_CLASS_CAST(k,GTK_TYPE_GESTURE_SINGLE,GtkGestureSingleClass);
end;

function GTK_IS_GESTURE_SINGLE(o : longint) : longint;
begin
  GTK_IS_GESTURE_SINGLE:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_GESTURE_SINGLE);
end;

function GTK_IS_GESTURE_SINGLE_CLASS(k : longint) : longint;
begin
  GTK_IS_GESTURE_SINGLE_CLASS:=G_TYPE_CHECK_CLASS_TYPE(k,GTK_TYPE_GESTURE_SINGLE);
end;

function GTK_GESTURE_SINGLE_GET_CLASS(o : longint) : longint;
begin
  GTK_GESTURE_SINGLE_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GTK_TYPE_GESTURE_SINGLE,GtkGestureSingleClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkmultiselection.pp
// -------------------------------------------------

function GTK_TYPE_MULTI_SELECTION : longint; { return type might be wrong }
  begin
    GTK_TYPE_MULTI_SELECTION:=gtk_multi_selection_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkstringsorter.pp
// -------------------------------------------------

function GTK_TYPE_STRING_SORTER : longint; { return type might be wrong }
  begin
    GTK_TYPE_STRING_SORTER:=gtk_string_sorter_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkgrid.pp
// -------------------------------------------------

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


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkbinlayout.pp
// -------------------------------------------------

function GTK_TYPE_BIN_LAYOUT : longint; { return type might be wrong }
  begin
    GTK_TYPE_BIN_LAYOUT:=gtk_bin_layout_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkversion.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkshortcutaction.pp
// -------------------------------------------------

function GTK_TYPE_SHORTCUT_ACTION : longint; { return type might be wrong }
  begin
    GTK_TYPE_SHORTCUT_ACTION:=gtk_shortcut_action_get_type;
  end;

function GTK_TYPE_NOTHING_ACTION : longint; { return type might be wrong }
  begin
    GTK_TYPE_NOTHING_ACTION:=gtk_nothing_action_get_type;
  end;

function GTK_TYPE_CALLBACK_ACTION : longint; { return type might be wrong }
  begin
    GTK_TYPE_CALLBACK_ACTION:=gtk_callback_action_get_type;
  end;

function GTK_TYPE_MNEMONIC_ACTION : longint; { return type might be wrong }
  begin
    GTK_TYPE_MNEMONIC_ACTION:=gtk_mnemonic_action_get_type;
  end;

function GTK_TYPE_ACTIVATE_ACTION : longint; { return type might be wrong }
  begin
    GTK_TYPE_ACTIVATE_ACTION:=gtk_activate_action_get_type;
  end;

function GTK_TYPE_SIGNAL_ACTION : longint; { return type might be wrong }
  begin
    GTK_TYPE_SIGNAL_ACTION:=gtk_signal_action_get_type;
  end;

function GTK_TYPE_NAMED_ACTION : longint; { return type might be wrong }
  begin
    GTK_TYPE_NAMED_ACTION:=gtk_named_action_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkslicelistmodel.pp
// -------------------------------------------------

function GTK_TYPE_SLICE_LIST_MODEL : longint; { return type might be wrong }
  begin
    GTK_TYPE_SLICE_LIST_MODEL:=gtk_slice_list_model_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtktextbuffer.pp
// -------------------------------------------------

function GTK_TYPE_TEXT_BUFFER : longint; { return type might be wrong }
  begin
    GTK_TYPE_TEXT_BUFFER:=gtk_text_buffer_get_type;
  end;

function GTK_TEXT_BUFFER(obj : longint) : longint;
begin
  GTK_TEXT_BUFFER:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_TEXT_BUFFER,GtkTextBuffer);
end;

function GTK_TEXT_BUFFER_CLASS(klass : longint) : longint;
begin
  GTK_TEXT_BUFFER_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_TEXT_BUFFER,GtkTextBufferClass);
end;

function GTK_IS_TEXT_BUFFER(obj : longint) : longint;
begin
  GTK_IS_TEXT_BUFFER:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_TEXT_BUFFER);
end;

function GTK_IS_TEXT_BUFFER_CLASS(klass : longint) : longint;
begin
  GTK_IS_TEXT_BUFFER_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_TEXT_BUFFER);
end;

function GTK_TEXT_BUFFER_GET_CLASS(obj : longint) : longint;
begin
  GTK_TEXT_BUFFER_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_TEXT_BUFFER,GtkTextBufferClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkexpression.pp
// -------------------------------------------------

function GTK_TYPE_EXPRESSION : longint; { return type might be wrong }
  begin
    GTK_TYPE_EXPRESSION:=gtk_expression_get_type;
  end;

function GTK_TYPE_EXPRESSION_WATCH : longint; { return type might be wrong }
  begin
    GTK_TYPE_EXPRESSION_WATCH:=gtk_expression_watch_get_type;
  end;

function GTK_IS_EXPRESSION(obj : longint) : longint;
begin
  GTK_IS_EXPRESSION:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_EXPRESSION);
end;

function GTK_EXPRESSION(obj : longint) : longint;
begin
  GTK_EXPRESSION:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_EXPRESSION,GtkExpression);
end;

function GTK_TYPE_PROPERTY_EXPRESSION : longint; { return type might be wrong }
  begin
    GTK_TYPE_PROPERTY_EXPRESSION:=gtk_property_expression_get_type;
  end;

function GTK_TYPE_CONSTANT_EXPRESSION : longint; { return type might be wrong }
  begin
    GTK_TYPE_CONSTANT_EXPRESSION:=gtk_constant_expression_get_type;
  end;

function GTK_TYPE_OBJECT_EXPRESSION : longint; { return type might be wrong }
  begin
    GTK_TYPE_OBJECT_EXPRESSION:=gtk_object_expression_get_type;
  end;

function GTK_TYPE_CLOSURE_EXPRESSION : longint; { return type might be wrong }
  begin
    GTK_TYPE_CLOSURE_EXPRESSION:=gtk_closure_expression_get_type;
  end;

function GTK_TYPE_CCLOSURE_EXPRESSION : longint; { return type might be wrong }
  begin
    GTK_TYPE_CCLOSURE_EXPRESSION:=gtk_cclosure_expression_get_type;
  end;

function GTK_VALUE_HOLDS_EXPRESSION(value : longint) : longint;
begin
  GTK_VALUE_HOLDS_EXPRESSION:=G_VALUE_HOLDS(value,GTK_TYPE_EXPRESSION);
end;

function GTK_TYPE_PARAM_SPEC_EXPRESSION : longint; { return type might be wrong }
  begin
    GTK_TYPE_PARAM_SPEC_EXPRESSION:=gtk_param_expression_get_type;
  end;

function GTK_PARAM_SPEC_EXPRESSION(obj : longint) : longint;
begin
  GTK_PARAM_SPEC_EXPRESSION:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_PARAM_SPEC_EXPRESSION,GtkParamSpecExpression);
end;

function GTK_IS_PARAM_SPEC_EXPRESSION(obj : longint) : longint;
begin
  GTK_IS_PARAM_SPEC_EXPRESSION:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_PARAM_SPEC_EXPRESSION);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkflowbox.pp
// -------------------------------------------------

function GTK_TYPE_FLOW_BOX : longint; { return type might be wrong }
  begin
    GTK_TYPE_FLOW_BOX:=gtk_flow_box_get_type;
  end;

function GTK_FLOW_BOX(obj : longint) : longint;
begin
  GTK_FLOW_BOX:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_FLOW_BOX,GtkFlowBox);
end;

function GTK_IS_FLOW_BOX(obj : longint) : longint;
begin
  GTK_IS_FLOW_BOX:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_FLOW_BOX);
end;

function GTK_TYPE_FLOW_BOX_CHILD : longint; { return type might be wrong }
  begin
    GTK_TYPE_FLOW_BOX_CHILD:=gtk_flow_box_child_get_type;
  end;

function GTK_FLOW_BOX_CHILD(obj : longint) : longint;
begin
  GTK_FLOW_BOX_CHILD:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_FLOW_BOX_CHILD,GtkFlowBoxChild);
end;

function GTK_FLOW_BOX_CHILD_CLASS(klass : longint) : longint;
begin
  GTK_FLOW_BOX_CHILD_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_FLOW_BOX_CHILD,GtkFlowBoxChildClass);
end;

function GTK_IS_FLOW_BOX_CHILD(obj : longint) : longint;
begin
  GTK_IS_FLOW_BOX_CHILD:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_FLOW_BOX_CHILD);
end;

function GTK_IS_FLOW_BOX_CHILD_CLASS(klass : longint) : longint;
begin
  GTK_IS_FLOW_BOX_CHILD_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_FLOW_BOX_CHILD);
end;

function GTK_FLOW_BOX_CHILD_GET_CLASS(obj : longint) : longint;
begin
  GTK_FLOW_BOX_CHILD_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,EG_TYPE_FLOW_BOX_CHILD,GtkFlowBoxChildClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkimcontext.pp
// -------------------------------------------------

function GTK_TYPE_IM_CONTEXT : longint; { return type might be wrong }
  begin
    GTK_TYPE_IM_CONTEXT:=gtk_im_context_get_type;
  end;

function GTK_IM_CONTEXT(obj : longint) : longint;
begin
  GTK_IM_CONTEXT:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_IM_CONTEXT,GtkIMContext);
end;

function GTK_IM_CONTEXT_CLASS(klass : longint) : longint;
begin
  GTK_IM_CONTEXT_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_IM_CONTEXT,GtkIMContextClass);
end;

function GTK_IS_IM_CONTEXT(obj : longint) : longint;
begin
  GTK_IS_IM_CONTEXT:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_IM_CONTEXT);
end;

function GTK_IS_IM_CONTEXT_CLASS(klass : longint) : longint;
begin
  GTK_IS_IM_CONTEXT_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_IM_CONTEXT);
end;

function GTK_IM_CONTEXT_GET_CLASS(obj : longint) : longint;
begin
  GTK_IM_CONTEXT_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_IM_CONTEXT,GtkIMContextClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkrange.pp
// -------------------------------------------------

function GTK_TYPE_RANGE : longint; { return type might be wrong }
  begin
    GTK_TYPE_RANGE:=gtk_range_get_type;
  end;

function GTK_RANGE(obj : longint) : longint;
begin
  GTK_RANGE:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_RANGE,GtkRange);
end;

function GTK_RANGE_CLASS(klass : longint) : longint;
begin
  GTK_RANGE_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_RANGE,GtkRangeClass);
end;

function GTK_IS_RANGE(obj : longint) : longint;
begin
  GTK_IS_RANGE:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_RANGE);
end;

function GTK_IS_RANGE_CLASS(klass : longint) : longint;
begin
  GTK_IS_RANGE_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_RANGE);
end;

function GTK_RANGE_GET_CLASS(obj : longint) : longint;
begin
  GTK_RANGE_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_RANGE,GtkRangeClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkgesturezoom.pp
// -------------------------------------------------

function GTK_TYPE_GESTURE_ZOOM : longint; { return type might be wrong }
  begin
    GTK_TYPE_GESTURE_ZOOM:=gtk_gesture_zoom_get_type;
  end;

function GTK_GESTURE_ZOOM(o : longint) : longint;
begin
  GTK_GESTURE_ZOOM:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_GESTURE_ZOOM,GtkGestureZoom);
end;

function GTK_GESTURE_ZOOM_CLASS(k : longint) : longint;
begin
  GTK_GESTURE_ZOOM_CLASS:=G_TYPE_CHECK_CLASS_CAST(k,GTK_TYPE_GESTURE_ZOOM,GtkGestureZoomClass);
end;

function GTK_IS_GESTURE_ZOOM(o : longint) : longint;
begin
  GTK_IS_GESTURE_ZOOM:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_GESTURE_ZOOM);
end;

function GTK_IS_GESTURE_ZOOM_CLASS(k : longint) : longint;
begin
  GTK_IS_GESTURE_ZOOM_CLASS:=G_TYPE_CHECK_CLASS_TYPE(k,GTK_TYPE_GESTURE_ZOOM);
end;

function GTK_GESTURE_ZOOM_GET_CLASS(o : longint) : longint;
begin
  GTK_GESTURE_ZOOM_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GTK_TYPE_GESTURE_ZOOM,GtkGestureZoomClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkcustomsorter.pp
// -------------------------------------------------

function GTK_TYPE_CUSTOM_SORTER : longint; { return type might be wrong }
  begin
    GTK_TYPE_CUSTOM_SORTER:=gtk_custom_sorter_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkstylecontext.pp
// -------------------------------------------------

function GTK_TYPE_STYLE_CONTEXT : longint; { return type might be wrong }
  begin
    GTK_TYPE_STYLE_CONTEXT:=gtk_style_context_get_type;
  end;

function GTK_STYLE_CONTEXT(o : longint) : longint;
begin
  GTK_STYLE_CONTEXT:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_STYLE_CONTEXT,GtkStyleContext);
end;

function GTK_STYLE_CONTEXT_CLASS(c : longint) : longint;
begin
  GTK_STYLE_CONTEXT_CLASS:=G_TYPE_CHECK_CLASS_CAST(c,GTK_TYPE_STYLE_CONTEXT,GtkStyleContextClass);
end;

function GTK_IS_STYLE_CONTEXT(o : longint) : longint;
begin
  GTK_IS_STYLE_CONTEXT:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_STYLE_CONTEXT);
end;

function GTK_IS_STYLE_CONTEXT_CLASS(c : longint) : longint;
begin
  GTK_IS_STYLE_CONTEXT_CLASS:=G_TYPE_CHECK_CLASS_TYPE(c,GTK_TYPE_STYLE_CONTEXT);
end;

function GTK_STYLE_CONTEXT_GET_CLASS(o : longint) : longint;
begin
  GTK_STYLE_CONTEXT_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GTK_TYPE_STYLE_CONTEXT,GtkStyleContextClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkeventcontrollerlegacy.pp
// -------------------------------------------------

function GTK_TYPE_EVENT_CONTROLLER_LEGACY : longint; { return type might be wrong }
  begin
    GTK_TYPE_EVENT_CONTROLLER_LEGACY:=gtk_event_controller_legacy_get_type;
  end;

function GTK_EVENT_CONTROLLER_LEGACY(o : longint) : longint;
begin
  GTK_EVENT_CONTROLLER_LEGACY:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_EVENT_CONTROLLER_LEGACY,GtkEventControllerLegacy);
end;

function GTK_EVENT_CONTROLLER_LEGACY_CLASS(k : longint) : longint;
begin
  GTK_EVENT_CONTROLLER_LEGACY_CLASS:=G_TYPE_CHECK_CLASS_CAST(k,GTK_TYPE_EVENT_CONTROLLER_LEGACY,GtkEventControllerLegacyClass);
end;

function GTK_IS_EVENT_CONTROLLER_LEGACY(o : longint) : longint;
begin
  GTK_IS_EVENT_CONTROLLER_LEGACY:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_EVENT_CONTROLLER_LEGACY);
end;

function GTK_IS_EVENT_CONTROLLER_LEGACY_CLASS(k : longint) : longint;
begin
  GTK_IS_EVENT_CONTROLLER_LEGACY_CLASS:=G_TYPE_CHECK_CLASS_TYPE(k,GTK_TYPE_EVENT_CONTROLLER_LEGACY);
end;

function GTK_EVENT_CONTROLLER_LEGACY_GET_CLASS(o : longint) : longint;
begin
  GTK_EVENT_CONTROLLER_LEGACY_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GTK_TYPE_EVENT_CONTROLLER_LEGACY,GtkEventControllerLegacyClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtktreeselection.pp
// -------------------------------------------------

function GTK_TYPE_TREE_SELECTION : longint; { return type might be wrong }
  begin
    GTK_TYPE_TREE_SELECTION:=gtk_tree_selection_get_type;
  end;

function GTK_TREE_SELECTION(obj : longint) : longint;
begin
  GTK_TREE_SELECTION:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_TREE_SELECTION,GtkTreeSelection);
end;

function GTK_IS_TREE_SELECTION(obj : longint) : longint;
begin
  GTK_IS_TREE_SELECTION:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_TREE_SELECTION);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkmediastream.pp
// -------------------------------------------------

function GTK_TYPE_MEDIA_STREAM : longint; { return type might be wrong }
  begin
    GTK_TYPE_MEDIA_STREAM:=gtk_media_stream_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkicontheme.pp
// -------------------------------------------------

function GTK_TYPE_ICON_PAINTABLE : longint; { return type might be wrong }
  begin
    GTK_TYPE_ICON_PAINTABLE:=gtk_icon_paintable_get_type;
  end;

function GTK_ICON_PAINTABLE(obj : longint) : longint;
begin
  GTK_ICON_PAINTABLE:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_ICON_PAINTABLE,GtkIconPaintable);
end;

function GTK_IS_ICON_PAINTABLE(obj : longint) : longint;
begin
  GTK_IS_ICON_PAINTABLE:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_ICON_PAINTABLE);
end;

function GTK_TYPE_ICON_THEME : longint; { return type might be wrong }
  begin
    GTK_TYPE_ICON_THEME:=gtk_icon_theme_get_type;
  end;

function GTK_ICON_THEME(obj : longint) : longint;
begin
  GTK_ICON_THEME:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_ICON_THEME,GtkIconTheme);
end;

function GTK_IS_ICON_THEME(obj : longint) : longint;
begin
  GTK_IS_ICON_THEME:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_ICON_THEME);
end;

function GTK_ICON_THEME_ERROR : longint; { return type might be wrong }
  begin
    GTK_ICON_THEME_ERROR:=gtk_icon_theme_error_quark;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkfixed.pp
// -------------------------------------------------

function GTK_TYPE_FIXED : longint; { return type might be wrong }
  begin
    GTK_TYPE_FIXED:=gtk_fixed_get_type;
  end;

function GTK_FIXED(obj : longint) : longint;
begin
  GTK_FIXED:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_FIXED,GtkFixed);
end;

function GTK_FIXED_CLASS(klass : longint) : longint;
begin
  GTK_FIXED_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_FIXED,GtkFixedClass);
end;

function GTK_IS_FIXED(obj : longint) : longint;
begin
  GTK_IS_FIXED:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_FIXED);
end;

function GTK_IS_FIXED_CLASS(klass : longint) : longint;
begin
  GTK_IS_FIXED_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_FIXED);
end;

function GTK_FIXED_GET_CLASS(obj : longint) : longint;
begin
  GTK_FIXED_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_FIXED,GtkFixedClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkframe.pp
// -------------------------------------------------

function GTK_TYPE_FRAME : longint; { return type might be wrong }
  begin
    GTK_TYPE_FRAME:=gtk_frame_get_type;
  end;

function GTK_FRAME(obj : longint) : longint;
begin
  GTK_FRAME:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_FRAME,GtkFrame);
end;

function GTK_FRAME_CLASS(klass : longint) : longint;
begin
  GTK_FRAME_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_FRAME,GtkFrameClass);
end;

function GTK_IS_FRAME(obj : longint) : longint;
begin
  GTK_IS_FRAME:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_FRAME);
end;

function GTK_IS_FRAME_CLASS(klass : longint) : longint;
begin
  GTK_IS_FRAME_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_FRAME);
end;

function GTK_FRAME_GET_CLASS(obj : longint) : longint;
begin
  GTK_FRAME_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_FRAME,GtkFrameClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkshortcutlabel.pp
// -------------------------------------------------

function GTK_TYPE_SHORTCUT_LABEL : longint; { return type might be wrong }
  begin
    GTK_TYPE_SHORTCUT_LABEL:=gtk_shortcut_label_get_type;
  end;

function GTK_SHORTCUT_LABEL(obj : longint) : longint;
begin
  GTK_SHORTCUT_LABEL:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_SHORTCUT_LABEL,GtkShortcutLabel);
end;

function GTK_IS_SHORTCUT_LABEL(obj : longint) : longint;
begin
  GTK_IS_SHORTCUT_LABEL:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_SHORTCUT_LABEL);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkdebug.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtklistbase.pp
// -------------------------------------------------

function GTK_TYPE_LIST_BASE : longint; { return type might be wrong }
  begin
    GTK_TYPE_LIST_BASE:=gtk_list_base_get_type;
  end;

function GTK_LIST_BASE(o : longint) : longint;
begin
  GTK_LIST_BASE:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_LIST_BASE,GtkListBase);
end;

function GTK_LIST_BASE_CLASS(k : longint) : longint;
begin
  GTK_LIST_BASE_CLASS:=G_TYPE_CHECK_CLASS_CAST(k,GTK_TYPE_LIST_BASE,GtkListBaseClass);
end;

function GTK_IS_LIST_BASE(o : longint) : longint;
begin
  GTK_IS_LIST_BASE:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_LIST_BASE);
end;

function GTK_IS_LIST_BASE_CLASS(k : longint) : longint;
begin
  GTK_IS_LIST_BASE_CLASS:=G_TYPE_CHECK_CLASS_TYPE(k,GTK_TYPE_LIST_BASE);
end;

function GTK_LIST_BASE_GET_CLASS(o : longint) : longint;
begin
  GTK_LIST_BASE_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GTK_TYPE_LIST_BASE,GtkListBaseClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkshortcutsgroup.pp
// -------------------------------------------------

function GTK_TYPE_SHORTCUTS_GROUP : longint; { return type might be wrong }
  begin
    GTK_TYPE_SHORTCUTS_GROUP:=gtk_shortcuts_group_get_type;
  end;

function GTK_SHORTCUTS_GROUP(obj : longint) : longint;
begin
  GTK_SHORTCUTS_GROUP:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_SHORTCUTS_GROUP,GtkShortcutsGroup);
end;

function GTK_IS_SHORTCUTS_GROUP(obj : longint) : longint;
begin
  GTK_IS_SHORTCUTS_GROUP:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_SHORTCUTS_GROUP);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkfilterlistmodel.pp
// -------------------------------------------------

function GTK_TYPE_FILTER_LIST_MODEL : longint; { return type might be wrong }
  begin
    GTK_TYPE_FILTER_LIST_MODEL:=gtk_filter_list_model_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkpasswordentrybuffer.pp
// -------------------------------------------------

function GTK_TYPE_PASSWORD_ENTRY_BUFFER : longint; { return type might be wrong }
  begin
    GTK_TYPE_PASSWORD_ENTRY_BUFFER:=gtk_password_entry_buffer_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtktreeexpander.pp
// -------------------------------------------------

function GTK_TYPE_TREE_EXPANDER : longint; { return type might be wrong }
  begin
    GTK_TYPE_TREE_EXPANDER:=gtk_tree_expander_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkcellrenderertoggle.pp
// -------------------------------------------------

function GTK_TYPE_CELL_RENDERER_TOGGLE : longint; { return type might be wrong }
  begin
    GTK_TYPE_CELL_RENDERER_TOGGLE:=gtk_cell_renderer_toggle_get_type;
  end;

function GTK_CELL_RENDERER_TOGGLE(obj : longint) : longint;
begin
  GTK_CELL_RENDERER_TOGGLE:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_CELL_RENDERER_TOGGLE,GtkCellRendererToggle);
end;

function GTK_IS_CELL_RENDERER_TOGGLE(obj : longint) : longint;
begin
  GTK_IS_CELL_RENDERER_TOGGLE:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_CELL_RENDERER_TOGGLE);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkgesture.pp
// -------------------------------------------------

function GTK_TYPE_GESTURE : longint; { return type might be wrong }
  begin
    GTK_TYPE_GESTURE:=gtk_gesture_get_type;
  end;

function GTK_GESTURE(o : longint) : longint;
begin
  GTK_GESTURE:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_GESTURE,GtkGesture);
end;

function GTK_GESTURE_CLASS(k : longint) : longint;
begin
  GTK_GESTURE_CLASS:=G_TYPE_CHECK_CLASS_CAST(k,GTK_TYPE_GESTURE,GtkGestureClass);
end;

function GTK_IS_GESTURE(o : longint) : longint;
begin
  GTK_IS_GESTURE:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_GESTURE);
end;

function GTK_IS_GESTURE_CLASS(k : longint) : longint;
begin
  GTK_IS_GESTURE_CLASS:=G_TYPE_CHECK_CLASS_TYPE(k,GTK_TYPE_GESTURE);
end;

function GTK_GESTURE_GET_CLASS(o : longint) : longint;
begin
  GTK_GESTURE_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GTK_TYPE_GESTURE,GtkGestureClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkpaned.pp
// -------------------------------------------------

function GTK_TYPE_PANED : longint; { return type might be wrong }
  begin
    GTK_TYPE_PANED:=gtk_paned_get_type;
  end;

function GTK_PANED(obj : longint) : longint;
begin
  GTK_PANED:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_PANED,GtkPaned);
end;

function GTK_IS_PANED(obj : longint) : longint;
begin
  GTK_IS_PANED:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_PANED);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkcheckbutton.pp
// -------------------------------------------------

function GTK_TYPE_CHECK_BUTTON : longint; { return type might be wrong }
  begin
    GTK_TYPE_CHECK_BUTTON:=gtk_check_button_get_type;
  end;

function GTK_CHECK_BUTTON(obj : longint) : longint;
begin
  GTK_CHECK_BUTTON:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_CHECK_BUTTON,GtkCheckButton);
end;

function GTK_CHECK_BUTTON_CLASS(klass : longint) : longint;
begin
  GTK_CHECK_BUTTON_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_CHECK_BUTTON,GtkCheckButtonClass);
end;

function GTK_IS_CHECK_BUTTON(obj : longint) : longint;
begin
  GTK_IS_CHECK_BUTTON:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_CHECK_BUTTON);
end;

function GTK_IS_CHECK_BUTTON_CLASS(klass : longint) : longint;
begin
  GTK_IS_CHECK_BUTTON_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_CHECK_BUTTON);
end;

function GTK_CHECK_BUTTON_GET_CLASS(obj : longint) : longint;
begin
  GTK_CHECK_BUTTON_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_CHECK_BUTTON,GtkCheckButtonClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkbutton.pp
// -------------------------------------------------

function GTK_TYPE_BUTTON : longint; { return type might be wrong }
  begin
    GTK_TYPE_BUTTON:=gtk_button_get_type;
  end;

function GTK_BUTTON(obj : longint) : longint;
begin
  GTK_BUTTON:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_BUTTON,GtkButton);
end;

function GTK_BUTTON_CLASS(klass : longint) : longint;
begin
  GTK_BUTTON_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_BUTTON,GtkButtonClass);
end;

function GTK_IS_BUTTON(obj : longint) : longint;
begin
  GTK_IS_BUTTON:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_BUTTON);
end;

function GTK_IS_BUTTON_CLASS(klass : longint) : longint;
begin
  GTK_IS_BUTTON_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_BUTTON);
end;

function GTK_BUTTON_GET_CLASS(obj : longint) : longint;
begin
  GTK_BUTTON_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_BUTTON,GtkButtonClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkbitset.pp
// -------------------------------------------------

function GTK_TYPE_BITSET : longint; { return type might be wrong }
  begin
    GTK_TYPE_BITSET:=gtk_bitset_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkborder.pp
// -------------------------------------------------

function GTK_TYPE_BORDER : longint; { return type might be wrong }
  begin
    GTK_TYPE_BORDER:=gtk_border_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkeventcontrollerscroll.pp
// -------------------------------------------------

function GTK_TYPE_EVENT_CONTROLLER_SCROLL : longint; { return type might be wrong }
  begin
    GTK_TYPE_EVENT_CONTROLLER_SCROLL:=gtk_event_controller_scroll_get_type;
  end;

function GTK_EVENT_CONTROLLER_SCROLL(o : longint) : longint;
begin
  GTK_EVENT_CONTROLLER_SCROLL:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_EVENT_CONTROLLER_SCROLL,GtkEventControllerScroll);
end;

function GTK_EVENT_CONTROLLER_SCROLL_CLASS(k : longint) : longint;
begin
  GTK_EVENT_CONTROLLER_SCROLL_CLASS:=G_TYPE_CHECK_CLASS_CAST(k,GTK_TYPE_EVENT_CONTROLLER_SCROLL,GtkEventControllerScrollClass);
end;

function GTK_IS_EVENT_CONTROLLER_SCROLL(o : longint) : longint;
begin
  GTK_IS_EVENT_CONTROLLER_SCROLL:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_EVENT_CONTROLLER_SCROLL);
end;

function GTK_IS_EVENT_CONTROLLER_SCROLL_CLASS(k : longint) : longint;
begin
  GTK_IS_EVENT_CONTROLLER_SCROLL_CLASS:=G_TYPE_CHECK_CLASS_TYPE(k,GTK_TYPE_EVENT_CONTROLLER_SCROLL);
end;

function GTK_EVENT_CONTROLLER_SCROLL_GET_CLASS(o : longint) : longint;
begin
  GTK_EVENT_CONTROLLER_SCROLL_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GTK_TYPE_EVENT_CONTROLLER_SCROLL,GtkEventControllerScrollClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkgesturepan.pp
// -------------------------------------------------

function GTK_TYPE_GESTURE_PAN : longint; { return type might be wrong }
  begin
    GTK_TYPE_GESTURE_PAN:=gtk_gesture_pan_get_type;
  end;

function GTK_GESTURE_PAN(o : longint) : longint;
begin
  GTK_GESTURE_PAN:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_GESTURE_PAN,GtkGesturePan);
end;

function GTK_GESTURE_PAN_CLASS(k : longint) : longint;
begin
  GTK_GESTURE_PAN_CLASS:=G_TYPE_CHECK_CLASS_CAST(k,GTK_TYPE_GESTURE_PAN,GtkGesturePanClass);
end;

function GTK_IS_GESTURE_PAN(o : longint) : longint;
begin
  GTK_IS_GESTURE_PAN:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_GESTURE_PAN);
end;

function GTK_IS_GESTURE_PAN_CLASS(k : longint) : longint;
begin
  GTK_IS_GESTURE_PAN_CLASS:=G_TYPE_CHECK_CLASS_TYPE(k,GTK_TYPE_GESTURE_PAN);
end;

function GTK_GESTURE_PAN_GET_CLASS(o : longint) : longint;
begin
  GTK_GESTURE_PAN_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GTK_TYPE_GESTURE_PAN,GtkGesturePanClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkpapersize.pp
// -------------------------------------------------

function GTK_TYPE_PAPER_SIZE : longint; { return type might be wrong }
  begin
    GTK_TYPE_PAPER_SIZE:=gtk_paper_size_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkfilter.pp
// -------------------------------------------------

function GTK_TYPE_FILTER : longint; { return type might be wrong }
  begin
    GTK_TYPE_FILTER:=gtk_filter_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtksnapshot.pp
// -------------------------------------------------

function GTK_TYPE_SNAPSHOT : longint; { return type might be wrong }
  begin
    GTK_TYPE_SNAPSHOT:=gtk_snapshot_get_type;
  end;

function GTK_SNAPSHOT(obj : longint) : longint;
begin
  GTK_SNAPSHOT:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_SNAPSHOT,GtkSnapshot);
end;

function GTK_IS_SNAPSHOT(obj : longint) : longint;
begin
  GTK_IS_SNAPSHOT:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_SNAPSHOT);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtksingleselection.pp
// -------------------------------------------------

function GTK_TYPE_SINGLE_SELECTION : longint; { return type might be wrong }
  begin
    GTK_TYPE_SINGLE_SELECTION:=gtk_single_selection_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtklevelbar.pp
// -------------------------------------------------

function GTK_TYPE_LEVEL_BAR : longint; { return type might be wrong }
  begin
    GTK_TYPE_LEVEL_BAR:=gtk_level_bar_get_type;
  end;

function GTK_LEVEL_BAR(obj : longint) : longint;
begin
  GTK_LEVEL_BAR:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_LEVEL_BAR,GtkLevelBar);
end;

function GTK_IS_LEVEL_BAR(obj : longint) : longint;
begin
  GTK_IS_LEVEL_BAR:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_LEVEL_BAR);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkspinner.pp
// -------------------------------------------------

function GTK_TYPE_SPINNER : longint; { return type might be wrong }
  begin
    GTK_TYPE_SPINNER:=gtk_spinner_get_type;
  end;

function GTK_SPINNER(obj : longint) : longint;
begin
  GTK_SPINNER:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_SPINNER,GtkSpinner);
end;

function GTK_IS_SPINNER(obj : longint) : longint;
begin
  GTK_IS_SPINNER:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_SPINNER);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkpopovermenubar.pp
// -------------------------------------------------

function GTK_TYPE_POPOVER_MENU_BAR : longint; { return type might be wrong }
  begin
    GTK_TYPE_POPOVER_MENU_BAR:=gtk_popover_menu_bar_get_type;
  end;

function GTK_POPOVER_MENU_BAR(obj : longint) : longint;
begin
  GTK_POPOVER_MENU_BAR:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_POPOVER_MENU_BAR,GtkPopoverMenuBar);
end;

function GTK_IS_POPOVER_MENU_BAR(obj : longint) : longint;
begin
  GTK_IS_POPOVER_MENU_BAR:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_POPOVER_MENU_BAR);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkmediafile.pp
// -------------------------------------------------

function GTK_TYPE_MEDIA_FILE : longint; { return type might be wrong }
  begin
    GTK_TYPE_MEDIA_FILE:=gtk_media_file_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkactionbar.pp
// -------------------------------------------------

function GTK_TYPE_ACTION_BAR : longint; { return type might be wrong }
  begin
    GTK_TYPE_ACTION_BAR:=gtk_action_bar_get_type;
  end;

function GTK_ACTION_BAR(obj : longint) : longint;
begin
  GTK_ACTION_BAR:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_ACTION_BAR,GtkActionBar);
end;

function GTK_IS_ACTION_BAR(obj : longint) : longint;
begin
  GTK_IS_ACTION_BAR:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_ACTION_BAR);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtktreeviewcolumn.pp
// -------------------------------------------------

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


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkconstraintlayout.pp
// -------------------------------------------------

function GTK_TYPE_CONSTRAINT_LAYOUT : longint; { return type might be wrong }
  begin
    GTK_TYPE_CONSTRAINT_LAYOUT:=gtk_constraint_layout_get_type;
  end;

function GTK_TYPE_CONSTRAINT_LAYOUT_CHILD : longint; { return type might be wrong }
  begin
    GTK_TYPE_CONSTRAINT_LAYOUT_CHILD:=gtk_constraint_layout_child_get_type;
  end;

function GTK_CONSTRAINT_VFL_PARSER_ERROR : longint; { return type might be wrong }
  begin
    GTK_CONSTRAINT_VFL_PARSER_ERROR:=gtk_constraint_vfl_parser_error_quark;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkviewport.pp
// -------------------------------------------------

function GTK_TYPE_VIEWPORT : longint; { return type might be wrong }
  begin
    GTK_TYPE_VIEWPORT:=gtk_viewport_get_type;
  end;

function GTK_VIEWPORT(obj : longint) : longint;
begin
  GTK_VIEWPORT:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_VIEWPORT,GtkViewport);
end;

function GTK_IS_VIEWPORT(obj : longint) : longint;
begin
  GTK_IS_VIEWPORT:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_VIEWPORT);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkeventcontroller.pp
// -------------------------------------------------

function GTK_TYPE_EVENT_CONTROLLER : longint; { return type might be wrong }
  begin
    GTK_TYPE_EVENT_CONTROLLER:=gtk_event_controller_get_type;
  end;

function GTK_EVENT_CONTROLLER(o : longint) : longint;
begin
  GTK_EVENT_CONTROLLER:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_EVENT_CONTROLLER,GtkEventController);
end;

function GTK_EVENT_CONTROLLER_CLASS(k : longint) : longint;
begin
  GTK_EVENT_CONTROLLER_CLASS:=G_TYPE_CHECK_CLASS_CAST(k,GTK_TYPE_EVENT_CONTROLLER,GtkEventControllerClass);
end;

function GTK_IS_EVENT_CONTROLLER(o : longint) : longint;
begin
  GTK_IS_EVENT_CONTROLLER:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_EVENT_CONTROLLER);
end;

function GTK_IS_EVENT_CONTROLLER_CLASS(k : longint) : longint;
begin
  GTK_IS_EVENT_CONTROLLER_CLASS:=G_TYPE_CHECK_CLASS_TYPE(k,GTK_TYPE_EVENT_CONTROLLER);
end;

function GTK_EVENT_CONTROLLER_GET_CLASS(o : longint) : longint;
begin
  GTK_EVENT_CONTROLLER_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GTK_TYPE_EVENT_CONTROLLER,GtkEventControllerClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkoverlaylayout.pp
// -------------------------------------------------

function GTK_TYPE_OVERLAY_LAYOUT : longint; { return type might be wrong }
  begin
    GTK_TYPE_OVERLAY_LAYOUT:=gtk_overlay_layout_get_type;
  end;

function GTK_TYPE_OVERLAY_LAYOUT_CHILD : longint; { return type might be wrong }
  begin
    GTK_TYPE_OVERLAY_LAYOUT_CHILD:=gtk_overlay_layout_child_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtksortlistmodel.pp
// -------------------------------------------------

function GTK_TYPE_SORT_LIST_MODEL : longint; { return type might be wrong }
  begin
    GTK_TYPE_SORT_LIST_MODEL:=gtk_sort_list_model_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkcellrenderertext.pp
// -------------------------------------------------

function GTK_TYPE_CELL_RENDERER_TEXT : longint; { return type might be wrong }
  begin
    GTK_TYPE_CELL_RENDERER_TEXT:=gtk_cell_renderer_text_get_type;
  end;

function GTK_CELL_RENDERER_TEXT(obj : longint) : longint;
begin
  GTK_CELL_RENDERER_TEXT:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_CELL_RENDERER_TEXT,GtkCellRendererText);
end;

function GTK_CELL_RENDERER_TEXT_CLASS(klass : longint) : longint;
begin
  GTK_CELL_RENDERER_TEXT_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_CELL_RENDERER_TEXT,GtkCellRendererTextClass);
end;

function GTK_IS_CELL_RENDERER_TEXT(obj : longint) : longint;
begin
  GTK_IS_CELL_RENDERER_TEXT:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_CELL_RENDERER_TEXT);
end;

function GTK_IS_CELL_RENDERER_TEXT_CLASS(klass : longint) : longint;
begin
  GTK_IS_CELL_RENDERER_TEXT_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_CELL_RENDERER_TEXT);
end;

function GTK_CELL_RENDERER_TEXT_GET_CLASS(obj : longint) : longint;
begin
  GTK_CELL_RENDERER_TEXT_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_CELL_RENDERER_TEXT,GtkCellRendererTextClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkeventcontrollermotion.pp
// -------------------------------------------------

function GTK_TYPE_EVENT_CONTROLLER_MOTION : longint; { return type might be wrong }
  begin
    GTK_TYPE_EVENT_CONTROLLER_MOTION:=gtk_event_controller_motion_get_type;
  end;

function GTK_EVENT_CONTROLLER_MOTION(o : longint) : longint;
begin
  GTK_EVENT_CONTROLLER_MOTION:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_EVENT_CONTROLLER_MOTION,GtkEventControllerMotion);
end;

function GTK_EVENT_CONTROLLER_MOTION_CLASS(k : longint) : longint;
begin
  GTK_EVENT_CONTROLLER_MOTION_CLASS:=G_TYPE_CHECK_CLASS_CAST(k,GTK_TYPE_EVENT_CONTROLLER_MOTION,GtkEventControllerMotionClass);
end;

function GTK_IS_EVENT_CONTROLLER_MOTION(o : longint) : longint;
begin
  GTK_IS_EVENT_CONTROLLER_MOTION:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_EVENT_CONTROLLER_MOTION);
end;

function GTK_IS_EVENT_CONTROLLER_MOTION_CLASS(k : longint) : longint;
begin
  GTK_IS_EVENT_CONTROLLER_MOTION_CLASS:=G_TYPE_CHECK_CLASS_TYPE(k,GTK_TYPE_EVENT_CONTROLLER_MOTION);
end;

function GTK_EVENT_CONTROLLER_MOTION_GET_CLASS(o : longint) : longint;
begin
  GTK_EVENT_CONTROLLER_MOTION_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GTK_TYPE_EVENT_CONTROLLER_MOTION,GtkEventControllerMotionClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkrender.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkcellrenderer.pp
// -------------------------------------------------

function GTK_TYPE_CELL_RENDERER : longint; { return type might be wrong }
  begin
    GTK_TYPE_CELL_RENDERER:=gtk_cell_renderer_get_type;
  end;

function GTK_CELL_RENDERER(obj : longint) : longint;
begin
  GTK_CELL_RENDERER:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_CELL_RENDERER,GtkCellRenderer);
end;

function GTK_CELL_RENDERER_CLASS(klass : longint) : longint;
begin
  GTK_CELL_RENDERER_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_CELL_RENDERER,GtkCellRendererClass);
end;

function GTK_IS_CELL_RENDERER(obj : longint) : longint;
begin
  GTK_IS_CELL_RENDERER:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_CELL_RENDERER);
end;

function GTK_IS_CELL_RENDERER_CLASS(klass : longint) : longint;
begin
  GTK_IS_CELL_RENDERER_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_CELL_RENDERER);
end;

function GTK_CELL_RENDERER_GET_CLASS(obj : longint) : longint;
begin
  GTK_CELL_RENDERER_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_CELL_RENDERER,GtkCellRendererClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkeventcontrollerfocus.pp
// -------------------------------------------------

function GTK_TYPE_EVENT_CONTROLLER_FOCUS : longint; { return type might be wrong }
  begin
    GTK_TYPE_EVENT_CONTROLLER_FOCUS:=gtk_event_controller_focus_get_type;
  end;

function GTK_EVENT_CONTROLLER_FOCUS(o : longint) : longint;
begin
  GTK_EVENT_CONTROLLER_FOCUS:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_EVENT_CONTROLLER_FOCUS,GtkEventControllerFocus);
end;

function GTK_EVENT_CONTROLLER_FOCUS_CLASS(k : longint) : longint;
begin
  GTK_EVENT_CONTROLLER_FOCUS_CLASS:=G_TYPE_CHECK_CLASS_CAST(k,GTK_TYPE_EVENT_CONTROLLER_FOCUS,GtkEventControllerFocusClass);
end;

function GTK_IS_EVENT_CONTROLLER_FOCUS(o : longint) : longint;
begin
  GTK_IS_EVENT_CONTROLLER_FOCUS:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_EVENT_CONTROLLER_FOCUS);
end;

function GTK_IS_EVENT_CONTROLLER_FOCUS_CLASS(k : longint) : longint;
begin
  GTK_IS_EVENT_CONTROLLER_FOCUS_CLASS:=G_TYPE_CHECK_CLASS_TYPE(k,GTK_TYPE_EVENT_CONTROLLER_FOCUS);
end;

function GTK_EVENT_CONTROLLER_FOCUS_GET_CLASS(o : longint) : longint;
begin
  GTK_EVENT_CONTROLLER_FOCUS_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GTK_TYPE_EVENT_CONTROLLER_FOCUS,GtkEventControllerFocusClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkscalebutton.pp
// -------------------------------------------------

function GTK_TYPE_SCALE_BUTTON : longint; { return type might be wrong }
  begin
    GTK_TYPE_SCALE_BUTTON:=gtk_scale_button_get_type;
  end;

function GTK_SCALE_BUTTON(obj : longint) : longint;
begin
  GTK_SCALE_BUTTON:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_SCALE_BUTTON,GtkScaleButton);
end;

function GTK_SCALE_BUTTON_CLASS(klass : longint) : longint;
begin
  GTK_SCALE_BUTTON_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_SCALE_BUTTON,GtkScaleButtonClass);
end;

function GTK_IS_SCALE_BUTTON(obj : longint) : longint;
begin
  GTK_IS_SCALE_BUTTON:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_SCALE_BUTTON);
end;

function GTK_IS_SCALE_BUTTON_CLASS(klass : longint) : longint;
begin
  GTK_IS_SCALE_BUTTON_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_SCALE_BUTTON);
end;

function GTK_SCALE_BUTTON_GET_CLASS(obj : longint) : longint;
begin
  GTK_SCALE_BUTTON_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_SCALE_BUTTON,GtkScaleButtonClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtksymbolicpaintable.pp
// -------------------------------------------------

function GTK_TYPE_SYMBOLIC_PAINTABLE : longint; { return type might be wrong }
  begin
    GTK_TYPE_SYMBOLIC_PAINTABLE:=gtk_symbolic_paintable_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkimmodule.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtktextchild.pp
// -------------------------------------------------

function GTK_TYPE_TEXT_CHILD_ANCHOR : longint; { return type might be wrong }
  begin
    GTK_TYPE_TEXT_CHILD_ANCHOR:=gtk_text_child_anchor_get_type;
  end;

function GTK_TEXT_CHILD_ANCHOR(object : longint) : longint;
begin
  GTK_TEXT_CHILD_ANCHOR:=G_TYPE_CHECK_INSTANCE_CAST(object,GTK_TYPE_TEXT_CHILD_ANCHOR,GtkTextChildAnchor);
end;

function GTK_TEXT_CHILD_ANCHOR_CLASS(klass : longint) : longint;
begin
  GTK_TEXT_CHILD_ANCHOR_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_TEXT_CHILD_ANCHOR,GtkTextChildAnchorClass);
end;

function GTK_IS_TEXT_CHILD_ANCHOR(object : longint) : longint;
begin
  GTK_IS_TEXT_CHILD_ANCHOR:=G_TYPE_CHECK_INSTANCE_TYPE(object,GTK_TYPE_TEXT_CHILD_ANCHOR);
end;

function GTK_IS_TEXT_CHILD_ANCHOR_CLASS(klass : longint) : longint;
begin
  GTK_IS_TEXT_CHILD_ANCHOR_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_TEXT_CHILD_ANCHOR);
end;

function GTK_TEXT_CHILD_ANCHOR_GET_CLASS(obj : longint) : longint;
begin
  GTK_TEXT_CHILD_ANCHOR_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_TEXT_CHILD_ANCHOR,GtkTextChildAnchorClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtksearchbar.pp
// -------------------------------------------------

function GTK_TYPE_SEARCH_BAR : longint; { return type might be wrong }
  begin
    GTK_TYPE_SEARCH_BAR:=gtk_search_bar_get_type;
  end;

function GTK_SEARCH_BAR(obj : longint) : longint;
begin
  GTK_SEARCH_BAR:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_SEARCH_BAR,GtkSearchBar);
end;

function GTK_IS_SEARCH_BAR(obj : longint) : longint;
begin
  GTK_IS_SEARCH_BAR:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_SEARCH_BAR);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtklistitem.pp
// -------------------------------------------------

function GTK_TYPE_LIST_ITEM : longint; { return type might be wrong }
  begin
    GTK_TYPE_LIST_ITEM:=gtk_list_item_get_type;
  end;

function GTK_LIST_ITEM(o : longint) : longint;
begin
  GTK_LIST_ITEM:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_LIST_ITEM,GtkListItem);
end;

function GTK_LIST_ITEM_CLASS(k : longint) : longint;
begin
  GTK_LIST_ITEM_CLASS:=G_TYPE_CHECK_CLASS_CAST(k,GTK_TYPE_LIST_ITEM,GtkListItemClass);
end;

function GTK_IS_LIST_ITEM(o : longint) : longint;
begin
  GTK_IS_LIST_ITEM:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_LIST_ITEM);
end;

function GTK_IS_LIST_ITEM_CLASS(k : longint) : longint;
begin
  GTK_IS_LIST_ITEM_CLASS:=G_TYPE_CHECK_CLASS_TYPE(k,GTK_TYPE_LIST_ITEM);
end;

function GTK_LIST_ITEM_GET_CLASS(o : longint) : longint;
begin
  GTK_LIST_ITEM_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GTK_TYPE_LIST_ITEM,GtkListItemClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtktypes.pp
// -------------------------------------------------

function GTK_INVALID_LIST_POSITION : Tguint;
  begin
    GTK_INVALID_LIST_POSITION:=Tguint($ffffffff);
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkgestureswipe.pp
// -------------------------------------------------

function GTK_TYPE_GESTURE_SWIPE : longint; { return type might be wrong }
  begin
    GTK_TYPE_GESTURE_SWIPE:=gtk_gesture_swipe_get_type;
  end;

function GTK_GESTURE_SWIPE(o : longint) : longint;
begin
  GTK_GESTURE_SWIPE:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_GESTURE_SWIPE,GtkGestureSwipe);
end;

function GTK_GESTURE_SWIPE_CLASS(k : longint) : longint;
begin
  GTK_GESTURE_SWIPE_CLASS:=G_TYPE_CHECK_CLASS_CAST(k,GTK_TYPE_GESTURE_SWIPE,GtkGestureSwipeClass);
end;

function GTK_IS_GESTURE_SWIPE(o : longint) : longint;
begin
  GTK_IS_GESTURE_SWIPE:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_GESTURE_SWIPE);
end;

function GTK_IS_GESTURE_SWIPE_CLASS(k : longint) : longint;
begin
  GTK_IS_GESTURE_SWIPE_CLASS:=G_TYPE_CHECK_CLASS_TYPE(k,GTK_TYPE_GESTURE_SWIPE);
end;

function GTK_GESTURE_SWIPE_GET_CLASS(o : longint) : longint;
begin
  GTK_GESTURE_SWIPE_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GTK_TYPE_GESTURE_SWIPE,GtkGestureSwipeClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkroot.pp
// -------------------------------------------------

function GTK_TYPE_ROOT : longint; { return type might be wrong }
  begin
    GTK_TYPE_ROOT:=gtk_root_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkcolumnviewcolumn.pp
// -------------------------------------------------

function GTK_TYPE_COLUMN_VIEW_COLUMN : longint; { return type might be wrong }
  begin
    GTK_TYPE_COLUMN_VIEW_COLUMN:=gtk_column_view_column_get_type;
  end;

function GTK_COLUMN_VIEW_COLUMN(o : longint) : longint;
begin
  GTK_COLUMN_VIEW_COLUMN:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_COLUMN_VIEW_COLUMN,GtkColumnViewColumn);
end;

function GTK_COLUMN_VIEW_COLUMN_CLASS(k : longint) : longint;
begin
  GTK_COLUMN_VIEW_COLUMN_CLASS:=G_TYPE_CHECK_CLASS_CAST(k,GTK_TYPE_COLUMN_VIEW_COLUMN,GtkColumnViewColumnClass);
end;

function GTK_IS_COLUMN_VIEW_COLUMN(o : longint) : longint;
begin
  GTK_IS_COLUMN_VIEW_COLUMN:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_COLUMN_VIEW_COLUMN);
end;

function GTK_IS_COLUMN_VIEW_COLUMN_CLASS(k : longint) : longint;
begin
  GTK_IS_COLUMN_VIEW_COLUMN_CLASS:=G_TYPE_CHECK_CLASS_TYPE(k,GTK_TYPE_COLUMN_VIEW_COLUMN);
end;

function GTK_COLUMN_VIEW_COLUMN_GET_CLASS(o : longint) : longint;
begin
  GTK_COLUMN_VIEW_COLUMN_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GTK_TYPE_COLUMN_VIEW_COLUMN,GtkColumnViewColumnClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkgesturestylus.pp
// -------------------------------------------------

function GTK_TYPE_GESTURE_STYLUS : longint; { return type might be wrong }
  begin
    GTK_TYPE_GESTURE_STYLUS:=gtk_gesture_stylus_get_type;
  end;

function GTK_GESTURE_STYLUS(o : longint) : longint;
begin
  GTK_GESTURE_STYLUS:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_GESTURE_STYLUS,GtkGestureStylus);
end;

function GTK_GESTURE_STYLUS_CLASS(k : longint) : longint;
begin
  GTK_GESTURE_STYLUS_CLASS:=G_TYPE_CHECK_CLASS_CAST(k,GTK_TYPE_GESTURE_STYLUS,GtkGestureStylusClass);
end;

function GTK_IS_GESTURE_STYLUS(o : longint) : longint;
begin
  GTK_IS_GESTURE_STYLUS:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_GESTURE_STYLUS);
end;

function GTK_IS_GESTURE_STYLUS_CLASS(k : longint) : longint;
begin
  GTK_IS_GESTURE_STYLUS_CLASS:=G_TYPE_CHECK_CLASS_TYPE(k,GTK_TYPE_GESTURE_STYLUS);
end;

function GTK_GESTURE_STYLUS_GET_CLASS(o : longint) : longint;
begin
  GTK_GESTURE_STYLUS_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GTK_TYPE_GESTURE_STYLUS,GtkGestureStylusClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkapplicationwindow.pp
// -------------------------------------------------

function GTK_TYPE_APPLICATION_WINDOW : longint; { return type might be wrong }
  begin
    GTK_TYPE_APPLICATION_WINDOW:=gtk_application_window_get_type;
  end;

function GTK_APPLICATION_WINDOW(inst : longint) : longint;
begin
  GTK_APPLICATION_WINDOW:=G_TYPE_CHECK_INSTANCE_CAST(inst,GTK_TYPE_APPLICATION_WINDOW,GtkApplicationWindow);
end;

function GTK_APPLICATION_WINDOW_CLASS(_class : longint) : longint;
begin
  GTK_APPLICATION_WINDOW_CLASS:=G_TYPE_CHECK_CLASS_CAST(_class,GTK_TYPE_APPLICATION_WINDOW,GtkApplicationWindowClass);
end;

function GTK_IS_APPLICATION_WINDOW(inst : longint) : longint;
begin
  GTK_IS_APPLICATION_WINDOW:=G_TYPE_CHECK_INSTANCE_TYPE(inst,GTK_TYPE_APPLICATION_WINDOW);
end;

function GTK_IS_APPLICATION_WINDOW_CLASS(_class : longint) : longint;
begin
  GTK_IS_APPLICATION_WINDOW_CLASS:=G_TYPE_CHECK_CLASS_TYPE(_class,GTK_TYPE_APPLICATION_WINDOW);
end;

function GTK_APPLICATION_WINDOW_GET_CLASS(inst : longint) : longint;
begin
  GTK_APPLICATION_WINDOW_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(inst,GTK_TYPE_APPLICATION_WINDOW,GtkApplicationWindowClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkscrolledwindow.pp
// -------------------------------------------------

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


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkcolorutils.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkcellrendererpixbuf.pp
// -------------------------------------------------

function GTK_TYPE_CELL_RENDERER_PIXBUF : longint; { return type might be wrong }
  begin
    GTK_TYPE_CELL_RENDERER_PIXBUF:=gtk_cell_renderer_pixbuf_get_type;
  end;

function GTK_CELL_RENDERER_PIXBUF(obj : longint) : longint;
begin
  GTK_CELL_RENDERER_PIXBUF:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_CELL_RENDERER_PIXBUF,GtkCellRendererPixbuf);
end;

function GTK_IS_CELL_RENDERER_PIXBUF(obj : longint) : longint;
begin
  GTK_IS_CELL_RENDERER_PIXBUF:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_CELL_RENDERER_PIXBUF);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtknative.pp
// -------------------------------------------------

function GTK_TYPE_NATIVE : longint; { return type might be wrong }
  begin
    GTK_TYPE_NATIVE:=gtk_native_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkselectionmodel.pp
// -------------------------------------------------

function GTK_TYPE_SELECTION_MODEL : longint; { return type might be wrong }
  begin
    GTK_TYPE_SELECTION_MODEL:=gtk_selection_model_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkmaplistmodel.pp
// -------------------------------------------------

function GTK_TYPE_MAP_LIST_MODEL : longint; { return type might be wrong }
  begin
    GTK_TYPE_MAP_LIST_MODEL:=gtk_map_list_model_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkassistant.pp
// -------------------------------------------------

function GTK_TYPE_ASSISTANT : longint; { return type might be wrong }
  begin
    GTK_TYPE_ASSISTANT:=gtk_assistant_get_type;
  end;

function GTK_ASSISTANT(o : longint) : longint;
begin
  GTK_ASSISTANT:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_ASSISTANT,GtkAssistant);
end;

function GTK_IS_ASSISTANT(o : longint) : longint;
begin
  GTK_IS_ASSISTANT:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_ASSISTANT);
end;

function GTK_TYPE_ASSISTANT_PAGE : longint; { return type might be wrong }
  begin
    GTK_TYPE_ASSISTANT_PAGE:=gtk_assistant_page_get_type;
  end;

function GTK_ASSISTANT_PAGE(obj : longint) : longint;
begin
  GTK_ASSISTANT_PAGE:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_ASSISTANT_PAGE,GtkAssistantPage);
end;

function GTK_IS_ASSISTANT_PAGE(obj : longint) : longint;
begin
  GTK_IS_ASSISTANT_PAGE:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_ASSISTANT_PAGE);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkinfobar.pp
// -------------------------------------------------

function GTK_TYPE_INFO_BAR : longint; { return type might be wrong }
  begin
    GTK_TYPE_INFO_BAR:=gtk_info_bar_get_type;
  end;

function GTK_INFO_BAR(obj : longint) : longint;
begin
  GTK_INFO_BAR:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_INFO_BAR,GtkInfoBar);
end;

function GTK_IS_INFO_BAR(obj : longint) : longint;
begin
  GTK_IS_INFO_BAR:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_INFO_BAR);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkvideo.pp
// -------------------------------------------------

function GTK_TYPE_VIDEO : longint; { return type might be wrong }
  begin
    GTK_TYPE_VIDEO:=gtk_video_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtktreeview.pp
// -------------------------------------------------

function GTK_TYPE_TREE_VIEW : longint; { return type might be wrong }
  begin
    GTK_TYPE_TREE_VIEW:=gtk_tree_view_get_type;
  end;

function GTK_TREE_VIEW(obj : longint) : longint;
begin
  GTK_TREE_VIEW:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_TREE_VIEW,GtkTreeView);
end;

function GTK_IS_TREE_VIEW(obj : longint) : longint;
begin
  GTK_IS_TREE_VIEW:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_TREE_VIEW);
end;

function GTK_TREE_VIEW_CLASS(klass : longint) : longint;
begin
  GTK_TREE_VIEW_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_TREE_VIEW,GtkTreeViewClass);
end;

function GTK_IS_TREE_VIEW_CLASS(klass : longint) : longint;
begin
  GTK_IS_TREE_VIEW_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_TREE_VIEW);
end;

function GTK_TREE_VIEW_GET_CLASS(obj : longint) : longint;
begin
  GTK_TREE_VIEW_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_TREE_VIEW,GtkTreeViewClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkcellareabox.pp
// -------------------------------------------------

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


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkstackswitcher.pp
// -------------------------------------------------

function GTK_TYPE_STACK_SWITCHER : longint; { return type might be wrong }
  begin
    GTK_TYPE_STACK_SWITCHER:=gtk_stack_switcher_get_type;
  end;

function GTK_STACK_SWITCHER(obj : longint) : longint;
begin
  GTK_STACK_SWITCHER:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_STACK_SWITCHER,GtkStackSwitcher);
end;

function GTK_IS_STACK_SWITCHER(obj : longint) : longint;
begin
  GTK_IS_STACK_SWITCHER:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_STACK_SWITCHER);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkpopovermenu.pp
// -------------------------------------------------

function GTK_TYPE_POPOVER_MENU : longint; { return type might be wrong }
  begin
    GTK_TYPE_POPOVER_MENU:=gtk_popover_menu_get_type;
  end;

function GTK_POPOVER_MENU(o : longint) : longint;
begin
  GTK_POPOVER_MENU:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_POPOVER_MENU,GtkPopoverMenu);
end;

function GTK_IS_POPOVER_MENU(o : longint) : longint;
begin
  GTK_IS_POPOVER_MENU:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_POPOVER_MENU);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtklistitemfactory.pp
// -------------------------------------------------

function GTK_TYPE_LIST_ITEM_FACTORY : longint; { return type might be wrong }
  begin
    GTK_TYPE_LIST_ITEM_FACTORY:=gtk_list_item_factory_get_type;
  end;

function GTK_LIST_ITEM_FACTORY(o : longint) : longint;
begin
  GTK_LIST_ITEM_FACTORY:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_LIST_ITEM_FACTORY,GtkListItemFactory);
end;

function GTK_LIST_ITEM_FACTORY_CLASS(k : longint) : longint;
begin
  GTK_LIST_ITEM_FACTORY_CLASS:=G_TYPE_CHECK_CLASS_CAST(k,GTK_TYPE_LIST_ITEM_FACTORY,GtkListItemFactoryClass);
end;

function GTK_IS_LIST_ITEM_FACTORY(o : longint) : longint;
begin
  GTK_IS_LIST_ITEM_FACTORY:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_LIST_ITEM_FACTORY);
end;

function GTK_IS_LIST_ITEM_FACTORY_CLASS(k : longint) : longint;
begin
  GTK_IS_LIST_ITEM_FACTORY_CLASS:=G_TYPE_CHECK_CLASS_TYPE(k,GTK_TYPE_LIST_ITEM_FACTORY);
end;

function GTK_LIST_ITEM_FACTORY_GET_CLASS(o : longint) : longint;
begin
  GTK_LIST_ITEM_FACTORY_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GTK_TYPE_LIST_ITEM_FACTORY,GtkListItemFactoryClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkcustomfilter.pp
// -------------------------------------------------

function GTK_TYPE_CUSTOM_FILTER : longint; { return type might be wrong }
  begin
    GTK_TYPE_CUSTOM_FILTER:=gtk_custom_filter_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkwidget.pp
// -------------------------------------------------

function GTK_TYPE_WIDGET : longint; { return type might be wrong }
  begin
    GTK_TYPE_WIDGET:=gtk_widget_get_type;
  end;

function GTK_WIDGET(widget : longint) : longint;
begin
  GTK_WIDGET:=G_TYPE_CHECK_INSTANCE_CAST(widget,GTK_TYPE_WIDGET,GtkWidget);
end;

function GTK_WIDGET_CLASS(klass : longint) : longint;
begin
  GTK_WIDGET_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_WIDGET,GtkWidgetClass);
end;

function GTK_IS_WIDGET(widget : longint) : longint;
begin
  GTK_IS_WIDGET:=G_TYPE_CHECK_INSTANCE_TYPE(widget,GTK_TYPE_WIDGET);
end;

function GTK_IS_WIDGET_CLASS(klass : longint) : longint;
begin
  GTK_IS_WIDGET_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_WIDGET);
end;

function GTK_WIDGET_GET_CLASS(obj : longint) : longint;
begin
  GTK_WIDGET_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_WIDGET,GtkWidgetClass);
end;

function GTK_TYPE_REQUISITION : longint; { return type might be wrong }
  begin
    GTK_TYPE_REQUISITION:=gtk_requisition_get_type;
  end;

function gtk_widget_class_bind_template_callback(widget_class,callback : longint) : longint;
begin
  gtk_widget_class_bind_template_callback:=gtk_widget_class_bind_template_callback_full(GTK_WIDGET_CLASS(widget_class),callback,G_CALLBACK(callback));
end;

function gtk_widget_class_bind_template_child(widget_class,TypeName,member_name : longint) : longint;
begin
  gtk_widget_class_bind_template_child:=gtk_widget_class_bind_template_child_full(widget_class,member_name,_FALSE,G_STRUCT_OFFSET(TypeName,member_name));
end;

function gtk_widget_class_bind_template_child_internal(widget_class,TypeName,member_name : longint) : longint;
begin
  gtk_widget_class_bind_template_child_internal:=gtk_widget_class_bind_template_child_full(widget_class,member_name,_TRUE,G_STRUCT_OFFSET(TypeName,member_name));
end;

function gtk_widget_class_bind_template_child_private(widget_class,TypeName,member_name : longint) : longint;
begin
  gtk_widget_class_bind_template_child_private:=gtk_widget_class_bind_template_child_full(widget_class,member_name,_FALSE,G_PRIVATE_OFFSET(TypeName,member_name));
end;

function gtk_widget_class_bind_template_child_internal_private(widget_class,TypeName,member_name : longint) : longint;
begin
  gtk_widget_class_bind_template_child_internal_private:=gtk_widget_class_bind_template_child_full(widget_class,member_name,_TRUE,G_PRIVATE_OFFSET(TypeName,member_name));
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtktextiter.pp
// -------------------------------------------------

function GTK_TYPE_TEXT_ITER : longint; { return type might be wrong }
  begin
    GTK_TYPE_TEXT_ITER:=gtk_text_iter_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkimcontextsimple.pp
// -------------------------------------------------

function GTK_TYPE_IM_CONTEXT_SIMPLE : longint; { return type might be wrong }
  begin
    GTK_TYPE_IM_CONTEXT_SIMPLE:=gtk_im_context_simple_get_type;
  end;

function GTK_IM_CONTEXT_SIMPLE(obj : longint) : longint;
begin
  GTK_IM_CONTEXT_SIMPLE:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_IM_CONTEXT_SIMPLE,GtkIMContextSimple);
end;

function GTK_IM_CONTEXT_SIMPLE_CLASS(klass : longint) : longint;
begin
  GTK_IM_CONTEXT_SIMPLE_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_IM_CONTEXT_SIMPLE,GtkIMContextSimpleClass);
end;

function GTK_IS_IM_CONTEXT_SIMPLE(obj : longint) : longint;
begin
  GTK_IS_IM_CONTEXT_SIMPLE:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_IM_CONTEXT_SIMPLE);
end;

function GTK_IS_IM_CONTEXT_SIMPLE_CLASS(klass : longint) : longint;
begin
  GTK_IS_IM_CONTEXT_SIMPLE_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_IM_CONTEXT_SIMPLE);
end;

function GTK_IM_CONTEXT_SIMPLE_GET_CLASS(obj : longint) : longint;
begin
  GTK_IM_CONTEXT_SIMPLE_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_IM_CONTEXT_SIMPLE,GtkIMContextSimpleClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkaboutdialog.pp
// -------------------------------------------------

function GTK_TYPE_ABOUT_DIALOG : longint; { return type might be wrong }
  begin
    GTK_TYPE_ABOUT_DIALOG:=gtk_about_dialog_get_type;
  end;

function GTK_ABOUT_DIALOG(object : longint) : longint;
begin
  GTK_ABOUT_DIALOG:=G_TYPE_CHECK_INSTANCE_CAST(object,GTK_TYPE_ABOUT_DIALOG,GtkAboutDialog);
end;

function GTK_IS_ABOUT_DIALOG(object : longint) : longint;
begin
  GTK_IS_ABOUT_DIALOG:=G_TYPE_CHECK_INSTANCE_TYPE(object,GTK_TYPE_ABOUT_DIALOG);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtktextmark.pp
// -------------------------------------------------

function GTK_TYPE_TEXT_MARK : longint; { return type might be wrong }
  begin
    GTK_TYPE_TEXT_MARK:=gtk_text_mark_get_type;
  end;

function GTK_TEXT_MARK(object : longint) : longint;
begin
  GTK_TEXT_MARK:=G_TYPE_CHECK_INSTANCE_CAST(object,GTK_TYPE_TEXT_MARK,GtkTextMark);
end;

function GTK_TEXT_MARK_CLASS(klass : longint) : longint;
begin
  GTK_TEXT_MARK_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_TEXT_MARK,GtkTextMarkClass);
end;

function GTK_IS_TEXT_MARK(object : longint) : longint;
begin
  GTK_IS_TEXT_MARK:=G_TYPE_CHECK_INSTANCE_TYPE(object,GTK_TYPE_TEXT_MARK);
end;

function GTK_IS_TEXT_MARK_CLASS(klass : longint) : longint;
begin
  GTK_IS_TEXT_MARK_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_TEXT_MARK);
end;

function GTK_TEXT_MARK_GET_CLASS(obj : longint) : longint;
begin
  GTK_TEXT_MARK_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_TEXT_MARK,GtkTextMarkClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtklayoutmanager.pp
// -------------------------------------------------

function GTK_TYPE_LAYOUT_MANAGER : longint; { return type might be wrong }
  begin
    GTK_TYPE_LAYOUT_MANAGER:=gtk_layout_manager_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtknotebook.pp
// -------------------------------------------------

function GTK_IS_NOTEBOOK(obj : longint) : longint;
begin
  GTK_IS_NOTEBOOK:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_NOTEBOOK);
end;

function GTK_IS_NOTEBOOK_PAGE(obj : longint) : longint;
begin
  GTK_IS_NOTEBOOK_PAGE:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_NOTEBOOK_PAGE);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkcellrendererprogress.pp
// -------------------------------------------------

function GTK_TYPE_CELL_RENDERER_PROGRESS : longint; { return type might be wrong }
  begin
    GTK_TYPE_CELL_RENDERER_PROGRESS:=gtk_cell_renderer_progress_get_type;
  end;

function GTK_CELL_RENDERER_PROGRESS(obj : longint) : longint;
begin
  GTK_CELL_RENDERER_PROGRESS:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_CELL_RENDERER_PROGRESS,GtkCellRendererProgress);
end;

function GTK_IS_CELL_RENDERER_PROGRESS(obj : longint) : longint;
begin
  GTK_IS_CELL_RENDERER_PROGRESS:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_CELL_RENDERER_PROGRESS);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkrevealer.pp
// -------------------------------------------------

function GTK_TYPE_REVEALER : longint; { return type might be wrong }
  begin
    GTK_TYPE_REVEALER:=gtk_revealer_get_type;
  end;

function GTK_REVEALER(obj : longint) : longint;
begin
  GTK_REVEALER:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_REVEALER,GtkRevealer);
end;

function GTK_IS_REVEALER(obj : longint) : longint;
begin
  GTK_IS_REVEALER:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_REVEALER);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkemojichooser.pp
// -------------------------------------------------

function GTK_TYPE_EMOJI_CHOOSER : longint; { return type might be wrong }
  begin
    GTK_TYPE_EMOJI_CHOOSER:=gtk_emoji_chooser_get_type;
  end;

function GTK_EMOJI_CHOOSER(obj : longint) : longint;
begin
  GTK_EMOJI_CHOOSER:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_EMOJI_CHOOSER,GtkEmojiChooser);
end;

function GTK_EMOJI_CHOOSER_CLASS(klass : longint) : longint;
begin
  GTK_EMOJI_CHOOSER_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_EMOJI_CHOOSER,GtkEmojiChooserClass);
end;

function GTK_IS_EMOJI_CHOOSER(obj : longint) : longint;
begin
  GTK_IS_EMOJI_CHOOSER:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_EMOJI_CHOOSER);
end;

function GTK_IS_EMOJI_CHOOSER_CLASS(klass : longint) : longint;
begin
  GTK_IS_EMOJI_CHOOSER_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_EMOJI_CHOOSER);
end;

function GTK_EMOJI_CHOOSER_GET_CLASS(obj : longint) : longint;
begin
  GTK_EMOJI_CHOOSER_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_EMOJI_CHOOSER,GtkEmojiChooserClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtktext.pp
// -------------------------------------------------

function GTK_TYPE_TEXT : longint; { return type might be wrong }
  begin
    GTK_TYPE_TEXT:=gtk_text_get_type;
  end;

function GTK_TEXT(obj : longint) : longint;
begin
  GTK_TEXT:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_TEXT,GtkText);
end;

function GTK_IS_TEXT(obj : longint) : longint;
begin
  GTK_IS_TEXT:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_TEXT);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkentrybuffer.pp
// -------------------------------------------------

function GTK_TYPE_ENTRY_BUFFER : longint; { return type might be wrong }
  begin
    GTK_TYPE_ENTRY_BUFFER:=gtk_entry_buffer_get_type;
  end;

function GTK_ENTRY_BUFFER(obj : longint) : longint;
begin
  GTK_ENTRY_BUFFER:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_ENTRY_BUFFER,GtkEntryBuffer);
end;

function GTK_ENTRY_BUFFER_CLASS(klass : longint) : longint;
begin
  GTK_ENTRY_BUFFER_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_ENTRY_BUFFER,GtkEntryBufferClass);
end;

function GTK_IS_ENTRY_BUFFER(obj : longint) : longint;
begin
  GTK_IS_ENTRY_BUFFER:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_ENTRY_BUFFER);
end;

function GTK_IS_ENTRY_BUFFER_CLASS(klass : longint) : longint;
begin
  GTK_IS_ENTRY_BUFFER_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_ENTRY_BUFFER);
end;

function GTK_ENTRY_BUFFER_GET_CLASS(obj : longint) : longint;
begin
  GTK_ENTRY_BUFFER_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_ENTRY_BUFFER,GtkEntryBufferClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtktreesortable.pp
// -------------------------------------------------

function GTK_TYPE_TREE_SORTABLE : longint; { return type might be wrong }
  begin
    GTK_TYPE_TREE_SORTABLE:=gtk_tree_sortable_get_type;
  end;

function GTK_TREE_SORTABLE(obj : longint) : longint;
begin
  GTK_TREE_SORTABLE:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_TREE_SORTABLE,GtkTreeSortable);
end;

function GTK_IS_TREE_SORTABLE(obj : longint) : longint;
begin
  GTK_IS_TREE_SORTABLE:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_TREE_SORTABLE);
end;

function GTK_TREE_SORTABLE_GET_IFACE(obj : longint) : longint;
begin
  GTK_TREE_SORTABLE_GET_IFACE:=G_TYPE_INSTANCE_GET_INTERFACE(obj,GTK_TYPE_TREE_SORTABLE,GtkTreeSortableIface);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkbuilderscope.pp
// -------------------------------------------------

function GTK_TYPE_BUILDER_SCOPE : longint; { return type might be wrong }
  begin
    GTK_TYPE_BUILDER_SCOPE:=gtk_builder_scope_get_type;
  end;

function GTK_TYPE_BUILDER_CSCOPE : longint; { return type might be wrong }
  begin
    GTK_TYPE_BUILDER_CSCOPE:=gtk_builder_cscope_get_type;
  end;

function gtk_builder_cscope_add_callback(scope,callback : longint) : longint;
begin
  gtk_builder_cscope_add_callback:=gtk_builder_cscope_add_callback_symbol(GTK_BUILDER_CSCOPE(scope),callback,G_CALLBACK(callback));
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkeventcontrollerkey.pp
// -------------------------------------------------

function GTK_TYPE_EVENT_CONTROLLER_KEY : longint; { return type might be wrong }
  begin
    GTK_TYPE_EVENT_CONTROLLER_KEY:=gtk_event_controller_key_get_type;
  end;

function GTK_EVENT_CONTROLLER_KEY(o : longint) : longint;
begin
  GTK_EVENT_CONTROLLER_KEY:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_EVENT_CONTROLLER_KEY,GtkEventControllerKey);
end;

function GTK_EVENT_CONTROLLER_KEY_CLASS(k : longint) : longint;
begin
  GTK_EVENT_CONTROLLER_KEY_CLASS:=G_TYPE_CHECK_CLASS_CAST(k,GTK_TYPE_EVENT_CONTROLLER_KEY,GtkEventControllerKeyClass);
end;

function GTK_IS_EVENT_CONTROLLER_KEY(o : longint) : longint;
begin
  GTK_IS_EVENT_CONTROLLER_KEY:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_EVENT_CONTROLLER_KEY);
end;

function GTK_IS_EVENT_CONTROLLER_KEY_CLASS(k : longint) : longint;
begin
  GTK_IS_EVENT_CONTROLLER_KEY_CLASS:=G_TYPE_CHECK_CLASS_TYPE(k,GTK_TYPE_EVENT_CONTROLLER_KEY);
end;

function GTK_EVENT_CONTROLLER_KEY_GET_CLASS(o : longint) : longint;
begin
  GTK_EVENT_CONTROLLER_KEY_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GTK_TYPE_EVENT_CONTROLLER_KEY,GtkEventControllerKeyClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkcellrenderercombo.pp
// -------------------------------------------------

function GTK_TYPE_CELL_RENDERER_COMBO : longint; { return type might be wrong }
  begin
    GTK_TYPE_CELL_RENDERER_COMBO:=gtk_cell_renderer_combo_get_type;
  end;

function GTK_CELL_RENDERER_COMBO(obj : longint) : longint;
begin
  GTK_CELL_RENDERER_COMBO:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_CELL_RENDERER_COMBO,GtkCellRendererCombo);
end;

function GTK_IS_CELL_RENDERER_COMBO(obj : longint) : longint;
begin
  GTK_IS_CELL_RENDERER_COMBO:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_CELL_RENDERER_COMBO);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkselectionfiltermodel.pp
// -------------------------------------------------

function GTK_TYPE_SELECTION_FILTER_MODEL : longint; { return type might be wrong }
  begin
    GTK_TYPE_SELECTION_FILTER_MODEL:=gtk_selection_filter_model_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkexpander.pp
// -------------------------------------------------

function GTK_TYPE_EXPANDER : longint; { return type might be wrong }
  begin
    GTK_TYPE_EXPANDER:=gtk_expander_get_type;
  end;

function GTK_EXPANDER(obj : longint) : longint;
begin
  GTK_EXPANDER:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_EXPANDER,GtkExpander);
end;

function GTK_IS_EXPANDER(obj : longint) : longint;
begin
  GTK_IS_EXPANDER:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_EXPANDER);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkswitch.pp
// -------------------------------------------------

function GTK_TYPE_SWITCH : longint; { return type might be wrong }
  begin
    GTK_TYPE_SWITCH:=gtk_switch_get_type;
  end;

function GTK_SWITCH(obj : longint) : longint;
begin
  GTK_SWITCH:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_SWITCH,GtkSwitch);
end;

function GTK_IS_SWITCH(obj : longint) : longint;
begin
  GTK_IS_SWITCH:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_SWITCH);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkfilechooserdialog.pp
// -------------------------------------------------

function GTK_TYPE_FILE_CHOOSER_DIALOG : longint; { return type might be wrong }
  begin
    GTK_TYPE_FILE_CHOOSER_DIALOG:=gtk_file_chooser_dialog_get_type;
  end;

function GTK_FILE_CHOOSER_DIALOG(obj : longint) : longint;
begin
  GTK_FILE_CHOOSER_DIALOG:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_FILE_CHOOSER_DIALOG,GtkFileChooserDialog);
end;

function GTK_IS_FILE_CHOOSER_DIALOG(obj : longint) : longint;
begin
  GTK_IS_FILE_CHOOSER_DIALOG:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_FILE_CHOOSER_DIALOG);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkgridview.pp
// -------------------------------------------------

function GTK_TYPE_GRID_VIEW : longint; { return type might be wrong }
  begin
    GTK_TYPE_GRID_VIEW:=gtk_grid_view_get_type;
  end;

function GTK_GRID_VIEW(o : longint) : longint;
begin
  GTK_GRID_VIEW:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_GRID_VIEW,GtkGridView);
end;

function GTK_GRID_VIEW_CLASS(k : longint) : longint;
begin
  GTK_GRID_VIEW_CLASS:=G_TYPE_CHECK_CLASS_CAST(k,GTK_TYPE_GRID_VIEW,GtkGridViewClass);
end;

function GTK_IS_GRID_VIEW(o : longint) : longint;
begin
  GTK_IS_GRID_VIEW:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_GRID_VIEW);
end;

function GTK_IS_GRID_VIEW_CLASS(k : longint) : longint;
begin
  GTK_IS_GRID_VIEW_CLASS:=G_TYPE_CHECK_CLASS_TYPE(k,GTK_TYPE_GRID_VIEW);
end;

function GTK_GRID_VIEW_GET_CLASS(o : longint) : longint;
begin
  GTK_GRID_VIEW_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GTK_TYPE_GRID_VIEW,GtkGridViewClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkdragicon.pp
// -------------------------------------------------

function GTK_TYPE_DRAG_ICON : longint; { return type might be wrong }
  begin
    GTK_TYPE_DRAG_ICON:=gtk_drag_icon_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtktreemodel.pp
// -------------------------------------------------

function GTK_TYPE_TREE_MODEL : longint; { return type might be wrong }
  begin
    GTK_TYPE_TREE_MODEL:=gtk_tree_model_get_type;
  end;

function GTK_TREE_MODEL(obj : longint) : longint;
begin
  GTK_TREE_MODEL:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_TREE_MODEL,GtkTreeModel);
end;

function GTK_IS_TREE_MODEL(obj : longint) : longint;
begin
  GTK_IS_TREE_MODEL:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_TREE_MODEL);
end;

function GTK_TREE_MODEL_GET_IFACE(obj : longint) : longint;
begin
  GTK_TREE_MODEL_GET_IFACE:=G_TYPE_INSTANCE_GET_INTERFACE(obj,GTK_TYPE_TREE_MODEL,GtkTreeModelIface);
end;

function GTK_TYPE_TREE_ITER : longint; { return type might be wrong }
  begin
    GTK_TYPE_TREE_ITER:=gtk_tree_iter_get_type;
  end;

function GTK_TYPE_TREE_PATH : longint; { return type might be wrong }
  begin
    GTK_TYPE_TREE_PATH:=gtk_tree_path_get_type;
  end;

function GTK_TYPE_TREE_ROW_REFERENCE : longint; { return type might be wrong }
  begin
    GTK_TYPE_TREE_ROW_REFERENCE:=gtk_tree_row_reference_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtktypebuiltins.pp
// -------------------------------------------------

function GTK_TYPE_LICENSE : longint; { return type might be wrong }
  begin
    GTK_TYPE_LICENSE:=gtk_license_get_type;
  end;

function GTK_TYPE_APPLICATION_INHIBIT_FLAGS : longint; { return type might be wrong }
  begin
    GTK_TYPE_APPLICATION_INHIBIT_FLAGS:=gtk_application_inhibit_flags_get_type;
  end;

function GTK_TYPE_ASSISTANT_PAGE_TYPE : longint; { return type might be wrong }
  begin
    GTK_TYPE_ASSISTANT_PAGE_TYPE:=gtk_assistant_page_type_get_type;
  end;

function GTK_TYPE_BUILDER_ERROR : longint; { return type might be wrong }
  begin
    GTK_TYPE_BUILDER_ERROR:=gtk_builder_error_get_type;
  end;

function GTK_TYPE_BUILDER_CLOSURE_FLAGS : longint; { return type might be wrong }
  begin
    GTK_TYPE_BUILDER_CLOSURE_FLAGS:=gtk_builder_closure_flags_get_type;
  end;

function GTK_TYPE_CELL_RENDERER_STATE : longint; { return type might be wrong }
  begin
    GTK_TYPE_CELL_RENDERER_STATE:=gtk_cell_renderer_state_get_type;
  end;

function GTK_TYPE_CELL_RENDERER_MODE : longint; { return type might be wrong }
  begin
    GTK_TYPE_CELL_RENDERER_MODE:=gtk_cell_renderer_mode_get_type;
  end;

function GTK_TYPE_CELL_RENDERER_ACCEL_MODE : longint; { return type might be wrong }
  begin
    GTK_TYPE_CELL_RENDERER_ACCEL_MODE:=gtk_cell_renderer_accel_mode_get_type;
  end;

function GTK_TYPE_DEBUG_FLAGS : longint; { return type might be wrong }
  begin
    GTK_TYPE_DEBUG_FLAGS:=gtk_debug_flags_get_type;
  end;

function GTK_TYPE_DIALOG_FLAGS : longint; { return type might be wrong }
  begin
    GTK_TYPE_DIALOG_FLAGS:=gtk_dialog_flags_get_type;
  end;

function GTK_TYPE_RESPONSE_TYPE : longint; { return type might be wrong }
  begin
    GTK_TYPE_RESPONSE_TYPE:=gtk_response_type_get_type;
  end;

function GTK_TYPE_EDITABLE_PROPERTIES : longint; { return type might be wrong }
  begin
    GTK_TYPE_EDITABLE_PROPERTIES:=gtk_editable_properties_get_type;
  end;

function GTK_TYPE_ENTRY_ICON_POSITION : longint; { return type might be wrong }
  begin
    GTK_TYPE_ENTRY_ICON_POSITION:=gtk_entry_icon_position_get_type;
  end;

function GTK_TYPE_ALIGN : longint; { return type might be wrong }
  begin
    GTK_TYPE_ALIGN:=gtk_align_get_type;
  end;

function GTK_TYPE_ARROW_TYPE : longint; { return type might be wrong }
  begin
    GTK_TYPE_ARROW_TYPE:=gtk_arrow_type_get_type;
  end;

function GTK_TYPE_BASELINE_POSITION : longint; { return type might be wrong }
  begin
    GTK_TYPE_BASELINE_POSITION:=gtk_baseline_position_get_type;
  end;

function GTK_TYPE_CONTENT_FIT : longint; { return type might be wrong }
  begin
    GTK_TYPE_CONTENT_FIT:=gtk_content_fit_get_type;
  end;

function GTK_TYPE_DELETE_TYPE : longint; { return type might be wrong }
  begin
    GTK_TYPE_DELETE_TYPE:=gtk_delete_type_get_type;
  end;

function GTK_TYPE_DIRECTION_TYPE : longint; { return type might be wrong }
  begin
    GTK_TYPE_DIRECTION_TYPE:=gtk_direction_type_get_type;
  end;

function GTK_TYPE_ICON_SIZE : longint; { return type might be wrong }
  begin
    GTK_TYPE_ICON_SIZE:=gtk_icon_size_get_type;
  end;

function GTK_TYPE_SENSITIVITY_TYPE : longint; { return type might be wrong }
  begin
    GTK_TYPE_SENSITIVITY_TYPE:=gtk_sensitivity_type_get_type;
  end;

function GTK_TYPE_TEXT_DIRECTION : longint; { return type might be wrong }
  begin
    GTK_TYPE_TEXT_DIRECTION:=gtk_text_direction_get_type;
  end;

function GTK_TYPE_JUSTIFICATION : longint; { return type might be wrong }
  begin
    GTK_TYPE_JUSTIFICATION:=gtk_justification_get_type;
  end;

function GTK_TYPE_MESSAGE_TYPE : longint; { return type might be wrong }
  begin
    GTK_TYPE_MESSAGE_TYPE:=gtk_message_type_get_type;
  end;

function GTK_TYPE_MOVEMENT_STEP : longint; { return type might be wrong }
  begin
    GTK_TYPE_MOVEMENT_STEP:=gtk_movement_step_get_type;
  end;

function GTK_TYPE_NATURAL_WRAP_MODE : longint; { return type might be wrong }
  begin
    GTK_TYPE_NATURAL_WRAP_MODE:=gtk_natural_wrap_mode_get_type;
  end;

function GTK_TYPE_SCROLL_STEP : longint; { return type might be wrong }
  begin
    GTK_TYPE_SCROLL_STEP:=gtk_scroll_step_get_type;
  end;

function GTK_TYPE_ORIENTATION : longint; { return type might be wrong }
  begin
    GTK_TYPE_ORIENTATION:=gtk_orientation_get_type;
  end;

function GTK_TYPE_OVERFLOW : longint; { return type might be wrong }
  begin
    GTK_TYPE_OVERFLOW:=gtk_overflow_get_type;
  end;

function GTK_TYPE_PACK_TYPE : longint; { return type might be wrong }
  begin
    GTK_TYPE_PACK_TYPE:=gtk_pack_type_get_type;
  end;

function GTK_TYPE_POSITION_TYPE : longint; { return type might be wrong }
  begin
    GTK_TYPE_POSITION_TYPE:=gtk_position_type_get_type;
  end;

function GTK_TYPE_SCROLL_TYPE : longint; { return type might be wrong }
  begin
    GTK_TYPE_SCROLL_TYPE:=gtk_scroll_type_get_type;
  end;

function GTK_TYPE_SELECTION_MODE : longint; { return type might be wrong }
  begin
    GTK_TYPE_SELECTION_MODE:=gtk_selection_mode_get_type;
  end;

function GTK_TYPE_WRAP_MODE : longint; { return type might be wrong }
  begin
    GTK_TYPE_WRAP_MODE:=gtk_wrap_mode_get_type;
  end;

function GTK_TYPE_SORT_TYPE : longint; { return type might be wrong }
  begin
    GTK_TYPE_SORT_TYPE:=gtk_sort_type_get_type;
  end;

function GTK_TYPE_PRINT_PAGES : longint; { return type might be wrong }
  begin
    GTK_TYPE_PRINT_PAGES:=gtk_print_pages_get_type;
  end;

function GTK_TYPE_PAGE_SET : longint; { return type might be wrong }
  begin
    GTK_TYPE_PAGE_SET:=gtk_page_set_get_type;
  end;

function GTK_TYPE_NUMBER_UP_LAYOUT : longint; { return type might be wrong }
  begin
    GTK_TYPE_NUMBER_UP_LAYOUT:=gtk_number_up_layout_get_type;
  end;

function GTK_TYPE_ORDERING : longint; { return type might be wrong }
  begin
    GTK_TYPE_ORDERING:=gtk_ordering_get_type;
  end;

function GTK_TYPE_PAGE_ORIENTATION : longint; { return type might be wrong }
  begin
    GTK_TYPE_PAGE_ORIENTATION:=gtk_page_orientation_get_type;
  end;

function GTK_TYPE_PRINT_QUALITY : longint; { return type might be wrong }
  begin
    GTK_TYPE_PRINT_QUALITY:=gtk_print_quality_get_type;
  end;

function GTK_TYPE_PRINT_DUPLEX : longint; { return type might be wrong }
  begin
    GTK_TYPE_PRINT_DUPLEX:=gtk_print_duplex_get_type;
  end;

function GTK_TYPE_UNIT : longint; { return type might be wrong }
  begin
    GTK_TYPE_UNIT:=gtk_unit_get_type;
  end;

function GTK_TYPE_TREE_VIEW_GRID_LINES : longint; { return type might be wrong }
  begin
    GTK_TYPE_TREE_VIEW_GRID_LINES:=gtk_tree_view_grid_lines_get_type;
  end;

function GTK_TYPE_SIZE_GROUP_MODE : longint; { return type might be wrong }
  begin
    GTK_TYPE_SIZE_GROUP_MODE:=gtk_size_group_mode_get_type;
  end;

function GTK_TYPE_SIZE_REQUEST_MODE : longint; { return type might be wrong }
  begin
    GTK_TYPE_SIZE_REQUEST_MODE:=gtk_size_request_mode_get_type;
  end;

function GTK_TYPE_SCROLLABLE_POLICY : longint; { return type might be wrong }
  begin
    GTK_TYPE_SCROLLABLE_POLICY:=gtk_scrollable_policy_get_type;
  end;

function GTK_TYPE_STATE_FLAGS : longint; { return type might be wrong }
  begin
    GTK_TYPE_STATE_FLAGS:=gtk_state_flags_get_type;
  end;

function GTK_TYPE_BORDER_STYLE : longint; { return type might be wrong }
  begin
    GTK_TYPE_BORDER_STYLE:=gtk_border_style_get_type;
  end;

function GTK_TYPE_LEVEL_BAR_MODE : longint; { return type might be wrong }
  begin
    GTK_TYPE_LEVEL_BAR_MODE:=gtk_level_bar_mode_get_type;
  end;

function GTK_TYPE_INPUT_PURPOSE : longint; { return type might be wrong }
  begin
    GTK_TYPE_INPUT_PURPOSE:=gtk_input_purpose_get_type;
  end;

function GTK_TYPE_INPUT_HINTS : longint; { return type might be wrong }
  begin
    GTK_TYPE_INPUT_HINTS:=gtk_input_hints_get_type;
  end;

function GTK_TYPE_PROPAGATION_PHASE : longint; { return type might be wrong }
  begin
    GTK_TYPE_PROPAGATION_PHASE:=gtk_propagation_phase_get_type;
  end;

function GTK_TYPE_PROPAGATION_LIMIT : longint; { return type might be wrong }
  begin
    GTK_TYPE_PROPAGATION_LIMIT:=gtk_propagation_limit_get_type;
  end;

function GTK_TYPE_EVENT_SEQUENCE_STATE : longint; { return type might be wrong }
  begin
    GTK_TYPE_EVENT_SEQUENCE_STATE:=gtk_event_sequence_state_get_type;
  end;

function GTK_TYPE_PAN_DIRECTION : longint; { return type might be wrong }
  begin
    GTK_TYPE_PAN_DIRECTION:=gtk_pan_direction_get_type;
  end;

function GTK_TYPE_SHORTCUT_SCOPE : longint; { return type might be wrong }
  begin
    GTK_TYPE_SHORTCUT_SCOPE:=gtk_shortcut_scope_get_type;
  end;

function GTK_TYPE_PICK_FLAGS : longint; { return type might be wrong }
  begin
    GTK_TYPE_PICK_FLAGS:=gtk_pick_flags_get_type;
  end;

function GTK_TYPE_CONSTRAINT_RELATION : longint; { return type might be wrong }
  begin
    GTK_TYPE_CONSTRAINT_RELATION:=gtk_constraint_relation_get_type;
  end;

function GTK_TYPE_CONSTRAINT_STRENGTH : longint; { return type might be wrong }
  begin
    GTK_TYPE_CONSTRAINT_STRENGTH:=gtk_constraint_strength_get_type;
  end;

function GTK_TYPE_CONSTRAINT_ATTRIBUTE : longint; { return type might be wrong }
  begin
    GTK_TYPE_CONSTRAINT_ATTRIBUTE:=gtk_constraint_attribute_get_type;
  end;

function GTK_TYPE_CONSTRAINT_VFL_PARSER_ERROR : longint; { return type might be wrong }
  begin
    GTK_TYPE_CONSTRAINT_VFL_PARSER_ERROR:=gtk_constraint_vfl_parser_error_get_type;
  end;

function GTK_TYPE_SYSTEM_SETTING : longint; { return type might be wrong }
  begin
    GTK_TYPE_SYSTEM_SETTING:=gtk_system_setting_get_type;
  end;

function GTK_TYPE_SYMBOLIC_COLOR : longint; { return type might be wrong }
  begin
    GTK_TYPE_SYMBOLIC_COLOR:=gtk_symbolic_color_get_type;
  end;

function GTK_TYPE_ACCESSIBLE_ROLE : longint; { return type might be wrong }
  begin
    GTK_TYPE_ACCESSIBLE_ROLE:=gtk_accessible_role_get_type;
  end;

function GTK_TYPE_ACCESSIBLE_STATE : longint; { return type might be wrong }
  begin
    GTK_TYPE_ACCESSIBLE_STATE:=gtk_accessible_state_get_type;
  end;

function GTK_TYPE_ACCESSIBLE_PROPERTY : longint; { return type might be wrong }
  begin
    GTK_TYPE_ACCESSIBLE_PROPERTY:=gtk_accessible_property_get_type;
  end;

function GTK_TYPE_ACCESSIBLE_RELATION : longint; { return type might be wrong }
  begin
    GTK_TYPE_ACCESSIBLE_RELATION:=gtk_accessible_relation_get_type;
  end;

function GTK_TYPE_ACCESSIBLE_TRISTATE : longint; { return type might be wrong }
  begin
    GTK_TYPE_ACCESSIBLE_TRISTATE:=gtk_accessible_tristate_get_type;
  end;

function GTK_TYPE_ACCESSIBLE_INVALID_STATE : longint; { return type might be wrong }
  begin
    GTK_TYPE_ACCESSIBLE_INVALID_STATE:=gtk_accessible_invalid_state_get_type;
  end;

function GTK_TYPE_ACCESSIBLE_AUTOCOMPLETE : longint; { return type might be wrong }
  begin
    GTK_TYPE_ACCESSIBLE_AUTOCOMPLETE:=gtk_accessible_autocomplete_get_type;
  end;

function GTK_TYPE_ACCESSIBLE_SORT : longint; { return type might be wrong }
  begin
    GTK_TYPE_ACCESSIBLE_SORT:=gtk_accessible_sort_get_type;
  end;

function GTK_TYPE_EVENT_CONTROLLER_SCROLL_FLAGS : longint; { return type might be wrong }
  begin
    GTK_TYPE_EVENT_CONTROLLER_SCROLL_FLAGS:=gtk_event_controller_scroll_flags_get_type;
  end;

function GTK_TYPE_FILE_CHOOSER_ACTION : longint; { return type might be wrong }
  begin
    GTK_TYPE_FILE_CHOOSER_ACTION:=gtk_file_chooser_action_get_type;
  end;

function GTK_TYPE_FILE_CHOOSER_ERROR : longint; { return type might be wrong }
  begin
    GTK_TYPE_FILE_CHOOSER_ERROR:=gtk_file_chooser_error_get_type;
  end;

function GTK_TYPE_FILTER_MATCH : longint; { return type might be wrong }
  begin
    GTK_TYPE_FILTER_MATCH:=gtk_filter_match_get_type;
  end;

function GTK_TYPE_FILTER_CHANGE : longint; { return type might be wrong }
  begin
    GTK_TYPE_FILTER_CHANGE:=gtk_filter_change_get_type;
  end;

function GTK_TYPE_FONT_CHOOSER_LEVEL : longint; { return type might be wrong }
  begin
    GTK_TYPE_FONT_CHOOSER_LEVEL:=gtk_font_chooser_level_get_type;
  end;

function GTK_TYPE_ICON_LOOKUP_FLAGS : longint; { return type might be wrong }
  begin
    GTK_TYPE_ICON_LOOKUP_FLAGS:=gtk_icon_lookup_flags_get_type;
  end;

function GTK_TYPE_ICON_THEME_ERROR : longint; { return type might be wrong }
  begin
    GTK_TYPE_ICON_THEME_ERROR:=gtk_icon_theme_error_get_type;
  end;

function GTK_TYPE_ICON_VIEW_DROP_POSITION : longint; { return type might be wrong }
  begin
    GTK_TYPE_ICON_VIEW_DROP_POSITION:=gtk_icon_view_drop_position_get_type;
  end;

function GTK_TYPE_IMAGE_TYPE : longint; { return type might be wrong }
  begin
    GTK_TYPE_IMAGE_TYPE:=gtk_image_type_get_type;
  end;

function GTK_TYPE_INSCRIPTION_OVERFLOW : longint; { return type might be wrong }
  begin
    GTK_TYPE_INSCRIPTION_OVERFLOW:=gtk_inscription_overflow_get_type;
  end;

function GTK_TYPE_BUTTONS_TYPE : longint; { return type might be wrong }
  begin
    GTK_TYPE_BUTTONS_TYPE:=gtk_buttons_type_get_type;
  end;

function GTK_TYPE_NOTEBOOK_TAB : longint; { return type might be wrong }
  begin
    GTK_TYPE_NOTEBOOK_TAB:=gtk_notebook_tab_get_type;
  end;

function GTK_TYPE_PAD_ACTION_TYPE : longint; { return type might be wrong }
  begin
    GTK_TYPE_PAD_ACTION_TYPE:=gtk_pad_action_type_get_type;
  end;

function GTK_TYPE_POPOVER_MENU_FLAGS : longint; { return type might be wrong }
  begin
    GTK_TYPE_POPOVER_MENU_FLAGS:=gtk_popover_menu_flags_get_type;
  end;

function GTK_TYPE_PRINT_STATUS : longint; { return type might be wrong }
  begin
    GTK_TYPE_PRINT_STATUS:=gtk_print_status_get_type;
  end;

function GTK_TYPE_PRINT_OPERATION_RESULT : longint; { return type might be wrong }
  begin
    GTK_TYPE_PRINT_OPERATION_RESULT:=gtk_print_operation_result_get_type;
  end;

function GTK_TYPE_PRINT_OPERATION_ACTION : longint; { return type might be wrong }
  begin
    GTK_TYPE_PRINT_OPERATION_ACTION:=gtk_print_operation_action_get_type;
  end;

function GTK_TYPE_PRINT_ERROR : longint; { return type might be wrong }
  begin
    GTK_TYPE_PRINT_ERROR:=gtk_print_error_get_type;
  end;

function GTK_TYPE_RECENT_MANAGER_ERROR : longint; { return type might be wrong }
  begin
    GTK_TYPE_RECENT_MANAGER_ERROR:=gtk_recent_manager_error_get_type;
  end;

function GTK_TYPE_REVEALER_TRANSITION_TYPE : longint; { return type might be wrong }
  begin
    GTK_TYPE_REVEALER_TRANSITION_TYPE:=gtk_revealer_transition_type_get_type;
  end;

function GTK_TYPE_CORNER_TYPE : longint; { return type might be wrong }
  begin
    GTK_TYPE_CORNER_TYPE:=gtk_corner_type_get_type;
  end;

function GTK_TYPE_POLICY_TYPE : longint; { return type might be wrong }
  begin
    GTK_TYPE_POLICY_TYPE:=gtk_policy_type_get_type;
  end;

function GTK_TYPE_SHORTCUT_ACTION_FLAGS : longint; { return type might be wrong }
  begin
    GTK_TYPE_SHORTCUT_ACTION_FLAGS:=gtk_shortcut_action_flags_get_type;
  end;

function GTK_TYPE_SHORTCUT_TYPE : longint; { return type might be wrong }
  begin
    GTK_TYPE_SHORTCUT_TYPE:=gtk_shortcut_type_get_type;
  end;

function GTK_TYPE_SORTER_ORDER : longint; { return type might be wrong }
  begin
    GTK_TYPE_SORTER_ORDER:=gtk_sorter_order_get_type;
  end;

function GTK_TYPE_SORTER_CHANGE : longint; { return type might be wrong }
  begin
    GTK_TYPE_SORTER_CHANGE:=gtk_sorter_change_get_type;
  end;

function GTK_TYPE_SPIN_BUTTON_UPDATE_POLICY : longint; { return type might be wrong }
  begin
    GTK_TYPE_SPIN_BUTTON_UPDATE_POLICY:=gtk_spin_button_update_policy_get_type;
  end;

function GTK_TYPE_SPIN_TYPE : longint; { return type might be wrong }
  begin
    GTK_TYPE_SPIN_TYPE:=gtk_spin_type_get_type;
  end;

function GTK_TYPE_STACK_TRANSITION_TYPE : longint; { return type might be wrong }
  begin
    GTK_TYPE_STACK_TRANSITION_TYPE:=gtk_stack_transition_type_get_type;
  end;

function GTK_TYPE_STRING_FILTER_MATCH_MODE : longint; { return type might be wrong }
  begin
    GTK_TYPE_STRING_FILTER_MATCH_MODE:=gtk_string_filter_match_mode_get_type;
  end;

function GTK_TYPE_STYLE_CONTEXT_PRINT_FLAGS : longint; { return type might be wrong }
  begin
    GTK_TYPE_STYLE_CONTEXT_PRINT_FLAGS:=gtk_style_context_print_flags_get_type;
  end;

function GTK_TYPE_TEXT_SEARCH_FLAGS : longint; { return type might be wrong }
  begin
    GTK_TYPE_TEXT_SEARCH_FLAGS:=gtk_text_search_flags_get_type;
  end;

function GTK_TYPE_TEXT_WINDOW_TYPE : longint; { return type might be wrong }
  begin
    GTK_TYPE_TEXT_WINDOW_TYPE:=gtk_text_window_type_get_type;
  end;

function GTK_TYPE_TEXT_VIEW_LAYER : longint; { return type might be wrong }
  begin
    GTK_TYPE_TEXT_VIEW_LAYER:=gtk_text_view_layer_get_type;
  end;

function GTK_TYPE_TEXT_EXTEND_SELECTION : longint; { return type might be wrong }
  begin
    GTK_TYPE_TEXT_EXTEND_SELECTION:=gtk_text_extend_selection_get_type;
  end;

function GTK_TYPE_TREE_MODEL_FLAGS : longint; { return type might be wrong }
  begin
    GTK_TYPE_TREE_MODEL_FLAGS:=gtk_tree_model_flags_get_type;
  end;

function GTK_TYPE_TREE_VIEW_DROP_POSITION : longint; { return type might be wrong }
  begin
    GTK_TYPE_TREE_VIEW_DROP_POSITION:=gtk_tree_view_drop_position_get_type;
  end;

function GTK_TYPE_TREE_VIEW_COLUMN_SIZING : longint; { return type might be wrong }
  begin
    GTK_TYPE_TREE_VIEW_COLUMN_SIZING:=gtk_tree_view_column_sizing_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkbookmarklist.pp
// -------------------------------------------------

function GTK_TYPE_BOOKMARK_LIST : longint; { return type might be wrong }
  begin
    GTK_TYPE_BOOKMARK_LIST:=gtk_bookmark_list_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkflattenlistmodel.pp
// -------------------------------------------------

function GTK_TYPE_FLATTEN_LIST_MODEL : longint; { return type might be wrong }
  begin
    GTK_TYPE_FLATTEN_LIST_MODEL:=gtk_flatten_list_model_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkcolorchooser.pp
// -------------------------------------------------

function GTK_TYPE_COLOR_CHOOSER : longint; { return type might be wrong }
  begin
    GTK_TYPE_COLOR_CHOOSER:=gtk_color_chooser_get_type;
  end;

function GTK_COLOR_CHOOSER(obj : longint) : longint;
begin
  GTK_COLOR_CHOOSER:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_COLOR_CHOOSER,GtkColorChooser);
end;

function GTK_IS_COLOR_CHOOSER(obj : longint) : longint;
begin
  GTK_IS_COLOR_CHOOSER:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_COLOR_CHOOSER);
end;

function GTK_COLOR_CHOOSER_GET_IFACE(inst : longint) : longint;
begin
  GTK_COLOR_CHOOSER_GET_IFACE:=G_TYPE_INSTANCE_GET_INTERFACE(inst,GTK_TYPE_COLOR_CHOOSER,GtkColorChooserInterface);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkpasswordentry.pp
// -------------------------------------------------

function GTK_TYPE_PASSWORD_ENTRY : longint; { return type might be wrong }
  begin
    GTK_TYPE_PASSWORD_ENTRY:=gtk_password_entry_get_type;
  end;

function GTK_PASSWORD_ENTRY(obj : longint) : longint;
begin
  GTK_PASSWORD_ENTRY:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_PASSWORD_ENTRY,GtkPasswordEntry);
end;

function GTK_IS_PASSWORD_ENTRY(obj : longint) : longint;
begin
  GTK_IS_PASSWORD_ENTRY:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_PASSWORD_ENTRY);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkaccelgroup.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtktexttag.pp
// -------------------------------------------------

function GTK_TYPE_TEXT_TAG : longint; { return type might be wrong }
  begin
    GTK_TYPE_TEXT_TAG:=gtk_text_tag_get_type;
  end;

function GTK_TEXT_TAG(obj : longint) : longint;
begin
  GTK_TEXT_TAG:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_TEXT_TAG,GtkTextTag);
end;

function GTK_TEXT_TAG_CLASS(klass : longint) : longint;
begin
  GTK_TEXT_TAG_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_TEXT_TAG,GtkTextTagClass);
end;

function GTK_IS_TEXT_TAG(obj : longint) : longint;
begin
  GTK_IS_TEXT_TAG:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_TEXT_TAG);
end;

function GTK_IS_TEXT_TAG_CLASS(klass : longint) : longint;
begin
  GTK_IS_TEXT_TAG_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_TEXT_TAG);
end;

function GTK_TEXT_TAG_GET_CLASS(obj : longint) : longint;
begin
  GTK_TEXT_TAG_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_TEXT_TAG,GtkTextTagClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkprintcontext.pp
// -------------------------------------------------

function GTK_TYPE_PRINT_CONTEXT : longint; { return type might be wrong }
  begin
    GTK_TYPE_PRINT_CONTEXT:=gtk_print_context_get_type;
  end;

function GTK_PRINT_CONTEXT(obj : longint) : longint;
begin
  GTK_PRINT_CONTEXT:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_PRINT_CONTEXT,GtkPrintContext);
end;

function GTK_IS_PRINT_CONTEXT(obj : longint) : longint;
begin
  GTK_IS_PRINT_CONTEXT:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_PRINT_CONTEXT);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkboolfilter.pp
// -------------------------------------------------

function GTK_TYPE_BOOL_FILTER : longint; { return type might be wrong }
  begin
    GTK_TYPE_BOOL_FILTER:=gtk_bool_filter_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkimmulticontext.pp
// -------------------------------------------------

function GTK_TYPE_IM_MULTICONTEXT : longint; { return type might be wrong }
  begin
    GTK_TYPE_IM_MULTICONTEXT:=gtk_im_multicontext_get_type;
  end;

function GTK_IM_MULTICONTEXT(obj : longint) : longint;
begin
  GTK_IM_MULTICONTEXT:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_IM_MULTICONTEXT,GtkIMMulticontext);
end;

function GTK_IM_MULTICONTEXT_CLASS(klass : longint) : longint;
begin
  GTK_IM_MULTICONTEXT_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_IM_MULTICONTEXT,GtkIMMulticontextClass);
end;

function GTK_IS_IM_MULTICONTEXT(obj : longint) : longint;
begin
  GTK_IS_IM_MULTICONTEXT:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_IM_MULTICONTEXT);
end;

function GTK_IS_IM_MULTICONTEXT_CLASS(klass : longint) : longint;
begin
  GTK_IS_IM_MULTICONTEXT_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_IM_MULTICONTEXT);
end;

function GTK_IM_MULTICONTEXT_GET_CLASS(obj : longint) : longint;
begin
  GTK_IM_MULTICONTEXT_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_IM_MULTICONTEXT,GtkIMMulticontextClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkdrawingarea.pp
// -------------------------------------------------

function GTK_TYPE_DRAWING_AREA : longint; { return type might be wrong }
  begin
    GTK_TYPE_DRAWING_AREA:=gtk_drawing_area_get_type;
  end;

function GTK_DRAWING_AREA(obj : longint) : longint;
begin
  GTK_DRAWING_AREA:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_DRAWING_AREA,GtkDrawingArea);
end;

function GTK_DRAWING_AREA_CLASS(klass : longint) : longint;
begin
  GTK_DRAWING_AREA_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_DRAWING_AREA,GtkDrawingAreaClass);
end;

function GTK_IS_DRAWING_AREA(obj : longint) : longint;
begin
  GTK_IS_DRAWING_AREA:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_DRAWING_AREA);
end;

function GTK_IS_DRAWING_AREA_CLASS(klass : longint) : longint;
begin
  GTK_IS_DRAWING_AREA_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_DRAWING_AREA);
end;

function GTK_DRAWING_AREA_GET_CLASS(obj : longint) : longint;
begin
  GTK_DRAWING_AREA_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_DRAWING_AREA,GtkDrawingAreaClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkfilechoosernative.pp
// -------------------------------------------------

function GTK_TYPE_FILE_CHOOSER_NATIVE : longint; { return type might be wrong }
  begin
    GTK_TYPE_FILE_CHOOSER_NATIVE:=gtk_file_chooser_native_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkcomboboxtext.pp
// -------------------------------------------------

function GTK_TYPE_COMBO_BOX_TEXT : longint; { return type might be wrong }
  begin
    GTK_TYPE_COMBO_BOX_TEXT:=gtk_combo_box_text_get_type;
  end;

function GTK_COMBO_BOX_TEXT(obj : longint) : longint;
begin
  GTK_COMBO_BOX_TEXT:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_COMBO_BOX_TEXT,GtkComboBoxText);
end;

function GTK_IS_COMBO_BOX_TEXT(obj : longint) : longint;
begin
  GTK_IS_COMBO_BOX_TEXT:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_COMBO_BOX_TEXT);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkdropcontrollermotion.pp
// -------------------------------------------------

function GTK_TYPE_DROP_CONTROLLER_MOTION : longint; { return type might be wrong }
  begin
    GTK_TYPE_DROP_CONTROLLER_MOTION:=gtk_drop_controller_motion_get_type;
  end;

function GTK_DROP_CONTROLLER_MOTION(o : longint) : longint;
begin
  GTK_DROP_CONTROLLER_MOTION:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_DROP_CONTROLLER_MOTION,GtkDropControllerMotion);
end;

function GTK_DROP_CONTROLLER_MOTION_CLASS(k : longint) : longint;
begin
  GTK_DROP_CONTROLLER_MOTION_CLASS:=G_TYPE_CHECK_CLASS_CAST(k,GTK_TYPE_DROP_CONTROLLER_MOTION,GtkDropControllerMotionClass);
end;

function GTK_IS_DROP_CONTROLLER_MOTION(o : longint) : longint;
begin
  GTK_IS_DROP_CONTROLLER_MOTION:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_DROP_CONTROLLER_MOTION);
end;

function GTK_IS_DROP_CONTROLLER_MOTION_CLASS(k : longint) : longint;
begin
  GTK_IS_DROP_CONTROLLER_MOTION_CLASS:=G_TYPE_CHECK_CLASS_TYPE(k,GTK_TYPE_DROP_CONTROLLER_MOTION);
end;

function GTK_DROP_CONTROLLER_MOTION_GET_CLASS(o : longint) : longint;
begin
  GTK_DROP_CONTROLLER_MOTION_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GTK_TYPE_DROP_CONTROLLER_MOTION,GtkDropControllerMotionClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkdialog.pp
// -------------------------------------------------

function GTK_TYPE_DIALOG : longint; { return type might be wrong }
  begin
    GTK_TYPE_DIALOG:=gtk_dialog_get_type;
  end;

function GTK_DIALOG(obj : longint) : longint;
begin
  GTK_DIALOG:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_DIALOG,GtkDialog);
end;

function GTK_DIALOG_CLASS(klass : longint) : longint;
begin
  GTK_DIALOG_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_DIALOG,GtkDialogClass);
end;

function GTK_IS_DIALOG(obj : longint) : longint;
begin
  GTK_IS_DIALOG:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_DIALOG);
end;

function GTK_IS_DIALOG_CLASS(klass : longint) : longint;
begin
  GTK_IS_DIALOG_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_DIALOG);
end;

function GTK_DIALOG_GET_CLASS(obj : longint) : longint;
begin
  GTK_DIALOG_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_DIALOG,GtkDialogClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkcellrendereraccel.pp
// -------------------------------------------------

function GTK_TYPE_CELL_RENDERER_ACCEL : longint; { return type might be wrong }
  begin
    GTK_TYPE_CELL_RENDERER_ACCEL:=gtk_cell_renderer_accel_get_type;
  end;

function GTK_CELL_RENDERER_ACCEL(obj : longint) : longint;
begin
  GTK_CELL_RENDERER_ACCEL:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_CELL_RENDERER_ACCEL,GtkCellRendererAccel);
end;

function GTK_IS_CELL_RENDERER_ACCEL(obj : longint) : longint;
begin
  GTK_IS_CELL_RENDERER_ACCEL:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_CELL_RENDERER_ACCEL);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtksearchentry.pp
// -------------------------------------------------

function GTK_TYPE_SEARCH_ENTRY : longint; { return type might be wrong }
  begin
    GTK_TYPE_SEARCH_ENTRY:=gtk_search_entry_get_type;
  end;

function GTK_SEARCH_ENTRY(obj : longint) : longint;
begin
  GTK_SEARCH_ENTRY:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_SEARCH_ENTRY,GtkSearchEntry);
end;

function GTK_IS_SEARCH_ENTRY(obj : longint) : longint;
begin
  GTK_IS_SEARCH_ENTRY:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_SEARCH_ENTRY);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkgesturelongpress.pp
// -------------------------------------------------

function GTK_TYPE_GESTURE_LONG_PRESS : longint; { return type might be wrong }
  begin
    GTK_TYPE_GESTURE_LONG_PRESS:=gtk_gesture_long_press_get_type;
  end;

function GTK_GESTURE_LONG_PRESS(o : longint) : longint;
begin
  GTK_GESTURE_LONG_PRESS:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_GESTURE_LONG_PRESS,GtkGestureLongPress);
end;

function GTK_GESTURE_LONG_PRESS_CLASS(k : longint) : longint;
begin
  GTK_GESTURE_LONG_PRESS_CLASS:=G_TYPE_CHECK_CLASS_CAST(k,GTK_TYPE_GESTURE_LONG_PRESS,GtkGestureLongPressClass);
end;

function GTK_IS_GESTURE_LONG_PRESS(o : longint) : longint;
begin
  GTK_IS_GESTURE_LONG_PRESS:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_GESTURE_LONG_PRESS);
end;

function GTK_IS_GESTURE_LONG_PRESS_CLASS(k : longint) : longint;
begin
  GTK_IS_GESTURE_LONG_PRESS_CLASS:=G_TYPE_CHECK_CLASS_TYPE(k,GTK_TYPE_GESTURE_LONG_PRESS);
end;

function GTK_GESTURE_LONG_PRESS_GET_CLASS(o : longint) : longint;
begin
  GTK_GESTURE_LONG_PRESS_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GTK_TYPE_GESTURE_LONG_PRESS,GtkGestureLongPressClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtktestatcontext.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkcelllayout.pp
// -------------------------------------------------

function GTK_TYPE_CELL_LAYOUT : longint; { return type might be wrong }
  begin
    GTK_TYPE_CELL_LAYOUT:=gtk_cell_layout_get_type;
  end;

function GTK_CELL_LAYOUT(obj : longint) : longint;
begin
  GTK_CELL_LAYOUT:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_CELL_LAYOUT,GtkCellLayout);
end;

function GTK_IS_CELL_LAYOUT(obj : longint) : longint;
begin
  GTK_IS_CELL_LAYOUT:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_CELL_LAYOUT);
end;

function GTK_CELL_LAYOUT_GET_IFACE(obj : longint) : longint;
begin
  GTK_CELL_LAYOUT_GET_IFACE:=G_TYPE_INSTANCE_GET_INTERFACE(obj,GTK_TYPE_CELL_LAYOUT,GtkCellLayoutIface);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkstack.pp
// -------------------------------------------------

function GTK_TYPE_STACK : longint; { return type might be wrong }
  begin
    GTK_TYPE_STACK:=gtk_stack_get_type;
  end;

function GTK_STACK(obj : longint) : longint;
begin
  GTK_STACK:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_STACK,GtkStack);
end;

function GTK_IS_STACK(obj : longint) : longint;
begin
  GTK_IS_STACK:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_STACK);
end;

function GTK_TYPE_STACK_PAGE : longint; { return type might be wrong }
  begin
    GTK_TYPE_STACK_PAGE:=gtk_stack_page_get_type;
  end;

function GTK_STACK_PAGE(obj : longint) : longint;
begin
  GTK_STACK_PAGE:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_STACK_PAGE,GtkStackPage);
end;

function GTK_IS_STACK_PAGE(obj : longint) : longint;
begin
  GTK_IS_STACK_PAGE:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_STACK_PAGE);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkshortcut.pp
// -------------------------------------------------

function GTK_TYPE_SHORTCUT : longint; { return type might be wrong }
  begin
    GTK_TYPE_SHORTCUT:=gtk_shortcut_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkactionable.pp
// -------------------------------------------------

function GTK_TYPE_ACTIONABLE : longint; { return type might be wrong }
  begin
    GTK_TYPE_ACTIONABLE:=gtk_actionable_get_type;
  end;

function GTK_ACTIONABLE(inst : longint) : longint;
begin
  GTK_ACTIONABLE:=G_TYPE_CHECK_INSTANCE_CAST(inst,GTK_TYPE_ACTIONABLE,GtkActionable);
end;

function GTK_IS_ACTIONABLE(inst : longint) : longint;
begin
  GTK_IS_ACTIONABLE:=G_TYPE_CHECK_INSTANCE_TYPE(inst,GTK_TYPE_ACTIONABLE);
end;

function GTK_ACTIONABLE_GET_IFACE(inst : longint) : longint;
begin
  GTK_ACTIONABLE_GET_IFACE:=G_TYPE_INSTANCE_GET_INTERFACE(inst,GTK_TYPE_ACTIONABLE,GtkActionableInterface);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkfixedlayout.pp
// -------------------------------------------------

function GTK_TYPE_FIXED_LAYOUT : longint; { return type might be wrong }
  begin
    GTK_TYPE_FIXED_LAYOUT:=gtk_fixed_layout_get_type;
  end;

function GTK_TYPE_FIXED_LAYOUT_CHILD : longint; { return type might be wrong }
  begin
    GTK_TYPE_FIXED_LAYOUT_CHILD:=gtk_fixed_layout_child_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtktreemodelfilter.pp
// -------------------------------------------------

function GTK_TYPE_TREE_MODEL_FILTER : longint; { return type might be wrong }
  begin
    GTK_TYPE_TREE_MODEL_FILTER:=gtk_tree_model_filter_get_type;
  end;

function GTK_TREE_MODEL_FILTER(obj : longint) : longint;
begin
  GTK_TREE_MODEL_FILTER:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_TREE_MODEL_FILTER,GtkTreeModelFilter);
end;

function GTK_TREE_MODEL_FILTER_CLASS(vtable : longint) : longint;
begin
  GTK_TREE_MODEL_FILTER_CLASS:=G_TYPE_CHECK_CLASS_CAST(vtable,GTK_TYPE_TREE_MODEL_FILTER,GtkTreeModelFilterClass);
end;

function GTK_IS_TREE_MODEL_FILTER(obj : longint) : longint;
begin
  GTK_IS_TREE_MODEL_FILTER:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_TREE_MODEL_FILTER);
end;

function GTK_IS_TREE_MODEL_FILTER_CLASS(vtable : longint) : longint;
begin
  GTK_IS_TREE_MODEL_FILTER_CLASS:=G_TYPE_CHECK_CLASS_TYPE(vtable,GTK_TYPE_TREE_MODEL_FILTER);
end;

function GTK_TREE_MODEL_FILTER_GET_CLASS(obj : longint) : longint;
begin
  GTK_TREE_MODEL_FILTER_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_TREE_MODEL_FILTER,GtkTreeModelFilterClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkmultifilter.pp
// -------------------------------------------------

function GTK_TYPE_MULTI_FILTER : longint; { return type might be wrong }
  begin
    GTK_TYPE_MULTI_FILTER:=gtk_multi_filter_get_type;
  end;

function GTK_TYPE_ANY_FILTER : longint; { return type might be wrong }
  begin
    GTK_TYPE_ANY_FILTER:=gtk_any_filter_get_type;
  end;

function GTK_TYPE_EVERY_FILTER : longint; { return type might be wrong }
  begin
    GTK_TYPE_EVERY_FILTER:=gtk_every_filter_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkgesturerotate.pp
// -------------------------------------------------

function GTK_TYPE_GESTURE_ROTATE : longint; { return type might be wrong }
  begin
    GTK_TYPE_GESTURE_ROTATE:=gtk_gesture_rotate_get_type;
  end;

function GTK_GESTURE_ROTATE(o : longint) : longint;
begin
  GTK_GESTURE_ROTATE:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_GESTURE_ROTATE,GtkGestureRotate);
end;

function GTK_GESTURE_ROTATE_CLASS(k : longint) : longint;
begin
  GTK_GESTURE_ROTATE_CLASS:=G_TYPE_CHECK_CLASS_CAST(k,GTK_TYPE_GESTURE_ROTATE,GtkGestureRotateClass);
end;

function GTK_IS_GESTURE_ROTATE(o : longint) : longint;
begin
  GTK_IS_GESTURE_ROTATE:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_GESTURE_ROTATE);
end;

function GTK_IS_GESTURE_ROTATE_CLASS(k : longint) : longint;
begin
  GTK_IS_GESTURE_ROTATE_CLASS:=G_TYPE_CHECK_CLASS_TYPE(k,GTK_TYPE_GESTURE_ROTATE);
end;

function GTK_GESTURE_ROTATE_GET_CLASS(o : longint) : longint;
begin
  GTK_GESTURE_ROTATE_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GTK_TYPE_GESTURE_ROTATE,GtkGestureRotateClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkpadcontroller.pp
// -------------------------------------------------

function GTK_TYPE_PAD_CONTROLLER : longint; { return type might be wrong }
  begin
    GTK_TYPE_PAD_CONTROLLER:=gtk_pad_controller_get_type;
  end;

function GTK_PAD_CONTROLLER(o : longint) : longint;
begin
  GTK_PAD_CONTROLLER:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_PAD_CONTROLLER,GtkPadController);
end;

function GTK_PAD_CONTROLLER_CLASS(k : longint) : longint;
begin
  GTK_PAD_CONTROLLER_CLASS:=G_TYPE_CHECK_CLASS_CAST(k,GTK_TYPE_PAD_CONTROLLER,GtkPadControllerClass);
end;

function GTK_IS_PAD_CONTROLLER(o : longint) : longint;
begin
  GTK_IS_PAD_CONTROLLER:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_PAD_CONTROLLER);
end;

function GTK_IS_PAD_CONTROLLER_CLASS(k : longint) : longint;
begin
  GTK_IS_PAD_CONTROLLER_CLASS:=G_TYPE_CHECK_CLASS_TYPE(k,GTK_TYPE_PAD_CONTROLLER);
end;

function GTK_PAD_CONTROLLER_GET_CLASS(o : longint) : longint;
begin
  GTK_PAD_CONTROLLER_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GTK_TYPE_PAD_CONTROLLER,GtkPadControllerClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtktestutils.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkpicture.pp
// -------------------------------------------------

function GTK_TYPE_PICTURE : longint; { return type might be wrong }
  begin
    GTK_TYPE_PICTURE:=gtk_picture_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtksettings.pp
// -------------------------------------------------

function GTK_TYPE_SETTINGS : longint; { return type might be wrong }
  begin
    GTK_TYPE_SETTINGS:=gtk_settings_get_type;
  end;

function GTK_SETTINGS(obj : longint) : longint;
begin
  GTK_SETTINGS:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_SETTINGS,GtkSettings);
end;

function GTK_IS_SETTINGS(obj : longint) : longint;
begin
  GTK_IS_SETTINGS:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_SETTINGS);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtktooltip.pp
// -------------------------------------------------

function GTK_TYPE_TOOLTIP : longint; { return type might be wrong }
  begin
    GTK_TYPE_TOOLTIP:=gtk_tooltip_get_type;
  end;

function GTK_TOOLTIP(obj : longint) : longint;
begin
  GTK_TOOLTIP:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_TOOLTIP,GtkTooltip);
end;

function GTK_IS_TOOLTIP(obj : longint) : longint;
begin
  GTK_IS_TOOLTIP:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_TOOLTIP);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkeditable.pp
// -------------------------------------------------

function GTK_TYPE_EDITABLE : longint; { return type might be wrong }
  begin
    GTK_TYPE_EDITABLE:=gtk_editable_get_type;
  end;

function GTK_EDITABLE(obj : longint) : longint;
begin
  GTK_EDITABLE:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_EDITABLE,GtkEditable);
end;

function GTK_IS_EDITABLE(obj : longint) : longint;
begin
  GTK_IS_EDITABLE:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_EDITABLE);
end;

function GTK_EDITABLE_GET_IFACE(inst : longint) : longint;
begin
  GTK_EDITABLE_GET_IFACE:=G_TYPE_INSTANCE_GET_INTERFACE(inst,GTK_TYPE_EDITABLE,GtkEditableInterface);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkbuilder.pp
// -------------------------------------------------

function GTK_TYPE_BUILDER : longint; { return type might be wrong }
  begin
    GTK_TYPE_BUILDER:=gtk_builder_get_type;
  end;

function GTK_BUILDER(obj : longint) : longint;
begin
  GTK_BUILDER:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_BUILDER,GtkBuilder);
end;

function GTK_BUILDER_CLASS(klass : longint) : longint;
begin
  GTK_BUILDER_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_BUILDER,GtkBuilderClass);
end;

function GTK_IS_BUILDER(obj : longint) : longint;
begin
  GTK_IS_BUILDER:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_BUILDER);
end;

function GTK_IS_BUILDER_CLASS(klass : longint) : longint;
begin
  GTK_IS_BUILDER_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_BUILDER);
end;

function GTK_BUILDER_GET_CLASS(obj : longint) : longint;
begin
  GTK_BUILDER_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_BUILDER,GtkBuilderClass);
end;

function GTK_BUILDER_ERROR : longint; { return type might be wrong }
  begin
    GTK_BUILDER_ERROR:=gtk_builder_error_quark;
  end;

function GTK_BUILDER_WARN_INVALID_CHILD_TYPE(object,_type : longint) : longint;
begin
  GTK_BUILDER_WARN_INVALID_CHILD_TYPE:=g_warning(''%s' is not a valid child type of '%s'',_type,g_type_name(G_OBJECT_TYPE(object)));
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkprintsettings.pp
// -------------------------------------------------

function GTK_TYPE_PRINT_SETTINGS : longint; { return type might be wrong }
  begin
    GTK_TYPE_PRINT_SETTINGS:=gtk_print_settings_get_type;
  end;

function GTK_PRINT_SETTINGS(obj : longint) : longint;
begin
  GTK_PRINT_SETTINGS:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_PRINT_SETTINGS,GtkPrintSettings);
end;

function GTK_IS_PRINT_SETTINGS(obj : longint) : longint;
begin
  GTK_IS_PRINT_SETTINGS:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_PRINT_SETTINGS);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkcenterlayout.pp
// -------------------------------------------------

function GTK_TYPE_CENTER_LAYOUT : longint; { return type might be wrong }
  begin
    GTK_TYPE_CENTER_LAYOUT:=gtk_center_layout_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkappchooserwidget.pp
// -------------------------------------------------

function GTK_TYPE_APP_CHOOSER_WIDGET : longint; { return type might be wrong }
  begin
    GTK_TYPE_APP_CHOOSER_WIDGET:=gtk_app_chooser_widget_get_type;
  end;

function GTK_APP_CHOOSER_WIDGET(obj : longint) : longint;
begin
  GTK_APP_CHOOSER_WIDGET:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_APP_CHOOSER_WIDGET,GtkAppChooserWidget);
end;

function GTK_IS_APP_CHOOSER_WIDGET(obj : longint) : longint;
begin
  GTK_IS_APP_CHOOSER_WIDGET:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_APP_CHOOSER_WIDGET);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkwindowcontrols.pp
// -------------------------------------------------

function GTK_TYPE_WINDOW_CONTROLS : longint; { return type might be wrong }
  begin
    GTK_TYPE_WINDOW_CONTROLS:=gtk_window_controls_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtktogglebutton.pp
// -------------------------------------------------

function GTK_TYPE_TOGGLE_BUTTON : longint; { return type might be wrong }
  begin
    GTK_TYPE_TOGGLE_BUTTON:=gtk_toggle_button_get_type;
  end;

function GTK_TOGGLE_BUTTON(obj : longint) : longint;
begin
  GTK_TOGGLE_BUTTON:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_TOGGLE_BUTTON,GtkToggleButton);
end;

function GTK_TOGGLE_BUTTON_CLASS(klass : longint) : longint;
begin
  GTK_TOGGLE_BUTTON_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_TOGGLE_BUTTON,GtkToggleButtonClass);
end;

function GTK_IS_TOGGLE_BUTTON(obj : longint) : longint;
begin
  GTK_IS_TOGGLE_BUTTON:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_TOGGLE_BUTTON);
end;

function GTK_IS_TOGGLE_BUTTON_CLASS(klass : longint) : longint;
begin
  GTK_IS_TOGGLE_BUTTON_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_TOGGLE_BUTTON);
end;

function GTK_TOGGLE_BUTTON_GET_CLASS(obj : longint) : longint;
begin
  GTK_TOGGLE_BUTTON_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_TOGGLE_BUTTON,GtkToggleButtonClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkstringlist.pp
// -------------------------------------------------

function GTK_TYPE_STRING_OBJECT : longint; { return type might be wrong }
  begin
    GTK_TYPE_STRING_OBJECT:=gtk_string_object_get_type;
  end;

function GTK_TYPE_STRING_LIST : longint; { return type might be wrong }
  begin
    GTK_TYPE_STRING_LIST:=gtk_string_list_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkboxlayout.pp
// -------------------------------------------------

function GTK_TYPE_BOX_LAYOUT : longint; { return type might be wrong }
  begin
    GTK_TYPE_BOX_LAYOUT:=gtk_box_layout_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkmessagedialog.pp
// -------------------------------------------------

function GTK_TYPE_MESSAGE_DIALOG : longint; { return type might be wrong }
  begin
    GTK_TYPE_MESSAGE_DIALOG:=gtk_message_dialog_get_type;
  end;

function GTK_MESSAGE_DIALOG(obj : longint) : longint;
begin
  GTK_MESSAGE_DIALOG:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_MESSAGE_DIALOG,GtkMessageDialog);
end;

function GTK_IS_MESSAGE_DIALOG(obj : longint) : longint;
begin
  GTK_IS_MESSAGE_DIALOG:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_MESSAGE_DIALOG);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkfilefilter.pp
// -------------------------------------------------

function GTK_TYPE_FILE_FILTER : longint; { return type might be wrong }
  begin
    GTK_TYPE_FILE_FILTER:=gtk_file_filter_get_type;
  end;

function GTK_FILE_FILTER(obj : longint) : longint;
begin
  GTK_FILE_FILTER:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_FILE_FILTER,GtkFileFilter);
end;

function GTK_IS_FILE_FILTER(obj : longint) : longint;
begin
  GTK_IS_FILE_FILTER:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_FILE_FILTER);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkappchooser.pp
// -------------------------------------------------

function GTK_TYPE_APP_CHOOSER : longint; { return type might be wrong }
  begin
    GTK_TYPE_APP_CHOOSER:=gtk_app_chooser_get_type;
  end;

function GTK_APP_CHOOSER(obj : longint) : longint;
begin
  GTK_APP_CHOOSER:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_APP_CHOOSER,GtkAppChooser);
end;

function GTK_IS_APP_CHOOSER(obj : longint) : longint;
begin
  GTK_IS_APP_CHOOSER:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_APP_CHOOSER);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtksizerequest.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkcalendar.pp
// -------------------------------------------------

function GTK_TYPE_CALENDAR : longint; { return type might be wrong }
  begin
    GTK_TYPE_CALENDAR:=gtk_calendar_get_type;
  end;

function GTK_CALENDAR(obj : longint) : longint;
begin
  GTK_CALENDAR:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_CALENDAR,GtkCalendar);
end;

function GTK_IS_CALENDAR(obj : longint) : longint;
begin
  GTK_IS_CALENDAR:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_CALENDAR);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkprintoperationpreview.pp
// -------------------------------------------------

function GTK_TYPE_PRINT_OPERATION_PREVIEW : longint; { return type might be wrong }
  begin
    GTK_TYPE_PRINT_OPERATION_PREVIEW:=gtk_print_operation_preview_get_type;
  end;

function GTK_PRINT_OPERATION_PREVIEW(obj : longint) : longint;
begin
  GTK_PRINT_OPERATION_PREVIEW:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_PRINT_OPERATION_PREVIEW,GtkPrintOperationPreview);
end;

function GTK_IS_PRINT_OPERATION_PREVIEW(obj : longint) : longint;
begin
  GTK_IS_PRINT_OPERATION_PREVIEW:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_PRINT_OPERATION_PREVIEW);
end;

function GTK_PRINT_OPERATION_PREVIEW_GET_IFACE(obj : longint) : longint;
begin
  GTK_PRINT_OPERATION_PREVIEW_GET_IFACE:=G_TYPE_INSTANCE_GET_INTERFACE(obj,GTK_TYPE_PRINT_OPERATION_PREVIEW,GtkPrintOperationPreviewIface);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkwindowgroup.pp
// -------------------------------------------------

function GTK_TYPE_WINDOW_GROUP : longint; { return type might be wrong }
  begin
    GTK_TYPE_WINDOW_GROUP:=gtk_window_group_get_type;
  end;

function GTK_WINDOW_GROUP(object : longint) : longint;
begin
  GTK_WINDOW_GROUP:=G_TYPE_CHECK_INSTANCE_CAST(object,GTK_TYPE_WINDOW_GROUP,GtkWindowGroup);
end;

function GTK_WINDOW_GROUP_CLASS(klass : longint) : longint;
begin
  GTK_WINDOW_GROUP_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_WINDOW_GROUP,GtkWindowGroupClass);
end;

function GTK_IS_WINDOW_GROUP(object : longint) : longint;
begin
  GTK_IS_WINDOW_GROUP:=G_TYPE_CHECK_INSTANCE_TYPE(object,GTK_TYPE_WINDOW_GROUP);
end;

function GTK_IS_WINDOW_GROUP_CLASS(klass : longint) : longint;
begin
  GTK_IS_WINDOW_GROUP_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_WINDOW_GROUP);
end;

function GTK_WINDOW_GROUP_GET_CLASS(obj : longint) : longint;
begin
  GTK_WINDOW_GROUP_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_WINDOW_GROUP,GtkWindowGroupClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtksorter.pp
// -------------------------------------------------

function GTK_TYPE_SORTER : longint; { return type might be wrong }
  begin
    GTK_TYPE_SORTER:=gtk_sorter_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkcolumnview.pp
// -------------------------------------------------

function GTK_TYPE_COLUMN_VIEW : longint; { return type might be wrong }
  begin
    GTK_TYPE_COLUMN_VIEW:=gtk_column_view_get_type;
  end;

function GTK_COLUMN_VIEW(o : longint) : longint;
begin
  GTK_COLUMN_VIEW:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_COLUMN_VIEW,GtkColumnView);
end;

function GTK_COLUMN_VIEW_CLASS(k : longint) : longint;
begin
  GTK_COLUMN_VIEW_CLASS:=G_TYPE_CHECK_CLASS_CAST(k,GTK_TYPE_COLUMN_VIEW,GtkColumnViewClass);
end;

function GTK_IS_COLUMN_VIEW(o : longint) : longint;
begin
  GTK_IS_COLUMN_VIEW:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_COLUMN_VIEW);
end;

function GTK_IS_COLUMN_VIEW_CLASS(k : longint) : longint;
begin
  GTK_IS_COLUMN_VIEW_CLASS:=G_TYPE_CHECK_CLASS_TYPE(k,GTK_TYPE_COLUMN_VIEW);
end;

function GTK_COLUMN_VIEW_GET_CLASS(o : longint) : longint;
begin
  GTK_COLUMN_VIEW_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GTK_TYPE_COLUMN_VIEW,GtkColumnViewClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtklayoutchild.pp
// -------------------------------------------------

function GTK_TYPE_LAYOUT_CHILD : longint; { return type might be wrong }
  begin
    GTK_TYPE_LAYOUT_CHILD:=gtk_layout_child_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkcenterbox.pp
// -------------------------------------------------

function GTK_TYPE_CENTER_BOX : longint; { return type might be wrong }
  begin
    GTK_TYPE_CENTER_BOX:=gtk_center_box_get_type;
  end;

function GTK_CENTER_BOX(obj : longint) : longint;
begin
  GTK_CENTER_BOX:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_CENTER_BOX,GtkCenterBox);
end;

function GTK_CENTER_BOX_CLASS(klass : longint) : longint;
begin
  GTK_CENTER_BOX_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_CENTER_BOX,GtkCenterBoxClass);
end;

function GTK_IS_CENTER_BOX(obj : longint) : longint;
begin
  GTK_IS_CENTER_BOX:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_CENTER_BOX);
end;

function GTK_IS_CENTER_BOX_CLASS(klass : longint) : longint;
begin
  GTK_IS_CENTER_BOX_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_CENTER_BOX);
end;

function GTK_CENTER_BOX_GET_CLASS(obj : longint) : longint;
begin
  GTK_CENTER_BOX_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_CENTER_BOX,GtkCenterBoxClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtksignallistitemfactory.pp
// -------------------------------------------------

function GTK_TYPE_SIGNAL_LIST_ITEM_FACTORY : longint; { return type might be wrong }
  begin
    GTK_TYPE_SIGNAL_LIST_ITEM_FACTORY:=gtk_signal_list_item_factory_get_type;
  end;

function GTK_SIGNAL_LIST_ITEM_FACTORY(o : longint) : longint;
begin
  GTK_SIGNAL_LIST_ITEM_FACTORY:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_SIGNAL_LIST_ITEM_FACTORY,GtkSignalListItemFactory);
end;

function GTK_SIGNAL_LIST_ITEM_FACTORY_CLASS(k : longint) : longint;
begin
  GTK_SIGNAL_LIST_ITEM_FACTORY_CLASS:=G_TYPE_CHECK_CLASS_CAST(k,GTK_TYPE_SIGNAL_LIST_ITEM_FACTORY,GtkSignalListItemFactoryClass);
end;

function GTK_IS_SIGNAL_LIST_ITEM_FACTORY(o : longint) : longint;
begin
  GTK_IS_SIGNAL_LIST_ITEM_FACTORY:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_SIGNAL_LIST_ITEM_FACTORY);
end;

function GTK_IS_SIGNAL_LIST_ITEM_FACTORY_CLASS(k : longint) : longint;
begin
  GTK_IS_SIGNAL_LIST_ITEM_FACTORY_CLASS:=G_TYPE_CHECK_CLASS_TYPE(k,GTK_TYPE_SIGNAL_LIST_ITEM_FACTORY);
end;

function GTK_SIGNAL_LIST_ITEM_FACTORY_GET_CLASS(o : longint) : longint;
begin
  GTK_SIGNAL_LIST_ITEM_FACTORY_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GTK_TYPE_SIGNAL_LIST_ITEM_FACTORY,GtkSignalListItemFactoryClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkadjustment.pp
// -------------------------------------------------

function GTK_TYPE_ADJUSTMENT : longint; { return type might be wrong }
  begin
    GTK_TYPE_ADJUSTMENT:=gtk_adjustment_get_type;
  end;

function GTK_ADJUSTMENT(obj : longint) : longint;
begin
  GTK_ADJUSTMENT:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_ADJUSTMENT,GtkAdjustment);
end;

function GTK_ADJUSTMENT_CLASS(klass : longint) : longint;
begin
  GTK_ADJUSTMENT_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_ADJUSTMENT,GtkAdjustmentClass);
end;

function GTK_IS_ADJUSTMENT(obj : longint) : longint;
begin
  GTK_IS_ADJUSTMENT:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_ADJUSTMENT);
end;

function GTK_IS_ADJUSTMENT_CLASS(klass : longint) : longint;
begin
  GTK_IS_ADJUSTMENT_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_ADJUSTMENT);
end;

function GTK_ADJUSTMENT_GET_CLASS(obj : longint) : longint;
begin
  GTK_ADJUSTMENT_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_ADJUSTMENT,GtkAdjustmentClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkstatusbar.pp
// -------------------------------------------------

function GTK_TYPE_STATUSBAR : longint; { return type might be wrong }
  begin
    GTK_TYPE_STATUSBAR:=gtk_statusbar_get_type;
  end;

function GTK_STATUSBAR(obj : longint) : longint;
begin
  GTK_STATUSBAR:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_STATUSBAR,GtkStatusbar);
end;

function GTK_IS_STATUSBAR(obj : longint) : longint;
begin
  GTK_IS_STATUSBAR:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_STATUSBAR);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkshortcutmanager.pp
// -------------------------------------------------

function GTK_TYPE_SHORTCUT_MANAGER : longint; { return type might be wrong }
  begin
    GTK_TYPE_SHORTCUT_MANAGER:=gtk_shortcut_manager_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkshortcutsshortcut.pp
// -------------------------------------------------

function GTK_TYPE_SHORTCUTS_SHORTCUT : longint; { return type might be wrong }
  begin
    GTK_TYPE_SHORTCUTS_SHORTCUT:=gtk_shortcuts_shortcut_get_type;
  end;

function GTK_SHORTCUTS_SHORTCUT(obj : longint) : longint;
begin
  GTK_SHORTCUTS_SHORTCUT:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_SHORTCUTS_SHORTCUT,GtkShortcutsShortcut);
end;

function GTK_IS_SHORTCUTS_SHORTCUT(obj : longint) : longint;
begin
  GTK_IS_SHORTCUTS_SHORTCUT:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_SHORTCUTS_SHORTCUT);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkcellrendererspinner.pp
// -------------------------------------------------

function GTK_TYPE_CELL_RENDERER_SPINNER : longint; { return type might be wrong }
  begin
    GTK_TYPE_CELL_RENDERER_SPINNER:=gtk_cell_renderer_spinner_get_type;
  end;

function GTK_CELL_RENDERER_SPINNER(obj : longint) : longint;
begin
  GTK_CELL_RENDERER_SPINNER:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_CELL_RENDERER_SPINNER,GtkCellRendererSpinner);
end;

function GTK_IS_CELL_RENDERER_SPINNER(obj : longint) : longint;
begin
  GTK_IS_CELL_RENDERER_SPINNER:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_CELL_RENDERER_SPINNER);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkfontchooser.pp
// -------------------------------------------------

function GTK_TYPE_FONT_CHOOSER : longint; { return type might be wrong }
  begin
    GTK_TYPE_FONT_CHOOSER:=gtk_font_chooser_get_type;
  end;

function GTK_FONT_CHOOSER(obj : longint) : longint;
begin
  GTK_FONT_CHOOSER:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_FONT_CHOOSER,GtkFontChooser);
end;

function GTK_IS_FONT_CHOOSER(obj : longint) : longint;
begin
  GTK_IS_FONT_CHOOSER:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_FONT_CHOOSER);
end;

function GTK_FONT_CHOOSER_GET_IFACE(inst : longint) : longint;
begin
  GTK_FONT_CHOOSER_GET_IFACE:=G_TYPE_INSTANCE_GET_INTERFACE(inst,GTK_TYPE_FONT_CHOOSER,GtkFontChooserIface);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkbox.pp
// -------------------------------------------------

function GTK_TYPE_BOX : longint; { return type might be wrong }
  begin
    GTK_TYPE_BOX:=gtk_box_get_type;
  end;

function GTK_BOX(obj : longint) : longint;
begin
  GTK_BOX:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_BOX,GtkBox);
end;

function GTK_BOX_CLASS(klass : longint) : longint;
begin
  GTK_BOX_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_BOX,GtkBoxClass);
end;

function GTK_IS_BOX(obj : longint) : longint;
begin
  GTK_IS_BOX:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_BOX);
end;

function GTK_IS_BOX_CLASS(klass : longint) : longint;
begin
  GTK_IS_BOX_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_BOX);
end;

function GTK_BOX_GET_CLASS(obj : longint) : longint;
begin
  GTK_BOX_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_BOX,GtkBoxClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkaspectframe.pp
// -------------------------------------------------

function GTK_TYPE_ASPECT_FRAME : longint; { return type might be wrong }
  begin
    GTK_TYPE_ASPECT_FRAME:=gtk_aspect_frame_get_type;
  end;

function GTK_ASPECT_FRAME(obj : longint) : longint;
begin
  GTK_ASPECT_FRAME:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_ASPECT_FRAME,GtkAspectFrame);
end;

function GTK_IS_ASPECT_FRAME(obj : longint) : longint;
begin
  GTK_IS_ASPECT_FRAME:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_ASPECT_FRAME);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkiconview.pp
// -------------------------------------------------

function GTK_TYPE_ICON_VIEW : longint; { return type might be wrong }
  begin
    GTK_TYPE_ICON_VIEW:=gtk_icon_view_get_type;
  end;

function GTK_ICON_VIEW(obj : longint) : longint;
begin
  GTK_ICON_VIEW:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_ICON_VIEW,GtkIconView);
end;

function GTK_IS_ICON_VIEW(obj : longint) : longint;
begin
  GTK_IS_ICON_VIEW:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_ICON_VIEW);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkfilechooser.pp
// -------------------------------------------------

function GTK_TYPE_FILE_CHOOSER : longint; { return type might be wrong }
  begin
    GTK_TYPE_FILE_CHOOSER:=gtk_file_chooser_get_type;
  end;

function GTK_FILE_CHOOSER(obj : longint) : longint;
begin
  GTK_FILE_CHOOSER:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_FILE_CHOOSER,GtkFileChooser);
end;

function GTK_IS_FILE_CHOOSER(obj : longint) : longint;
begin
  GTK_IS_FILE_CHOOSER:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_FILE_CHOOSER);
end;

function GTK_FILE_CHOOSER_ERROR : longint; { return type might be wrong }
  begin
    GTK_FILE_CHOOSER_ERROR:=gtk_file_chooser_error_quark;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkwidgetpaintable.pp
// -------------------------------------------------

function GTK_TYPE_WIDGET_PAINTABLE : longint; { return type might be wrong }
  begin
    GTK_TYPE_WIDGET_PAINTABLE:=gtk_widget_paintable_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkseparator.pp
// -------------------------------------------------

function GTK_TYPE_SEPARATOR : longint; { return type might be wrong }
  begin
    GTK_TYPE_SEPARATOR:=gtk_separator_get_type;
  end;

function GTK_SEPARATOR(obj : longint) : longint;
begin
  GTK_SEPARATOR:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_SEPARATOR,GtkSeparator);
end;

function GTK_IS_SEPARATOR(obj : longint) : longint;
begin
  GTK_IS_SEPARATOR:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_SEPARATOR);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtknoselection.pp
// -------------------------------------------------

function GTK_TYPE_NO_SELECTION : longint; { return type might be wrong }
  begin
    GTK_TYPE_NO_SELECTION:=gtk_no_selection_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtktreestore.pp
// -------------------------------------------------

function GTK_TYPE_TREE_STORE : longint; { return type might be wrong }
  begin
    GTK_TYPE_TREE_STORE:=gtk_tree_store_get_type;
  end;

function GTK_TREE_STORE(obj : longint) : longint;
begin
  GTK_TREE_STORE:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_TREE_STORE,GtkTreeStore);
end;

function GTK_TREE_STORE_CLASS(klass : longint) : longint;
begin
  GTK_TREE_STORE_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_TREE_STORE,GtkTreeStoreClass);
end;

function GTK_IS_TREE_STORE(obj : longint) : longint;
begin
  GTK_IS_TREE_STORE:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_TREE_STORE);
end;

function GTK_IS_TREE_STORE_CLASS(klass : longint) : longint;
begin
  GTK_IS_TREE_STORE_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_TREE_STORE);
end;

function GTK_TREE_STORE_GET_CLASS(obj : longint) : longint;
begin
  GTK_TREE_STORE_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_TREE_STORE,GtkTreeStoreClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkdroptargetasync.pp
// -------------------------------------------------

function GTK_TYPE_DROP_TARGET_ASYNC : longint; { return type might be wrong }
  begin
    GTK_TYPE_DROP_TARGET_ASYNC:=gtk_drop_target_async_get_type;
  end;

function GTK_DROP_TARGET_ASYNC(o : longint) : longint;
begin
  GTK_DROP_TARGET_ASYNC:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_DROP_TARGET_ASYNC,GtkDropTargetAsync);
end;

function GTK_DROP_TARGET_ASYNC_CLASS(k : longint) : longint;
begin
  GTK_DROP_TARGET_ASYNC_CLASS:=G_TYPE_CHECK_CLASS_CAST(k,GTK_TYPE_DROP_TARGET_ASYNC,GtkDropTargetAsyncClass);
end;

function GTK_IS_DROP_TARGET_ASYNC(o : longint) : longint;
begin
  GTK_IS_DROP_TARGET_ASYNC:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_DROP_TARGET_ASYNC);
end;

function GTK_IS_DROP_TARGET_ASYNC_CLASS(k : longint) : longint;
begin
  GTK_IS_DROP_TARGET_ASYNC_CLASS:=G_TYPE_CHECK_CLASS_TYPE(k,GTK_TYPE_DROP_TARGET_ASYNC);
end;

function GTK_DROP_TARGET_ASYNC_GET_CLASS(o : longint) : longint;
begin
  GTK_DROP_TARGET_ASYNC_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GTK_TYPE_DROP_TARGET_ASYNC,GtkDropTargetAsyncClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkglarea.pp
// -------------------------------------------------

function GTK_TYPE_GL_AREA : longint; { return type might be wrong }
  begin
    GTK_TYPE_GL_AREA:=gtk_gl_area_get_type;
  end;

function GTK_GL_AREA(obj : longint) : longint;
begin
  GTK_GL_AREA:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_GL_AREA,GtkGLArea);
end;

function GTK_IS_GL_AREA(obj : longint) : longint;
begin
  GTK_IS_GL_AREA:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_GL_AREA);
end;

function GTK_GL_AREA_CLASS(klass : longint) : longint;
begin
  GTK_GL_AREA_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_GL_AREA,GtkGLAreaClass);
end;

function GTK_IS_GL_AREA_CLASS(klass : longint) : longint;
begin
  GTK_IS_GL_AREA_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_GL_AREA);
end;

function GTK_GL_AREA_GET_CLASS(obj : longint) : longint;
begin
  GTK_GL_AREA_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_GL_AREA,GtkGLAreaClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtklockbutton.pp
// -------------------------------------------------

function GTK_TYPE_LOCK_BUTTON : longint; { return type might be wrong }
  begin
    GTK_TYPE_LOCK_BUTTON:=gtk_lock_button_get_type;
  end;

function GTK_LOCK_BUTTON(o : longint) : longint;
begin
  GTK_LOCK_BUTTON:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_LOCK_BUTTON,GtkLockButton);
end;

function GTK_IS_LOCK_BUTTON(o : longint) : longint;
begin
  GTK_IS_LOCK_BUTTON:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_LOCK_BUTTON);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkdragsource.pp
// -------------------------------------------------

function GTK_TYPE_DRAG_SOURCE : longint; { return type might be wrong }
  begin
    GTK_TYPE_DRAG_SOURCE:=gtk_drag_source_get_type;
  end;

function GTK_DRAG_SOURCE(o : longint) : longint;
begin
  GTK_DRAG_SOURCE:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_DRAG_SOURCE,GtkDragSource);
end;

function GTK_DRAG_SOURCE_CLASS(k : longint) : longint;
begin
  GTK_DRAG_SOURCE_CLASS:=G_TYPE_CHECK_CLASS_CAST(k,GTK_TYPE_DRAG_SOURCE,GtkDragSourceClass);
end;

function GTK_IS_DRAG_SOURCE(o : longint) : longint;
begin
  GTK_IS_DRAG_SOURCE:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_DRAG_SOURCE);
end;

function GTK_IS_DRAG_SOURCE_CLASS(k : longint) : longint;
begin
  GTK_IS_DRAG_SOURCE_CLASS:=G_TYPE_CHECK_CLASS_TYPE(k,GTK_TYPE_DRAG_SOURCE);
end;

function GTK_DRAG_SOURCE_GET_CLASS(o : longint) : longint;
begin
  GTK_DRAG_SOURCE_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GTK_TYPE_DRAG_SOURCE,GtkDragSourceClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkimage.pp
// -------------------------------------------------

function GTK_TYPE_IMAGE : longint; { return type might be wrong }
  begin
    GTK_TYPE_IMAGE:=gtk_image_get_type;
  end;

function GTK_IMAGE(obj : longint) : longint;
begin
  GTK_IMAGE:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_IMAGE,GtkImage);
end;

function GTK_IS_IMAGE(obj : longint) : longint;
begin
  GTK_IS_IMAGE:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_IMAGE);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkshortcutcontroller.pp
// -------------------------------------------------

function GTK_TYPE_SHORTCUT_CONTROLLER : longint; { return type might be wrong }
  begin
    GTK_TYPE_SHORTCUT_CONTROLLER:=gtk_shortcut_controller_get_type;
  end;

function GTK_SHORTCUT_CONTROLLER(o : longint) : longint;
begin
  GTK_SHORTCUT_CONTROLLER:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_SHORTCUT_CONTROLLER,GtkShortcutController);
end;

function GTK_SHORTCUT_CONTROLLER_CLASS(k : longint) : longint;
begin
  GTK_SHORTCUT_CONTROLLER_CLASS:=G_TYPE_CHECK_CLASS_CAST(k,GTK_TYPE_SHORTCUT_CONTROLLER,GtkShortcutControllerClass);
end;

function GTK_IS_SHORTCUT_CONTROLLER(o : longint) : longint;
begin
  GTK_IS_SHORTCUT_CONTROLLER:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_SHORTCUT_CONTROLLER);
end;

function GTK_IS_SHORTCUT_CONTROLLER_CLASS(k : longint) : longint;
begin
  GTK_IS_SHORTCUT_CONTROLLER_CLASS:=G_TYPE_CHECK_CLASS_TYPE(k,GTK_TYPE_SHORTCUT_CONTROLLER);
end;

function GTK_SHORTCUT_CONTROLLER_GET_CLASS(o : longint) : longint;
begin
  GTK_SHORTCUT_CONTROLLER_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GTK_TYPE_SHORTCUT_CONTROLLER,GtkShortcutControllerClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtklistview.pp
// -------------------------------------------------

function GTK_TYPE_LIST_VIEW : longint; { return type might be wrong }
  begin
    GTK_TYPE_LIST_VIEW:=gtk_list_view_get_type;
  end;

function GTK_LIST_VIEW(o : longint) : longint;
begin
  GTK_LIST_VIEW:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_LIST_VIEW,GtkListView);
end;

function GTK_LIST_VIEW_CLASS(k : longint) : longint;
begin
  GTK_LIST_VIEW_CLASS:=G_TYPE_CHECK_CLASS_CAST(k,GTK_TYPE_LIST_VIEW,GtkListViewClass);
end;

function GTK_IS_LIST_VIEW(o : longint) : longint;
begin
  GTK_IS_LIST_VIEW:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_LIST_VIEW);
end;

function GTK_IS_LIST_VIEW_CLASS(k : longint) : longint;
begin
  GTK_IS_LIST_VIEW_CLASS:=G_TYPE_CHECK_CLASS_TYPE(k,GTK_TYPE_LIST_VIEW);
end;

function GTK_LIST_VIEW_GET_CLASS(o : longint) : longint;
begin
  GTK_LIST_VIEW_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GTK_TYPE_LIST_VIEW,GtkListViewClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkentrycompletion.pp
// -------------------------------------------------

function GTK_TYPE_ENTRY_COMPLETION : longint; { return type might be wrong }
  begin
    GTK_TYPE_ENTRY_COMPLETION:=gtk_entry_completion_get_type;
  end;

function GTK_ENTRY_COMPLETION(obj : longint) : longint;
begin
  GTK_ENTRY_COMPLETION:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_ENTRY_COMPLETION,GtkEntryCompletion);
end;

function GTK_IS_ENTRY_COMPLETION(obj : longint) : longint;
begin
  GTK_IS_ENTRY_COMPLETION:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_ENTRY_COMPLETION);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtktextview.pp
// -------------------------------------------------

function GTK_TYPE_TEXT_VIEW : longint; { return type might be wrong }
  begin
    GTK_TYPE_TEXT_VIEW:=gtk_text_view_get_type;
  end;

function GTK_TEXT_VIEW(obj : longint) : longint;
begin
  GTK_TEXT_VIEW:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_TEXT_VIEW,GtkTextView);
end;

function GTK_TEXT_VIEW_CLASS(klass : longint) : longint;
begin
  GTK_TEXT_VIEW_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_TEXT_VIEW,GtkTextViewClass);
end;

function GTK_IS_TEXT_VIEW(obj : longint) : longint;
begin
  GTK_IS_TEXT_VIEW:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_TEXT_VIEW);
end;

function GTK_IS_TEXT_VIEW_CLASS(klass : longint) : longint;
begin
  GTK_IS_TEXT_VIEW_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_TEXT_VIEW);
end;

function GTK_TEXT_VIEW_GET_CLASS(obj : longint) : longint;
begin
  GTK_TEXT_VIEW_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_TEXT_VIEW,GtkTextViewClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkmultisorter.pp
// -------------------------------------------------

function GTK_TYPE_MULTI_SORTER : longint; { return type might be wrong }
  begin
    GTK_TYPE_MULTI_SORTER:=gtk_multi_sorter_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtktexttagtable.pp
// -------------------------------------------------

function GTK_TYPE_TEXT_TAG_TABLE : longint; { return type might be wrong }
  begin
    GTK_TYPE_TEXT_TAG_TABLE:=gtk_text_tag_table_get_type;
  end;

function GTK_TEXT_TAG_TABLE(obj : longint) : longint;
begin
  GTK_TEXT_TAG_TABLE:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_TEXT_TAG_TABLE,GtkTextTagTable);
end;

function GTK_IS_TEXT_TAG_TABLE(obj : longint) : longint;
begin
  GTK_IS_TEXT_TAG_TABLE:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_TEXT_TAG_TABLE);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtktreelistmodel.pp
// -------------------------------------------------

function GTK_TYPE_TREE_LIST_MODEL : longint; { return type might be wrong }
  begin
    GTK_TYPE_TREE_LIST_MODEL:=gtk_tree_list_model_get_type;
  end;

function GTK_TYPE_TREE_LIST_ROW : longint; { return type might be wrong }
  begin
    GTK_TYPE_TREE_LIST_ROW:=gtk_tree_list_row_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkmenubutton.pp
// -------------------------------------------------

function GTK_TYPE_MENU_BUTTON : longint; { return type might be wrong }
  begin
    GTK_TYPE_MENU_BUTTON:=gtk_menu_button_get_type;
  end;

function GTK_MENU_BUTTON(obj : longint) : longint;
begin
  GTK_MENU_BUTTON:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_MENU_BUTTON,GtkMenuButton);
end;

function GTK_IS_MENU_BUTTON(obj : longint) : longint;
begin
  GTK_IS_MENU_BUTTON:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_MENU_BUTTON);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkcssprovider.pp
// -------------------------------------------------

function GTK_TYPE_CSS_PROVIDER : longint; { return type might be wrong }
  begin
    GTK_TYPE_CSS_PROVIDER:=gtk_css_provider_get_type;
  end;

function GTK_CSS_PROVIDER(o : longint) : longint;
begin
  GTK_CSS_PROVIDER:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_CSS_PROVIDER,GtkCssProvider);
end;

function GTK_IS_CSS_PROVIDER(o : longint) : longint;
begin
  GTK_IS_CSS_PROVIDER:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_CSS_PROVIDER);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkaccessible.pp
// -------------------------------------------------

function GTK_TYPE_ACCESSIBLE : longint; { return type might be wrong }
  begin
    GTK_TYPE_ACCESSIBLE:=gtk_accessible_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkscrollable.pp
// -------------------------------------------------

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


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkcustomlayout.pp
// -------------------------------------------------

function GTK_TYPE_CUSTOM_LAYOUT : longint; { return type might be wrong }
  begin
    GTK_TYPE_CUSTOM_LAYOUT:=gtk_custom_layout_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkshow.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkshortcuttrigger.pp
// -------------------------------------------------

function GTK_TYPE_SHORTCUT_TRIGGER : longint; { return type might be wrong }
  begin
    GTK_TYPE_SHORTCUT_TRIGGER:=gtk_shortcut_trigger_get_type;
  end;

function GTK_TYPE_NEVER_TRIGGER : longint; { return type might be wrong }
  begin
    GTK_TYPE_NEVER_TRIGGER:=gtk_never_trigger_get_type;
  end;

function GTK_TYPE_KEYVAL_TRIGGER : longint; { return type might be wrong }
  begin
    GTK_TYPE_KEYVAL_TRIGGER:=gtk_keyval_trigger_get_type;
  end;

function GTK_TYPE_MNEMONIC_TRIGGER : longint; { return type might be wrong }
  begin
    GTK_TYPE_MNEMONIC_TRIGGER:=gtk_mnemonic_trigger_get_type;
  end;

function GTK_TYPE_ALTERNATIVE_TRIGGER : longint; { return type might be wrong }
  begin
    GTK_TYPE_ALTERNATIVE_TRIGGER:=gtk_alternative_trigger_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkmountoperation.pp
// -------------------------------------------------

function GTK_TYPE_MOUNT_OPERATION : longint; { return type might be wrong }
  begin
    GTK_TYPE_MOUNT_OPERATION:=gtk_mount_operation_get_type;
  end;

function GTK_MOUNT_OPERATION(o : longint) : longint;
begin
  GTK_MOUNT_OPERATION:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_MOUNT_OPERATION,GtkMountOperation);
end;

function GTK_MOUNT_OPERATION_CLASS(k : longint) : longint;
begin
  GTK_MOUNT_OPERATION_CLASS:=G_TYPE_CHECK_CLASS_CAST(k,GTK_TYPE_MOUNT_OPERATION,GtkMountOperationClass);
end;

function GTK_IS_MOUNT_OPERATION(o : longint) : longint;
begin
  GTK_IS_MOUNT_OPERATION:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_MOUNT_OPERATION);
end;

function GTK_IS_MOUNT_OPERATION_CLASS(k : longint) : longint;
begin
  GTK_IS_MOUNT_OPERATION_CLASS:=G_TYPE_CHECK_CLASS_TYPE(k,GTK_TYPE_MOUNT_OPERATION);
end;

function GTK_MOUNT_OPERATION_GET_CLASS(o : longint) : longint;
begin
  GTK_MOUNT_OPERATION_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GTK_TYPE_MOUNT_OPERATION,GtkMountOperationClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkfontchooserdialog.pp
// -------------------------------------------------

function GTK_TYPE_FONT_CHOOSER_DIALOG : longint; { return type might be wrong }
  begin
    GTK_TYPE_FONT_CHOOSER_DIALOG:=gtk_font_chooser_dialog_get_type;
  end;

function GTK_FONT_CHOOSER_DIALOG(obj : longint) : longint;
begin
  GTK_FONT_CHOOSER_DIALOG:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_FONT_CHOOSER_DIALOG,GtkFontChooserDialog);
end;

function GTK_IS_FONT_CHOOSER_DIALOG(obj : longint) : longint;
begin
  GTK_IS_FONT_CHOOSER_DIALOG:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_FONT_CHOOSER_DIALOG);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkconstraint.pp
// -------------------------------------------------

function GTK_TYPE_CONSTRAINT_TARGET : longint; { return type might be wrong }
  begin
    GTK_TYPE_CONSTRAINT_TARGET:=gtk_constraint_target_get_type;
  end;

function GTK_TYPE_CONSTRAINT : longint; { return type might be wrong }
  begin
    GTK_TYPE_CONSTRAINT:=gtk_constraint_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkpagesetup.pp
// -------------------------------------------------

function GTK_TYPE_PAGE_SETUP : longint; { return type might be wrong }
  begin
    GTK_TYPE_PAGE_SETUP:=gtk_page_setup_get_type;
  end;

function GTK_PAGE_SETUP(obj : longint) : longint;
begin
  GTK_PAGE_SETUP:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_PAGE_SETUP,GtkPageSetup);
end;

function GTK_IS_PAGE_SETUP(obj : longint) : longint;
begin
  GTK_IS_PAGE_SETUP:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_PAGE_SETUP);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkvolumebutton.pp
// -------------------------------------------------

function GTK_TYPE_VOLUME_BUTTON : longint; { return type might be wrong }
  begin
    GTK_TYPE_VOLUME_BUTTON:=gtk_volume_button_get_type;
  end;

function GTK_VOLUME_BUTTON(obj : longint) : longint;
begin
  GTK_VOLUME_BUTTON:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_VOLUME_BUTTON,GtkVolumeButton);
end;

function GTK_IS_VOLUME_BUTTON(obj : longint) : longint;
begin
  GTK_IS_VOLUME_BUTTON:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_VOLUME_BUTTON);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkcellarea.pp
// -------------------------------------------------

function GTK_TYPE_CELL_AREA : longint; { return type might be wrong }
  begin
    GTK_TYPE_CELL_AREA:=gtk_cell_area_get_type;
  end;

function GTK_CELL_AREA(obj : longint) : longint;
begin
  GTK_CELL_AREA:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_CELL_AREA,GtkCellArea);
end;

function GTK_CELL_AREA_CLASS(klass : longint) : longint;
begin
  GTK_CELL_AREA_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_CELL_AREA,GtkCellAreaClass);
end;

function GTK_IS_CELL_AREA(obj : longint) : longint;
begin
  GTK_IS_CELL_AREA:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_CELL_AREA);
end;

function GTK_IS_CELL_AREA_CLASS(klass : longint) : longint;
begin
  GTK_IS_CELL_AREA_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_CELL_AREA);
end;

function GTK_CELL_AREA_GET_CLASS(obj : longint) : longint;
begin
  GTK_CELL_AREA_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_CELL_AREA,GtkCellAreaClass);
end;

function GTK_CELL_AREA_WARN_INVALID_CELL_PROPERTY_ID(object,property_id,pspec : longint) : longint;
begin
  GTK_CELL_AREA_WARN_INVALID_CELL_PROPERTY_ID:=G_OBJECT_WARN_INVALID_PSPEC(object,'cell property id',property_id,pspec);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtksizegroup.pp
// -------------------------------------------------

function GTK_TYPE_SIZE_GROUP : longint; { return type might be wrong }
  begin
    GTK_TYPE_SIZE_GROUP:=gtk_size_group_get_type;
  end;

function GTK_SIZE_GROUP(obj : longint) : longint;
begin
  GTK_SIZE_GROUP:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_SIZE_GROUP,GtkSizeGroup);
end;

function GTK_IS_SIZE_GROUP(obj : longint) : longint;
begin
  GTK_IS_SIZE_GROUP:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_SIZE_GROUP);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkatcontext.pp
// -------------------------------------------------

function GTK_TYPE_AT_CONTEXT : longint; { return type might be wrong }
  begin
    GTK_TYPE_AT_CONTEXT:=gtk_at_context_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkcellview.pp
// -------------------------------------------------

function GTK_TYPE_CELL_VIEW : longint; { return type might be wrong }
  begin
    GTK_TYPE_CELL_VIEW:=gtk_cell_view_get_type;
  end;

function GTK_CELL_VIEW(obj : longint) : longint;
begin
  GTK_CELL_VIEW:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_CELL_VIEW,GtkCellView);
end;

function GTK_IS_CELL_VIEW(obj : longint) : longint;
begin
  GTK_IS_CELL_VIEW:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_CELL_VIEW);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkscale.pp
// -------------------------------------------------

function GTK_TYPE_SCALE : longint; { return type might be wrong }
  begin
    GTK_TYPE_SCALE:=gtk_scale_get_type;
  end;

function GTK_SCALE(obj : longint) : longint;
begin
  GTK_SCALE:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_SCALE,GtkScale);
end;

function GTK_SCALE_CLASS(klass : longint) : longint;
begin
  GTK_SCALE_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_SCALE,GtkScaleClass);
end;

function GTK_IS_SCALE(obj : longint) : longint;
begin
  GTK_IS_SCALE:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_SCALE);
end;

function GTK_IS_SCALE_CLASS(klass : longint) : longint;
begin
  GTK_IS_SCALE_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_SCALE);
end;

function GTK_SCALE_GET_CLASS(obj : longint) : longint;
begin
  GTK_SCALE_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_SCALE,GtkScaleClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkscrollbar.pp
// -------------------------------------------------

function GTK_TYPE_SCROLLBAR : longint; { return type might be wrong }
  begin
    GTK_TYPE_SCROLLBAR:=gtk_scrollbar_get_type;
  end;

function GTK_SCROLLBAR(obj : longint) : longint;
begin
  GTK_SCROLLBAR:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_SCROLLBAR,GtkScrollbar);
end;

function GTK_IS_SCROLLBAR(obj : longint) : longint;
begin
  GTK_IS_SCROLLBAR:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_SCROLLBAR);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkstyleprovider.pp
// -------------------------------------------------

function GTK_TYPE_STYLE_PROVIDER : longint; { return type might be wrong }
  begin
    GTK_TYPE_STYLE_PROVIDER:=gtk_style_provider_get_type;
  end;

function GTK_STYLE_PROVIDER(o : longint) : longint;
begin
  GTK_STYLE_PROVIDER:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_STYLE_PROVIDER,GtkStyleProvider);
end;

function GTK_IS_STYLE_PROVIDER(o : longint) : longint;
begin
  GTK_IS_STYLE_PROVIDER:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_STYLE_PROVIDER);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkinscription.pp
// -------------------------------------------------

function GTK_TYPE_INSCRIPTION : longint; { return type might be wrong }
  begin
    GTK_TYPE_INSCRIPTION:=gtk_inscription_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkrecentmanager.pp
// -------------------------------------------------

function GTK_TYPE_RECENT_INFO : longint; { return type might be wrong }
  begin
    GTK_TYPE_RECENT_INFO:=gtk_recent_info_get_type;
  end;

function GTK_TYPE_RECENT_MANAGER : longint; { return type might be wrong }
  begin
    GTK_TYPE_RECENT_MANAGER:=gtk_recent_manager_get_type;
  end;

function GTK_RECENT_MANAGER(obj : longint) : longint;
begin
  GTK_RECENT_MANAGER:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_RECENT_MANAGER,GtkRecentManager);
end;

function GTK_IS_RECENT_MANAGER(obj : longint) : longint;
begin
  GTK_IS_RECENT_MANAGER:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_RECENT_MANAGER);
end;

function GTK_RECENT_MANAGER_CLASS(klass : longint) : longint;
begin
  GTK_RECENT_MANAGER_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_RECENT_MANAGER,GtkRecentManagerClass);
end;

function GTK_IS_RECENT_MANAGER_CLASS(klass : longint) : longint;
begin
  GTK_IS_RECENT_MANAGER_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_RECENT_MANAGER);
end;

function GTK_RECENT_MANAGER_GET_CLASS(obj : longint) : longint;
begin
  GTK_RECENT_MANAGER_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_RECENT_MANAGER,GtkRecentManagerClass);
end;

function GTK_RECENT_MANAGER_ERROR : longint; { return type might be wrong }
  begin
    GTK_RECENT_MANAGER_ERROR:=gtk_recent_manager_error_quark;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkstacksidebar.pp
// -------------------------------------------------

function GTK_TYPE_STACK_SIDEBAR : longint; { return type might be wrong }
  begin
    GTK_TYPE_STACK_SIDEBAR:=gtk_stack_sidebar_get_type;
  end;

function GTK_STACK_SIDEBAR(obj : longint) : longint;
begin
  GTK_STACK_SIDEBAR:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_STACK_SIDEBAR,GtkStackSidebar);
end;

function GTK_IS_STACK_SIDEBAR(obj : longint) : longint;
begin
  GTK_IS_STACK_SIDEBAR:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_STACK_SIDEBAR);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkfontchooserwidget.pp
// -------------------------------------------------

function GTK_TYPE_FONT_CHOOSER_WIDGET : longint; { return type might be wrong }
  begin
    GTK_TYPE_FONT_CHOOSER_WIDGET:=gtk_font_chooser_widget_get_type;
  end;

function GTK_FONT_CHOOSER_WIDGET(obj : longint) : longint;
begin
  GTK_FONT_CHOOSER_WIDGET:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_FONT_CHOOSER_WIDGET,GtkFontChooserWidget);
end;

function GTK_IS_FONT_CHOOSER_WIDGET(obj : longint) : longint;
begin
  GTK_IS_FONT_CHOOSER_WIDGET:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_FONT_CHOOSER_WIDGET);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkwindow.pp
// -------------------------------------------------

function GTK_TYPE_WINDOW : longint; { return type might be wrong }
  begin
    GTK_TYPE_WINDOW:=gtk_window_get_type;
  end;

function GTK_WINDOW(obj : longint) : longint;
begin
  GTK_WINDOW:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_WINDOW,GtkWindow);
end;

function GTK_WINDOW_CLASS(klass : longint) : longint;
begin
  GTK_WINDOW_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_WINDOW,GtkWindowClass);
end;

function GTK_IS_WINDOW(obj : longint) : longint;
begin
  GTK_IS_WINDOW:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_WINDOW);
end;

function GTK_IS_WINDOW_CLASS(klass : longint) : longint;
begin
  GTK_IS_WINDOW_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_WINDOW);
end;

function GTK_WINDOW_GET_CLASS(obj : longint) : longint;
begin
  GTK_WINDOW_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_WINDOW,GtkWindowClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkfilechooserwidget.pp
// -------------------------------------------------

function GTK_TYPE_FILE_CHOOSER_WIDGET : longint; { return type might be wrong }
  begin
    GTK_TYPE_FILE_CHOOSER_WIDGET:=gtk_file_chooser_widget_get_type;
  end;

function GTK_FILE_CHOOSER_WIDGET(obj : longint) : longint;
begin
  GTK_FILE_CHOOSER_WIDGET:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_FILE_CHOOSER_WIDGET,GtkFileChooserWidget);
end;

function GTK_IS_FILE_CHOOSER_WIDGET(obj : longint) : longint;
begin
  GTK_IS_FILE_CHOOSER_WIDGET:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_FILE_CHOOSER_WIDGET);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtk.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtktreelistrowsorter.pp
// -------------------------------------------------

function GTK_TYPE_TREE_LIST_ROW_SORTER : longint; { return type might be wrong }
  begin
    GTK_TYPE_TREE_LIST_ROW_SORTER:=gtk_tree_list_row_sorter_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkdirectorylist.pp
// -------------------------------------------------

function GTK_TYPE_DIRECTORY_LIST : longint; { return type might be wrong }
  begin
    GTK_TYPE_DIRECTORY_LIST:=gtk_directory_list_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkdroptarget.pp
// -------------------------------------------------

function GTK_TYPE_DROP_TARGET : longint; { return type might be wrong }
  begin
    GTK_TYPE_DROP_TARGET:=gtk_drop_target_get_type;
  end;

function GTK_DROP_TARGET(o : longint) : longint;
begin
  GTK_DROP_TARGET:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_DROP_TARGET,GtkDropTarget);
end;

function GTK_DROP_TARGET_CLASS(k : longint) : longint;
begin
  GTK_DROP_TARGET_CLASS:=G_TYPE_CHECK_CLASS_CAST(k,GTK_TYPE_DROP_TARGET,GtkDropTargetClass);
end;

function GTK_IS_DROP_TARGET(o : longint) : longint;
begin
  GTK_IS_DROP_TARGET:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_DROP_TARGET);
end;

function GTK_IS_DROP_TARGET_CLASS(k : longint) : longint;
begin
  GTK_IS_DROP_TARGET_CLASS:=G_TYPE_CHECK_CLASS_TYPE(k,GTK_TYPE_DROP_TARGET);
end;

function GTK_DROP_TARGET_GET_CLASS(o : longint) : longint;
begin
  GTK_DROP_TARGET_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GTK_TYPE_DROP_TARGET,GtkDropTargetClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtklabel.pp
// -------------------------------------------------

function GTK_TYPE_LABEL : longint; { return type might be wrong }
  begin
    GTK_TYPE_LABEL:=gtk_label_get_type;
  end;

function GTK_LABEL(obj : longint) : longint;
begin
  GTK_LABEL:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_LABEL,GtkLabel);
end;

function GTK_IS_LABEL(obj : longint) : longint;
begin
  GTK_IS_LABEL:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_LABEL);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkentry.pp
// -------------------------------------------------

function GTK_TYPE_ENTRY : longint; { return type might be wrong }
  begin
    GTK_TYPE_ENTRY:=gtk_entry_get_type;
  end;

function GTK_ENTRY(obj : longint) : longint;
begin
  GTK_ENTRY:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_ENTRY,GtkEntry);
end;

function GTK_ENTRY_CLASS(klass : longint) : longint;
begin
  GTK_ENTRY_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_ENTRY,GtkEntryClass);
end;

function GTK_IS_ENTRY(obj : longint) : longint;
begin
  GTK_IS_ENTRY:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_ENTRY);
end;

function GTK_IS_ENTRY_CLASS(klass : longint) : longint;
begin
  GTK_IS_ENTRY_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_ENTRY);
end;

function GTK_ENTRY_GET_CLASS(obj : longint) : longint;
begin
  GTK_ENTRY_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_ENTRY,GtkEntryClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkgridlayout.pp
// -------------------------------------------------

function GTK_TYPE_GRID_LAYOUT : longint; { return type might be wrong }
  begin
    GTK_TYPE_GRID_LAYOUT:=gtk_grid_layout_get_type;
  end;

function GTK_TYPE_GRID_LAYOUT_CHILD : longint; { return type might be wrong }
  begin
    GTK_TYPE_GRID_LAYOUT_CHILD:=gtk_grid_layout_child_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkappchooserdialog.pp
// -------------------------------------------------

function GTK_TYPE_APP_CHOOSER_DIALOG : longint; { return type might be wrong }
  begin
    GTK_TYPE_APP_CHOOSER_DIALOG:=gtk_app_chooser_dialog_get_type;
  end;

function GTK_APP_CHOOSER_DIALOG(obj : longint) : longint;
begin
  GTK_APP_CHOOSER_DIALOG:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_APP_CHOOSER_DIALOG,GtkAppChooserDialog);
end;

function GTK_IS_APP_CHOOSER_DIALOG(obj : longint) : longint;
begin
  GTK_IS_APP_CHOOSER_DIALOG:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_APP_CHOOSER_DIALOG);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkwindowhandle.pp
// -------------------------------------------------

function GTK_TYPE_WINDOW_HANDLE : longint; { return type might be wrong }
  begin
    GTK_TYPE_WINDOW_HANDLE:=gtk_window_handle_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkappchooserbutton.pp
// -------------------------------------------------

function GTK_TYPE_APP_CHOOSER_BUTTON : longint; { return type might be wrong }
  begin
    GTK_TYPE_APP_CHOOSER_BUTTON:=gtk_app_chooser_button_get_type;
  end;

function GTK_APP_CHOOSER_BUTTON(obj : longint) : longint;
begin
  GTK_APP_CHOOSER_BUTTON:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_APP_CHOOSER_BUTTON,GtkAppChooserButton);
end;

function GTK_IS_APP_CHOOSER_BUTTON(obj : longint) : longint;
begin
  GTK_IS_APP_CHOOSER_BUTTON:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_APP_CHOOSER_BUTTON);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkcombobox.pp
// -------------------------------------------------

function GTK_TYPE_COMBO_BOX : longint; { return type might be wrong }
  begin
    GTK_TYPE_COMBO_BOX:=gtk_combo_box_get_type;
  end;

function GTK_COMBO_BOX(obj : longint) : longint;
begin
  GTK_COMBO_BOX:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_COMBO_BOX,GtkComboBox);
end;

function GTK_COMBO_BOX_CLASS(vtable : longint) : longint;
begin
  GTK_COMBO_BOX_CLASS:=G_TYPE_CHECK_CLASS_CAST(vtable,GTK_TYPE_COMBO_BOX,GtkComboBoxClass);
end;

function GTK_IS_COMBO_BOX(obj : longint) : longint;
begin
  GTK_IS_COMBO_BOX:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_COMBO_BOX);
end;

function GTK_IS_COMBO_BOX_CLASS(vtable : longint) : longint;
begin
  GTK_IS_COMBO_BOX_CLASS:=G_TYPE_CHECK_CLASS_TYPE(vtable,GTK_TYPE_COMBO_BOX);
end;

function GTK_COMBO_BOX_GET_CLASS(inst : longint) : longint;
begin
  GTK_COMBO_BOX_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(inst,GTK_TYPE_COMBO_BOX,GtkComboBoxClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkpopover.pp
// -------------------------------------------------

function GTK_TYPE_POPOVER : longint; { return type might be wrong }
  begin
    GTK_TYPE_POPOVER:=gtk_popover_get_type;
  end;

function GTK_POPOVER(obj : longint) : longint;
begin
  GTK_POPOVER:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_POPOVER,GtkPopover);
end;

function GTK_POPOVER_CLASS(klass : longint) : longint;
begin
  GTK_POPOVER_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_POPOVER,GtkPopoverClass);
end;

function GTK_IS_POPOVER(obj : longint) : longint;
begin
  GTK_IS_POPOVER:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_POPOVER);
end;

function GTK_IS_POPOVER_CLASS(klass : longint) : longint;
begin
  GTK_IS_POPOVER_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_POPOVER);
end;

function GTK_POPOVER_GET_CLASS(obj : longint) : longint;
begin
  GTK_POPOVER_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_POPOVER,GtkPopoverClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtknumericsorter.pp
// -------------------------------------------------

function GTK_TYPE_NUMERIC_SORTER : longint; { return type might be wrong }
  begin
    GTK_TYPE_NUMERIC_SORTER:=gtk_numeric_sorter_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkmediacontrols.pp
// -------------------------------------------------

function GTK_TYPE_MEDIA_CONTROLS : longint; { return type might be wrong }
  begin
    GTK_TYPE_MEDIA_CONTROLS:=gtk_media_controls_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkbuilderlistitemfactory.pp
// -------------------------------------------------

function GTK_TYPE_BUILDER_LIST_ITEM_FACTORY : longint; { return type might be wrong }
  begin
    GTK_TYPE_BUILDER_LIST_ITEM_FACTORY:=gtk_builder_list_item_factory_get_type;
  end;

function GTK_BUILDER_LIST_ITEM_FACTORY(o : longint) : longint;
begin
  GTK_BUILDER_LIST_ITEM_FACTORY:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_BUILDER_LIST_ITEM_FACTORY,GtkBuilderListItemFactory);
end;

function GTK_BUILDER_LIST_ITEM_FACTORY_CLASS(k : longint) : longint;
begin
  GTK_BUILDER_LIST_ITEM_FACTORY_CLASS:=G_TYPE_CHECK_CLASS_CAST(k,GTK_TYPE_BUILDER_LIST_ITEM_FACTORY,GtkBuilderListItemFactoryClass);
end;

function GTK_IS_BUILDER_LIST_ITEM_FACTORY(o : longint) : longint;
begin
  GTK_IS_BUILDER_LIST_ITEM_FACTORY:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_BUILDER_LIST_ITEM_FACTORY);
end;

function GTK_IS_BUILDER_LIST_ITEM_FACTORY_CLASS(k : longint) : longint;
begin
  GTK_IS_BUILDER_LIST_ITEM_FACTORY_CLASS:=G_TYPE_CHECK_CLASS_TYPE(k,GTK_TYPE_BUILDER_LIST_ITEM_FACTORY);
end;

function GTK_BUILDER_LIST_ITEM_FACTORY_GET_CLASS(o : longint) : longint;
begin
  GTK_BUILDER_LIST_ITEM_FACTORY_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GTK_TYPE_BUILDER_LIST_ITEM_FACTORY,GtkBuilderListItemFactoryClass);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkcelleditable.pp
// -------------------------------------------------

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


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkprogressbar.pp
// -------------------------------------------------

function GTK_TYPE_PROGRESS_BAR : longint; { return type might be wrong }
  begin
    GTK_TYPE_PROGRESS_BAR:=gtk_progress_bar_get_type;
  end;

function GTK_PROGRESS_BAR(obj : longint) : longint;
begin
  GTK_PROGRESS_BAR:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_PROGRESS_BAR,GtkProgressBar);
end;

function GTK_IS_PROGRESS_BAR(obj : longint) : longint;
begin
  GTK_IS_PROGRESS_BAR:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_PROGRESS_BAR);
end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtkcellareacontext.pp
// -------------------------------------------------

function GTK_TYPE_CELL_AREA_CONTEXT : longint; { return type might be wrong }
  begin
    GTK_TYPE_CELL_AREA_CONTEXT:=gtk_cell_area_context_get_type;
  end;

function GTK_CELL_AREA_CONTEXT(obj : longint) : longint;
begin
  GTK_CELL_AREA_CONTEXT:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_CELL_AREA_CONTEXT,GtkCellAreaContext);
end;

function GTK_CELL_AREA_CONTEXT_CLASS(klass : longint) : longint;
begin
  GTK_CELL_AREA_CONTEXT_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_CELL_AREA_CONTEXT,GtkCellAreaContextClass);
end;

function GTK_IS_CELL_AREA_CONTEXT(obj : longint) : longint;
begin
  GTK_IS_CELL_AREA_CONTEXT:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_CELL_AREA_CONTEXT);
end;

function GTK_IS_CELL_AREA_CONTEXT_CLASS(klass : longint) : longint;
begin
  GTK_IS_CELL_AREA_CONTEXT_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_CELL_AREA_CONTEXT);
end;

function GTK_CELL_AREA_CONTEXT_GET_CLASS(obj : longint) : longint;
begin
  GTK_CELL_AREA_CONTEXT_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_CELL_AREA_CONTEXT,GtkCellAreaContextClass);
end;




end.
