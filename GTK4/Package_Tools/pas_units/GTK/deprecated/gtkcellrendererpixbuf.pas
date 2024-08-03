unit gtkcellrendererpixbuf;

interface

uses
  glib2, common_GTK, gtkcellrenderer;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  TGtkCellRendererPixbuf = record
  end;
  PGtkCellRendererPixbuf = ^TGtkCellRendererPixbuf;

function gtk_cell_renderer_pixbuf_get_type: TGType; cdecl; external gtklib;
function gtk_cell_renderer_pixbuf_new: PGtkCellRenderer; cdecl; external gtklib;

// === Konventiert am: 29-7-24 17:00:39 ===

function GTK_TYPE_CELL_RENDERER_PIXBUF: TGType;
function GTK_CELL_RENDERER_PIXBUF(obj: Pointer): PGtkCellRendererPixbuf;
function GTK_IS_CELL_RENDERER_PIXBUF(obj: Pointer): Tgboolean;

implementation

function GTK_TYPE_CELL_RENDERER_PIXBUF: TGType;
begin
  GTK_TYPE_CELL_RENDERER_PIXBUF := gtk_cell_renderer_pixbuf_get_type;
end;

function GTK_CELL_RENDERER_PIXBUF(obj: Pointer): PGtkCellRendererPixbuf;
begin
  Result := PGtkCellRendererPixbuf(g_type_check_instance_cast(obj, GTK_TYPE_CELL_RENDERER_PIXBUF));
end;

function GTK_IS_CELL_RENDERER_PIXBUF(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_CELL_RENDERER_PIXBUF);
end;



end.
