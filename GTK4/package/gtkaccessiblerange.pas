unit gtkaccessiblerange;

interface

uses
  glib2, common_GTK;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  {G_DECLARE_INTERFACE (GtkAccessibleRange, gtk_accessible_range, GTK, ACCESSIBLE_RANGE, GtkAccessible) }
  TGtkAccessibleRange = Pointer;
  PGtkAccessibleRange = ^TGtkAccessibleRange;

  TGtkAccessibleRangeClass = Pointer;
  PGtkAccessibleRangeClass = ^TGtkAccessibleRangeClass;


type

  TGtkAccessibleRangeInterface = record
    g_iface: TGTypeInterface;
    set_current_value: function(self: PGtkAccessibleRange; Value: Tdouble): Tgboolean; cdecl;
  end;
  PGtkAccessibleRangeInterface = ^TGtkAccessibleRangeInterface;

  // === Konventiert am: 14-7-24 16:45:26 ===

function gtk_accessible_range_get_type: TGType; cdecl; external gtklib;

function GTK_TYPE_ACCESSIBLE_RANGE: TGType;
function GTK_ACCESSIBLE_RANGE(obj: Pointer): PGtkAccessibleRange;
function GTK_ACCESSIBLE_RANGE_CLASS(klass: Pointer): PGtkAccessibleRangeClass;
function GTK_IS_ACCESSIBLE_RANGE(obj: Pointer): Tgboolean;
function GTK_IS_ACCESSIBLE_RANGE_CLASS(klass: Pointer): Tgboolean;
function GTK_ACCESSIBLE_RANGE_GET_CLASS(obj: Pointer): PGtkAccessibleRangeClass;

implementation

function GTK_TYPE_ACCESSIBLE_RANGE: TGType;
begin
  // Ab gtk 4.12
//  Result := gtk_accessible_range_get_type;
end;

function GTK_ACCESSIBLE_RANGE(obj: Pointer): PGtkAccessibleRange;
begin
  Result := PGtkAccessibleRange(g_type_check_instance_cast(obj, GTK_TYPE_ACCESSIBLE_RANGE));
end;

function GTK_ACCESSIBLE_RANGE_CLASS(klass: Pointer): PGtkAccessibleRangeClass;
begin
  Result := PGtkAccessibleRangeClass(g_type_check_class_cast(klass, GTK_TYPE_ACCESSIBLE_RANGE));
end;

function GTK_IS_ACCESSIBLE_RANGE(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_ACCESSIBLE_RANGE);
end;

function GTK_IS_ACCESSIBLE_RANGE_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_ACCESSIBLE_RANGE);
end;

function GTK_ACCESSIBLE_RANGE_GET_CLASS(obj: Pointer): PGtkAccessibleRangeClass;
begin
  Result := PGtkAccessibleRangeClass(PGTypeInstance(obj)^.g_class);
end;



end.
