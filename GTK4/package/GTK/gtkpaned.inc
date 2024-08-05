/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  TGtkPaned = record // _GtkPaned
  end;
  PGtkPaned = ^TGtkPaned;

function gtk_paned_get_type: TGType; cdecl; external gtklib;
function gtk_paned_new(orientation: TGtkOrientation): PGtkWidget; cdecl; external gtklib;
procedure gtk_paned_set_start_child(paned: PGtkPaned; child: PGtkWidget); cdecl; external gtklib;
function gtk_paned_get_start_child(paned: PGtkPaned): PGtkWidget; cdecl; external gtklib;
procedure gtk_paned_set_resize_start_child(paned: PGtkPaned; resize: Tgboolean); cdecl; external gtklib;
function gtk_paned_get_resize_start_child(paned: PGtkPaned): Tgboolean; cdecl; external gtklib;
procedure gtk_paned_set_end_child(paned: PGtkPaned; child: PGtkWidget); cdecl; external gtklib;
function gtk_paned_get_end_child(paned: PGtkPaned): PGtkWidget; cdecl; external gtklib;
procedure gtk_paned_set_shrink_start_child(paned: PGtkPaned; resize: Tgboolean); cdecl; external gtklib;
function gtk_paned_get_shrink_start_child(paned: PGtkPaned): Tgboolean; cdecl; external gtklib;
procedure gtk_paned_set_resize_end_child(paned: PGtkPaned; resize: Tgboolean); cdecl; external gtklib;
function gtk_paned_get_resize_end_child(paned: PGtkPaned): Tgboolean; cdecl; external gtklib;
procedure gtk_paned_set_shrink_end_child(paned: PGtkPaned; resize: Tgboolean); cdecl; external gtklib;
function gtk_paned_get_shrink_end_child(paned: PGtkPaned): Tgboolean; cdecl; external gtklib;
function gtk_paned_get_position(paned: PGtkPaned): longint; cdecl; external gtklib;
procedure gtk_paned_set_position(paned: PGtkPaned; position: longint); cdecl; external gtklib;
procedure gtk_paned_set_wide_handle(paned: PGtkPaned; wide: Tgboolean); cdecl; external gtklib;
function gtk_paned_get_wide_handle(paned: PGtkPaned): Tgboolean; cdecl; external gtklib;

// === Konventiert am: 27-7-24 19:54:01 ===

function GTK_TYPE_PANED: TGType;
function GTK_PANED(obj: Pointer): PGtkPaned;
function GTK_IS_PANED(obj: Pointer): Tgboolean;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_PANED: TGType;
begin
  GTK_TYPE_PANED := gtk_paned_get_type;
end;

function GTK_PANED(obj: Pointer): PGtkPaned;
begin
  Result := PGtkPaned(g_type_check_instance_cast(obj, GTK_TYPE_PANED));
end;

function GTK_IS_PANED(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_PANED);
end;



{$ENDIF read_implementation}
