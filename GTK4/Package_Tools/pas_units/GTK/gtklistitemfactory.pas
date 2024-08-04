unit gtklistitemfactory;

interface

uses
  glib2, common_GTK, gtktypes;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  // ausgelagert
  //TGtkListItemFactory = record // _GtkListItemFactory
  //end;
  //PGtkListItemFactory = ^TGtkListItemFactory;
  //
  TGtkListItemFactoryClass = record // _GtkListItemFactoryClass
  end;
  PGtkListItemFactoryClass = ^TGtkListItemFactoryClass;

function gtk_list_item_factory_get_type: TGType; cdecl; external gtklib;

// === Konventiert am: 26-7-24 20:23:54 ===

function GTK_TYPE_LIST_ITEM_FACTORY: TGType;
function GTK_LIST_ITEM_FACTORY(obj: Pointer): PGtkListItemFactory;
function GTK_LIST_ITEM_FACTORY_CLASS(klass: Pointer): PGtkListItemFactoryClass;
function GTK_IS_LIST_ITEM_FACTORY(obj: Pointer): Tgboolean;
function GTK_IS_LIST_ITEM_FACTORY_CLASS(klass: Pointer): Tgboolean;
function GTK_LIST_ITEM_FACTORY_GET_CLASS(obj: Pointer): PGtkListItemFactoryClass;

implementation

function GTK_TYPE_LIST_ITEM_FACTORY: TGType;
begin
  GTK_TYPE_LIST_ITEM_FACTORY := gtk_list_item_factory_get_type;
end;

function GTK_LIST_ITEM_FACTORY(obj: Pointer): PGtkListItemFactory;
begin
  Result := PGtkListItemFactory(g_type_check_instance_cast(obj, GTK_TYPE_LIST_ITEM_FACTORY));
end;

function GTK_LIST_ITEM_FACTORY_CLASS(klass: Pointer): PGtkListItemFactoryClass;
begin
  Result := PGtkListItemFactoryClass(g_type_check_class_cast(klass, GTK_TYPE_LIST_ITEM_FACTORY));
end;

function GTK_IS_LIST_ITEM_FACTORY(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_LIST_ITEM_FACTORY);
end;

function GTK_IS_LIST_ITEM_FACTORY_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_LIST_ITEM_FACTORY);
end;

function GTK_LIST_ITEM_FACTORY_GET_CLASS(obj: Pointer): PGtkListItemFactoryClass;
begin
  Result := PGtkListItemFactoryClass(PGTypeInstance(obj)^.g_class);
end;



end.
