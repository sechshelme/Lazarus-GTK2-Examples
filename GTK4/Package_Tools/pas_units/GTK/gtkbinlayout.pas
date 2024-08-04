unit gtkbinlayout;

interface

uses
  glib2, common_GTK, gtkwidget, gtktypes, gtklayoutmanager;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

  {G_DECLARE_FINAL_TYPE (GtkBinLayout, gtk_bin_layout, GTK, BIN_LAYOUT, GtkLayoutManager) }
type
  TGtkBinLayout = record
  end;
  PGtkBinLayout = ^TGtkBinLayout;

  TGtkBinLayoutClass = record
    parent_class: TGtkLayoutManagerClass;
  end;
  PGtkBinLayoutClass = ^TGtkBinLayoutClass;

function gtk_bin_layout_get_type: TGType; cdecl; external gtklib;
function gtk_bin_layout_new: PGtkLayoutManager; cdecl; external gtklib;

// === Konventiert am: 17-7-24 19:14:38 ===

function GTK_TYPE_BIN_LAYOUT: TGType;
function GTK_BIN_LAYOUT(obj: Pointer): PGtkBinLayout;
function GTK_IS_BIN_LAYOUT(obj: Pointer): Tgboolean;

implementation

function GTK_TYPE_BIN_LAYOUT: TGType;
begin
  Result := gtk_bin_layout_get_type;
end;

function GTK_BIN_LAYOUT(obj: Pointer): PGtkBinLayout;
begin
  Result := PGtkBinLayout(g_type_check_instance_cast(obj, GTK_TYPE_BIN_LAYOUT));
end;

function GTK_IS_BIN_LAYOUT(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_BIN_LAYOUT);
end;


end.
