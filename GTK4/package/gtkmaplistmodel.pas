unit gtkmaplistmodel;

interface

uses
  glib2, common_GTK;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}


type
  TGtkMapListModelMapFunc = function(item: Tgpointer; user_data: Tgpointer): Tgpointer; cdecl;

  {G_DECLARE_FINAL_TYPE (GtkMapListModel, gtk_map_list_model, GTK, MAP_LIST_MODEL, GObject) }
type
  TGtkMapListModel = record
  end;
  PGtkMapListModel = ^TGtkMapListModel;

  TGtkMapListModelClass = record
    parent_class: TGObjectClass;
  end;
  PGtkMapListModelClass = ^TGtkMapListModelClass;

function gtk_map_list_model_get_type: TGType; cdecl; external gtklib;
function gtk_map_list_model_new(model: PGListModel; map_func: TGtkMapListModelMapFunc; user_data: Tgpointer; user_destroy: TGDestroyNotify): PGtkMapListModel; cdecl; external gtklib;
procedure gtk_map_list_model_set_map_func(self: PGtkMapListModel; map_func: TGtkMapListModelMapFunc; user_data: Tgpointer; user_destroy: TGDestroyNotify); cdecl; external gtklib;
procedure gtk_map_list_model_set_model(self: PGtkMapListModel; model: PGListModel); cdecl; external gtklib;
function gtk_map_list_model_get_model(self: PGtkMapListModel): PGListModel; cdecl; external gtklib;
function gtk_map_list_model_has_map(self: PGtkMapListModel): Tgboolean; cdecl; external gtklib;

// === Konventiert am: 27-7-24 20:00:22 ===

function GTK_TYPE_MAP_LIST_MODEL: TGType;
function GTK_MAP_LIST_MODEL(obj: Pointer): PGtkMapListModel;
function GTK_IS_MAP_LIST_MODEL(obj: Pointer): Tgboolean;

implementation

function GTK_TYPE_MAP_LIST_MODEL: TGType;
begin
  Result := gtk_map_list_model_get_type;
end;

function GTK_MAP_LIST_MODEL(obj: Pointer): PGtkMapListModel;
begin
  Result := PGtkMapListModel(g_type_check_instance_cast(obj, GTK_TYPE_MAP_LIST_MODEL));
end;

function GTK_IS_MAP_LIST_MODEL(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_MAP_LIST_MODEL);
end;




end.
