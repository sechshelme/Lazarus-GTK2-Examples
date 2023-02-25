unit GTK4;

interface

{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtk/gtk4box.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtk/gtk4box.h
    -p
    -t
    -S
    -d
    -c
}

//// { Pointers to basic pascal types, inserted by h2pas conversion program.}
//// Type
////   PLongint  = ^Longint;
////   PSmallInt = ^SmallInt;
////   PByte     = ^Byte;
////   PWord     = ^Word;
////   PDWord    = ^DWord;
////   PDouble   = ^Double;
//// 
Type
P_GtkBox  = ^_GtkBox;
P_GtkBoxClass  = ^_GtkBoxClass;
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
  P_GtkBox = ^T_GtkBox;
  T_GtkBox = record
      parent_instance : TGtkWidget;
    end;



  P_GtkBoxClass = ^T_GtkBoxClass;
  T_GtkBoxClass = record
      parent_class : TGtkWidgetClass;
      padding : array[0..7] of Tgpointer;
    end;



function gtk_box_get_type:TGType;cdecl;external;

function gtk_box_new(orientation:TGtkOrientation; spacing:longint):PGtkWidget;cdecl;external;

procedure gtk_box_set_homogeneous(box:PGtkBox; homogeneous:Tgboolean);cdecl;external;

function gtk_box_get_homogeneous(box:PGtkBox):Tgboolean;cdecl;external;

procedure gtk_box_set_spacing(box:PGtkBox; spacing:longint);cdecl;external;

function gtk_box_get_spacing(box:PGtkBox):longint;cdecl;external;

procedure gtk_box_set_baseline_position(box:PGtkBox; position:TGtkBaselinePosition);cdecl;external;

function gtk_box_get_baseline_position(box:PGtkBox):TGtkBaselinePosition;cdecl;external;

procedure gtk_box_append(box:PGtkBox; child:PGtkWidget);cdecl;external;

procedure gtk_box_prepend(box:PGtkBox; child:PGtkWidget);cdecl;external;

procedure gtk_box_remove(box:PGtkBox; child:PGtkWidget);cdecl;external;

procedure gtk_box_insert_child_after(box:PGtkBox; child:PGtkWidget; sibling:PGtkWidget);cdecl;external;

procedure gtk_box_reorder_child_after(box:PGtkBox; child:PGtkWidget; sibling:PGtkWidget);cdecl;external;

//// {$endif}



{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtk/gtk4boolfilter.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtk/gtk4boolfilter.h
    -p
    -t
    -S
    -d
    -c
}

//// { Pointers to basic pascal types, inserted by h2pas conversion program.}
//// Type
////   PLongint  = ^Longint;
////   PSmallInt = ^SmallInt;
////   PByte     = ^Byte;
////   PWord     = ^Word;
////   PDWord    = ^DWord;
////   PDouble   = ^Double;
//// 
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




function gtk_bool_filter_new(expression:PGtkExpression):PGtkBoolFilter;cdecl;external;

function gtk_bool_filter_get_expression(self:PGtkBoolFilter):PGtkExpression;cdecl;external;

procedure gtk_bool_filter_set_expression(self:PGtkBoolFilter; expression:PGtkExpression);cdecl;external;

function gtk_bool_filter_get_invert(self:PGtkBoolFilter):Tgboolean;cdecl;external;

procedure gtk_bool_filter_set_invert(self:PGtkBoolFilter; invert:Tgboolean);cdecl;external;

//// {$endif}



{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtk/gtk4builderlistitemfactory.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtk/gtk4builderlistitemfactory.h
    -p
    -t
    -S
    -d
    -c
}

//// { Pointers to basic pascal types, inserted by h2pas conversion program.}
//// Type
////   PLongint  = ^Longint;
////   PSmallInt = ^SmallInt;
////   PByte     = ^Byte;
////   PWord     = ^Word;
////   PDWord    = ^DWord;
////   PDouble   = ^Double;
//// 
Type
Pchar  = ^char;
PGBytes  = ^GBytes;
PGtkBuilderListItemFactory  = ^GtkBuilderListItemFactory;
PGtkBuilderScope  = ^GtkBuilderScope;
PGtkListItemFactory  = ^GtkListItemFactory;
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

function gtk_builder_list_item_factory_new_from_bytes(scope:PGtkBuilderScope; bytes:PGBytes):PGtkListItemFactory;cdecl;external;

function gtk_builder_list_item_factory_new_from_resource(scope:PGtkBuilderScope; resource_path:Pchar):PGtkListItemFactory;cdecl;external;

function gtk_builder_list_item_factory_get_bytes(self:PGtkBuilderListItemFactory):PGBytes;cdecl;external;

function gtk_builder_list_item_factory_get_resource(self:PGtkBuilderListItemFactory):Pchar;cdecl;external;

function gtk_builder_list_item_factory_get_scope(self:PGtkBuilderListItemFactory):PGtkBuilderScope;cdecl;external;

//// {$endif}



{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtk/gtk4button.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtk/gtk4button.h
    -p
    -t
    -S
    -d
    -c
}

//// { Pointers to basic pascal types, inserted by h2pas conversion program.}
//// Type
////   PLongint  = ^Longint;
////   PSmallInt = ^SmallInt;
////   PByte     = ^Byte;
////   PWord     = ^Word;
////   PDWord    = ^DWord;
////   PDouble   = ^Double;
//// 
Type
P_GtkButton  = ^_GtkButton;
P_GtkButtonClass  = ^_GtkButtonClass;
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

  P_GtkButton = ^T_GtkButton;
  T_GtkButton = record
      parent_instance : TGtkWidget;
    end;




  P_GtkButtonClass = ^T_GtkButtonClass;
  T_GtkButtonClass = record
      parent_class : TGtkWidgetClass;
      clicked : procedure (button:PGtkButton);cdecl;
      activate : procedure (button:PGtkButton);cdecl;
      padding : array[0..7] of Tgpointer;
    end;



function gtk_button_get_type:TGType;cdecl;external;

function gtk_button_new:PGtkWidget;cdecl;external;

function gtk_button_new_with_label(_label:Pchar):PGtkWidget;cdecl;external;

function gtk_button_new_from_icon_name(icon_name:Pchar):PGtkWidget;cdecl;external;

function gtk_button_new_with_mnemonic(_label:Pchar):PGtkWidget;cdecl;external;

procedure gtk_button_set_has_frame(button:PGtkButton; has_frame:Tgboolean);cdecl;external;

function gtk_button_get_has_frame(button:PGtkButton):Tgboolean;cdecl;external;

procedure gtk_button_set_label(button:PGtkButton; _label:Pchar);cdecl;external;

function gtk_button_get_label(button:PGtkButton):Pchar;cdecl;external;

procedure gtk_button_set_use_underline(button:PGtkButton; use_underline:Tgboolean);cdecl;external;

function gtk_button_get_use_underline(button:PGtkButton):Tgboolean;cdecl;external;

procedure gtk_button_set_icon_name(button:PGtkButton; icon_name:Pchar);cdecl;external;

function gtk_button_get_icon_name(button:PGtkButton):Pchar;cdecl;external;

procedure gtk_button_set_child(button:PGtkButton; child:PGtkWidget);cdecl;external;

function gtk_button_get_child(button:PGtkButton):PGtkWidget;cdecl;external;

//// {$endif}



{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtk/gtk4bookmarklist.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtk/gtk4bookmarklist.h
    -p
    -t
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
(* error 
/* Zeile entfernt: /* for GDK_AVAILABLE_IN_ALL */ */
//// {$include <gdk/gdk.h>}

in define line 35 *)




function gtk_bookmark_list_new(filename:Pchar; attributes:Pchar):PGtkBookmarkList;cdecl;external;

function gtk_bookmark_list_get_filename(self:PGtkBookmarkList):Pchar;cdecl;external;

procedure gtk_bookmark_list_set_attributes(self:PGtkBookmarkList; attributes:Pchar);cdecl;external;

function gtk_bookmark_list_get_attributes(self:PGtkBookmarkList):Pchar;cdecl;external;

procedure gtk_bookmark_list_set_io_priority(self:PGtkBookmarkList; io_priority:longint);cdecl;external;

function gtk_bookmark_list_get_io_priority(self:PGtkBookmarkList):longint;cdecl;external;

function gtk_bookmark_list_is_loading(self:PGtkBookmarkList):Tgboolean;cdecl;external;

//// {$endif}



{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtk/gtk4binlayout.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtk/gtk4binlayout.h
    -p
    -t
    -S
    -d
    -c
}

//// { Pointers to basic pascal types, inserted by h2pas conversion program.}
//// Type
////   PLongint  = ^Longint;
////   PSmallInt = ^SmallInt;
////   PByte     = ^Byte;
////   PWord     = ^Word;
////   PDWord    = ^DWord;
////   PDouble   = ^Double;
//// 
Type
PGtkLayoutManager  = ^GtkLayoutManager;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$include <gtk/gtklayoutmanager.h>}


function GTK_TYPE_BIN_LAYOUT : longint; { return type might be wrong }




function gtk_bin_layout_new:PGtkLayoutManager;cdecl;external;



{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtk/gtk4builderscope.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtk/gtk4builderscope.h
    -p
    -t
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
    P_GtkBuilderCScopeClass  = ^_GtkBuilderCScopeClass;
    P_GtkBuilderScopeInterface  = ^_GtkBuilderScopeInterface;
    Pchar  = ^char;
    PGClosure  = ^GClosure;
    PGError  = ^GError;
    PGObject  = ^GObject;
    PGtkBuilder  = ^GtkBuilder;
    PGtkBuilderClosureFlags  = ^GtkBuilderClosureFlags;
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
  PGtkBuilderClosureFlags = ^TGtkBuilderClosureFlags;
  TGtkBuilderClosureFlags = (GTK_BUILDER_CLOSURE_SWAPPED := 1 shl 0);



  P_GtkBuilderScopeInterface = ^T_GtkBuilderScopeInterface;
  T_GtkBuilderScopeInterface = record
      g_iface : TGTypeInterface;
      get_type_from_name : function (self:PGtkBuilderScope; builder:PGtkBuilder; type_name:Pchar):TGType;cdecl;
      get_type_from_function : function (self:PGtkBuilderScope; builder:PGtkBuilder; function_name:Pchar):TGType;cdecl;
      create_closure : function (self:PGtkBuilderScope; builder:PGtkBuilder; function_name:Pchar; flags:TGtkBuilderClosureFlags; object:PGObject; 
                   error:PPGError):PGClosure;cdecl;
    end;

  P_GtkBuilderCScopeClass = ^T_GtkBuilderCScopeClass;
  T_GtkBuilderCScopeClass = record
      parent_class : TGObjectClass;
    end;


function GTK_TYPE_BUILDER_CSCOPE : longint; { return type might be wrong }




function gtk_builder_cscope_new:PGtkBuilderScope;cdecl;external;

procedure gtk_builder_cscope_add_callback_symbol(self:PGtkBuilderCScope; callback_name:Pchar; callback_symbol:TGCallback);cdecl;external;

procedure gtk_builder_cscope_add_callback_symbols(self:PGtkBuilderCScope; first_callback_name:Pchar; first_callback_symbol:TGCallback; args:array of const);cdecl;external;
procedure gtk_builder_cscope_add_callback_symbols(self:PGtkBuilderCScope; first_callback_name:Pchar; first_callback_symbol:TGCallback);cdecl;external;
(* error 
  gtk_builder_cscope_add_callback_symbol (GTK_BUILDER_CSCOPE (scope), #callback, G_CALLBACK (callback))
in define line 120 *)

function gtk_builder_cscope_lookup_callback_symbol(self:PGtkBuilderCScope; callback_name:Pchar):TGCallback;cdecl;external;

//// {$endif}



{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtk/gtk4bitset.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtk/gtk4bitset.h
    -p
    -t
    -S
    -d
    -c
}

//// { Pointers to basic pascal types, inserted by h2pas conversion program.}
//// Type
////   PLongint  = ^Longint;
////   PSmallInt = ^SmallInt;
////   PByte     = ^Byte;
////   PWord     = ^Word;
////   PDWord    = ^DWord;
////   PDouble   = ^Double;
//// 
Type
P_GtkBitsetIter  = ^_GtkBitsetIter;
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

function gtk_bitset_ref(self:PGtkBitset):PGtkBitset;cdecl;external;

procedure gtk_bitset_unref(self:PGtkBitset);cdecl;external;


function gtk_bitset_contains(self:PGtkBitset; value:Tguint):Tgboolean;cdecl;external;

function gtk_bitset_is_empty(self:PGtkBitset):Tgboolean;cdecl;external;

function gtk_bitset_equals(self:PGtkBitset; other:PGtkBitset):Tgboolean;cdecl;external;

function gtk_bitset_get_size(self:PGtkBitset):Tguint64;cdecl;external;

function gtk_bitset_get_size_in_range(self:PGtkBitset; first:Tguint; last:Tguint):Tguint64;cdecl;external;

function gtk_bitset_get_nth(self:PGtkBitset; nth:Tguint):Tguint;cdecl;external;

function gtk_bitset_get_minimum(self:PGtkBitset):Tguint;cdecl;external;

function gtk_bitset_get_maximum(self:PGtkBitset):Tguint;cdecl;external;

function gtk_bitset_new_empty:PGtkBitset;cdecl;external;

function gtk_bitset_copy(self:PGtkBitset):PGtkBitset;cdecl;external;

function gtk_bitset_new_range(start:Tguint; n_items:Tguint):PGtkBitset;cdecl;external;

procedure gtk_bitset_remove_all(self:PGtkBitset);cdecl;external;

function gtk_bitset_add(self:PGtkBitset; value:Tguint):Tgboolean;cdecl;external;

function gtk_bitset_remove(self:PGtkBitset; value:Tguint):Tgboolean;cdecl;external;

procedure gtk_bitset_add_range(self:PGtkBitset; start:Tguint; n_items:Tguint);cdecl;external;

procedure gtk_bitset_remove_range(self:PGtkBitset; start:Tguint; n_items:Tguint);cdecl;external;

procedure gtk_bitset_add_range_closed(self:PGtkBitset; first:Tguint; last:Tguint);cdecl;external;

procedure gtk_bitset_remove_range_closed(self:PGtkBitset; first:Tguint; last:Tguint);cdecl;external;

procedure gtk_bitset_add_rectangle(self:PGtkBitset; start:Tguint; width:Tguint; height:Tguint; stride:Tguint);cdecl;external;

procedure gtk_bitset_remove_rectangle(self:PGtkBitset; start:Tguint; width:Tguint; height:Tguint; stride:Tguint);cdecl;external;

procedure gtk_bitset_union(self:PGtkBitset; other:PGtkBitset);cdecl;external;

procedure gtk_bitset_intersect(self:PGtkBitset; other:PGtkBitset);cdecl;external;

procedure gtk_bitset_subtract(self:PGtkBitset; other:PGtkBitset);cdecl;external;

procedure gtk_bitset_difference(self:PGtkBitset; other:PGtkBitset);cdecl;external;

procedure gtk_bitset_shift_left(self:PGtkBitset; amount:Tguint);cdecl;external;

procedure gtk_bitset_shift_right(self:PGtkBitset; amount:Tguint);cdecl;external;

procedure gtk_bitset_splice(self:PGtkBitset; position:Tguint; removed:Tguint; added:Tguint);cdecl;external;

type
  T_GtkBitsetIter = TGtkBitsetIter;

  P_GtkBitsetIter = ^T_GtkBitsetIter;
  T_GtkBitsetIter = record
      private_data : array[0..9] of Tgpointer;
    end;



function gtk_bitset_iter_get_type:TGType;cdecl;external;

function gtk_bitset_iter_init_first(iter:PGtkBitsetIter; set:PGtkBitset; value:Pguint):Tgboolean;cdecl;external;

function gtk_bitset_iter_init_last(iter:PGtkBitsetIter; set:PGtkBitset; value:Pguint):Tgboolean;cdecl;external;

function gtk_bitset_iter_init_at(iter:PGtkBitsetIter; set:PGtkBitset; target:Tguint; value:Pguint):Tgboolean;cdecl;external;

function gtk_bitset_iter_next(iter:PGtkBitsetIter; value:Pguint):Tgboolean;cdecl;external;

function gtk_bitset_iter_previous(iter:PGtkBitsetIter; value:Pguint):Tgboolean;cdecl;external;

function gtk_bitset_iter_get_value(iter:PGtkBitsetIter):Tguint;cdecl;external;

function gtk_bitset_iter_is_valid(iter:PGtkBitsetIter):Tgboolean;cdecl;external;

//// {$endif}



{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtk/gtk4builder.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtk/gtk4builder.h
    -p
    -t
    -S
    -d
    -c
}

//// { Pointers to basic pascal types, inserted by h2pas conversion program.}
//// Type
////   PLongint  = ^Longint;
////   PSmallInt = ^SmallInt;
////   PByte     = ^Byte;
////   PWord     = ^Word;
////   PDWord    = ^DWord;
////   PDouble   = ^Double;
//// 
Type
Pchar  = ^char;
PGClosure  = ^GClosure;
PGError  = ^GError;
PGObject  = ^GObject;
PGParamSpec  = ^GParamSpec;
PGSList  = ^GSList;
PGtkBuilder  = ^GtkBuilder;
PGtkBuilderError  = ^GtkBuilderError;
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


  PGtkBuilderError = ^TGtkBuilderError;
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

function gtk_builder_new:PGtkBuilder;cdecl;external;

function gtk_builder_add_from_file(builder:PGtkBuilder; filename:Pchar; error:PPGError):Tgboolean;cdecl;external;

function gtk_builder_add_from_resource(builder:PGtkBuilder; resource_path:Pchar; error:PPGError):Tgboolean;cdecl;external;

function gtk_builder_add_from_string(builder:PGtkBuilder; buffer:Pchar; length:Tgssize; error:PPGError):Tgboolean;cdecl;external;

function gtk_builder_add_objects_from_file(builder:PGtkBuilder; filename:Pchar; object_ids:PPchar; error:PPGError):Tgboolean;cdecl;external;

function gtk_builder_add_objects_from_resource(builder:PGtkBuilder; resource_path:Pchar; object_ids:PPchar; error:PPGError):Tgboolean;cdecl;external;

function gtk_builder_add_objects_from_string(builder:PGtkBuilder; buffer:Pchar; length:Tgssize; object_ids:PPchar; error:PPGError):Tgboolean;cdecl;external;

function gtk_builder_get_object(builder:PGtkBuilder; name:Pchar):PGObject;cdecl;external;

function gtk_builder_get_objects(builder:PGtkBuilder):PGSList;cdecl;external;

procedure gtk_builder_expose_object(builder:PGtkBuilder; name:Pchar; object:PGObject);cdecl;external;

function gtk_builder_get_current_object(builder:PGtkBuilder):PGObject;cdecl;external;

procedure gtk_builder_set_current_object(builder:PGtkBuilder; current_object:PGObject);cdecl;external;

procedure gtk_builder_set_translation_domain(builder:PGtkBuilder; domain:Pchar);cdecl;external;

function gtk_builder_get_translation_domain(builder:PGtkBuilder):Pchar;cdecl;external;

function gtk_builder_get_scope(builder:PGtkBuilder):PGtkBuilderScope;cdecl;external;

procedure gtk_builder_set_scope(builder:PGtkBuilder; scope:PGtkBuilderScope);cdecl;external;

function gtk_builder_get_type_from_name(builder:PGtkBuilder; type_name:Pchar):TGType;cdecl;external;

function gtk_builder_value_from_string(builder:PGtkBuilder; pspec:PGParamSpec; _string:Pchar; value:PGValue; error:PPGError):Tgboolean;cdecl;external;

function gtk_builder_value_from_string_type(builder:PGtkBuilder; _type:TGType; _string:Pchar; value:PGValue; error:PPGError):Tgboolean;cdecl;external;

function gtk_builder_new_from_file(filename:Pchar):PGtkBuilder;cdecl;external;

function gtk_builder_new_from_resource(resource_path:Pchar):PGtkBuilder;cdecl;external;

function gtk_builder_new_from_string(_string:Pchar; length:Tgssize):PGtkBuilder;cdecl;external;

function gtk_builder_create_closure(builder:PGtkBuilder; function_name:Pchar; flags:TGtkBuilderClosureFlags; object:PGObject; error:PPGError):PGClosure;cdecl;external;

function GTK_BUILDER_WARN_INVALID_CHILD_TYPE(object,_type : longint) : longint;


function gtk_builder_extend_with_template(builder:PGtkBuilder; object:PGObject; template_type:TGType; buffer:Pchar; length:Tgssize; 
           error:PPGError):Tgboolean;cdecl;external;

//// {$endif}



{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtk/gtk4border.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtk/gtk4border.h
    -p
    -t
    -S
    -d
    -c
}

//// { Pointers to basic pascal types, inserted by h2pas conversion program.}
//// Type
////   PLongint  = ^Longint;
////   PSmallInt = ^SmallInt;
////   PByte     = ^Byte;
////   PWord     = ^Word;
////   PDWord    = ^DWord;
////   PDouble   = ^Double;
//// 
Type
P_GtkBorder  = ^_GtkBorder;
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
  P_GtkBorder = ^T_GtkBorder;
  T_GtkBorder = record
      left : Tgint16;
      right : Tgint16;
      top : Tgint16;
      bottom : Tgint16;
    end;



function gtk_border_get_type:TGType;cdecl;external;

function gtk_border_new:PGtkBorder;cdecl;external;

function gtk_border_copy(border_:PGtkBorder):PGtkBorder;cdecl;external;

procedure gtk_border_free(border_:PGtkBorder);cdecl;external;


//// {$endif}



{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtk/gtk4boxlayout.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtk/gtk4boxlayout.h
    -p
    -t
    -S
    -d
    -c
}

//// { Pointers to basic pascal types, inserted by h2pas conversion program.}
//// Type
////   PLongint  = ^Longint;
////   PSmallInt = ^SmallInt;
////   PByte     = ^Byte;
////   PWord     = ^Word;
////   PDWord    = ^DWord;
////   PDouble   = ^Double;
//// 
Type
PGtkBoxLayout  = ^GtkBoxLayout;
PGtkLayoutManager  = ^GtkLayoutManager;
//// {$IFDEF FPC}
//// {$PACKRECORDS C}
//// {$ENDIF}



//// {$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
//// {$error "Only <gtk/gtk.h> can be included directly."}
//// {$endif}
//// {$include <gtk/gtkenums.h>}
//// {$include <gtk/gtklayoutmanager.h>}


function GTK_TYPE_BOX_LAYOUT : longint; { return type might be wrong }




function gtk_box_layout_new(orientation:TGtkOrientation):PGtkLayoutManager;cdecl;external;

procedure gtk_box_layout_set_homogeneous(box_layout:PGtkBoxLayout; homogeneous:Tgboolean);cdecl;external;

function gtk_box_layout_get_homogeneous(box_layout:PGtkBoxLayout):Tgboolean;cdecl;external;

procedure gtk_box_layout_set_spacing(box_layout:PGtkBoxLayout; spacing:Tguint);cdecl;external;

function gtk_box_layout_get_spacing(box_layout:PGtkBoxLayout):Tguint;cdecl;external;

procedure gtk_box_layout_set_baseline_position(box_layout:PGtkBoxLayout; position:TGtkBaselinePosition);cdecl;external;

function gtk_box_layout_get_baseline_position(box_layout:PGtkBoxLayout):TGtkBaselinePosition;cdecl;external;



{
  Automatically converted by H2Pas 1.0.0 from /tmp/GTK4-Konverter-header/gtk/gtk4buildable.h
  The following command line parameters were used:
    /tmp/GTK4-Konverter-header/gtk/gtk4buildable.h
    -p
    -t
    -S
    -d
    -c
}

//// { Pointers to basic pascal types, inserted by h2pas conversion program.}
//// Type
////   PLongint  = ^Longint;
////   PSmallInt = ^SmallInt;
////   PByte     = ^Byte;
////   PWord     = ^Word;
////   PDWord    = ^DWord;
////   PDouble   = ^Double;
//// 
Type
P_GtkBuildableIface  = ^_GtkBuildableIface;
P_GtkBuildableParser  = ^_GtkBuildableParser;
Pchar  = ^char;
PGError  = ^GError;
PGObject  = ^GObject;
Pgpointer  = ^gpointer;
PGPtrArray  = ^GPtrArray;
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








  P_GtkBuildableParser = ^T_GtkBuildableParser;
  T_GtkBuildableParser = record
      start_element : procedure (context:PGtkBuildableParseContext; element_name:Pchar; attribute_names:PPchar; attribute_values:PPchar; user_data:Tgpointer; 
                    error:PPGError);cdecl;
      end_element : procedure (context:PGtkBuildableParseContext; element_name:Pchar; user_data:Tgpointer; error:PPGError);cdecl;
      text : procedure (context:PGtkBuildableParseContext; text:Pchar; text_len:Tgsize; user_data:Tgpointer; error:PPGError);cdecl;
      error : procedure (context:PGtkBuildableParseContext; error:PGError; user_data:Tgpointer);cdecl;
      padding : array[0..3] of Tgpointer;
    end;








  P_GtkBuildableIface = ^T_GtkBuildableIface;
  T_GtkBuildableIface = record
      g_iface : TGTypeInterface;
      set_id : procedure (buildable:PGtkBuildable; id:Pchar);cdecl;
      get_id : function (buildable:PGtkBuildable):Pchar;cdecl;
      add_child : procedure (buildable:PGtkBuildable; builder:PGtkBuilder; child:PGObject; _type:Pchar);cdecl;
      set_buildable_property : procedure (buildable:PGtkBuildable; builder:PGtkBuilder; name:Pchar; value:PGValue);cdecl;
      construct_child : function (buildable:PGtkBuildable; builder:PGtkBuilder; name:Pchar):PGObject;cdecl;
      custom_tag_start : function (buildable:PGtkBuildable; builder:PGtkBuilder; child:PGObject; tagname:Pchar; parser:PGtkBuildableParser; 
                   data:Pgpointer):Tgboolean;cdecl;
      custom_tag_end : procedure (buildable:PGtkBuildable; builder:PGtkBuilder; child:PGObject; tagname:Pchar; data:Tgpointer);cdecl;
      custom_finished : procedure (buildable:PGtkBuildable; builder:PGtkBuilder; child:PGObject; tagname:Pchar; data:Tgpointer);cdecl;
      parser_finished : procedure (buildable:PGtkBuildable; builder:PGtkBuilder);cdecl;
      get_internal_child : function (buildable:PGtkBuildable; builder:PGtkBuilder; childname:Pchar):PGObject;cdecl;
    end;



function gtk_buildable_get_type:TGType;cdecl;external;

function gtk_buildable_get_buildable_id(buildable:PGtkBuildable):Pchar;cdecl;external;

procedure gtk_buildable_parse_context_push(context:PGtkBuildableParseContext; parser:PGtkBuildableParser; user_data:Tgpointer);cdecl;external;

function gtk_buildable_parse_context_pop(context:PGtkBuildableParseContext):Tgpointer;cdecl;external;

function gtk_buildable_parse_context_get_element(context:PGtkBuildableParseContext):Pchar;cdecl;external;

function gtk_buildable_parse_context_get_element_stack(context:PGtkBuildableParseContext):PGPtrArray;cdecl;external;

procedure gtk_buildable_parse_context_get_position(context:PGtkBuildableParseContext; line_number:Plongint; char_number:Plongint);cdecl;external;

//// {$endif}



implementation

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



function GTK_TYPE_BOOL_FILTER : longint; { return type might be wrong }
  begin
    GTK_TYPE_BOOL_FILTER:=gtk_bool_filter_get_type;
  end;



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





function GTK_TYPE_BIN_LAYOUT : longint; { return type might be wrong }
  begin
    GTK_TYPE_BIN_LAYOUT:=gtk_bin_layout_get_type;
  end;



function GTK_TYPE_BUILDER_SCOPE : longint; { return type might be wrong }
  begin
    GTK_TYPE_BUILDER_SCOPE:=gtk_builder_scope_get_type;
  end;

function GTK_TYPE_BUILDER_CSCOPE : longint; { return type might be wrong }
  begin
    GTK_TYPE_BUILDER_CSCOPE:=gtk_builder_cscope_get_type;
  end;



function GTK_TYPE_BITSET : longint; { return type might be wrong }
  begin
    GTK_TYPE_BITSET:=gtk_bitset_get_type;
  end;



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



function GTK_TYPE_BORDER : longint; { return type might be wrong }
  begin
    GTK_TYPE_BORDER:=gtk_border_get_type;
  end;



function GTK_TYPE_BOX_LAYOUT : longint; { return type might be wrong }
  begin
    GTK_TYPE_BOX_LAYOUT:=gtk_box_layout_get_type;
  end;



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




end.
