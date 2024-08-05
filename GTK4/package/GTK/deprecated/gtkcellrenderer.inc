/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  PGtkCellRendererState = ^TGtkCellRendererState;
  TGtkCellRendererState = longint;

const
  GTK_CELL_RENDERER_SELECTED = 1 shl 0;
  GTK_CELL_RENDERER_PRELIT = 1 shl 1;
  GTK_CELL_RENDERER_INSENSITIVE = 1 shl 2;
  GTK_CELL_RENDERER_SORTED = 1 shl 3;
  GTK_CELL_RENDERER_FOCUSED = 1 shl 4;
  GTK_CELL_RENDERER_EXPANDABLE = 1 shl 5;
  GTK_CELL_RENDERER_EXPANDED = 1 shl 6;

type
  PGtkCellRendererMode = ^TGtkCellRendererMode;
  TGtkCellRendererMode = longint;

const
  GTK_CELL_RENDERER_MODE_INERT = 0;
  GTK_CELL_RENDERER_MODE_ACTIVATABLE = 1;
  GTK_CELL_RENDERER_MODE_EDITABLE = 2;

type
  TGtkCellRendererPrivate = record // _GtkCellRendererPrivate
  end;
  PGtkCellRendererPrivate = ^TGtkCellRendererPrivate;

  TGtkCellRenderer = record
    parent_instance: TGInitiallyUnowned;
    priv: PGtkCellRendererPrivate;
  end;
  PGtkCellRenderer = ^TGtkCellRenderer;
  PPGtkCellRenderer = ^PGtkCellRenderer;

  TGtkCellRendererClassPrivate = record // _GtkCellRendererClassPrivate
  end;
  PGtkCellRendererClassPrivate = ^TGtkCellRendererClassPrivate;

  TGtkCellRendererClass = record
    parent_class: TGInitiallyUnownedClass;
    get_request_mode: function(cell: PGtkCellRenderer): TGtkSizeRequestMode; cdecl;
    get_preferred_width: procedure(cell: PGtkCellRenderer; widget: PGtkWidget; minimum_size: Plongint; natural_size: Plongint); cdecl;
    get_preferred_height_for_width: procedure(cell: PGtkCellRenderer; widget: PGtkWidget; Width: longint; minimum_height: Plongint; natural_height: Plongint); cdecl;
    get_preferred_height: procedure(cell: PGtkCellRenderer; widget: PGtkWidget; minimum_size: Plongint; natural_size: Plongint); cdecl;
    get_preferred_width_for_height: procedure(cell: PGtkCellRenderer; widget: PGtkWidget; Height: longint; minimum_width: Plongint; natural_width: Plongint); cdecl;
    get_aligned_area: procedure(cell: PGtkCellRenderer; widget: PGtkWidget; flags: TGtkCellRendererState; cell_area: PGdkRectangle; aligned_area: PGdkRectangle); cdecl;
    snapshot: procedure(cell: PGtkCellRenderer; snapshot: PGtkSnapshot; widget: PGtkWidget; background_area: PGdkRectangle; cell_area: PGdkRectangle;
      flags: TGtkCellRendererState); cdecl;
    activate: function(cell: PGtkCellRenderer; event: PGdkEvent; widget: PGtkWidget; path: PChar; background_area: PGdkRectangle;
      cell_area: PGdkRectangle; flags: TGtkCellRendererState): Tgboolean; cdecl;
    start_editing: function(cell: PGtkCellRenderer; event: PGdkEvent; widget: PGtkWidget; path: PChar; background_area: PGdkRectangle;
      cell_area: PGdkRectangle; flags: TGtkCellRendererState): PGtkCellEditable; cdecl;
    editing_canceled: procedure(cell: PGtkCellRenderer); cdecl;
    editing_started: procedure(cell: PGtkCellRenderer; editable: PGtkCellEditable; path: PChar); cdecl;
    padding: array[0..7] of Tgpointer;
  end;
  PGtkCellRendererClass = ^TGtkCellRendererClass;


function gtk_cell_renderer_get_type: TGType; cdecl; external gtklib;
function gtk_cell_renderer_get_request_mode(cell: PGtkCellRenderer): TGtkSizeRequestMode; cdecl; external gtklib;
procedure gtk_cell_renderer_get_preferred_width(cell: PGtkCellRenderer; widget: PGtkWidget; minimum_size: Plongint; natural_size: Plongint); cdecl; external gtklib;
procedure gtk_cell_renderer_get_preferred_height_for_width(cell: PGtkCellRenderer; widget: PGtkWidget; Width: longint; minimum_height: Plongint; natural_height: Plongint); cdecl; external gtklib;
procedure gtk_cell_renderer_get_preferred_height(cell: PGtkCellRenderer; widget: PGtkWidget; minimum_size: Plongint; natural_size: Plongint); cdecl; external gtklib;
procedure gtk_cell_renderer_get_preferred_width_for_height(cell: PGtkCellRenderer; widget: PGtkWidget; Height: longint; minimum_width: Plongint; natural_width: Plongint); cdecl; external gtklib;
procedure gtk_cell_renderer_get_preferred_size(cell: PGtkCellRenderer; widget: PGtkWidget; minimum_size: PGtkRequisition; natural_size: PGtkRequisition); cdecl; external gtklib;
procedure gtk_cell_renderer_get_aligned_area(cell: PGtkCellRenderer; widget: PGtkWidget; flags: TGtkCellRendererState; cell_area: PGdkRectangle; aligned_area: PGdkRectangle); cdecl; external gtklib;
procedure gtk_cell_renderer_snapshot(cell: PGtkCellRenderer; snapshot: PGtkSnapshot; widget: PGtkWidget; background_area: PGdkRectangle; cell_area: PGdkRectangle;
  flags: TGtkCellRendererState); cdecl; external gtklib;
function gtk_cell_renderer_activate(cell: PGtkCellRenderer; event: PGdkEvent; widget: PGtkWidget; path: PChar; background_area: PGdkRectangle;
  cell_area: PGdkRectangle; flags: TGtkCellRendererState): Tgboolean; cdecl; external gtklib;
function gtk_cell_renderer_start_editing(cell: PGtkCellRenderer; event: PGdkEvent; widget: PGtkWidget; path: PChar; background_area: PGdkRectangle;
  cell_area: PGdkRectangle; flags: TGtkCellRendererState): PGtkCellEditable; cdecl; external gtklib;
procedure gtk_cell_renderer_set_fixed_size(cell: PGtkCellRenderer; Width: longint; Height: longint); cdecl; external gtklib;
procedure gtk_cell_renderer_get_fixed_size(cell: PGtkCellRenderer; Width: Plongint; Height: Plongint); cdecl; external gtklib;
procedure gtk_cell_renderer_set_alignment(cell: PGtkCellRenderer; xalign: single; yalign: single); cdecl; external gtklib;
procedure gtk_cell_renderer_get_alignment(cell: PGtkCellRenderer; xalign: Psingle; yalign: Psingle); cdecl; external gtklib;
procedure gtk_cell_renderer_set_padding(cell: PGtkCellRenderer; xpad: longint; ypad: longint); cdecl; external gtklib;
procedure gtk_cell_renderer_get_padding(cell: PGtkCellRenderer; xpad: Plongint; ypad: Plongint); cdecl; external gtklib;
procedure gtk_cell_renderer_set_visible(cell: PGtkCellRenderer; Visible: Tgboolean); cdecl; external gtklib;
function gtk_cell_renderer_get_visible(cell: PGtkCellRenderer): Tgboolean; cdecl; external gtklib;
procedure gtk_cell_renderer_set_sensitive(cell: PGtkCellRenderer; sensitive: Tgboolean); cdecl; external gtklib;
function gtk_cell_renderer_get_sensitive(cell: PGtkCellRenderer): Tgboolean; cdecl; external gtklib;
function gtk_cell_renderer_is_activatable(cell: PGtkCellRenderer): Tgboolean; cdecl; external gtklib;
procedure gtk_cell_renderer_set_is_expander(cell: PGtkCellRenderer; is_expander: Tgboolean); cdecl; external gtklib;
function gtk_cell_renderer_get_is_expander(cell: PGtkCellRenderer): Tgboolean; cdecl; external gtklib;
procedure gtk_cell_renderer_set_is_expanded(cell: PGtkCellRenderer; is_expanded: Tgboolean); cdecl; external gtklib;
function gtk_cell_renderer_get_is_expanded(cell: PGtkCellRenderer): Tgboolean; cdecl; external gtklib;
procedure gtk_cell_renderer_stop_editing(cell: PGtkCellRenderer; canceled: Tgboolean); cdecl; external gtklib;
procedure _gtk_cell_renderer_calc_offset(cell: PGtkCellRenderer; cell_area: PGdkRectangle; direction: TGtkTextDirection; Width: longint; Height: longint;
  x_offset: Plongint; y_offset: Plongint); cdecl; external gtklib;
function gtk_cell_renderer_get_state(cell: PGtkCellRenderer; widget: PGtkWidget; cell_state: TGtkCellRendererState): TGtkStateFlags; cdecl; external gtklib;

// === Konventiert am: 21-7-24 16:34:13 ===

function GTK_TYPE_CELL_RENDERER: TGType;
function GTK_CELL_RENDERER(obj: Pointer): PGtkCellRenderer;
function GTK_CELL_RENDERER_CLASS(klass: Pointer): PGtkCellRendererClass;
function GTK_IS_CELL_RENDERER(obj: Pointer): Tgboolean;
function GTK_IS_CELL_RENDERER_CLASS(klass: Pointer): Tgboolean;
function GTK_CELL_RENDERER_GET_CLASS(obj: Pointer): PGtkCellRendererClass;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_CELL_RENDERER: TGType;
begin
  GTK_TYPE_CELL_RENDERER := gtk_cell_renderer_get_type;
end;

function GTK_CELL_RENDERER(obj: Pointer): PGtkCellRenderer;
begin
  Result := PGtkCellRenderer(g_type_check_instance_cast(obj, GTK_TYPE_CELL_RENDERER));
end;

function GTK_CELL_RENDERER_CLASS(klass: Pointer): PGtkCellRendererClass;
begin
  Result := PGtkCellRendererClass(g_type_check_class_cast(klass, GTK_TYPE_CELL_RENDERER));
end;

function GTK_IS_CELL_RENDERER(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_CELL_RENDERER);
end;

function GTK_IS_CELL_RENDERER_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_CELL_RENDERER);
end;

function GTK_CELL_RENDERER_GET_CLASS(obj: Pointer): PGtkCellRendererClass;
begin
  Result := PGtkCellRendererClass(PGTypeInstance(obj)^.g_class);
end;



{$ENDIF read_implementation}
