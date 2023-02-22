
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


  { GTK - The GIMP Toolkit
   * Copyright (C) 2017 Benjamin Otte
   *
   * This library is free software; you can redistribute it and/or
   * modify it under the terms of the GNU Lesser General Public
   * License as published by the Free Software Foundation; either
   * version 2 of the License, or (at your option) any later version.
   *
   * This library is distributed in the hope that it will be useful,
   * but WITHOUT ANY WARRANTY; without even the implied warranty of
   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   * Lesser General Public License for more details.
   *
   * You should have received a copy of the GNU Lesser General Public
   * License along with this library. If not, see <http://www.gnu.org/licenses/>.
    }
{$ifndef __GTK_CONTENT_DESERIALIZER_H__}
{$define __GTK_CONTENT_DESERIALIZER_H__}  
{$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}
{$include <gdk/gdkversionmacros.h>}
{$include <gdk/gdktypes.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GDK_TYPE_CONTENT_DESERIALIZER : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_CONTENT_DESERIALIZER(o : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_CONTENT_DESERIALIZER(o : longint) : longint;  


  type
    _GdkContentDeserializer = GdkContentDeserializer;
  {*
   * GdkContentDeserializeFunc:
   * @deserializer: a `GdkContentDeserializer`
   *
   * The type of a function that can be registered with gdk_content_register_deserializer().
   *
   * When the function gets called to operate on content, it can call functions on the
   * @deserializer object to obtain the mime type, input stream, user data, etc. for its
   * operation.
    }

    GdkContentDeserializeFunc = procedure (deserializer:PGdkContentDeserializer);cdecl;
  { Zeile entfernt  }

  function gdk_content_deserializer_get_type:GType;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gdk_content_deserializer_get_mime_type(deserializer:PGdkContentDeserializer):^char;

  { Zeile entfernt  }
  function gdk_content_deserializer_get_gtype(deserializer:PGdkContentDeserializer):GType;

  { Zeile entfernt  }
  function gdk_content_deserializer_get_value(deserializer:PGdkContentDeserializer):^GValue;

  { Zeile entfernt  }
  function gdk_content_deserializer_get_input_stream(deserializer:PGdkContentDeserializer):^GInputStream;

  { Zeile entfernt  }
  function gdk_content_deserializer_get_priority(deserializer:PGdkContentDeserializer):longint;

  { Zeile entfernt  }
  function gdk_content_deserializer_get_cancellable(deserializer:PGdkContentDeserializer):^GCancellable;

  { Zeile entfernt  }
  function gdk_content_deserializer_get_user_data(deserializer:PGdkContentDeserializer):gpointer;

  { Zeile entfernt  }
  procedure gdk_content_deserializer_set_task_data(deserializer:PGdkContentDeserializer; data:gpointer; notify:GDestroyNotify);

  { Zeile entfernt  }
  function gdk_content_deserializer_get_task_data(deserializer:PGdkContentDeserializer):gpointer;

  { Zeile entfernt  }
  procedure gdk_content_deserializer_return_success(deserializer:PGdkContentDeserializer);

  { Zeile entfernt  }
  procedure gdk_content_deserializer_return_error(deserializer:PGdkContentDeserializer; error:PGError);

  { Zeile entfernt  }
  function gdk_content_formats_union_deserialize_gtypes(formats:PGdkContentFormats):^GdkContentFormats;

  { Zeile entfernt  }
  function gdk_content_formats_union_deserialize_mime_types(formats:PGdkContentFormats):^GdkContentFormats;

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gdk_content_register_deserializer(mime_type:Pchar; _type:GType; deserialize:GdkContentDeserializeFunc; data:gpointer; notify:GDestroyNotify);

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gdk_content_deserialize_async(stream:PGInputStream; mime_type:Pchar; _type:GType; io_priority:longint; cancellable:PGCancellable; 
              callback:GAsyncReadyCallback; user_data:gpointer);

  { Zeile entfernt  }
  function gdk_content_deserialize_finish(result:PGAsyncResult; value:PGValue; error:PPGError):gboolean;

  { Zeile entfernt  }
{$endif}
  { __GDK_CONTENT_DESERIALIZER_H__  }
  { was #define dname def_expr }
  function GDK_TYPE_CONTENT_DESERIALIZER : longint; { return type might be wrong }
    begin
      GDK_TYPE_CONTENT_DESERIALIZER:=gdk_content_deserializer_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_CONTENT_DESERIALIZER(o : longint) : longint;
  begin
    GDK_CONTENT_DESERIALIZER:=G_TYPE_CHECK_INSTANCE_CAST(o,GDK_TYPE_CONTENT_DESERIALIZER,GdkContentDeserializer);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_CONTENT_DESERIALIZER(o : longint) : longint;
  begin
    GDK_IS_CONTENT_DESERIALIZER:=G_TYPE_CHECK_INSTANCE_TYPE(o,GDK_TYPE_CONTENT_DESERIALIZER);
  end;

  function gdk_content_deserializer_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gdk_content_deserializer_get_mime_type(deserializer:PGdkContentDeserializer):Pchar;
  begin
    { You must implement this function }
  end;
  function gdk_content_deserializer_get_gtype(deserializer:PGdkContentDeserializer):GType;
  begin
    { You must implement this function }
  end;
  function gdk_content_deserializer_get_value(deserializer:PGdkContentDeserializer):PGValue;
  begin
    { You must implement this function }
  end;
  function gdk_content_deserializer_get_input_stream(deserializer:PGdkContentDeserializer):PGInputStream;
  begin
    { You must implement this function }
  end;
  function gdk_content_deserializer_get_priority(deserializer:PGdkContentDeserializer):longint;
  begin
    { You must implement this function }
  end;
  function gdk_content_deserializer_get_cancellable(deserializer:PGdkContentDeserializer):PGCancellable;
  begin
    { You must implement this function }
  end;
  function gdk_content_deserializer_get_user_data(deserializer:PGdkContentDeserializer):gpointer;
  begin
    { You must implement this function }
  end;
  procedure gdk_content_deserializer_set_task_data(deserializer:PGdkContentDeserializer; data:gpointer; notify:GDestroyNotify);
  begin
    { You must implement this function }
  end;
  function gdk_content_deserializer_get_task_data(deserializer:PGdkContentDeserializer):gpointer;
  begin
    { You must implement this function }
  end;
  procedure gdk_content_deserializer_return_success(deserializer:PGdkContentDeserializer);
  begin
    { You must implement this function }
  end;
  procedure gdk_content_deserializer_return_error(deserializer:PGdkContentDeserializer; error:PGError);
  begin
    { You must implement this function }
  end;
  function gdk_content_formats_union_deserialize_gtypes(formats:PGdkContentFormats):PGdkContentFormats;
  begin
    { You must implement this function }
  end;
  function gdk_content_formats_union_deserialize_mime_types(formats:PGdkContentFormats):PGdkContentFormats;
  begin
    { You must implement this function }
  end;
  procedure gdk_content_register_deserializer(mime_type:Pchar; _type:GType; deserialize:GdkContentDeserializeFunc; data:gpointer; notify:GDestroyNotify);
  begin
    { You must implement this function }
  end;
  procedure gdk_content_deserialize_async(stream:PGInputStream; mime_type:Pchar; _type:GType; io_priority:longint; cancellable:PGCancellable; 
              callback:GAsyncReadyCallback; user_data:gpointer);
  begin
    { You must implement this function }
  end;
  function gdk_content_deserialize_finish(result:PGAsyncResult; value:PGValue; error:PPGError):gboolean;
  begin
    { You must implement this function }
  end;

