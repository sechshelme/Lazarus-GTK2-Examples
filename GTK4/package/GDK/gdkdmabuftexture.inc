/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

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

{$ENDIF read_interface}


{$IFDEF read_implementation}

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


{$ENDIF read_implementation}
