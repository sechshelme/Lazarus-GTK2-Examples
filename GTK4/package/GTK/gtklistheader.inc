/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}


{GDK_DECLARE_INTERNAL_TYPE (GtkListHeader, gtk_list_header, GTK, LIST_HEADER, GObject) }
type
  TGtkListHeader = record
  end;
  PGtkListHeader = ^TGtkListHeader;

  TGtkListHeaderClass = record
  end;
  PGtkListHeaderClass = ^TGtkListHeaderClass;

function gtk_list_header_get_type: TGType; cdecl; external gtklib;
function gtk_list_header_get_item(self:PGtkListHeader):Tgpointer;cdecl;external gtklib;
function gtk_list_header_get_start(self:PGtkListHeader):Tguint;cdecl;external gtklib;
function gtk_list_header_get_end(self:PGtkListHeader):Tguint;cdecl;external gtklib;
function gtk_list_header_get_n_items(self:PGtkListHeader):Tguint;cdecl;external gtklib;
procedure gtk_list_header_set_child(self:PGtkListHeader; child:PGtkWidget);cdecl;external gtklib;
function gtk_list_header_get_child(self:PGtkListHeader):PGtkWidget;cdecl;external gtklib;

// === Konventiert am: 27-7-24 19:13:06 ===

function GTK_TYPE_LIST_HEADER: TGType;
function GTK_LIST_HEADER(obj: Pointer): PGtkListHeader;
function GTK_IS_LIST_HEADER(obj: Pointer): Tgboolean;
function GTK_LIST_HEADER_CLASS(klass: Pointer): PGtkListHeaderClass;
function GTK_IS_LIST_HEADER_CLASS(klass: Pointer): Tgboolean;
function GTK_LIST_HEADER_GET_CLASS(obj: Pointer): PGtkListHeaderClass;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_LIST_HEADER: TGType;
begin
  Result := gtk_list_header_get_type;
end;

function GTK_LIST_HEADER(obj: Pointer): PGtkListHeader;
begin
  Result := PGtkListHeader(g_type_check_instance_cast(obj, GTK_TYPE_LIST_HEADER));
end;

function GTK_IS_LIST_HEADER(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_LIST_HEADER);
end;

function GTK_LIST_HEADER_CLASS(klass: Pointer): PGtkListHeaderClass;
begin
  Result := PGtkListHeaderClass(g_type_check_class_cast(klass, GTK_TYPE_LIST_HEADER));
end;

function GTK_IS_LIST_HEADER_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_LIST_HEADER);
end;

function GTK_LIST_HEADER_GET_CLASS(obj: Pointer): PGtkListHeaderClass;
begin
  Result := PGtkListHeaderClass(PGTypeInstance(obj)^.g_class);
end;




{$ENDIF read_implementation}
