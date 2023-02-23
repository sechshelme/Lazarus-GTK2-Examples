
unit gdkcontentserializer;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdkcontentserializer.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdkcontentserializer.h
    -p
    -T
    -S
    -d
    -c
}

{ Pointers to basic pascal types, inserted by h2pas conversion program.}
Type
  PLongint  = ^Longint;
  PSmallInt = ^SmallInt;
  PByte     = ^Byte;
  PWord     = ^Word;
  PDWord    = ^DWord;
  PDouble   = ^Double;

Type
Pchar  = ^char;
PGAsyncResult  = ^GAsyncResult;
PGCancellable  = ^GCancellable;
PGdkContentFormats  = ^GdkContentFormats;
PGdkContentSerializer  = ^GdkContentSerializer;
PGError  = ^GError;
PGOutputStream  = ^GOutputStream;
PGValue  = ^GValue;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_CONTENT_SERIALIZER_H__}
{$define __GTK_CONTENT_SERIALIZER_H__}
{$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}
{$include <gdk/gdkversionmacros.h>}
{$include <gdk/gdktypes.h>}


function GDK_TYPE_CONTENT_SERIALIZER : longint; { return type might be wrong }

function GDK_CONTENT_SERIALIZER(o : longint) : longint;

function GDK_IS_CONTENT_SERIALIZER(o : longint) : longint;

type


  TGdkContentSerializeFunc = procedure (serializer:PGdkContentSerializer);cdecl;


function gdk_content_serializer_get_type:TGType;cdecl;external;

function gdk_content_serializer_get_mime_type(serializer:PGdkContentSerializer):Pchar;cdecl;external;

function gdk_content_serializer_get_gtype(serializer:PGdkContentSerializer):TGType;cdecl;external;

function gdk_content_serializer_get_value(serializer:PGdkContentSerializer):PGValue;cdecl;external;

function gdk_content_serializer_get_output_stream(serializer:PGdkContentSerializer):PGOutputStream;cdecl;external;

function gdk_content_serializer_get_priority(serializer:PGdkContentSerializer):longint;cdecl;external;

function gdk_content_serializer_get_cancellable(serializer:PGdkContentSerializer):PGCancellable;cdecl;external;

function gdk_content_serializer_get_user_data(serializer:PGdkContentSerializer):Tgpointer;cdecl;external;

procedure gdk_content_serializer_set_task_data(serializer:PGdkContentSerializer; data:Tgpointer; notify:TGDestroyNotify);cdecl;external;

function gdk_content_serializer_get_task_data(serializer:PGdkContentSerializer):Tgpointer;cdecl;external;

procedure gdk_content_serializer_return_success(serializer:PGdkContentSerializer);cdecl;external;

procedure gdk_content_serializer_return_error(serializer:PGdkContentSerializer; error:PGError);cdecl;external;

function gdk_content_formats_union_serialize_gtypes(formats:PGdkContentFormats):PGdkContentFormats;cdecl;external;

function gdk_content_formats_union_serialize_mime_types(formats:PGdkContentFormats):PGdkContentFormats;cdecl;external;

procedure gdk_content_register_serializer(_type:TGType; mime_type:Pchar; serialize:TGdkContentSerializeFunc; data:Tgpointer; notify:TGDestroyNotify);cdecl;external;

procedure gdk_content_serialize_async(stream:PGOutputStream; mime_type:Pchar; value:PGValue; io_priority:longint; cancellable:PGCancellable; 
            callback:TGAsyncReadyCallback; user_data:Tgpointer);cdecl;external;

function gdk_content_serialize_finish(result:PGAsyncResult; error:PPGError):Tgboolean;cdecl;external;

{$endif}


implementation

function GDK_TYPE_CONTENT_SERIALIZER : longint; { return type might be wrong }
  begin
    GDK_TYPE_CONTENT_SERIALIZER:=gdk_content_serializer_get_type;
  end;

function GDK_CONTENT_SERIALIZER(o : longint) : longint;
begin
  GDK_CONTENT_SERIALIZER:=G_TYPE_CHECK_INSTANCE_CAST(o,GDK_TYPE_CONTENT_SERIALIZER,GdkContentSerializer);
end;

function GDK_IS_CONTENT_SERIALIZER(o : longint) : longint;
begin
  GDK_IS_CONTENT_SERIALIZER:=G_TYPE_CHECK_INSTANCE_TYPE(o,GDK_TYPE_CONTENT_SERIALIZER);
end;


end.
