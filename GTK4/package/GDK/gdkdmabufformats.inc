/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  TGdkDmabufFormats = record
  end;
  PGdkDmabufFormats = ^TGdkDmabufFormats;

function gdk_dmabuf_formats_get_type: TGType; cdecl; external gtklib;
function gdk_dmabuf_formats_ref(formats: PGdkDmabufFormats): PGdkDmabufFormats; cdecl; external gtklib;
procedure gdk_dmabuf_formats_unref(formats: PGdkDmabufFormats); cdecl; external gtklib;
function gdk_dmabuf_formats_get_n_formats(formats: PGdkDmabufFormats): Tgsize; cdecl; external gtklib;
procedure gdk_dmabuf_formats_get_format(formats: PGdkDmabufFormats; idx: Tgsize; fourcc: Pguint32; modifier: Pguint64); cdecl; external gtklib;
function gdk_dmabuf_formats_contains(formats: PGdkDmabufFormats; fourcc: Tguint32; modifier: Tguint64): Tgboolean; cdecl; external gtklib;
function gdk_dmabuf_formats_equal(formats1: PGdkDmabufFormats; formats2: PGdkDmabufFormats): Tgboolean; cdecl; external gtklib;

// === Konventiert am: 2-8-24 17:10:02 ===

function GDK_TYPE_DMABUF_FORMATS: TGType;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GDK_TYPE_DMABUF_FORMATS: TGType;
begin
  GDK_TYPE_DMABUF_FORMATS := gdk_dmabuf_formats_get_type;
end;



{$ENDIF read_implementation}
