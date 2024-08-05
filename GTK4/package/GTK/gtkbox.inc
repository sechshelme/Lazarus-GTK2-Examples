/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  TGtkBox = record
    parent_instance: TGtkWidget;
  end;
  PGtkBox = ^TGtkBox;

  TGtkBoxClass = record
    parent_class: TGtkWidgetClass;
    padding: array[0..7] of Tgpointer;
  end;
  PGtkBoxClass = ^TGtkBoxClass;


function gtk_box_get_type: TGType; cdecl; external gtklib;
function gtk_box_new(orientation: TGtkOrientation; spacing: longint): PGtkWidget; cdecl; external gtklib;
procedure gtk_box_set_homogeneous(box: PGtkBox; homogeneous: Tgboolean); cdecl; external gtklib;
function gtk_box_get_homogeneous(box: PGtkBox): Tgboolean; cdecl; external gtklib;
procedure gtk_box_set_spacing(box: PGtkBox; spacing: longint); cdecl; external gtklib;
function gtk_box_get_spacing(box: PGtkBox): longint; cdecl; external gtklib;
procedure gtk_box_set_baseline_position(box: PGtkBox; position: TGtkBaselinePosition); cdecl; external gtklib;
function gtk_box_get_baseline_position(box: PGtkBox): TGtkBaselinePosition; cdecl; external gtklib;
procedure gtk_box_set_baseline_child(box: PGtkBox; child: longint); cdecl; external gtklib;
function gtk_box_get_baseline_child(box: PGtkBox): longint; cdecl; external gtklib;
procedure gtk_box_append(box: PGtkBox; child: PGtkWidget); cdecl; external gtklib;
procedure gtk_box_prepend(box: PGtkBox; child: PGtkWidget); cdecl; external gtklib;
procedure gtk_box_remove(box: PGtkBox; child: PGtkWidget); cdecl; external gtklib;
procedure gtk_box_insert_child_after(box: PGtkBox; child: PGtkWidget; sibling: PGtkWidget); cdecl; external gtklib;
procedure gtk_box_reorder_child_after(box: PGtkBox; child: PGtkWidget; sibling: PGtkWidget); cdecl; external gtklib;

// === Konventiert am: 11-7-24 22:33:47 ===

function GTK_TYPE_BOX: TGType;
function GTK_BOX(obj: Pointer): PGtkBox;
function GTK_BOX_CLASS(klass: Pointer): PGtkBoxClass;
function GTK_IS_BOX(obj: Pointer): Tgboolean;
function GTK_IS_BOX_CLASS(klass: Pointer): Tgboolean;
function GTK_BOX_GET_CLASS(obj: Pointer): PGtkBoxClass;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_BOX: TGType;
begin
  GTK_TYPE_BOX := gtk_box_get_type;
end;

function GTK_BOX(obj: Pointer): PGtkBox;
begin
  Result := PGtkBox(g_type_check_instance_cast(obj, GTK_TYPE_BOX));
end;

function GTK_BOX_CLASS(klass: Pointer): PGtkBoxClass;
begin
  Result := PGtkBoxClass(g_type_check_class_cast(klass, GTK_TYPE_BOX));
end;

function GTK_IS_BOX(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_BOX);
end;

function GTK_IS_BOX_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_BOX);
end;

function GTK_BOX_GET_CLASS(obj: Pointer): PGtkBoxClass;
begin
  Result := PGtkBoxClass(PGTypeInstance(obj)^.g_class);
end;



{$ENDIF read_implementation}
