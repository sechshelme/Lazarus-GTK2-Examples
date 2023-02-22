
  Type
  Pchar  = ^char;
  PGAsyncResult  = ^GAsyncResult;
  PGCancellable  = ^GCancellable;
  PGdkClipboard  = ^GdkClipboard;
  PGdkContentFormats  = ^GdkContentFormats;
  PGdkContentProvider  = ^GdkContentProvider;
  PGError  = ^GError;
  PGOutputStream  = ^GOutputStream;
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
{$ifndef __GDK_CONTENT_PROVIDER_H__}
{$define __GDK_CONTENT_PROVIDER_H__}  
{$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}
{$include <gdk/gdkversionmacros.h>}
{$include <gdk/gdktypes.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GDK_TYPE_CONTENT_PROVIDER : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_CONTENT_PROVIDER(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_CONTENT_PROVIDER(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_CONTENT_PROVIDER_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_CONTENT_PROVIDER_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_CONTENT_PROVIDER_GET_CLASS(obj : longint) : longint;  


  type
    _GdkContentProviderClass = GdkContentProviderClass;
    _GdkContentProvider = record
        parent : GObject;
      end;

  {*
   * GdkContentProviderClass:
   * @content_changed: Signal class closure for `GdkContentProvider::content-changed`
   *
   * Class structure for `GdkContentProvider`.
    }
  { signals  }
  {< private > }
  { vfuncs  }
(* Const before type ignored *)
  {< private > }
    _GdkContentProviderClass = record
        parent_class : GObjectClass;
        content_changed : procedure (provider:PGdkContentProvider);cdecl;
        attach_clipboard : procedure (provider:PGdkContentProvider; clipboard:PGdkClipboard);cdecl;
        detach_clipboard : procedure (provider:PGdkContentProvider; clipboard:PGdkClipboard);cdecl;
        ref_formats : function (provider:PGdkContentProvider):PGdkContentFormats;cdecl;
        ref_storable_formats : function (provider:PGdkContentProvider):PGdkContentFormats;cdecl;
        write_mime_type_async : procedure (provider:PGdkContentProvider; mime_type:Pchar; stream:PGOutputStream; io_priority:longint; cancellable:PGCancellable; 
                      callback:GAsyncReadyCallback; user_data:gpointer);cdecl;
        write_mime_type_finish : function (provider:PGdkContentProvider; result:PGAsyncResult; error:PPGError):gboolean;cdecl;
        get_value : function (provider:PGdkContentProvider; value:PGValue; error:PPGError):gboolean;cdecl;
        padding : array[0..7] of gpointer;
      end;

  { Zeile entfernt  }

  function gdk_content_provider_get_type:GType;

  { Zeile entfernt  }
  function gdk_content_provider_ref_formats(provider:PGdkContentProvider):^GdkContentFormats;

  { Zeile entfernt  }
  function gdk_content_provider_ref_storable_formats(provider:PGdkContentProvider):^GdkContentFormats;

  { Zeile entfernt  }
  procedure gdk_content_provider_content_changed(provider:PGdkContentProvider);

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gdk_content_provider_write_mime_type_async(provider:PGdkContentProvider; mime_type:Pchar; stream:PGOutputStream; io_priority:longint; cancellable:PGCancellable; 
              callback:GAsyncReadyCallback; user_data:gpointer);

  { Zeile entfernt  }
  function gdk_content_provider_write_mime_type_finish(provider:PGdkContentProvider; result:PGAsyncResult; error:PPGError):gboolean;

  { Zeile entfernt  }
  function gdk_content_provider_get_value(provider:PGdkContentProvider; value:PGValue; error:PPGError):gboolean;

  { Zeile entfernt  }
{$endif}
  { __GDK_CONTENT_PROVIDER_H__  }
  { was #define dname def_expr }
  function GDK_TYPE_CONTENT_PROVIDER : longint; { return type might be wrong }
    begin
      GDK_TYPE_CONTENT_PROVIDER:=gdk_content_provider_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_CONTENT_PROVIDER(obj : longint) : longint;
  begin
    GDK_CONTENT_PROVIDER:=G_TYPE_CHECK_INSTANCE_CAST(obj,GDK_TYPE_CONTENT_PROVIDER,GdkContentProvider);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_CONTENT_PROVIDER(obj : longint) : longint;
  begin
    GDK_IS_CONTENT_PROVIDER:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GDK_TYPE_CONTENT_PROVIDER);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_CONTENT_PROVIDER_CLASS(klass : longint) : longint;
  begin
    GDK_CONTENT_PROVIDER_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GDK_TYPE_CONTENT_PROVIDER,GdkContentProviderClass);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_CONTENT_PROVIDER_CLASS(klass : longint) : longint;
  begin
    GDK_IS_CONTENT_PROVIDER_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GDK_TYPE_CONTENT_PROVIDER);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_CONTENT_PROVIDER_GET_CLASS(obj : longint) : longint;
  begin
    GDK_CONTENT_PROVIDER_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GDK_TYPE_CONTENT_PROVIDER,GdkContentProviderClass);
  end;

  function gdk_content_provider_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gdk_content_provider_ref_formats(provider:PGdkContentProvider):PGdkContentFormats;
  begin
    { You must implement this function }
  end;
  function gdk_content_provider_ref_storable_formats(provider:PGdkContentProvider):PGdkContentFormats;
  begin
    { You must implement this function }
  end;
  procedure gdk_content_provider_content_changed(provider:PGdkContentProvider);
  begin
    { You must implement this function }
  end;
  procedure gdk_content_provider_write_mime_type_async(provider:PGdkContentProvider; mime_type:Pchar; stream:PGOutputStream; io_priority:longint; cancellable:PGCancellable; 
              callback:GAsyncReadyCallback; user_data:gpointer);
  begin
    { You must implement this function }
  end;
  function gdk_content_provider_write_mime_type_finish(provider:PGdkContentProvider; result:PGAsyncResult; error:PPGError):gboolean;
  begin
    { You must implement this function }
  end;
  function gdk_content_provider_get_value(provider:PGdkContentProvider; value:PGValue; error:PPGError):gboolean;
  begin
    { You must implement this function }
  end;

