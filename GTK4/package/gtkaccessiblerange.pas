unit gtkaccessiblerange;

interface

uses
  glib2, common_GTK;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  TGtkAccessibleRange = Pointer;  //{G_DECLARE_INTERFACE (GtkAccessibleRange, gtk_accessible_range, GTK, ACCESSIBLE_RANGE, GtkAccessible) }
  PGtkAccessibleRange = ^TGtkAccessibleRange;

type
  TGtkAccessibleRangeInterface = record
    g_iface: TGTypeInterface;
    set_current_value: function(self: PGtkAccessibleRange; Value: Tdouble): Tgboolean; cdecl;
  end;
  PGtkAccessibleRangeInterface = ^TGtkAccessibleRangeInterface;

  // === Konventiert am: 12-7-24 19:08:09 ===

function GTK_TYPE_ACCESSIBLE_RANGE: TGType;

implementation

function GTK_TYPE_ACCESSIBLE_RANGE: TGType;
begin
  Result:=0;
  //   nicht findbar
  //    GTK_TYPE_ACCESSIBLE_RANGE:=gtk_accessible_range_get_type;
end;



end.
