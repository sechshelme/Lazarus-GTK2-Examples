
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
{$ifndef __GDK_X11_DEVICE_XI2_H__}
{$define __GDK_X11_DEVICE_XI2_H__}  
{$include <gdk/gdk.h>}

  { was #define dname def_expr }
  function GDK_TYPE_X11_DEVICE_XI2 : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_X11_DEVICE_XI2(o : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_X11_DEVICE_XI2_CLASS(c : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_X11_DEVICE_XI2(o : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_X11_DEVICE_XI2_CLASS(c : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_X11_DEVICE_XI2_GET_CLASS(o : longint) : longint;  


  type
    _GdkX11DeviceXI2 = GdkX11DeviceXI2;
    _GdkX11DeviceXI2Class = GdkX11DeviceXI2Class;

    GdkX11DeviceType = (GDK_X11_DEVICE_TYPE_LOGICAL,GDK_X11_DEVICE_TYPE_PHYSICAL,
      GDK_X11_DEVICE_TYPE_FLOATING);
(* error 
GType gdk_x11_device_xi2_get_type (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;
{$endif}
  { __GDK_X11_DEVICE_XI2_H__  }
  { was #define dname def_expr }
  function GDK_TYPE_X11_DEVICE_XI2 : longint; { return type might be wrong }
    begin
      GDK_TYPE_X11_DEVICE_XI2:=gdk_x11_device_xi2_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_X11_DEVICE_XI2(o : longint) : longint;
  begin
    GDK_X11_DEVICE_XI2:=G_TYPE_CHECK_INSTANCE_CAST(o,GDK_TYPE_X11_DEVICE_XI2,GdkX11DeviceXI2);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_X11_DEVICE_XI2_CLASS(c : longint) : longint;
  begin
    GDK_X11_DEVICE_XI2_CLASS:=G_TYPE_CHECK_CLASS_CAST(c,GDK_TYPE_X11_DEVICE_XI2,GdkX11DeviceXI2Class);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_X11_DEVICE_XI2(o : longint) : longint;
  begin
    GDK_IS_X11_DEVICE_XI2:=G_TYPE_CHECK_INSTANCE_TYPE(o,GDK_TYPE_X11_DEVICE_XI2);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_X11_DEVICE_XI2_CLASS(c : longint) : longint;
  begin
    GDK_IS_X11_DEVICE_XI2_CLASS:=G_TYPE_CHECK_CLASS_TYPE(c,GDK_TYPE_X11_DEVICE_XI2);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_X11_DEVICE_XI2_GET_CLASS(o : longint) : longint;
  begin
    GDK_X11_DEVICE_XI2_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GDK_TYPE_X11_DEVICE_XI2,GdkX11DeviceXI2Class);
  end;


