
  Type
  Pchar  = ^char;
  PGAsyncResult  = ^GAsyncResult;
  PGCancellable  = ^GCancellable;
  PGdkContentFormats  = ^GdkContentFormats;
  PGdkDevice  = ^GdkDevice;
  PGdkDisplay  = ^GdkDisplay;
  PGdkDrag  = ^GdkDrag;
  PGdkDrop  = ^GdkDrop;
  PGdkSurface  = ^GdkSurface;
  PGError  = ^GError;
  PGInputStream  = ^GInputStream;
  PGValue  = ^GValue;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  {
   * Copyright © 2018 Benjamin Otte
   *
   * This library is free software; you can redistribute it and/or
   * modify it under the terms of the GNU Lesser General Public
   * License as published by the Free Software Foundation; either
   * version 2.1 of the License, or (at your option) any later version.
   *
   * This library is distributed in the hope that it will be useful,
   * but WITHOUT ANY WARRANTY; without even the implied warranty of
   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   * Lesser General Public License for more details.
   *
   * You should have received a copy of the GNU Lesser General Public
   * License along with this library. If not, see <http://www.gnu.org/licenses/>.
   *
   * Authors: Benjamin Otte <otte@gnome.org>
    }
{$ifndef __GDK_DROP_H__}
{$define __GDK_DROP_H__}  
{$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}
{$include <gdk/gdkenums.h>}
{$include <gdk/gdktypes.h>}
{$include <gdk/gdkversionmacros.h>}
  { Zeile entfernt  }
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GDK_TYPE_DROP : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_DROP(object : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_DROP(object : longint) : longint;  

  { Zeile entfernt  }
  function gdk_drop_get_type:GType;

  { Zeile entfernt  }
  function gdk_drop_get_display(self:PGdkDrop):^GdkDisplay;

  { Zeile entfernt  }
  function gdk_drop_get_device(self:PGdkDrop):^GdkDevice;

  { Zeile entfernt  }
  function gdk_drop_get_surface(self:PGdkDrop):^GdkSurface;

  { Zeile entfernt  }
  function gdk_drop_get_formats(self:PGdkDrop):^GdkContentFormats;

  { Zeile entfernt  }
  function gdk_drop_get_actions(self:PGdkDrop):GdkDragAction;

  { Zeile entfernt  }
  function gdk_drop_get_drag(self:PGdkDrop):^GdkDrag;

  { Zeile entfernt  }
  procedure gdk_drop_status(self:PGdkDrop; actions:GdkDragAction; preferred:GdkDragAction);

  { Zeile entfernt  }
  procedure gdk_drop_finish(self:PGdkDrop; action:GdkDragAction);

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gdk_drop_read_async(self:PGdkDrop; mime_types:PPchar; io_priority:longint; cancellable:PGCancellable; callback:GAsyncReadyCallback; 
              user_data:gpointer);

  { Zeile entfernt  }
(* Const before type ignored *)
  function gdk_drop_read_finish(self:PGdkDrop; result:PGAsyncResult; out_mime_type:PPchar; error:PPGError):^GInputStream;

  { Zeile entfernt  }
  procedure gdk_drop_read_value_async(self:PGdkDrop; _type:GType; io_priority:longint; cancellable:PGCancellable; callback:GAsyncReadyCallback; 
              user_data:gpointer);

  { Zeile entfernt  }
(* Const before type ignored *)
  function gdk_drop_read_value_finish(self:PGdkDrop; result:PGAsyncResult; error:PPGError):^GValue;

  { Zeile entfernt  }
{$endif}
  { __GDK_DROP_H__  }
  { was #define dname def_expr }
  function GDK_TYPE_DROP : longint; { return type might be wrong }
    begin
      GDK_TYPE_DROP:=gdk_drop_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_DROP(object : longint) : longint;
  begin
    GDK_DROP:=G_TYPE_CHECK_INSTANCE_CAST(object,GDK_TYPE_DROP,GdkDrop);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_DROP(object : longint) : longint;
  begin
    GDK_IS_DROP:=G_TYPE_CHECK_INSTANCE_TYPE(object,GDK_TYPE_DROP);
  end;

  function gdk_drop_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gdk_drop_get_display(self:PGdkDrop):PGdkDisplay;
  begin
    { You must implement this function }
  end;
  function gdk_drop_get_device(self:PGdkDrop):PGdkDevice;
  begin
    { You must implement this function }
  end;
  function gdk_drop_get_surface(self:PGdkDrop):PGdkSurface;
  begin
    { You must implement this function }
  end;
  function gdk_drop_get_formats(self:PGdkDrop):PGdkContentFormats;
  begin
    { You must implement this function }
  end;
  function gdk_drop_get_actions(self:PGdkDrop):GdkDragAction;
  begin
    { You must implement this function }
  end;
  function gdk_drop_get_drag(self:PGdkDrop):PGdkDrag;
  begin
    { You must implement this function }
  end;
  procedure gdk_drop_status(self:PGdkDrop; actions:GdkDragAction; preferred:GdkDragAction);
  begin
    { You must implement this function }
  end;
  procedure gdk_drop_finish(self:PGdkDrop; action:GdkDragAction);
  begin
    { You must implement this function }
  end;
  procedure gdk_drop_read_async(self:PGdkDrop; mime_types:PPchar; io_priority:longint; cancellable:PGCancellable; callback:GAsyncReadyCallback; 
              user_data:gpointer);
  begin
    { You must implement this function }
  end;
  function gdk_drop_read_finish(self:PGdkDrop; result:PGAsyncResult; out_mime_type:PPchar; error:PPGError):PGInputStream;
  begin
    { You must implement this function }
  end;
  procedure gdk_drop_read_value_async(self:PGdkDrop; _type:GType; io_priority:longint; cancellable:PGCancellable; callback:GAsyncReadyCallback; 
              user_data:gpointer);
  begin
    { You must implement this function }
  end;
  function gdk_drop_read_value_finish(self:PGdkDrop; result:PGAsyncResult; error:PPGError):PGValue;
  begin
    { You must implement this function }
  end;

