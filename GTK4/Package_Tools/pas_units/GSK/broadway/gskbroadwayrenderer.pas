unit gskbroadwayrenderer;

interface

uses
  glib2, common_GTK, gsktypes;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  TGskBroadwayRenderer = record
  end;
  PGskBroadwayRenderer = ^TGskBroadwayRenderer;

  TGskBroadwayRendererClass = record
  end;
  PGskBroadwayRendererClass = ^TGskBroadwayRendererClass;

function gsk_broadway_renderer_get_type: TGType; cdecl; external gtklib;
function gsk_broadway_renderer_new: PGskRenderer; cdecl; external gtklib;

// === Konventiert am: 4-8-24 13:10:33 ===

function GSK_TYPE_BROADWAY_RENDERER: TGType;
function GSK_BROADWAY_RENDERER(obj: Pointer): PGskBroadwayRenderer;
function GSK_BROADWAY_RENDERER_CLASS(klass: Pointer): PGskBroadwayRendererClass;
function GSK_IS_BROADWAY_RENDERER(obj: Pointer): Tgboolean;
function GSK_IS_BROADWAY_RENDERER_CLASS(klass: Pointer): Tgboolean;
function GSK_BROADWAY_RENDERER_GET_CLASS(obj: Pointer): PGskBroadwayRendererClass;

implementation

function GSK_TYPE_BROADWAY_RENDERER: TGType;
begin
  GSK_TYPE_BROADWAY_RENDERER := gsk_broadway_renderer_get_type;
end;

function GSK_BROADWAY_RENDERER(obj: Pointer): PGskBroadwayRenderer;
begin
  Result := PGskBroadwayRenderer(g_type_check_instance_cast(obj, GSK_TYPE_BROADWAY_RENDERER));
end;

function GSK_BROADWAY_RENDERER_CLASS(klass: Pointer): PGskBroadwayRendererClass;
begin
  Result := PGskBroadwayRendererClass(g_type_check_class_cast(klass, GSK_TYPE_BROADWAY_RENDERER));
end;

function GSK_IS_BROADWAY_RENDERER(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GSK_TYPE_BROADWAY_RENDERER);
end;

function GSK_IS_BROADWAY_RENDERER_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GSK_TYPE_BROADWAY_RENDERER);
end;

function GSK_BROADWAY_RENDERER_GET_CLASS(obj: Pointer): PGskBroadwayRendererClass;
begin
  Result := PGskBroadwayRendererClass(PGTypeInstance(obj)^.g_class);
end;



end.
