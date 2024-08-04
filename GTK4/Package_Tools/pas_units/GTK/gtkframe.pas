unit gtkframe;

interface

uses
  glib2, common_GTK, gtktypes, gtkwidget;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

type
  TGtkFrame = record
    parent_instance: TGtkWidget;
  end;
  PGtkFrame = ^TGtkFrame;

  TGtkFrameClass = record
    parent_class: TGtkWidgetClass;
    compute_child_allocation: procedure(frame: PGtkFrame; allocation: PGtkAllocation); cdecl;
    padding: array[0..7] of Tgpointer;
  end;
  PGtkFrameClass = ^TGtkFrameClass;


function gtk_frame_get_type: TGType; cdecl; external gtklib;
function gtk_frame_new(_label: PChar): PGtkWidget; cdecl; external gtklib;
procedure gtk_frame_set_label(frame: PGtkFrame; _label: PChar); cdecl; external gtklib;
function gtk_frame_get_label(frame: PGtkFrame): PChar; cdecl; external gtklib;
procedure gtk_frame_set_label_widget(frame: PGtkFrame; label_widget: PGtkWidget); cdecl; external gtklib;
function gtk_frame_get_label_widget(frame: PGtkFrame): PGtkWidget; cdecl; external gtklib;
procedure gtk_frame_set_label_align(frame: PGtkFrame; xalign: single); cdecl; external gtklib;
function gtk_frame_get_label_align(frame: PGtkFrame): single; cdecl; external gtklib;
procedure gtk_frame_set_child(frame: PGtkFrame; child: PGtkWidget); cdecl; external gtklib;
function gtk_frame_get_child(frame: PGtkFrame): PGtkWidget; cdecl; external gtklib;

// === Konventiert am: 27-7-24 15:28:23 ===

function GTK_TYPE_FRAME: TGType;
function GTK_FRAME(obj: Pointer): PGtkFrame;
function GTK_FRAME_CLASS(klass: Pointer): PGtkFrameClass;
function GTK_IS_FRAME(obj: Pointer): Tgboolean;
function GTK_IS_FRAME_CLASS(klass: Pointer): Tgboolean;
function GTK_FRAME_GET_CLASS(obj: Pointer): PGtkFrameClass;

implementation

function GTK_TYPE_FRAME: TGType;
begin
  GTK_TYPE_FRAME := gtk_frame_get_type;
end;

function GTK_FRAME(obj: Pointer): PGtkFrame;
begin
  Result := PGtkFrame(g_type_check_instance_cast(obj, GTK_TYPE_FRAME));
end;

function GTK_FRAME_CLASS(klass: Pointer): PGtkFrameClass;
begin
  Result := PGtkFrameClass(g_type_check_class_cast(klass, GTK_TYPE_FRAME));
end;

function GTK_IS_FRAME(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_FRAME);
end;

function GTK_IS_FRAME_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_FRAME);
end;

function GTK_FRAME_GET_CLASS(obj: Pointer): PGtkFrameClass;
begin
  Result := PGtkFrameClass(PGTypeInstance(obj)^.g_class);
end;



end.
