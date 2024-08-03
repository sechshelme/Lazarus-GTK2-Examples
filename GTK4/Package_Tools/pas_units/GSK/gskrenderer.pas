unit gskrenderer;

interface

uses
  glib2, Cairo, common_GTK, gdktypes, gdktexture, gsktypes, gskrendernode;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

  // ausgelageert
//type
//  TGskRenderer = record
//  end;
//  PGskRenderer = ^TGskRenderer;

function gsk_renderer_get_type: TGType; cdecl; external gtklib;
function gsk_renderer_new_for_surface(surface: PGdkSurface): PGskRenderer; cdecl; external gtklib;
function gsk_renderer_get_surface(renderer: PGskRenderer): PGdkSurface; cdecl; external gtklib;
function gsk_renderer_realize(renderer: PGskRenderer; surface: PGdkSurface; error: PPGError): Tgboolean; cdecl; external gtklib;
function gsk_renderer_realize_for_display(renderer: PGskRenderer; display: PGdkDisplay; error: PPGError): Tgboolean; cdecl; external gtklib;
procedure gsk_renderer_unrealize(renderer: PGskRenderer); cdecl; external gtklib;
function gsk_renderer_is_realized(renderer: PGskRenderer): Tgboolean; cdecl; external gtklib;
function gsk_renderer_render_texture(renderer: PGskRenderer; root: PGskRenderNode; viewport: Pgraphene_rect_t): PGdkTexture; cdecl; external gtklib;
procedure gsk_renderer_render(renderer: PGskRenderer; root: PGskRenderNode; region: Pcairo_region_t); cdecl; external gtklib;

// === Konventiert am: 3-8-24 15:33:18 ===

function GSK_TYPE_RENDERER: TGType;
function GSK_RENDERER(obj: Pointer): PGskRenderer;
function GSK_IS_RENDERER(obj: Pointer): Tgboolean;

implementation

function GSK_TYPE_RENDERER: TGType;
begin
  GSK_TYPE_RENDERER := gsk_renderer_get_type;
end;

function GSK_RENDERER(obj: Pointer): PGskRenderer;
begin
  Result := PGskRenderer(g_type_check_instance_cast(obj, GSK_TYPE_RENDERER));
end;

function GSK_IS_RENDERER(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GSK_TYPE_RENDERER);
end;



end.
