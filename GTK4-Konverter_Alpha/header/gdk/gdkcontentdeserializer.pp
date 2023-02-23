
unit gdkcontentdeserializer;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdkcontentdeserializer.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdkcontentdeserializer.h
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
PGdkContentDeserializer  = ^GdkContentDeserializer;
PGdkContentFormats  = ^GdkContentFormats;
PGError  = ^GError;
PGInputStream  = ^GInputStream;
PGValue  = ^GValue;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_CONTENT_DESERIALIZER_H__}
{$define __GTK_CONTENT_DESERIALIZER_H__}
{$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}
{$include <gdk/gdkversionmacros.h>}
{$include <gdk/gdktypes.h>}


function GDK_TYPE_CONTENT_DESERIALIZER : longint; { return type might be wrong }

function GDK_CONTENT_DESERIALIZER(o : longint) : longint;

function GDK_IS_CONTENT_DESERIALIZER(o : longint) : longint;

type


  TGdkContentDeserializeFunc = procedure (deserializer:PGdkContentDeserializer);cdecl;


function gdk_content_deserializer_get_type:TGType;cdecl;external;

function gdk_content_deserializer_get_mime_type(deserializer:PGdkContentDeserializer):Pchar;cdecl;external;

function gdk_content_deserializer_get_gtype(deserializer:PGdkContentDeserializer):TGType;cdecl;external;

function gdk_content_deserializer_get_value(deserializer:PGdkContentDeserializer):PGValue;cdecl;external;

function gdk_content_deserializer_get_input_stream(deserializer:PGdkContentDeserializer):PGInputStream;cdecl;external;

function gdk_content_deserializer_get_priority(deserializer:PGdkContentDeserializer):longint;cdecl;external;

function gdk_content_deserializer_get_cancellable(deserializer:PGdkContentDeserializer):PGCancellable;cdecl;external;

function gdk_content_deserializer_get_user_data(deserializer:PGdkContentDeserializer):Tgpointer;cdecl;external;

procedure gdk_content_deserializer_set_task_data(deserializer:PGdkContentDeserializer; data:Tgpointer; notify:TGDestroyNotify);cdecl;external;

function gdk_content_deserializer_get_task_data(deserializer:PGdkContentDeserializer):Tgpointer;cdecl;external;

procedure gdk_content_deserializer_return_success(deserializer:PGdkContentDeserializer);cdecl;external;

procedure gdk_content_deserializer_return_error(deserializer:PGdkContentDeserializer; error:PGError);cdecl;external;

function gdk_content_formats_union_deserialize_gtypes(formats:PGdkContentFormats):PGdkContentFormats;cdecl;external;

function gdk_content_formats_union_deserialize_mime_types(formats:PGdkContentFormats):PGdkContentFormats;cdecl;external;

procedure gdk_content_register_deserializer(mime_type:Pchar; _type:TGType; deserialize:TGdkContentDeserializeFunc; data:Tgpointer; notify:TGDestroyNotify);cdecl;external;

procedure gdk_content_deserialize_async(stream:PGInputStream; mime_type:Pchar; _type:TGType; io_priority:longint; cancellable:PGCancellable; 
            callback:TGAsyncReadyCallback; user_data:Tgpointer);cdecl;external;

function gdk_content_deserialize_finish(result:PGAsyncResult; value:PGValue; error:PPGError):Tgboolean;cdecl;external;

{$endif}


implementation

function GDK_TYPE_CONTENT_DESERIALIZER : longint; { return type might be wrong }
  begin
    GDK_TYPE_CONTENT_DESERIALIZER:=gdk_content_deserializer_get_type;
  end;

function GDK_CONTENT_DESERIALIZER(o : longint) : longint;
begin
  GDK_CONTENT_DESERIALIZER:=G_TYPE_CHECK_INSTANCE_CAST(o,GDK_TYPE_CONTENT_DESERIALIZER,GdkContentDeserializer);
end;

function GDK_IS_CONTENT_DESERIALIZER(o : longint) : longint;
begin
  GDK_IS_CONTENT_DESERIALIZER:=G_TYPE_CHECK_INSTANCE_TYPE(o,GDK_TYPE_CONTENT_DESERIALIZER);
end;


end.
