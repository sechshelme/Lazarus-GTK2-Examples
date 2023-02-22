
  Type
  PGtkAdjustment  = ^GtkAdjustment;
  PGtkBorder  = ^GtkBorder;
  PGtkScrollable  = ^GtkScrollable;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { gtkscrollable.h
   * Copyright (C) 2008 Tadej Borovšak <tadeboro@gmail.com>
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
{$ifndef __GTK_SCROLLABLE_H__}
{$define __GTK_SCROLLABLE_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}
{$include <gtk/gtkenums.h>}
{$include <gtk/gtktypes.h>}
{$include <gtk/gtkborder.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_SCROLLABLE : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_SCROLLABLE(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_SCROLLABLE(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_SCROLLABLE_GET_IFACE(inst : longint) : longint;  


  type
    _GtkScrollable = GtkScrollable;
  { Dummy  }
    _GtkScrollableInterface = GtkScrollableInterface;
    _GtkScrollableInterface = record
        base_iface : GTypeInterface;
        get_border : function (scrollable:PGtkScrollable; border:PGtkBorder):gboolean;cdecl;
      end;

  { Public API  }
  { Zeile entfernt  }

  function gtk_scrollable_get_type:GType;

  { Zeile entfernt  }
  function gtk_scrollable_get_hadjustment(scrollable:PGtkScrollable):^GtkAdjustment;

  { Zeile entfernt  }
  procedure gtk_scrollable_set_hadjustment(scrollable:PGtkScrollable; hadjustment:PGtkAdjustment);

  { Zeile entfernt  }
  function gtk_scrollable_get_vadjustment(scrollable:PGtkScrollable):^GtkAdjustment;

  { Zeile entfernt  }
  procedure gtk_scrollable_set_vadjustment(scrollable:PGtkScrollable; vadjustment:PGtkAdjustment);

  { Zeile entfernt  }
  function gtk_scrollable_get_hscroll_policy(scrollable:PGtkScrollable):GtkScrollablePolicy;

  { Zeile entfernt  }
  procedure gtk_scrollable_set_hscroll_policy(scrollable:PGtkScrollable; policy:GtkScrollablePolicy);

  { Zeile entfernt  }
  function gtk_scrollable_get_vscroll_policy(scrollable:PGtkScrollable):GtkScrollablePolicy;

  { Zeile entfernt  }
  procedure gtk_scrollable_set_vscroll_policy(scrollable:PGtkScrollable; policy:GtkScrollablePolicy);

  { Zeile entfernt  }
  function gtk_scrollable_get_border(scrollable:PGtkScrollable; border:PGtkBorder):gboolean;

  { Zeile entfernt  }
{$endif}
  { __GTK_SCROLLABLE_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_SCROLLABLE : longint; { return type might be wrong }
    begin
      GTK_TYPE_SCROLLABLE:=gtk_scrollable_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_SCROLLABLE(obj : longint) : longint;
  begin
    GTK_SCROLLABLE:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_SCROLLABLE,GtkScrollable);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_SCROLLABLE(obj : longint) : longint;
  begin
    GTK_IS_SCROLLABLE:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_SCROLLABLE);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_SCROLLABLE_GET_IFACE(inst : longint) : longint;
  begin
    GTK_SCROLLABLE_GET_IFACE:=G_TYPE_INSTANCE_GET_INTERFACE(inst,GTK_TYPE_SCROLLABLE,GtkScrollableInterface);
  end;

  function gtk_scrollable_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gtk_scrollable_get_hadjustment(scrollable:PGtkScrollable):PGtkAdjustment;
  begin
    { You must implement this function }
  end;
  procedure gtk_scrollable_set_hadjustment(scrollable:PGtkScrollable; hadjustment:PGtkAdjustment);
  begin
    { You must implement this function }
  end;
  function gtk_scrollable_get_vadjustment(scrollable:PGtkScrollable):PGtkAdjustment;
  begin
    { You must implement this function }
  end;
  procedure gtk_scrollable_set_vadjustment(scrollable:PGtkScrollable; vadjustment:PGtkAdjustment);
  begin
    { You must implement this function }
  end;
  function gtk_scrollable_get_hscroll_policy(scrollable:PGtkScrollable):GtkScrollablePolicy;
  begin
    { You must implement this function }
  end;
  procedure gtk_scrollable_set_hscroll_policy(scrollable:PGtkScrollable; policy:GtkScrollablePolicy);
  begin
    { You must implement this function }
  end;
  function gtk_scrollable_get_vscroll_policy(scrollable:PGtkScrollable):GtkScrollablePolicy;
  begin
    { You must implement this function }
  end;
  procedure gtk_scrollable_set_vscroll_policy(scrollable:PGtkScrollable; policy:GtkScrollablePolicy);
  begin
    { You must implement this function }
  end;
  function gtk_scrollable_get_border(scrollable:PGtkScrollable; border:PGtkBorder):gboolean;
  begin
    { You must implement this function }
  end;

