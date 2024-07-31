unit gtkcustomfilter;

interface

uses
  glib2, common_GTK, gtkfilter;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  TGtkCustomFilterFunc = function(item: Tgpointer; user_data: Tgpointer): Tgboolean; cdecl;

  {G_DECLARE_FINAL_TYPE (GtkCustomFilter, gtk_custom_filter, GTK, CUSTOM_FILTER, GtkFilter) }
type
  TGtkCustomFilter = record
  end;
  PGtkCustomFilter = ^TGtkCustomFilter;

  TGtkCustomFilterClass = record
    parent_class: TGtkFilterClass;
  end;
  PGtkCustomFilterClass = ^TGtkCustomFilterClass;

function gtk_custom_filter_get_type: TGType; cdecl; external gtklib;
function gtk_custom_filter_new(match_func: TGtkCustomFilterFunc; user_data: Tgpointer; user_destroy: TGDestroyNotify): PGtkCustomFilter; cdecl; external gtklib;
procedure gtk_custom_filter_set_filter_func(self: PGtkCustomFilter; match_func: TGtkCustomFilterFunc; user_data: Tgpointer; user_destroy: TGDestroyNotify); cdecl; external gtklib;

// === Konventiert am: 24-7-24 19:36:20 ===

function GTK_TYPE_CUSTOM_FILTER: TGType;
function GTK_CUSTOM_FILTER(obj: Pointer): PGtkCustomFilter;
function GTK_IS_CUSTOM_FILTER(obj: Pointer): Tgboolean;

implementation

function GTK_TYPE_CUSTOM_FILTER: TGType;
begin
  Result := gtk_custom_filter_get_type;
end;

function GTK_CUSTOM_FILTER(obj: Pointer): PGtkCustomFilter;
begin
  Result := PGtkCustomFilter(g_type_check_instance_cast(obj, GTK_TYPE_CUSTOM_FILTER));
end;

function GTK_IS_CUSTOM_FILTER(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_CUSTOM_FILTER);
end;




end.
