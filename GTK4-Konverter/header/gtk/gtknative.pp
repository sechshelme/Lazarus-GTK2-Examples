
  Type
  Pdouble  = ^double;
  PGdkSurface  = ^GdkSurface;
  PGskRenderer  = ^GskRenderer;
  PGtkNative  = ^GtkNative;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  {
   * Copyright © 2019 Red Hat, Inc.
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
   * Authors: Matthias Clasen <mclasen@redhat.com>
    }
{$ifndef __GTK_NATIVE_H__}
{$define __GTK_NATIVE_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}
{$include <gtk/gtkwidget.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_NATIVE : longint; { return type might be wrong }

  { Zeile entfernt  }
  { Zeile entfernt  }
  { Zeile entfernt  }
  procedure gtk_native_realize(self:PGtkNative);

  { Zeile entfernt  }
  procedure gtk_native_unrealize(self:PGtkNative);

  { Zeile entfernt  }
  function gtk_native_get_for_surface(surface:PGdkSurface):^GtkNative;

  { Zeile entfernt  }
  function gtk_native_get_surface(self:PGtkNative):^GdkSurface;

  { Zeile entfernt  }
  function gtk_native_get_renderer(self:PGtkNative):^GskRenderer;

  { Zeile entfernt  }
  procedure gtk_native_get_surface_transform(self:PGtkNative; x:Pdouble; y:Pdouble);

  { Zeile entfernt  }
{$endif}
  { __GTK_NATIVE_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_NATIVE : longint; { return type might be wrong }
    begin
      GTK_TYPE_NATIVE:=gtk_native_get_type;
    end;

  procedure gtk_native_realize(self:PGtkNative);
  begin
    { You must implement this function }
  end;
  procedure gtk_native_unrealize(self:PGtkNative);
  begin
    { You must implement this function }
  end;
  function gtk_native_get_for_surface(surface:PGdkSurface):PGtkNative;
  begin
    { You must implement this function }
  end;
  function gtk_native_get_surface(self:PGtkNative):PGdkSurface;
  begin
    { You must implement this function }
  end;
  function gtk_native_get_renderer(self:PGtkNative):PGskRenderer;
  begin
    { You must implement this function }
  end;
  procedure gtk_native_get_surface_transform(self:PGtkNative; x:Pdouble; y:Pdouble);
  begin
    { You must implement this function }
  end;

