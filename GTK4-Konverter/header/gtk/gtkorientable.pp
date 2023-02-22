
  Type
  PGtkOrientable  = ^GtkOrientable;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GTK - The GIMP Toolkit
   * Copyright (C) 1995-1997 Peter Mattis, Spencer Kimball and Josh MacDonald
   *
   * gtkorientable.h
   * Copyright (C) 2008 Imendio AB
   * Contact: Michael Natterer <mitch@imendio.com>
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
{$ifndef __GTK_ORIENTABLE_H__}
{$define __GTK_ORIENTABLE_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_ORIENTABLE : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_ORIENTABLE(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_ORIENTABLE(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_ORIENTABLE_GET_IFACE(inst : longint) : longint;  


  type
    _GtkOrientable = GtkOrientable;
  { Dummy typedef  }
    _GtkOrientableIface = GtkOrientableIface;
    _GtkOrientableIface = record
        base_iface : GTypeInterface;
      end;

  { Zeile entfernt  }

  function gtk_orientable_get_type:GType;

  { Zeile entfernt  }
  procedure gtk_orientable_set_orientation(orientable:PGtkOrientable; orientation:GtkOrientation);

  { Zeile entfernt  }
  function gtk_orientable_get_orientation(orientable:PGtkOrientable):GtkOrientation;

  { Zeile entfernt  }
{$endif}
  { __GTK_ORIENTABLE_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_ORIENTABLE : longint; { return type might be wrong }
    begin
      GTK_TYPE_ORIENTABLE:=gtk_orientable_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_ORIENTABLE(obj : longint) : longint;
  begin
    GTK_ORIENTABLE:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_ORIENTABLE,GtkOrientable);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_ORIENTABLE(obj : longint) : longint;
  begin
    GTK_IS_ORIENTABLE:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_ORIENTABLE);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_ORIENTABLE_GET_IFACE(inst : longint) : longint;
  begin
    GTK_ORIENTABLE_GET_IFACE:=G_TYPE_INSTANCE_GET_INTERFACE(inst,GTK_TYPE_ORIENTABLE,GtkOrientableIface);
  end;

  function gtk_orientable_get_type:GType;
  begin
    { You must implement this function }
  end;
  procedure gtk_orientable_set_orientation(orientable:PGtkOrientable; orientation:GtkOrientation);
  begin
    { You must implement this function }
  end;
  function gtk_orientable_get_orientation(orientable:PGtkOrientable):GtkOrientation;
  begin
    { You must implement this function }
  end;

