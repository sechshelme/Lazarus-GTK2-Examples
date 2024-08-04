unit gtkbuilderlistitemfactory;

interface

uses
  glib2, common_GTK, gtktypes, gtkwidget;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  TGtkBuilderListItemFactory = record // _GtkBuilderListItemFactory
  end;
  PGtkBuilderListItemFactory = ^TGtkBuilderListItemFactory;

  TGtkBuilderListItemFactoryClass = record // _GtkBuilderListItemFactoryClass
  end;
  PGtkBuilderListItemFactoryClass = ^TGtkBuilderListItemFactoryClass;

function gtk_builder_list_item_factory_get_type: TGType; cdecl; external gtklib;
function gtk_builder_list_item_factory_new_from_bytes(scope: PGtkBuilderScope; bytes: PGBytes): PGtkListItemFactory; cdecl; external gtklib;
function gtk_builder_list_item_factory_new_from_resource(scope: PGtkBuilderScope; resource_path: PChar): PGtkListItemFactory; cdecl; external gtklib;
function gtk_builder_list_item_factory_get_bytes(self: PGtkBuilderListItemFactory): PGBytes; cdecl; external gtklib;
function gtk_builder_list_item_factory_get_resource(self: PGtkBuilderListItemFactory): PChar; cdecl; external gtklib;
function gtk_builder_list_item_factory_get_scope(self: PGtkBuilderListItemFactory): PGtkBuilderScope; cdecl; external gtklib;

// === Konventiert am: 23-7-24 16:58:53 ===

function GTK_TYPE_BUILDER_LIST_ITEM_FACTORY: TGType;
function GTK_BUILDER_LIST_ITEM_FACTORY(obj: Pointer): PGtkBuilderListItemFactory;
function GTK_BUILDER_LIST_ITEM_FACTORY_CLASS(klass: Pointer): PGtkBuilderListItemFactoryClass;
function GTK_IS_BUILDER_LIST_ITEM_FACTORY(obj: Pointer): Tgboolean;
function GTK_IS_BUILDER_LIST_ITEM_FACTORY_CLASS(klass: Pointer): Tgboolean;
function GTK_BUILDER_LIST_ITEM_FACTORY_GET_CLASS(obj: Pointer): PGtkBuilderListItemFactoryClass;

implementation

function GTK_TYPE_BUILDER_LIST_ITEM_FACTORY: TGType;
begin
  GTK_TYPE_BUILDER_LIST_ITEM_FACTORY := gtk_builder_list_item_factory_get_type;
end;

function GTK_BUILDER_LIST_ITEM_FACTORY(obj: Pointer): PGtkBuilderListItemFactory;
begin
  Result := PGtkBuilderListItemFactory(g_type_check_instance_cast(obj, GTK_TYPE_BUILDER_LIST_ITEM_FACTORY));
end;

function GTK_BUILDER_LIST_ITEM_FACTORY_CLASS(klass: Pointer): PGtkBuilderListItemFactoryClass;
begin
  Result := PGtkBuilderListItemFactoryClass(g_type_check_class_cast(klass, GTK_TYPE_BUILDER_LIST_ITEM_FACTORY));
end;

function GTK_IS_BUILDER_LIST_ITEM_FACTORY(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_BUILDER_LIST_ITEM_FACTORY);
end;

function GTK_IS_BUILDER_LIST_ITEM_FACTORY_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_BUILDER_LIST_ITEM_FACTORY);
end;

function GTK_BUILDER_LIST_ITEM_FACTORY_GET_CLASS(obj: Pointer): PGtkBuilderListItemFactoryClass;
begin
  Result := PGtkBuilderListItemFactoryClass(PGTypeInstance(obj)^.g_class);
end;



end.
