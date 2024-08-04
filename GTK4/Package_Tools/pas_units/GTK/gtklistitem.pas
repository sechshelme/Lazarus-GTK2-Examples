unit gtklistitem;

interface

uses
  glib2, common_GTK, gtktypes, gtkwidget;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}


  {GDK_DECLARE_INTERNAL_TYPE (GtkListItem, gtk_list_item, GTK, LIST_ITEM, GObject) }
type
  TGtkListItem = record
  end;
  PGtkListItem = ^TGtkListItem;

  TGtkListItemClass = record
  end;
  PGtkListItemClass = ^TGtkListItemClass;

function gtk_list_item_get_type: TGType; cdecl; external gtklib;
function gtk_list_item_get_item(self: PGtkListItem): Tgpointer; cdecl; external gtklib;
function gtk_list_item_get_position(self: PGtkListItem): Tguint; cdecl; external gtklib;
function gtk_list_item_get_selected(self: PGtkListItem): Tgboolean; cdecl; external gtklib;
function gtk_list_item_get_selectable(self: PGtkListItem): Tgboolean; cdecl; external gtklib;
procedure gtk_list_item_set_selectable(self: PGtkListItem; selectable: Tgboolean); cdecl; external gtklib;
function gtk_list_item_get_activatable(self: PGtkListItem): Tgboolean; cdecl; external gtklib;
procedure gtk_list_item_set_activatable(self: PGtkListItem; activatable: Tgboolean); cdecl; external gtklib;
function gtk_list_item_get_focusable(self: PGtkListItem): Tgboolean; cdecl; external gtklib;
procedure gtk_list_item_set_focusable(self: PGtkListItem; focusable: Tgboolean); cdecl; external gtklib;
procedure gtk_list_item_set_child(self: PGtkListItem; child: PGtkWidget); cdecl; external gtklib;
function gtk_list_item_get_child(self: PGtkListItem): PGtkWidget; cdecl; external gtklib;
procedure gtk_list_item_set_accessible_description(self: PGtkListItem; description: PChar); cdecl; external gtklib;
function gtk_list_item_get_accessible_description(self: PGtkListItem): PChar; cdecl; external gtklib;
procedure gtk_list_item_set_accessible_label(self: PGtkListItem; _label: PChar); cdecl; external gtklib;
function gtk_list_item_get_accessible_label(self: PGtkListItem): PChar; cdecl; external gtklib;

// === Konventiert am: 27-7-24 19:13:10 ===

function GTK_TYPE_LIST_ITEM: TGType;
function GTK_LIST_ITEM(obj: Pointer): PGtkListItem;
function GTK_IS_LIST_ITEM(obj: Pointer): Tgboolean;
function GTK_LIST_ITEM_CLASS(klass: Pointer): PGtkListItemClass;
function GTK_IS_LIST_ITEM_CLASS(klass: Pointer): Tgboolean;
function GTK_LIST_ITEM_GET_CLASS(obj: Pointer): PGtkListItemClass;

implementation

function GTK_TYPE_LIST_ITEM: TGType;
begin
  Result := gtk_list_item_get_type;
end;

function GTK_LIST_ITEM(obj: Pointer): PGtkListItem;
begin
  Result := PGtkListItem(g_type_check_instance_cast(obj, GTK_TYPE_LIST_ITEM));
end;

function GTK_IS_LIST_ITEM(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_LIST_ITEM);
end;

function GTK_LIST_ITEM_CLASS(klass: Pointer): PGtkListItemClass;
begin
  Result := PGtkListItemClass(g_type_check_class_cast(klass, GTK_TYPE_LIST_ITEM));
end;

function GTK_IS_LIST_ITEM_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_LIST_ITEM);
end;

function GTK_LIST_ITEM_GET_CLASS(obj: Pointer): PGtkListItemClass;
begin
  Result := PGtkListItemClass(PGTypeInstance(obj)^.g_class);
end;



end.
