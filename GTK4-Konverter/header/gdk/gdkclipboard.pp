
  Type
  Pchar  = ^char;
  PGAsyncResult  = ^GAsyncResult;
  PGCancellable  = ^GCancellable;
  PGdkClipboard  = ^GdkClipboard;
  PGdkContentFormats  = ^GdkContentFormats;
  PGdkContentProvider  = ^GdkContentProvider;
  PGdkDisplay  = ^GdkDisplay;
  PGdkTexture  = ^GdkTexture;
  PGError  = ^GError;
  PGInputStream  = ^GInputStream;
  PGValue  = ^GValue;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GDK - The GIMP Drawing Kit
   *
   * Copyright (C) 2017 Benjamin Otte <otte@gnome.org>
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
{$ifndef __GDK_CLIPBOARD_H__}
{$define __GDK_CLIPBOARD_H__}  
{$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}
{$include <gdk/gdkversionmacros.h>}
{$include <gdk/gdktypes.h>}
{$include <gio/gio.h>}

  { was #define dname def_expr }
  function GDK_TYPE_CLIPBOARD : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_CLIPBOARD(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_CLIPBOARD(obj : longint) : longint;  

(* error 
GType                   gdk_clipboard_get_type          (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;

  function gdk_clipboard_get_display(clipboard:PGdkClipboard):^GdkDisplay;

  function gdk_clipboard_get_formats(clipboard:PGdkClipboard):^GdkContentFormats;

  function gdk_clipboard_is_local(clipboard:PGdkClipboard):gboolean;

  function gdk_clipboard_get_content(clipboard:PGdkClipboard):^GdkContentProvider;

  procedure gdk_clipboard_store_async(clipboard:PGdkClipboard; io_priority:longint; cancellable:PGCancellable; callback:GAsyncReadyCallback; user_data:gpointer);

  function gdk_clipboard_store_finish(clipboard:PGdkClipboard; result:PGAsyncResult; error:PPGError):gboolean;

(* Const before type ignored *)
  procedure gdk_clipboard_read_async(clipboard:PGdkClipboard; mime_types:PPchar; io_priority:longint; cancellable:PGCancellable; callback:GAsyncReadyCallback; 
              user_data:gpointer);

(* Const before type ignored *)
  function gdk_clipboard_read_finish(clipboard:PGdkClipboard; result:PGAsyncResult; out_mime_type:PPchar; error:PPGError):^GInputStream;

  procedure gdk_clipboard_read_value_async(clipboard:PGdkClipboard; _type:GType; io_priority:longint; cancellable:PGCancellable; callback:GAsyncReadyCallback; 
              user_data:gpointer);

(* Const before type ignored *)
  function gdk_clipboard_read_value_finish(clipboard:PGdkClipboard; result:PGAsyncResult; error:PPGError):^GValue;

  procedure gdk_clipboard_read_texture_async(clipboard:PGdkClipboard; cancellable:PGCancellable; callback:GAsyncReadyCallback; user_data:gpointer);

  function gdk_clipboard_read_texture_finish(clipboard:PGdkClipboard; result:PGAsyncResult; error:PPGError):^GdkTexture;

  procedure gdk_clipboard_read_text_async(clipboard:PGdkClipboard; cancellable:PGCancellable; callback:GAsyncReadyCallback; user_data:gpointer);

  function gdk_clipboard_read_text_finish(clipboard:PGdkClipboard; result:PGAsyncResult; error:PPGError):^char;

  function gdk_clipboard_set_content(clipboard:PGdkClipboard; provider:PGdkContentProvider):gboolean;

  procedure gdk_clipboard_set(clipboard:PGdkClipboard; _type:GType; args:array of const);

  procedure gdk_clipboard_set_valist(clipboard:PGdkClipboard; _type:GType; args:va_list);

(* Const before type ignored *)
  procedure gdk_clipboard_set_value(clipboard:PGdkClipboard; value:PGValue);

(* Const before type ignored *)
  procedure gdk_clipboard_set_text(clipboard:PGdkClipboard; text:Pchar);

  procedure gdk_clipboard_set_texture(clipboard:PGdkClipboard; texture:PGdkTexture);

{$endif}
  { __GDK_CLIPBOARD_H__  }
  { was #define dname def_expr }
  function GDK_TYPE_CLIPBOARD : longint; { return type might be wrong }
    begin
      GDK_TYPE_CLIPBOARD:=gdk_clipboard_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_CLIPBOARD(obj : longint) : longint;
  begin
    GDK_CLIPBOARD:=G_TYPE_CHECK_INSTANCE_CAST(obj,GDK_TYPE_CLIPBOARD,GdkClipboard);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_CLIPBOARD(obj : longint) : longint;
  begin
    GDK_IS_CLIPBOARD:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GDK_TYPE_CLIPBOARD);
  end;

  function gdk_clipboard_get_display(clipboard:PGdkClipboard):PGdkDisplay;
  begin
    { You must implement this function }
  end;
  function gdk_clipboard_get_formats(clipboard:PGdkClipboard):PGdkContentFormats;
  begin
    { You must implement this function }
  end;
  function gdk_clipboard_is_local(clipboard:PGdkClipboard):gboolean;
  begin
    { You must implement this function }
  end;
  function gdk_clipboard_get_content(clipboard:PGdkClipboard):PGdkContentProvider;
  begin
    { You must implement this function }
  end;
  procedure gdk_clipboard_store_async(clipboard:PGdkClipboard; io_priority:longint; cancellable:PGCancellable; callback:GAsyncReadyCallback; user_data:gpointer);
  begin
    { You must implement this function }
  end;
  function gdk_clipboard_store_finish(clipboard:PGdkClipboard; result:PGAsyncResult; error:PPGError):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gdk_clipboard_read_async(clipboard:PGdkClipboard; mime_types:PPchar; io_priority:longint; cancellable:PGCancellable; callback:GAsyncReadyCallback; 
              user_data:gpointer);
  begin
    { You must implement this function }
  end;
  function gdk_clipboard_read_finish(clipboard:PGdkClipboard; result:PGAsyncResult; out_mime_type:PPchar; error:PPGError):PGInputStream;
  begin
    { You must implement this function }
  end;
  procedure gdk_clipboard_read_value_async(clipboard:PGdkClipboard; _type:GType; io_priority:longint; cancellable:PGCancellable; callback:GAsyncReadyCallback; 
              user_data:gpointer);
  begin
    { You must implement this function }
  end;
  function gdk_clipboard_read_value_finish(clipboard:PGdkClipboard; result:PGAsyncResult; error:PPGError):PGValue;
  begin
    { You must implement this function }
  end;
  procedure gdk_clipboard_read_texture_async(clipboard:PGdkClipboard; cancellable:PGCancellable; callback:GAsyncReadyCallback; user_data:gpointer);
  begin
    { You must implement this function }
  end;
  function gdk_clipboard_read_texture_finish(clipboard:PGdkClipboard; result:PGAsyncResult; error:PPGError):PGdkTexture;
  begin
    { You must implement this function }
  end;
  procedure gdk_clipboard_read_text_async(clipboard:PGdkClipboard; cancellable:PGCancellable; callback:GAsyncReadyCallback; user_data:gpointer);
  begin
    { You must implement this function }
  end;
  function gdk_clipboard_read_text_finish(clipboard:PGdkClipboard; result:PGAsyncResult; error:PPGError):Pchar;
  begin
    { You must implement this function }
  end;
  function gdk_clipboard_set_content(clipboard:PGdkClipboard; provider:PGdkContentProvider):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gdk_clipboard_set(clipboard:PGdkClipboard; _type:GType);
  begin
    { You must implement this function }
  end;
  procedure gdk_clipboard_set_valist(clipboard:PGdkClipboard; _type:GType; args:va_list);
  begin
    { You must implement this function }
  end;
  procedure gdk_clipboard_set_value(clipboard:PGdkClipboard; value:PGValue);
  begin
    { You must implement this function }
  end;
  procedure gdk_clipboard_set_text(clipboard:PGdkClipboard; text:Pchar);
  begin
    { You must implement this function }
  end;
  procedure gdk_clipboard_set_texture(clipboard:PGdkClipboard; texture:PGdkTexture);
  begin
    { You must implement this function }
  end;

