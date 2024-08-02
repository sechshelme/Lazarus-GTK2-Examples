unit gdkpixbuf;

interface

uses
  gdk2pixbuf, Cairo, common_GTK, gdktexture;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

function gdk_pixbuf_get_from_surface(surface:Pcairo_surface_t; src_x:longint; src_y:longint; width:longint; height:longint):PGdkPixbuf;cdecl;external gtklib;
function gdk_pixbuf_get_from_texture(texture:PGdkTexture):PGdkPixbuf;cdecl;external gtklib;

// === Konventiert am: 2-8-24 17:32:31 ===


implementation



end.
