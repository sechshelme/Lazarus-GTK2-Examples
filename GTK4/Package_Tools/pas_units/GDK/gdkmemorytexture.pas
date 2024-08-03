unit gdkmemorytexture;

interface

uses
  glib2, common_GTK, gdkenums, gdktexture;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

  //{$if G_BYTE_ORDER == G_LITTLE_ENDIAN}
const
  GDK_MEMORY_DEFAULT = GDK_MEMORY_B8G8R8A8_PREMULTIPLIED;
  //(*** was #elif ****){$else G_BYTE_ORDER == G_BIG_ENDIAN}
  //
  //  GDK_MEMORY_DEFAULT = GDK_MEMORY_A8R8G8B8_PREMULTIPLIED;

type
  TGdkMemoryTexture = record
  end;
  PGdkMemoryTexture = ^TGdkMemoryTexture;

function gdk_memory_texture_get_type: TGType; cdecl; external gtklib;
function gdk_memory_texture_new(Width: longint; Height: longint; format: TGdkMemoryFormat; bytes: PGBytes; stride: Tgsize): PGdkTexture; cdecl; external gtklib;

// === Konventiert am: 2-8-24 14:38:25 ===

function GDK_TYPE_MEMORY_TEXTURE: TGType;
function GDK_MEMORY_TEXTURE(obj: Pointer): PGdkMemoryTexture;
function GDK_IS_MEMORY_TEXTURE(obj: Pointer): Tgboolean;

implementation

function GDK_TYPE_MEMORY_TEXTURE: TGType;
begin
  GDK_TYPE_MEMORY_TEXTURE := gdk_memory_texture_get_type;
end;

function GDK_MEMORY_TEXTURE(obj: Pointer): PGdkMemoryTexture;
begin
  Result := PGdkMemoryTexture(g_type_check_instance_cast(obj, GDK_TYPE_MEMORY_TEXTURE));
end;

function GDK_IS_MEMORY_TEXTURE(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GDK_TYPE_MEMORY_TEXTURE);
end;



end.
