unit gtkscrolledwindow;

interface

uses
  glib2, common_GTK, gtktypes, gtkwidget, gtkadjustment;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  TGtkScrolledWindow = record // _GtkScrolledWindow
  end;
  PGtkScrolledWindow = ^TGtkScrolledWindow;

  PGtkCornerType = ^TGtkCornerType;
  TGtkCornerType = longint;

const
  GTK_CORNER_TOP_LEFT = 0;
  GTK_CORNER_BOTTOM_LEFT = 1;
  GTK_CORNER_TOP_RIGHT = 2;
  GTK_CORNER_BOTTOM_RIGHT = 3;

type
  PGtkPolicyType = ^TGtkPolicyType;
  TGtkPolicyType = longint;

const
  GTK_POLICY_ALWAYS = 0;
  GTK_POLICY_AUTOMATIC = 1;
  GTK_POLICY_NEVER = 2;
  GTK_POLICY_EXTERNAL = 3;


function gtk_scrolled_window_get_type: TGType; cdecl; external gtklib;
function gtk_scrolled_window_new: PGtkWidget; cdecl; external gtklib;
procedure gtk_scrolled_window_set_hadjustment(scrolled_window: PGtkScrolledWindow; hadjustment: PGtkAdjustment); cdecl; external gtklib;
procedure gtk_scrolled_window_set_vadjustment(scrolled_window: PGtkScrolledWindow; vadjustment: PGtkAdjustment); cdecl; external gtklib;
function gtk_scrolled_window_get_hadjustment(scrolled_window: PGtkScrolledWindow): PGtkAdjustment; cdecl; external gtklib;
function gtk_scrolled_window_get_vadjustment(scrolled_window: PGtkScrolledWindow): PGtkAdjustment; cdecl; external gtklib;
function gtk_scrolled_window_get_hscrollbar(scrolled_window: PGtkScrolledWindow): PGtkWidget; cdecl; external gtklib;
function gtk_scrolled_window_get_vscrollbar(scrolled_window: PGtkScrolledWindow): PGtkWidget; cdecl; external gtklib;
procedure gtk_scrolled_window_set_policy(scrolled_window: PGtkScrolledWindow; hscrollbar_policy: TGtkPolicyType; vscrollbar_policy: TGtkPolicyType); cdecl; external gtklib;
procedure gtk_scrolled_window_get_policy(scrolled_window: PGtkScrolledWindow; hscrollbar_policy: PGtkPolicyType; vscrollbar_policy: PGtkPolicyType); cdecl; external gtklib;
procedure gtk_scrolled_window_set_placement(scrolled_window: PGtkScrolledWindow; window_placement: TGtkCornerType); cdecl; external gtklib;
procedure gtk_scrolled_window_unset_placement(scrolled_window: PGtkScrolledWindow); cdecl; external gtklib;
function gtk_scrolled_window_get_placement(scrolled_window: PGtkScrolledWindow): TGtkCornerType; cdecl; external gtklib;
procedure gtk_scrolled_window_set_has_frame(scrolled_window: PGtkScrolledWindow; has_frame: Tgboolean); cdecl; external gtklib;
function gtk_scrolled_window_get_has_frame(scrolled_window: PGtkScrolledWindow): Tgboolean; cdecl; external gtklib;
function gtk_scrolled_window_get_min_content_width(scrolled_window: PGtkScrolledWindow): longint; cdecl; external gtklib;
procedure gtk_scrolled_window_set_min_content_width(scrolled_window: PGtkScrolledWindow; Width: longint); cdecl; external gtklib;
function gtk_scrolled_window_get_min_content_height(scrolled_window: PGtkScrolledWindow): longint; cdecl; external gtklib;
procedure gtk_scrolled_window_set_min_content_height(scrolled_window: PGtkScrolledWindow; Height: longint); cdecl; external gtklib;
procedure gtk_scrolled_window_set_kinetic_scrolling(scrolled_window: PGtkScrolledWindow; kinetic_scrolling: Tgboolean); cdecl; external gtklib;
function gtk_scrolled_window_get_kinetic_scrolling(scrolled_window: PGtkScrolledWindow): Tgboolean; cdecl; external gtklib;
procedure gtk_scrolled_window_set_overlay_scrolling(scrolled_window: PGtkScrolledWindow; overlay_scrolling: Tgboolean); cdecl; external gtklib;
function gtk_scrolled_window_get_overlay_scrolling(scrolled_window: PGtkScrolledWindow): Tgboolean; cdecl; external gtklib;
procedure gtk_scrolled_window_set_max_content_width(scrolled_window: PGtkScrolledWindow; Width: longint); cdecl; external gtklib;
function gtk_scrolled_window_get_max_content_width(scrolled_window: PGtkScrolledWindow): longint; cdecl; external gtklib;
procedure gtk_scrolled_window_set_max_content_height(scrolled_window: PGtkScrolledWindow; Height: longint); cdecl; external gtklib;
function gtk_scrolled_window_get_max_content_height(scrolled_window: PGtkScrolledWindow): longint; cdecl; external gtklib;
procedure gtk_scrolled_window_set_propagate_natural_width(scrolled_window: PGtkScrolledWindow; propagate: Tgboolean); cdecl; external gtklib;
function gtk_scrolled_window_get_propagate_natural_width(scrolled_window: PGtkScrolledWindow): Tgboolean; cdecl; external gtklib;
procedure gtk_scrolled_window_set_propagate_natural_height(scrolled_window: PGtkScrolledWindow; propagate: Tgboolean); cdecl; external gtklib;
function gtk_scrolled_window_get_propagate_natural_height(scrolled_window: PGtkScrolledWindow): Tgboolean; cdecl; external gtklib;
procedure gtk_scrolled_window_set_child(scrolled_window: PGtkScrolledWindow; child: PGtkWidget); cdecl; external gtklib;
function gtk_scrolled_window_get_child(scrolled_window: PGtkScrolledWindow): PGtkWidget; cdecl; external gtklib;

// === Konventiert am: 23-7-24 13:58:14 ===

function GTK_TYPE_SCROLLED_WINDOW: TGType;
function GTK_SCROLLED_WINDOW(obj: Pointer): PGtkScrolledWindow;
function GTK_IS_SCROLLED_WINDOW(obj: Pointer): Tgboolean;

implementation

function GTK_TYPE_SCROLLED_WINDOW: TGType;
begin
  GTK_TYPE_SCROLLED_WINDOW := gtk_scrolled_window_get_type;
end;

function GTK_SCROLLED_WINDOW(obj: Pointer): PGtkScrolledWindow;
begin
  Result := PGtkScrolledWindow(g_type_check_instance_cast(obj, GTK_TYPE_SCROLLED_WINDOW));
end;

function GTK_IS_SCROLLED_WINDOW(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_SCROLLED_WINDOW);
end;



end.
