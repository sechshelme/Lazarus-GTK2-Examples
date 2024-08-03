unit gdkdmabuftexture;

interface

uses
  glib2, common_GTK;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  TGdkDmabufTexture = record
  end;
  PGdkDmabufTexture = ^TGdkDmabufTexture;

function gdk_dmabuf_texture_get_type: TGType; cdecl; external gtklib;
function gdk_dmabuf_error_quark: TGQuark; cdecl; external gtklib;

function GDK_DMABUF_ERROR: TGQuark;

// === Konventiert am: 2-8-24 17:10:17 ===

function GDK_TYPE_DMABUF_TEXTURE: TGType;
function GDK_DMABUF_TEXTURE(obj: Pointer): PGdkDmabufTexture;
function GDK_IS_DMABUF_TEXTURE(obj: Pointer): Tgboolean;

implementation

function GDK_TYPE_DMABUF_TEXTURE: TGType;
begin
  GDK_TYPE_DMABUF_TEXTURE := gdk_dmabuf_texture_get_type;
end;

function GDK_DMABUF_TEXTURE(obj: Pointer): PGdkDmabufTexture;
begin
  Result := PGdkDmabufTexture(g_type_check_instance_cast(obj, GDK_TYPE_DMABUF_TEXTURE));
end;

function GDK_IS_DMABUF_TEXTURE(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GDK_TYPE_DMABUF_TEXTURE);
end;

// ====

function GDK_DMABUF_ERROR: TGQuark;
begin
  GDK_DMABUF_ERROR := gdk_dmabuf_error_quark;
end;


end.
