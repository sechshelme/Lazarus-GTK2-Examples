/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  TGtkAspectFrame = record  // _GtkAspectFrame
  end;
  PGtkAspectFrame = ^TGtkAspectFrame;

function gtk_aspect_frame_get_type: TGType; cdecl; external gtklib;
function gtk_aspect_frame_new(xalign: single; yalign: single; ratio: single; obey_child: Tgboolean): PGtkWidget; cdecl; external gtklib;
procedure gtk_aspect_frame_set_xalign(self: PGtkAspectFrame; xalign: single); cdecl; external gtklib;
function gtk_aspect_frame_get_xalign(self: PGtkAspectFrame): single; cdecl; external gtklib;
procedure gtk_aspect_frame_set_yalign(self: PGtkAspectFrame; yalign: single); cdecl; external gtklib;
function gtk_aspect_frame_get_yalign(self: PGtkAspectFrame): single; cdecl; external gtklib;
procedure gtk_aspect_frame_set_ratio(self: PGtkAspectFrame; ratio: single); cdecl; external gtklib;
function gtk_aspect_frame_get_ratio(self: PGtkAspectFrame): single; cdecl; external gtklib;
procedure gtk_aspect_frame_set_obey_child(self: PGtkAspectFrame; obey_child: Tgboolean); cdecl; external gtklib;
function gtk_aspect_frame_get_obey_child(self: PGtkAspectFrame): Tgboolean; cdecl; external gtklib;
procedure gtk_aspect_frame_set_child(self: PGtkAspectFrame; child: PGtkWidget); cdecl; external gtklib;
function gtk_aspect_frame_get_child(self: PGtkAspectFrame): PGtkWidget; cdecl; external gtklib;

// === Konventiert am: 13-7-24 17:20:14 ===

function GTK_TYPE_ASPECT_FRAME: TGType;
function GTK_ASPECT_FRAME(obj: Pointer): PGtkAspectFrame;
function GTK_IS_ASPECT_FRAME(obj: Pointer): Tgboolean;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_ASPECT_FRAME: TGType;
begin
  GTK_TYPE_ASPECT_FRAME := gtk_aspect_frame_get_type;
end;

function GTK_ASPECT_FRAME(obj: Pointer): PGtkAspectFrame;
begin
  Result := PGtkAspectFrame(g_type_check_instance_cast(obj, GTK_TYPE_ASPECT_FRAME));
end;

function GTK_IS_ASPECT_FRAME(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_ASPECT_FRAME);
end;



{$ENDIF read_implementation}
