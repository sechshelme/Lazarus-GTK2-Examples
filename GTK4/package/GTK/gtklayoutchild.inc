/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}


{G_DECLARE_DERIVABLE_TYPE (GtkLayoutChild, gtk_layout_child, GTK, LAYOUT_CHILD, GObject) }
type
  TGtkLayoutChild = record
    parent_instance: TGObject
  end;
  PGtkLayoutChild = ^TGtkLayoutChild;

type
  PGtkLayoutChildClass = ^TGtkLayoutChildClass;
  TGtkLayoutChildClass = record
      parent_class : TGObjectClass;
    end;


function gtk_layout_child_get_type: TGType; cdecl; external gtklib;
function gtk_layout_child_get_layout_manager(layout_child:PGtkLayoutChild):PGtkLayoutManager;cdecl;external gtklib;
function gtk_layout_child_get_child_widget(layout_child:PGtkLayoutChild):PGtkWidget;cdecl;external gtklib;

// === Konventiert am: 17-7-24 13:43:55 ===

function GTK_TYPE_LAYOUT_CHILD: TGType;
function GTK_LAYOUT_CHILD(obj: Pointer): PGtkLayoutChild;
function GTK_IS_LAYOUT_CHILD(obj: Pointer): Tgboolean;
function GTK_LAYOUT_CHILD_CLASS(klass: Pointer): PGtkLayoutChildClass;
function GTK_IS_LAYOUT_CHILD_CLASS(klass: Pointer): Tgboolean;
function GTK_LAYOUT_CHILD_GET_CLASS(obj: Pointer): PGtkLayoutChildClass;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_LAYOUT_CHILD: TGType;
begin
  Result := gtk_layout_child_get_type;
end;

function GTK_LAYOUT_CHILD(obj: Pointer): PGtkLayoutChild;
begin
  Result := PGtkLayoutChild(g_type_check_instance_cast(obj, GTK_TYPE_LAYOUT_CHILD));
end;

function GTK_IS_LAYOUT_CHILD(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_LAYOUT_CHILD);
end;

function GTK_LAYOUT_CHILD_CLASS(klass: Pointer): PGtkLayoutChildClass;
begin
  Result := PGtkLayoutChildClass(g_type_check_class_cast(klass, GTK_TYPE_LAYOUT_CHILD));
end;

function GTK_IS_LAYOUT_CHILD_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_LAYOUT_CHILD);
end;

function GTK_LAYOUT_CHILD_GET_CLASS(obj: Pointer): PGtkLayoutChildClass;
begin
  Result := PGtkLayoutChildClass(PGTypeInstance(obj)^.g_class);
end;




{$ENDIF read_implementation}
