
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
{$ifndef __GTK_CONTENT_SERIALIZER_H__}
{$define __GTK_CONTENT_SERIALIZER_H__}  
{$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}
{$include <gdk/gdkversionmacros.h>}
{$include <gdk/gdktypes.h>}

  { was #define dname def_expr }
  function GDK_TYPE_CONTENT_SERIALIZER : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_CONTENT_SERIALIZER(o : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_CONTENT_SERIALIZER(o : longint) : longint;  


  type
    _GdkContentSerializer = GdkContentSerializer;
  {*
   * GdkContentSerializeFunc:
   * @serializer: a `GdkContentSerializer`
   *
   * The type of a function that can be registered with gdk_content_register_serializer().
   *
   * When the function gets called to operate on content, it can call functions on the
   * @serializer object to obtain the mime type, output stream, user data, etc. for its
   * operation.
    }

    GdkContentSerializeFunc = procedure (serializer:PGdkContentSerializer);cdecl;
(* error 
GType                   gdk_content_serializer_get_type                 (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;
(* Const before type ignored *)

  function gdk_content_serializer_get_mime_type(serializer:PGdkContentSerializer):^char;

  function gdk_content_serializer_get_gtype(serializer:PGdkContentSerializer):GType;

(* Const before type ignored *)
  function gdk_content_serializer_get_value(serializer:PGdkContentSerializer):^GValue;

  function gdk_content_serializer_get_output_stream(serializer:PGdkContentSerializer):^GOutputStream;

  function gdk_content_serializer_get_priority(serializer:PGdkContentSerializer):longint;

  function gdk_content_serializer_get_cancellable(serializer:PGdkContentSerializer):^GCancellable;

  function gdk_content_serializer_get_user_data(serializer:PGdkContentSerializer):gpointer;

  procedure gdk_content_serializer_set_task_data(serializer:PGdkContentSerializer; data:gpointer; notify:GDestroyNotify);

  function gdk_content_serializer_get_task_data(serializer:PGdkContentSerializer):gpointer;

  procedure gdk_content_serializer_return_success(serializer:PGdkContentSerializer);

  procedure gdk_content_serializer_return_error(serializer:PGdkContentSerializer; error:PGError);

  function gdk_content_formats_union_serialize_gtypes(formats:PGdkContentFormats):^GdkContentFormats;

  function gdk_content_formats_union_serialize_mime_types(formats:PGdkContentFormats):^GdkContentFormats;

(* Const before type ignored *)
  procedure gdk_content_register_serializer(_type:GType; mime_type:Pchar; serialize:GdkContentSerializeFunc; data:gpointer; notify:GDestroyNotify);

(* Const before type ignored *)
(* Const before type ignored *)
  procedure gdk_content_serialize_async(stream:PGOutputStream; mime_type:Pchar; value:PGValue; io_priority:longint; cancellable:PGCancellable; 
              callback:GAsyncReadyCallback; user_data:gpointer);

  function gdk_content_serialize_finish(result:PGAsyncResult; error:PPGError):gboolean;

{$endif}
  { __GDK_CONTENT_SERIALIZER_H__  }
  { was #define dname def_expr }
  function GDK_TYPE_CONTENT_SERIALIZER : longint; { return type might be wrong }
    begin
      GDK_TYPE_CONTENT_SERIALIZER:=gdk_content_serializer_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_CONTENT_SERIALIZER(o : longint) : longint;
  begin
    GDK_CONTENT_SERIALIZER:=G_TYPE_CHECK_INSTANCE_CAST(o,GDK_TYPE_CONTENT_SERIALIZER,GdkContentSerializer);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_CONTENT_SERIALIZER(o : longint) : longint;
  begin
    GDK_IS_CONTENT_SERIALIZER:=G_TYPE_CHECK_INSTANCE_TYPE(o,GDK_TYPE_CONTENT_SERIALIZER);
  end;

  function gdk_content_serializer_get_mime_type(serializer:PGdkContentSerializer):Pchar;
  begin
    { You must implement this function }
  end;
  function gdk_content_serializer_get_gtype(serializer:PGdkContentSerializer):GType;
  begin
    { You must implement this function }
  end;
  function gdk_content_serializer_get_value(serializer:PGdkContentSerializer):PGValue;
  begin
    { You must implement this function }
  end;
  function gdk_content_serializer_get_output_stream(serializer:PGdkContentSerializer):PGOutputStream;
  begin
    { You must implement this function }
  end;
  function gdk_content_serializer_get_priority(serializer:PGdkContentSerializer):longint;
  begin
    { You must implement this function }
  end;
  function gdk_content_serializer_get_cancellable(serializer:PGdkContentSerializer):PGCancellable;
  begin
    { You must implement this function }
  end;
  function gdk_content_serializer_get_user_data(serializer:PGdkContentSerializer):gpointer;
  begin
    { You must implement this function }
  end;
  procedure gdk_content_serializer_set_task_data(serializer:PGdkContentSerializer; data:gpointer; notify:GDestroyNotify);
  begin
    { You must implement this function }
  end;
  function gdk_content_serializer_get_task_data(serializer:PGdkContentSerializer):gpointer;
  begin
    { You must implement this function }
  end;
  procedure gdk_content_serializer_return_success(serializer:PGdkContentSerializer);
  begin
    { You must implement this function }
  end;
  procedure gdk_content_serializer_return_error(serializer:PGdkContentSerializer; error:PGError);
  begin
    { You must implement this function }
  end;
  function gdk_content_formats_union_serialize_gtypes(formats:PGdkContentFormats):PGdkContentFormats;
  begin
    { You must implement this function }
  end;
  function gdk_content_formats_union_serialize_mime_types(formats:PGdkContentFormats):PGdkContentFormats;
  begin
    { You must implement this function }
  end;
  procedure gdk_content_register_serializer(_type:GType; mime_type:Pchar; serialize:GdkContentSerializeFunc; data:gpointer; notify:GDestroyNotify);
  begin
    { You must implement this function }
  end;
  procedure gdk_content_serialize_async(stream:PGOutputStream; mime_type:Pchar; value:PGValue; io_priority:longint; cancellable:PGCancellable; 
              callback:GAsyncReadyCallback; user_data:gpointer);
  begin
    { You must implement this function }
  end;
  function gdk_content_serialize_finish(result:PGAsyncResult; error:PPGError):gboolean;
  begin
    { You must implement this function }
  end;

