/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  PGdkX11Drag = ^TGdkX11Drag;
  TGdkX11Drag = TGdkDrag;

  TGdkX11DragClass = record
  end;
  PGdkX11DragClass = ^TGdkX11DragClass;

function gdk_x11_drag_get_type: TGType; cdecl; external gtklib;

// === Konventiert am: 3-8-24 17:42:29 ===

function GDK_TYPE_X11_DRAG: TGType;
function GDK_X11_DRAG(obj: Pointer): PGdkX11Drag;
function GDK_X11_DRAG_CLASS(klass: Pointer): PGdkX11DragClass;
function GDK_IS_X11_DRAG(obj: Pointer): Tgboolean;
function GDK_IS_X11_DRAG_CLASS(klass: Pointer): Tgboolean;
function GDK_X11_DRAG_GET_CLASS(obj: Pointer): PGdkX11DragClass;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GDK_TYPE_X11_DRAG: TGType;
begin
  GDK_TYPE_X11_DRAG := gdk_x11_drag_get_type;
end;

function GDK_X11_DRAG(obj: Pointer): PGdkX11Drag;
begin
  Result := PGdkX11Drag(g_type_check_instance_cast(obj, GDK_TYPE_X11_DRAG));
end;

function GDK_X11_DRAG_CLASS(klass: Pointer): PGdkX11DragClass;
begin
  Result := PGdkX11DragClass(g_type_check_class_cast(klass, GDK_TYPE_X11_DRAG));
end;

function GDK_IS_X11_DRAG(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GDK_TYPE_X11_DRAG);
end;

function GDK_IS_X11_DRAG_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GDK_TYPE_X11_DRAG);
end;

function GDK_X11_DRAG_GET_CLASS(obj: Pointer): PGdkX11DragClass;
begin
  Result := PGdkX11DragClass(PGTypeInstance(obj)^.g_class);
end;



{$ENDIF read_implementation}
