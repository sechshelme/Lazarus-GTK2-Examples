/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}


type
  TGtkSignalListItemFactory = record // _GtkSignalListItemFactory
  end;
  PGtkSignalListItemFactory = ^TGtkSignalListItemFactory;

  TGtkSignalListItemFactoryClass = record // _GtkSignalListItemFactoryClass
  end;
  PGtkSignalListItemFactoryClass = ^TGtkSignalListItemFactoryClass;

function gtk_signal_list_item_factory_get_type: TGType; cdecl; external gtklib;
function gtk_signal_list_item_factory_new: PGtkListItemFactory; cdecl; external gtklib;

// === Konventiert am: 28-7-24 15:49:01 ===

function GTK_TYPE_SIGNAL_LIST_ITEM_FACTORY: TGType;
function GTK_SIGNAL_LIST_ITEM_FACTORY(obj: Pointer): PGtkSignalListItemFactory;
function GTK_SIGNAL_LIST_ITEM_FACTORY_CLASS(klass: Pointer): PGtkSignalListItemFactoryClass;
function GTK_IS_SIGNAL_LIST_ITEM_FACTORY(obj: Pointer): Tgboolean;
function GTK_IS_SIGNAL_LIST_ITEM_FACTORY_CLASS(klass: Pointer): Tgboolean;
function GTK_SIGNAL_LIST_ITEM_FACTORY_GET_CLASS(obj: Pointer): PGtkSignalListItemFactoryClass;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_SIGNAL_LIST_ITEM_FACTORY: TGType;
begin
  GTK_TYPE_SIGNAL_LIST_ITEM_FACTORY := gtk_signal_list_item_factory_get_type;
end;

function GTK_SIGNAL_LIST_ITEM_FACTORY(obj: Pointer): PGtkSignalListItemFactory;
begin
  Result := PGtkSignalListItemFactory(g_type_check_instance_cast(obj, GTK_TYPE_SIGNAL_LIST_ITEM_FACTORY));
end;

function GTK_SIGNAL_LIST_ITEM_FACTORY_CLASS(klass: Pointer): PGtkSignalListItemFactoryClass;
begin
  Result := PGtkSignalListItemFactoryClass(g_type_check_class_cast(klass, GTK_TYPE_SIGNAL_LIST_ITEM_FACTORY));
end;

function GTK_IS_SIGNAL_LIST_ITEM_FACTORY(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_SIGNAL_LIST_ITEM_FACTORY);
end;

function GTK_IS_SIGNAL_LIST_ITEM_FACTORY_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_SIGNAL_LIST_ITEM_FACTORY);
end;

function GTK_SIGNAL_LIST_ITEM_FACTORY_GET_CLASS(obj: Pointer): PGtkSignalListItemFactoryClass;
begin
  Result := PGtkSignalListItemFactoryClass(PGTypeInstance(obj)^.g_class);
end;



{$ENDIF read_implementation}
