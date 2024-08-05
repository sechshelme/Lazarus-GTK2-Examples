/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  TGtkCenterBox = record // _GtkCenterBox
  end;
  PGtkCenterBox = ^TGtkCenterBox;

  TGtkCenterBoxClass = record // _GtkCenterBoxClas;
  end;
  PGtkCenterBoxClass = ^TGtkCenterBoxClass;


function gtk_center_box_get_type: TGType; cdecl; external gtklib;
function gtk_center_box_new: PGtkWidget; cdecl; external gtklib;
procedure gtk_center_box_set_start_widget(self: PGtkCenterBox; child: PGtkWidget); cdecl; external gtklib;
procedure gtk_center_box_set_center_widget(self: PGtkCenterBox; child: PGtkWidget); cdecl; external gtklib;
procedure gtk_center_box_set_end_widget(self: PGtkCenterBox; child: PGtkWidget); cdecl; external gtklib;
function gtk_center_box_get_start_widget(self: PGtkCenterBox): PGtkWidget; cdecl; external gtklib;
function gtk_center_box_get_center_widget(self: PGtkCenterBox): PGtkWidget; cdecl; external gtklib;
function gtk_center_box_get_end_widget(self: PGtkCenterBox): PGtkWidget; cdecl; external gtklib;
procedure gtk_center_box_set_baseline_position(self: PGtkCenterBox; position: TGtkBaselinePosition); cdecl; external gtklib;
function gtk_center_box_get_baseline_position(self: PGtkCenterBox): TGtkBaselinePosition; cdecl; external gtklib;
procedure gtk_center_box_set_shrink_center_last(self: PGtkCenterBox; shrink_center_last: Tgboolean); cdecl; external gtklib;
function gtk_center_box_get_shrink_center_last(self: PGtkCenterBox): Tgboolean; cdecl; external gtklib;

// === Konventiert am: 15-7-24 19:22:36 ===

function GTK_TYPE_CENTER_BOX: TGType;
function GTK_CENTER_BOX(obj: Pointer): PGtkCenterBox;
function GTK_CENTER_BOX_CLASS(klass: Pointer): PGtkCenterBoxClass;
function GTK_IS_CENTER_BOX(obj: Pointer): Tgboolean;
function GTK_IS_CENTER_BOX_CLASS(klass: Pointer): Tgboolean;
function GTK_CENTER_BOX_GET_CLASS(obj: Pointer): PGtkCenterBoxClass;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_CENTER_BOX: TGType;
begin
  GTK_TYPE_CENTER_BOX := gtk_center_box_get_type;
end;

function GTK_CENTER_BOX(obj: Pointer): PGtkCenterBox;
begin
  Result := PGtkCenterBox(g_type_check_instance_cast(obj, GTK_TYPE_CENTER_BOX));
end;

function GTK_CENTER_BOX_CLASS(klass: Pointer): PGtkCenterBoxClass;
begin
  Result := PGtkCenterBoxClass(g_type_check_class_cast(klass, GTK_TYPE_CENTER_BOX));
end;

function GTK_IS_CENTER_BOX(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_CENTER_BOX);
end;

function GTK_IS_CENTER_BOX_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_CENTER_BOX);
end;

function GTK_CENTER_BOX_GET_CLASS(obj: Pointer): PGtkCenterBoxClass;
begin
  Result := PGtkCenterBoxClass(PGTypeInstance(obj)^.g_class);
end;



{$ENDIF read_implementation}
