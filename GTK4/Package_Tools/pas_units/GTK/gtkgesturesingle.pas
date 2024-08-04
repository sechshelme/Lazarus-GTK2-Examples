unit gtkgesturesingle;

interface

uses
  glib2, common_GTK, GDK4;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type

  TGtkGestureSingle = record // _GtkGestureSingle
  end;
  PGtkGestureSingle = ^TGtkGestureSingle;

  TGtkGestureSingleClass = record // _GtkGestureSingleClass
  end;
  PGtkGestureSingleClass = ^TGtkGestureSingleClass;

function gtk_gesture_single_get_type: TGType; cdecl; external gtklib;
function gtk_gesture_single_get_touch_only(gesture: PGtkGestureSingle): Tgboolean; cdecl; external gtklib;
procedure gtk_gesture_single_set_touch_only(gesture: PGtkGestureSingle; touch_only: Tgboolean); cdecl; external gtklib;
function gtk_gesture_single_get_exclusive(gesture: PGtkGestureSingle): Tgboolean; cdecl; external gtklib;
procedure gtk_gesture_single_set_exclusive(gesture: PGtkGestureSingle; exclusive: Tgboolean); cdecl; external gtklib;
function gtk_gesture_single_get_button(gesture: PGtkGestureSingle): Tguint; cdecl; external gtklib;
procedure gtk_gesture_single_set_button(gesture: PGtkGestureSingle; button: Tguint); cdecl; external gtklib;
function gtk_gesture_single_get_current_button(gesture: PGtkGestureSingle): Tguint; cdecl; external gtklib;
function gtk_gesture_single_get_current_sequence(gesture: PGtkGestureSingle): PGdkEventSequence; cdecl; external gtklib;

// === Konventiert am: 27-7-24 15:44:34 ===

function GTK_TYPE_GESTURE_SINGLE: TGType;
function GTK_GESTURE_SINGLE(obj: Pointer): PGtkGestureSingle;
function GTK_GESTURE_SINGLE_CLASS(klass: Pointer): PGtkGestureSingleClass;
function GTK_IS_GESTURE_SINGLE(obj: Pointer): Tgboolean;
function GTK_IS_GESTURE_SINGLE_CLASS(klass: Pointer): Tgboolean;
function GTK_GESTURE_SINGLE_GET_CLASS(obj: Pointer): PGtkGestureSingleClass;

implementation

function GTK_TYPE_GESTURE_SINGLE: TGType;
begin
  GTK_TYPE_GESTURE_SINGLE := gtk_gesture_single_get_type;
end;

function GTK_GESTURE_SINGLE(obj: Pointer): PGtkGestureSingle;
begin
  Result := PGtkGestureSingle(g_type_check_instance_cast(obj, GTK_TYPE_GESTURE_SINGLE));
end;

function GTK_GESTURE_SINGLE_CLASS(klass: Pointer): PGtkGestureSingleClass;
begin
  Result := PGtkGestureSingleClass(g_type_check_class_cast(klass, GTK_TYPE_GESTURE_SINGLE));
end;

function GTK_IS_GESTURE_SINGLE(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_GESTURE_SINGLE);
end;

function GTK_IS_GESTURE_SINGLE_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_GESTURE_SINGLE);
end;

function GTK_GESTURE_SINGLE_GET_CLASS(obj: Pointer): PGtkGestureSingleClass;
begin
  Result := PGtkGestureSingleClass(PGTypeInstance(obj)^.g_class);
end;



end.
