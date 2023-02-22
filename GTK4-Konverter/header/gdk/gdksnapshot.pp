
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
{$ifndef __GDK_SNAPSHOT_H__}
{$define __GDK_SNAPSHOT_H__}  
{$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}
{$include <gdk/gdktypes.h>}
{$include <gdk/gdkversionmacros.h>}
  { Zeile entfernt  }

  type
    _GdkSnapshotClass = GdkSnapshotClass;

  { was #define dname def_expr }
  function GDK_TYPE_SNAPSHOT : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_SNAPSHOT(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_SNAPSHOT(obj : longint) : longint;  

  { Zeile entfernt  }
  { Zeile entfernt  }
  function gdk_snapshot_get_type:GType;

  { Zeile entfernt  }
{$endif}
  { __GDK_SNAPSHOT_H__  }
  { was #define dname def_expr }
  function GDK_TYPE_SNAPSHOT : longint; { return type might be wrong }
    begin
      GDK_TYPE_SNAPSHOT:=gdk_snapshot_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_SNAPSHOT(obj : longint) : longint;
  begin
    GDK_SNAPSHOT:=G_TYPE_CHECK_INSTANCE_CAST(obj,GDK_TYPE_SNAPSHOT,GdkSnapshot);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_IS_SNAPSHOT(obj : longint) : longint;
  begin
    GDK_IS_SNAPSHOT:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GDK_TYPE_SNAPSHOT);
  end;

  function gdk_snapshot_get_type:GType;
  begin
    { You must implement this function }
  end;

