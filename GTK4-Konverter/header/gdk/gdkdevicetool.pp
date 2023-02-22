
  Type
  PGdkDeviceTool  = ^GdkDeviceTool;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GDK - The GIMP Drawing Kit
   * Copyright (C) 2009 Carlos Garnacho <carlosg@gnome.org>
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
{$ifndef __GDK_DEVICE_TOOL_H__}
{$define __GDK_DEVICE_TOOL_H__}  
{$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}
{$include <gdk/gdkenums.h>}
{$include <gdk/gdktypes.h>}
{$include <gdk/gdkversionmacros.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GDK_TYPE_DEVICE_TOOL : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_DEVICE_TOOL(o : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_DEVICE_TOOL(o : longint) : longint;  


  type
    _GdkDeviceTool = GdkDeviceTool;
  {*
   * GdkDeviceToolType:
   * @GDK_DEVICE_TOOL_TYPE_UNKNOWN: Tool is of an unknown type.
   * @GDK_DEVICE_TOOL_TYPE_PEN: Tool is a standard tablet stylus.
   * @GDK_DEVICE_TOOL_TYPE_ERASER: Tool is standard tablet eraser.
   * @GDK_DEVICE_TOOL_TYPE_BRUSH: Tool is a brush stylus.
   * @GDK_DEVICE_TOOL_TYPE_PENCIL: Tool is a pencil stylus.
   * @GDK_DEVICE_TOOL_TYPE_AIRBRUSH: Tool is an airbrush stylus.
   * @GDK_DEVICE_TOOL_TYPE_MOUSE: Tool is a mouse.
   * @GDK_DEVICE_TOOL_TYPE_LENS: Tool is a lens cursor.
   *
   * Indicates the specific type of tool being used being a tablet. Such as an
   * airbrush, pencil, etc.
    }

    GdkDeviceToolType = (GDK_DEVICE_TOOL_TYPE_UNKNOWN,GDK_DEVICE_TOOL_TYPE_PEN,
      GDK_DEVICE_TOOL_TYPE_ERASER,GDK_DEVICE_TOOL_TYPE_BRUSH,
      GDK_DEVICE_TOOL_TYPE_PENCIL,GDK_DEVICE_TOOL_TYPE_AIRBRUSH,
      GDK_DEVICE_TOOL_TYPE_MOUSE,GDK_DEVICE_TOOL_TYPE_LENS
      );
  { Zeile entfernt  }

  function gdk_device_tool_get_type:GType;

  { Zeile entfernt  }
  function gdk_device_tool_get_serial(tool:PGdkDeviceTool):guint64;

  { Zeile entfernt  }
  function gdk_device_tool_get_hardware_id(tool:PGdkDeviceTool):guint64;

  { Zeile entfernt  }
  function gdk_device_tool_get_tool_type(tool:PGdkDeviceTool):GdkDeviceToolType;

  { Zeile entfernt  }
  function gdk_device_tool_get_axes(tool:PGdkDeviceTool):GdkAxisFlags;

  { Zeile entfernt  }
{$endif}
  { __GDK_DEVICE_TOOL_H__  }
  { was #define dname def_expr }
  function GDK_TYPE_DEVICE_TOOL : longint; { return type might be wrong }
    begin
      GDK_TYPE_DEVICE_TOOL:=gdk_device_tool_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_DEVICE_TOOL(o : longint) : longint;
  begin
    GDK_DEVICE_TOOL:=G_TYPE_CHECK_INSTANCE_CAST(o,GDK_TYPE_DEVICE_TOOL,GdkDeviceTool);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_DEVICE_TOOL(o : longint) : longint;
  begin
    GDK_IS_DEVICE_TOOL:=G_TYPE_CHECK_INSTANCE_TYPE(o,GDK_TYPE_DEVICE_TOOL);
  end;

  function gdk_device_tool_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gdk_device_tool_get_serial(tool:PGdkDeviceTool):guint64;
  begin
    { You must implement this function }
  end;
  function gdk_device_tool_get_hardware_id(tool:PGdkDeviceTool):guint64;
  begin
    { You must implement this function }
  end;
  function gdk_device_tool_get_tool_type(tool:PGdkDeviceTool):GdkDeviceToolType;
  begin
    { You must implement this function }
  end;
  function gdk_device_tool_get_axes(tool:PGdkDeviceTool):GdkAxisFlags;
  begin
    { You must implement this function }
  end;

