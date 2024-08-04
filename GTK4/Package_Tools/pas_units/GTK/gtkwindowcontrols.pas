unit gtkwindowcontrols;

interface

uses
  glib2, common_GTK, gtkenums, gtktypes, gtkwidget;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}


type
  {G_DECLARE_FINAL_TYPE (GtkWindowControls, gtk_window_controls, GTK, WINDOW_CONTROLS, GtkWidget) }
  TGtkWindowControls = record
  end;
  PGtkWindowControls = ^TGtkWindowControls;

  TGtkWindowControlsClass = record
    parent_class : TGtkWidgetClass;
  end;
  PGtkWindowControlsClass = ^TGtkWindowControlsClass;

function gtk_window_controls_new(side: TGtkPackType): PGtkWidget; cdecl; external gtklib;
function gtk_window_controls_get_side(self: PGtkWindowControls): TGtkPackType; cdecl; external gtklib;
procedure gtk_window_controls_set_side(self: PGtkWindowControls; side: TGtkPackType); cdecl; external gtklib;
function gtk_window_controls_get_decoration_layout(self: PGtkWindowControls): PChar; cdecl; external gtklib;
procedure gtk_window_controls_set_decoration_layout(self: PGtkWindowControls; layout: PChar); cdecl; external gtklib;
function gtk_window_controls_get_empty(self: PGtkWindowControls): Tgboolean; cdecl; external gtklib;

// === Konventiert am: 14-7-24 16:12:24 ===

function gtk_window_controls_get_type: TGType; cdecl; external gtklib;

function GTK_TYPE_WINDOW_CONTROLS: TGType;
function GTK_WINDOW_CONTROLS(obj: Pointer): PGtkWindowControls;
function GTK_IS_WINDOW_CONTROLS(obj: Pointer): Tgboolean;

implementation

function GTK_TYPE_WINDOW_CONTROLS: TGType;
begin
  Result := gtk_window_controls_get_type;
end;

function GTK_WINDOW_CONTROLS(obj: Pointer): PGtkWindowControls;
begin
  Result := PGtkWindowControls(g_type_check_instance_cast(obj, GTK_TYPE_WINDOW_CONTROLS));
end;

function GTK_IS_WINDOW_CONTROLS(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_WINDOW_CONTROLS);
end;


end.
