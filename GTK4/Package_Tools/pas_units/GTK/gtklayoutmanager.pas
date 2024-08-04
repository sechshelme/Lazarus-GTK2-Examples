unit gtklayoutmanager;

interface

uses
  glib2, common_GTK, gtkenums, gtklayoutchild, gtktypes, gtkwidget;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}


  {G_DECLARE_DERIVABLE_TYPE (GtkLayoutManager, gtk_layout_manager, GTK, LAYOUT_MANAGER, GObject) }
type
  TGtkLayoutManagerClass = record
    parent_class: TGObjectClass;
    get_request_mode: function(manager: PGtkLayoutManager; widget: PGtkWidget): TGtkSizeRequestMode; cdecl;
    measure: procedure(manager: PGtkLayoutManager; widget: PGtkWidget; orientation: TGtkOrientation; for_size: longint; minimum: Plongint;
      natural: Plongint; minimum_baseline: Plongint; natural_baseline: Plongint); cdecl;
    allocate: procedure(manager: PGtkLayoutManager; widget: PGtkWidget; Width: longint; Height: longint; baseline: longint); cdecl;
    layout_child_type: TGType;
    create_layout_child: function(manager: PGtkLayoutManager; widget: PGtkWidget; for_child: PGtkWidget): PGtkLayoutChild; cdecl;
    root: procedure(manager: PGtkLayoutManager); cdecl;
    unroot: procedure(manager: PGtkLayoutManager); cdecl;
    _padding: array[0..15] of Tgpointer;
  end;
  PGtkLayoutManagerClass = ^TGtkLayoutManagerClass;


  // === Muss wegen gtkwidget ausgelagert sein
  //type
  //  TGtkLayoutManager = record
  //    parent_instance: TGObject
  //  end;
  //  PGtkLayoutManager = ^TGtkLayoutManager;


function gtk_layout_manager_get_type: TGType; cdecl; external gtklib;
procedure gtk_layout_manager_measure(manager: PGtkLayoutManager; widget: PGtkWidget; orientation: TGtkOrientation; for_size: longint; minimum: Plongint;
  natural: Plongint; minimum_baseline: Plongint; natural_baseline: Plongint); cdecl; external gtklib;
procedure gtk_layout_manager_allocate(manager: PGtkLayoutManager; widget: PGtkWidget; Width: longint; Height: longint; baseline: longint); cdecl; external gtklib;
function gtk_layout_manager_get_request_mode(manager: PGtkLayoutManager): TGtkSizeRequestMode; cdecl; external gtklib;
function gtk_layout_manager_get_widget(manager: PGtkLayoutManager): PGtkWidget; cdecl; external gtklib;
procedure gtk_layout_manager_layout_changed(manager: PGtkLayoutManager); cdecl; external gtklib;
function gtk_layout_manager_get_layout_child(manager: PGtkLayoutManager; child: PGtkWidget): PGtkLayoutChild; cdecl; external gtklib;

// === Konventiert am: 17-7-24 13:39:39 ===

function GTK_TYPE_LAYOUT_MANAGER: TGType;
function GTK_LAYOUT_MANAGER(obj: Pointer): PGtkLayoutManager;
function GTK_IS_LAYOUT_MANAGER(obj: Pointer): Tgboolean;
function GTK_LAYOUT_MANAGER_CLASS(klass: Pointer): PGtkLayoutManagerClass;
function GTK_IS_LAYOUT_MANAGER_CLASS(klass: Pointer): Tgboolean;
function GTK_LAYOUT_MANAGER_GET_CLASS(obj: Pointer): PGtkLayoutManagerClass;

implementation

function GTK_TYPE_LAYOUT_MANAGER: TGType;
begin
  Result := gtk_layout_manager_get_type;
end;

function GTK_LAYOUT_MANAGER(obj: Pointer): PGtkLayoutManager;
begin
  Result := PGtkLayoutManager(g_type_check_instance_cast(obj, GTK_TYPE_LAYOUT_MANAGER));
end;

function GTK_IS_LAYOUT_MANAGER(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_LAYOUT_MANAGER);
end;

function GTK_LAYOUT_MANAGER_CLASS(klass: Pointer): PGtkLayoutManagerClass;
begin
  Result := PGtkLayoutManagerClass(g_type_check_class_cast(klass, GTK_TYPE_LAYOUT_MANAGER));
end;

function GTK_IS_LAYOUT_MANAGER_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_LAYOUT_MANAGER);
end;

function GTK_LAYOUT_MANAGER_GET_CLASS(obj: Pointer): PGtkLayoutManagerClass;
begin
  Result := PGtkLayoutManagerClass(PGTypeInstance(obj)^.g_class);
end;




end.
