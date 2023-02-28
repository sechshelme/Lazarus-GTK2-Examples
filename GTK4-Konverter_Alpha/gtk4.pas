unit GTK4;

interface
// --------- inteface ------------------------------
// /tmp/GTK4-Konverter-header/gtk/gtk4types.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtk/gtk4types.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtk/gtk4types.h
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
// /tmp/GTK4-Konverter-header/gtk/gtk4testutils.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtk/gtk4testutils.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtk/gtk4testutils.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// Type
//// Pchar  = ^char;
//// PGtkWidget  = ^GtkWidget;
//// Pguint  = ^guint;
//// Plongint  = ^longint;
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
// /tmp/GTK4-Konverter-header/gtk/gtk4testatcontext.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtk/gtk4testatcontext.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtk/gtk4testatcontext.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

////     Type
////     Pchar  = ^char;
////     PGtkAccessible  = ^GtkAccessible;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkatcontext.h>}

//// (* error 
////  { \
in declaration at line 41 *)
//// (* error 
////   GtkAccessible *__a =  (accessible); \
//// (* error 
////   GtkAccessibleRole __r1 = (role); \
in declaration at line 42 *)
//// (* error 
////   GtkAccessibleRole __r1 = (role); \
//// (* error 
////   GtkAccessibleRole __r2 = gtk_accessible_get_accessible_role (__a); \
in declaration at line 43 *)
//// (* error 
////   GtkAccessibleRole __r2 = gtk_accessible_get_accessible_role (__a); \
//// (* error 
////   if (__r1 == __r2) ; else { \
in declaration at line 44 *)
//// (* error 
////   if (__r1 == __r2) ; else { \
in declaration at line 47 *)
//// (* error 
////                                                 __a, __r1, __r2); \
//// (* error 
////   } \

in declaration at line 63 *)
//// (* error 
////   GtkAccessible *__a =  (accessible); \
//// (* error 
////   GtkAccessibleProperty __p = (property); \
in declaration at line 64 *)
//// (* error 
////   GtkAccessibleProperty __p = (property); \
//// (* error 
////   char *value__ = gtk_test_accessible_check_property (__a, __p, __VA_ARGS__); \
in declaration at line 65 *)
//// (* error 
////   char *value__ = gtk_test_accessible_check_property (__a, __p, __VA_ARGS__); \
//// (* error 
////   if (value__ == NULL) ; else { \
in declaration at line 66 *)
//// (* error 
////   if (value__ == NULL) ; else { \
in declaration at line 67 *)
//// (* error 
////     char *msg__ = g_strdup_printf ("assertion failed: (" #accessible ".accessible-property(" #property ") == " # __VA_ARGS__ "): value = '%s'", value__); \
//// (* error 
////     g_assertion_message (G_LOG_DOMAIN, __FILE__, __LINE__, G_STRFUNC, msg__); \
in declaration at line 68 *)
//// (* error 
////     g_assertion_message (G_LOG_DOMAIN, __FILE__, __LINE__, G_STRFUNC, msg__); \
//// (* error 
////     g_free (msg__); \
in declaration at line 69 *)
//// (* error 
////     g_free (msg__); \
//// (* error 
////   } \

in declaration at line 85 *)
//// (* error 
////   GtkAccessible *__a =  (accessible); \
//// (* error 
////   GtkAccessibleRelation __r = (relation); \
in declaration at line 86 *)
//// (* error 
////   GtkAccessibleRelation __r = (relation); \
//// (* error 
////   char *value__ = gtk_test_accessible_check_relation (__a, __r, __VA_ARGS__); \
in declaration at line 87 *)
//// (* error 
////   char *value__ = gtk_test_accessible_check_relation (__a, __r, __VA_ARGS__); \
//// (* error 
////   if (value__ == NULL); else { \
in declaration at line 88 *)
//// (* error 
////   if (value__ == NULL); else { \
in declaration at line 89 *)
//// (* error 
////     char *msg__ = g_strdup_printf ("assertion failed: (" #accessible ".accessible-relation(" #relation ") == " # __VA_ARGS__ "): value = '%s'", value__); \
//// (* error 
////     g_assertion_message (G_LOG_DOMAIN, __FILE__, __LINE__, G_STRFUNC, msg__); \
in declaration at line 90 *)
//// (* error 
////     g_assertion_message (G_LOG_DOMAIN, __FILE__, __LINE__, G_STRFUNC, msg__); \
//// (* error 
////     g_free (msg__); \
in declaration at line 91 *)
//// (* error 
////     g_free (msg__); \
//// (* error 
////   } \

in declaration at line 107 *)
//// (* error 
////   GtkAccessible *__a =  (accessible); \
//// (* error 
////   GtkAccessibleState __s = (state); \
in declaration at line 108 *)
//// (* error 
////   GtkAccessibleState __s = (state); \
//// (* error 
////   char *value__ = gtk_test_accessible_check_state (__a, __s, __VA_ARGS__); \
in declaration at line 109 *)
//// (* error 
////   char *value__ = gtk_test_accessible_check_state (__a, __s, __VA_ARGS__); \
//// (* error 
////   if (value__ == NULL); else { \
in declaration at line 110 *)
//// (* error 
////   if (value__ == NULL); else { \
in declaration at line 111 *)
//// (* error 
////     char *msg__ = g_strdup_printf ("assertion failed: (" #accessible ".accessible-state(" #state ") == " # __VA_ARGS__ "): value = '%s'", value__); \
//// (* error 
////     g_assertion_message (G_LOG_DOMAIN, __FILE__, __LINE__, G_STRFUNC, msg__); \
in declaration at line 112 *)
//// (* error 
////     g_assertion_message (G_LOG_DOMAIN, __FILE__, __LINE__, G_STRFUNC, msg__); \
//// (* error 
////     g_free (msg__); \
in declaration at line 113 *)
//// (* error 
////     g_free (msg__); \
//// (* error 
////   } \
in declaration at line 119 *)

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
// /tmp/GTK4-Konverter-header/gtk/gtk4treemodelsort.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtk/gtk4treemodelsort.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtk/gtk4treemodelsort.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// Type
//// PGtkTreeIter  = ^GtkTreeIter;
//// PGtkTreeModel  = ^GtkTreeModel;
//// PGtkTreeModelSort  = ^GtkTreeModelSort;
//// PGtkTreePath  = ^GtkTreePath;
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
// /tmp/GTK4-Konverter-header/gtk/gtk4text.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtk/gtk4text.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtk/gtk4text.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// Type
//// Pchar  = ^char;
//// PGMenuModel  = ^GMenuModel;
//// Pgraphene_rect_t  = ^graphene_rect_t;
//// PGtkEntryBuffer  = ^GtkEntryBuffer;
//// PGtkText  = ^GtkText;
//// PPangoAttrList  = ^PangoAttrList;
//// PPangoTabArray  = ^PangoTabArray;
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
// /tmp/GTK4-Konverter-header/gtk/gtk4texttagtable.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtk/gtk4texttagtable.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtk/gtk4texttagtable.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// Type
//// Pchar  = ^char;
//// PGtkTextTag  = ^GtkTextTag;
//// PGtkTextTagTable  = ^GtkTextTagTable;
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
// /tmp/GTK4-Konverter-header/gtk/gtk4treeview.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtk/gtk4treeview.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtk/gtk4treeview.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// Type
//// Pchar  = ^char;
//// PGdkContentFormats  = ^GdkContentFormats;
//// PGdkRectangle  = ^GdkRectangle;
//// PGtkCellRenderer  = ^GtkCellRenderer;
//// PGtkEditable  = ^GtkEditable;
//// PGtkTooltip  = ^GtkTooltip;
//// PGtkTreeIter  = ^GtkTreeIter;
//// PGtkTreeModel  = ^GtkTreeModel;
//// PGtkTreePath  = ^GtkTreePath;
//// PGtkTreeView  = ^GtkTreeView;
//// PGtkTreeViewColumn  = ^GtkTreeViewColumn;
//// PGtkTreeViewDropPosition  = ^GtkTreeViewDropPosition;
//// Plongint  = ^longint;
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
// /tmp/GTK4-Konverter-header/gtk/gtk4textmark.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtk/gtk4textmark.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtk/gtk4textmark.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// Type
//// Pchar  = ^char;
//// PGtkTextMark  = ^GtkTextMark;
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
// /tmp/GTK4-Konverter-header/gtk/gtk4togglebutton.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtk/gtk4togglebutton.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtk/gtk4togglebutton.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// Type
//// Pchar  = ^char;
//// PGtkToggleButton  = ^GtkToggleButton;
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
// /tmp/GTK4-Konverter-header/gtk/gtk4texttag.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtk/gtk4texttag.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtk/gtk4texttag.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// Type
//// Pchar  = ^char;
//// PGtkTextTag  = ^GtkTextTag;
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
// /tmp/GTK4-Konverter-header/gtk/gtk4treelistmodel.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtk/gtk4treelistmodel.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtk/gtk4treelistmodel.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// Type
//// PGListModel  = ^GListModel;
//// PGtkTreeListModel  = ^GtkTreeListModel;
//// PGtkTreeListRow  = ^GtkTreeListRow;
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
// /tmp/GTK4-Konverter-header/gtk/gtk4textview.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtk/gtk4textview.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtk/gtk4textview.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// Type
//// Pchar  = ^char;
//// PGdkEvent  = ^GdkEvent;
//// PGdkRectangle  = ^GdkRectangle;
//// PGMenuModel  = ^GMenuModel;
//// PGtkSnapshot  = ^GtkSnapshot;
//// PGtkTextBuffer  = ^GtkTextBuffer;
//// PGtkTextChildAnchor  = ^GtkTextChildAnchor;
//// PGtkTextIter  = ^GtkTextIter;
//// PGtkTextMark  = ^GtkTextMark;
//// PGtkTextView  = ^GtkTextView;
//// PGtkWidget  = ^GtkWidget;
//// Plongint  = ^longint;
//// PPangoTabArray  = ^PangoTabArray;
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
// /tmp/GTK4-Konverter-header/gtk/gtk4treestore.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtk/gtk4treestore.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtk/gtk4treestore.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// Type
//// PGtkTreeIter  = ^GtkTreeIter;
//// PGtkTreeStore  = ^GtkTreeStore;
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
// /tmp/GTK4-Konverter-header/gtk/gtk4tooltip.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtk/gtk4tooltip.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtk/gtk4tooltip.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// Type
//// Pchar  = ^char;
//// PGdkPaintable  = ^GdkPaintable;
//// PGdkRectangle  = ^GdkRectangle;
//// PGIcon  = ^GIcon;
//// PGtkTooltip  = ^GtkTooltip;
//// PGtkWidget  = ^GtkWidget;
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
// /tmp/GTK4-Konverter-header/gtk/gtk4treesortable.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtk/gtk4treesortable.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtk/gtk4treesortable.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// Type
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
// /tmp/GTK4-Konverter-header/gtk/gtk4treeviewcolumn.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtk/gtk4treeviewcolumn.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtk/gtk4treeviewcolumn.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// Type
//// Pchar  = ^char;
//// PGtkCellArea  = ^GtkCellArea;
//// PGtkCellRenderer  = ^GtkCellRenderer;
//// PGtkTreeIter  = ^GtkTreeIter;
//// PGtkTreeModel  = ^GtkTreeModel;
//// PGtkTreeViewColumn  = ^GtkTreeViewColumn;
//// PGtkWidget  = ^GtkWidget;
//// Plongint  = ^longint;
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
// /tmp/GTK4-Konverter-header/gtk/gtk4treeselection.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtk/gtk4treeselection.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtk/gtk4treeselection.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// Type
//// PGtkTreeIter  = ^GtkTreeIter;
//// PGtkTreeModel  = ^GtkTreeModel;
//// PGtkTreePath  = ^GtkTreePath;
//// PGtkTreeSelection  = ^GtkTreeSelection;
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
// /tmp/GTK4-Konverter-header/gtk/gtk4treeexpander.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtk/gtk4treeexpander.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtk/gtk4treeexpander.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// Type
//// PGtkTreeExpander  = ^GtkTreeExpander;
//// PGtkTreeListRow  = ^GtkTreeListRow;
//// PGtkWidget  = ^GtkWidget;
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
// /tmp/GTK4-Konverter-header/gtk/gtk4treemodelfilter.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtk/gtk4treemodelfilter.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtk/gtk4treemodelfilter.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// Type
//// PGtkTreeIter  = ^GtkTreeIter;
//// PGtkTreeModel  = ^GtkTreeModel;
//// PGtkTreeModelFilter  = ^GtkTreeModelFilter;
//// PGtkTreePath  = ^GtkTreePath;
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
// /tmp/GTK4-Konverter-header/gtk/gtk4textiter.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtk/gtk4textiter.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtk/gtk4textiter.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// Type
//// Pchar  = ^char;
//// PGtkTextIter  = ^GtkTextIter;
//// PGtkTextTag  = ^GtkTextTag;
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
// /tmp/GTK4-Konverter-header/gtk/gtk4treednd.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtk/gtk4treednd.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtk/gtk4treednd.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// Type
//// PGdkContentProvider  = ^GdkContentProvider;
//// PGtkTreeDragDest  = ^GtkTreeDragDest;
//// PGtkTreeDragSource  = ^GtkTreeDragSource;
//// PGtkTreeModel  = ^GtkTreeModel;
//// PGtkTreePath  = ^GtkTreePath;
//// PGValue  = ^GValue;
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
// /tmp/GTK4-Konverter-header/gtk/gtk4textbuffer.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtk/gtk4textbuffer.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtk/gtk4textbuffer.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// Type
//// Pchar  = ^char;
//// PGdkClipboard  = ^GdkClipboard;
//// PGdkPaintable  = ^GdkPaintable;
//// PGtkTextBuffer  = ^GtkTextBuffer;
//// PGtkTextChildAnchor  = ^GtkTextChildAnchor;
//// PGtkTextIter  = ^GtkTextIter;
//// PGtkTextMark  = ^GtkTextMark;
//// PGtkTextTag  = ^GtkTextTag;
//// PGtkTextTagTable  = ^GtkTextTagTable;
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
// /tmp/GTK4-Konverter-header/gtk/gtk4textchild.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtk/gtk4textchild.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtk/gtk4textchild.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// Type
//// Pchar  = ^char;
//// PGtkTextChildAnchor  = ^GtkTextChildAnchor;
//// Pguint  = ^guint;
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
// /tmp/GTK4-Konverter-header/gtk/gtk4treelistrowsorter.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtk/gtk4treelistrowsorter.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtk/gtk4treelistrowsorter.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// Type
//// PGtkSorter  = ^GtkSorter;
//// PGtkTreeListRowSorter  = ^GtkTreeListRowSorter;
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
// /tmp/GTK4-Konverter-header/gtk/gtk4typebuiltins.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtk/gtk4typebuiltins.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtk/gtk4typebuiltins.h
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


//// function gtk_license_get_type:TGType;cdecl;external;
//// function GTK_TYPE_LICENSE : longint; { return type might be wrong }
//// 
//// 
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
// /tmp/GTK4-Konverter-header/gtk/gtk4treemodel.pp
// -------------------------------------------------

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtk/gtk4treemodel.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtk/gtk4treemodel.h
    -lgtk4
    -p
    -t
    -S
    -d
    -c
}

//// Type
//// Pchar  = ^char;
//// PGObject  = ^GObject;
//// PGtkTreeIter  = ^GtkTreeIter;
//// PGtkTreeModel  = ^GtkTreeModel;
//// PGtkTreePath  = ^GtkTreePath;
//// PGtkTreeRowReference  = ^GtkTreeRowReference;
//// PGValue  = ^GValue;
//// Plongint  = ^longint;
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



implementation
// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtk/gtk4types.pp
// -------------------------------------------------

function GTK_INVALID_LIST_POSITION : Tguint;
  begin
    GTK_INVALID_LIST_POSITION:=Tguint($ffffffff);
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtk/gtk4testutils.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtk/gtk4testatcontext.pp
// -------------------------------------------------


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtk/gtk4treemodelsort.pp
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
// /tmp/GTK4-Konverter-header/gtk/gtk4text.pp
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
// /tmp/GTK4-Konverter-header/gtk/gtk4texttagtable.pp
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
// /tmp/GTK4-Konverter-header/gtk/gtk4treeview.pp
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
// /tmp/GTK4-Konverter-header/gtk/gtk4textmark.pp
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
// /tmp/GTK4-Konverter-header/gtk/gtk4togglebutton.pp
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
// /tmp/GTK4-Konverter-header/gtk/gtk4texttag.pp
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
// /tmp/GTK4-Konverter-header/gtk/gtk4treelistmodel.pp
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
// /tmp/GTK4-Konverter-header/gtk/gtk4textview.pp
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
// /tmp/GTK4-Konverter-header/gtk/gtk4treestore.pp
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
// /tmp/GTK4-Konverter-header/gtk/gtk4tooltip.pp
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
// /tmp/GTK4-Konverter-header/gtk/gtk4treesortable.pp
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
// /tmp/GTK4-Konverter-header/gtk/gtk4treeviewcolumn.pp
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
// /tmp/GTK4-Konverter-header/gtk/gtk4treeselection.pp
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
// /tmp/GTK4-Konverter-header/gtk/gtk4treeexpander.pp
// -------------------------------------------------

function GTK_TYPE_TREE_EXPANDER : longint; { return type might be wrong }
  begin
    GTK_TYPE_TREE_EXPANDER:=gtk_tree_expander_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtk/gtk4treemodelfilter.pp
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
// /tmp/GTK4-Konverter-header/gtk/gtk4textiter.pp
// -------------------------------------------------

function GTK_TYPE_TEXT_ITER : longint; { return type might be wrong }
  begin
    GTK_TYPE_TEXT_ITER:=gtk_text_iter_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtk/gtk4treednd.pp
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
// /tmp/GTK4-Konverter-header/gtk/gtk4textbuffer.pp
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
// /tmp/GTK4-Konverter-header/gtk/gtk4textchild.pp
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
// /tmp/GTK4-Konverter-header/gtk/gtk4treelistrowsorter.pp
// -------------------------------------------------

function GTK_TYPE_TREE_LIST_ROW_SORTER : longint; { return type might be wrong }
  begin
    GTK_TYPE_TREE_LIST_ROW_SORTER:=gtk_tree_list_row_sorter_get_type;
  end;


// --------- Implementation ------------------------
// /tmp/GTK4-Konverter-header/gtk/gtk4typebuiltins.pp
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
// /tmp/GTK4-Konverter-header/gtk/gtk4treemodel.pp
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




end.
