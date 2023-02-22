
  Type
  PGtkGesture  = ^GtkGesture;
  PGtkGestureZoom  = ^GtkGestureZoom;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GTK - The GIMP Toolkit
   * Copyright (C) 2012, One Laptop Per Child.
   * Copyright (C) 2014, Red Hat, Inc.
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
   *
   * Author(s): Carlos Garnacho <carlosg@gnome.org>
    }
{$ifndef __GTK_GESTURE_ZOOM_H__}
{$define __GTK_GESTURE_ZOOM_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkgesture.h>}
{$include <gtk/gtkwidget.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_GESTURE_ZOOM : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_GESTURE_ZOOM(o : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_GESTURE_ZOOM_CLASS(k : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_GESTURE_ZOOM(o : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_GESTURE_ZOOM_CLASS(k : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_GESTURE_ZOOM_GET_CLASS(o : longint) : longint;  


  type
    _GtkGestureZoom = GtkGestureZoom;
    _GtkGestureZoomClass = GtkGestureZoomClass;
  { Zeile entfernt  }

  function gtk_gesture_zoom_get_type:GType;

  { Zeile entfernt  }
  function gtk_gesture_zoom_new:^GtkGesture;

  { Zeile entfernt  }
  function gtk_gesture_zoom_get_scale_delta(gesture:PGtkGestureZoom):double;

  { Zeile entfernt  }
{$endif}
  { __GTK_GESTURE_ZOOM_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_GESTURE_ZOOM : longint; { return type might be wrong }
    begin
      GTK_TYPE_GESTURE_ZOOM:=gtk_gesture_zoom_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_GESTURE_ZOOM(o : longint) : longint;
  begin
    GTK_GESTURE_ZOOM:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_GESTURE_ZOOM,GtkGestureZoom);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_GESTURE_ZOOM_CLASS(k : longint) : longint;
  begin
    GTK_GESTURE_ZOOM_CLASS:=G_TYPE_CHECK_CLASS_CAST(k,GTK_TYPE_GESTURE_ZOOM,GtkGestureZoomClass);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_GESTURE_ZOOM(o : longint) : longint;
  begin
    GTK_IS_GESTURE_ZOOM:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_GESTURE_ZOOM);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_GESTURE_ZOOM_CLASS(k : longint) : longint;
  begin
    GTK_IS_GESTURE_ZOOM_CLASS:=G_TYPE_CHECK_CLASS_TYPE(k,GTK_TYPE_GESTURE_ZOOM);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_GESTURE_ZOOM_GET_CLASS(o : longint) : longint;
  begin
    GTK_GESTURE_ZOOM_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GTK_TYPE_GESTURE_ZOOM,GtkGestureZoomClass);
  end;

  function gtk_gesture_zoom_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gtk_gesture_zoom_new:PGtkGesture;
  begin
    { You must implement this function }
  end;
  function gtk_gesture_zoom_get_scale_delta(gesture:PGtkGestureZoom):double;
  begin
    { You must implement this function }
  end;

