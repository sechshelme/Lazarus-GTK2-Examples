unit gtkboolfilter;

interface

uses
  glib2, common_GTK, gtkfilter, gtkexpression;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

  {G_DECLARE_FINAL_TYPE (GtkBoolFilter, gtk_bool_filter, GTK, BOOL_FILTER, GtkFilter) }
type
  TGtkBoolFilter = record
  end;
  PGtkBoolFilter = ^TGtkBoolFilter;

  TGtkBoolFilterClass = record
    parent_class: TGtkFilterClass;
  end;
  PGtkBoolFilterClass = ^TGtkBoolFilterClass;

function gtk_bool_filter_get_type: TGType; cdecl; external gtklib;
function gtk_bool_filter_new(expression: PGtkExpression): PGtkBoolFilter; cdecl; external gtklib;
function gtk_bool_filter_get_expression(self: PGtkBoolFilter): PGtkExpression; cdecl; external gtklib;
procedure gtk_bool_filter_set_expression(self: PGtkBoolFilter; expression: PGtkExpression); cdecl; external gtklib;
function gtk_bool_filter_get_invert(self: PGtkBoolFilter): Tgboolean; cdecl; external gtklib;
procedure gtk_bool_filter_set_invert(self: PGtkBoolFilter; invert: Tgboolean); cdecl; external gtklib;

// === Konventiert am: 17-7-24 19:32:13 ===

function GTK_TYPE_BOOL_FILTER: TGType;
function GTK_BOOL_FILTER(obj: Pointer): PGtkBoolFilter;
function GTK_IS_BOOL_FILTER(obj: Pointer): Tgboolean;

implementation

function GTK_TYPE_BOOL_FILTER: TGType;
begin
  Result := gtk_bool_filter_get_type;
end;

function GTK_BOOL_FILTER(obj: Pointer): PGtkBoolFilter;
begin
  Result := PGtkBoolFilter(g_type_check_instance_cast(obj, GTK_TYPE_BOOL_FILTER));
end;

function GTK_IS_BOOL_FILTER(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_BOOL_FILTER);
end;

end.
