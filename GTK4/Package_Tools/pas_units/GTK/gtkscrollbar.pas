unit gtkscrollbar;

interface

uses
  glib2, common_GTK, gtkenums, gtktypes, gtkwidget, gtkadjustment;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  TGtkScrollbar = record  // _GtkScrollbar
  end;
  PGtkScrollbar = ^TGtkScrollbar;


function gtk_scrollbar_get_type: TGType; cdecl; external gtklib;
function gtk_scrollbar_new(orientation: TGtkOrientation; adjustment: PGtkAdjustment): PGtkWidget; cdecl; external gtklib;
procedure gtk_scrollbar_set_adjustment(self: PGtkScrollbar; adjustment: PGtkAdjustment); cdecl; external gtklib;
function gtk_scrollbar_get_adjustment(self: PGtkScrollbar): PGtkAdjustment; cdecl; external gtklib;

// === Konventiert am: 12-7-24 19:54:45 ===

function GTK_TYPE_SCROLLBAR: TGType;
function GTK_SCROLLBAR(obj: Pointer): PGtkScrollbar;
function GTK_IS_SCROLLBAR(obj: Pointer): Tgboolean;

implementation

function GTK_TYPE_SCROLLBAR: TGType;
begin
  GTK_TYPE_SCROLLBAR := gtk_scrollbar_get_type;
end;

function GTK_SCROLLBAR(obj: Pointer): PGtkScrollbar;
begin
  Result := PGtkScrollbar(g_type_check_instance_cast(obj, GTK_TYPE_SCROLLBAR));
end;

function GTK_IS_SCROLLBAR(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_SCROLLBAR);
end;



end.
