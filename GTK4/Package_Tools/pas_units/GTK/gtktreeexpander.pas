unit gtktreeexpander;

interface

uses
  glib2, common_GTK, gtktypes, gtkwidget, gtktreelistmodel;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}


  {G_DECLARE_FINAL_TYPE (GtkTreeExpander, gtk_tree_expander, GTK, TREE_EXPANDER, GtkWidget) }
type
  TGtkTreeExpander = record
  end;
  PGtkTreeExpander = ^TGtkTreeExpander;

  TGtkTreeExpanderClass = record
    parent_class: TGtkWidgetClass;
  end;
  PGtkTreeExpanderClass = ^TGtkTreeExpanderClass;

function gtk_tree_expander_get_type: TGType; cdecl; external gtklib;
function gtk_tree_expander_new: PGtkWidget; cdecl; external gtklib;
function gtk_tree_expander_get_child(self: PGtkTreeExpander): PGtkWidget; cdecl; external gtklib;
procedure gtk_tree_expander_set_child(self: PGtkTreeExpander; child: PGtkWidget); cdecl; external gtklib;
function gtk_tree_expander_get_item(self: PGtkTreeExpander): Tgpointer; cdecl; external gtklib;
function gtk_tree_expander_get_list_row(self: PGtkTreeExpander): PGtkTreeListRow; cdecl; external gtklib;
procedure gtk_tree_expander_set_list_row(self: PGtkTreeExpander; list_row: PGtkTreeListRow); cdecl; external gtklib;
function gtk_tree_expander_get_indent_for_depth(self: PGtkTreeExpander): Tgboolean; cdecl; external gtklib;
procedure gtk_tree_expander_set_indent_for_depth(self: PGtkTreeExpander; indent_for_depth: Tgboolean); cdecl; external gtklib;
function gtk_tree_expander_get_indent_for_icon(self: PGtkTreeExpander): Tgboolean; cdecl; external gtklib;
procedure gtk_tree_expander_set_indent_for_icon(self: PGtkTreeExpander; indent_for_icon: Tgboolean); cdecl; external gtklib;
function gtk_tree_expander_get_hide_expander(self: PGtkTreeExpander): Tgboolean; cdecl; external gtklib;
procedure gtk_tree_expander_set_hide_expander(self: PGtkTreeExpander; hide_expander: Tgboolean); cdecl; external gtklib;

// === Konventiert am: 28-7-24 16:51:08 ===

function GTK_TYPE_TREE_EXPANDER: TGType;
function GTK_TREE_EXPANDER(obj: Pointer): PGtkTreeExpander;
function GTK_IS_TREE_EXPANDER(obj: Pointer): Tgboolean;

implementation

function GTK_TYPE_TREE_EXPANDER: TGType;
begin
  Result := gtk_tree_expander_get_type;
end;

function GTK_TREE_EXPANDER(obj: Pointer): PGtkTreeExpander;
begin
  Result := PGtkTreeExpander(g_type_check_instance_cast(obj, GTK_TYPE_TREE_EXPANDER));
end;

function GTK_IS_TREE_EXPANDER(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_TREE_EXPANDER);
end;




end.
