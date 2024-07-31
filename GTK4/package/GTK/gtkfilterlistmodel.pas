unit gtkfilterlistmodel;

interface

uses
  glib2, common_GTK, gtkfilter;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}


  {G_DECLARE_FINAL_TYPE (GtkFilterListModel, gtk_filter_list_model, GTK, FILTER_LIST_MODEL, GObject) }
type
  TGtkFilterListModel = record
  end;
  PGtkFilterListModel = ^TGtkFilterListModel;

  TGtkFilterListModelClass = record
    parent_class: TGObjectClass;
  end;
  PGtkFilterListModelClass = ^TGtkFilterListModelClass;

function gtk_filter_list_model_get_type: TGType; cdecl; external gtklib;
function gtk_filter_list_model_new(model: PGListModel; filter: PGtkFilter): PGtkFilterListModel; cdecl; external gtklib;
procedure gtk_filter_list_model_set_filter(self: PGtkFilterListModel; filter: PGtkFilter); cdecl; external gtklib;
function gtk_filter_list_model_get_filter(self: PGtkFilterListModel): PGtkFilter; cdecl; external gtklib;
procedure gtk_filter_list_model_set_model(self: PGtkFilterListModel; model: PGListModel); cdecl; external gtklib;
function gtk_filter_list_model_get_model(self: PGtkFilterListModel): PGListModel; cdecl; external gtklib;
procedure gtk_filter_list_model_set_incremental(self: PGtkFilterListModel; incremental: Tgboolean); cdecl; external gtklib;
function gtk_filter_list_model_get_incremental(self: PGtkFilterListModel): Tgboolean; cdecl; external gtklib;
function gtk_filter_list_model_get_pending(self: PGtkFilterListModel): Tguint; cdecl; external gtklib;

// === Konventiert am: 27-7-24 15:15:09 ===

function GTK_TYPE_FILTER_LIST_MODEL: TGType;
function GTK_FILTER_LIST_MODEL(obj: Pointer): PGtkFilterListModel;
function GTK_IS_FILTER_LIST_MODEL(obj: Pointer): Tgboolean;

implementation

function GTK_TYPE_FILTER_LIST_MODEL: TGType;
begin
  Result := gtk_filter_list_model_get_type;
end;

function GTK_FILTER_LIST_MODEL(obj: Pointer): PGtkFilterListModel;
begin
  Result := PGtkFilterListModel(g_type_check_instance_cast(obj, GTK_TYPE_FILTER_LIST_MODEL));
end;

function GTK_IS_FILTER_LIST_MODEL(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_FILTER_LIST_MODEL);
end;




end.
