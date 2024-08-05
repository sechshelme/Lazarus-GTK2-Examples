/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

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

{$ENDIF read_interface}


{$IFDEF read_implementation}

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



{$ENDIF read_implementation}
