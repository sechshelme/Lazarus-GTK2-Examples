
  Type
  PGtkAdjustment  = ^GtkAdjustment;
  PGtkScrollbar  = ^GtkScrollbar;
  PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GTK - The GIMP Toolkit
   * Copyright (C) 1995-1997 Peter Mattis, Spencer Kimball and Josh MacDonald
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
  {
   * Modified by the GTK+ Team and others 1997-2000.  See the AUTHORS
   * file for a list of people on the GTK+ Team.  See the ChangeLog
   * files for a list of changes.  These files are distributed with
   * GTK+ at ftp://ftp.gtk.org/pub/gtk/.
    }
{$ifndef __GTK_SCROLLBAR_H__}
{$define __GTK_SCROLLBAR_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_SCROLLBAR : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_SCROLLBAR(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_SCROLLBAR(obj : longint) : longint;  


  type
    _GtkScrollbar = GtkScrollbar;
  { Zeile entfernt  }

  function gtk_scrollbar_get_type:GType;

  { Zeile entfernt  }
  function gtk_scrollbar_new(orientation:GtkOrientation; adjustment:PGtkAdjustment):^GtkWidget;

  { Zeile entfernt  }
  procedure gtk_scrollbar_set_adjustment(self:PGtkScrollbar; adjustment:PGtkAdjustment);

  { Zeile entfernt  }
  function gtk_scrollbar_get_adjustment(self:PGtkScrollbar):^GtkAdjustment;

  { Zeile entfernt  }
{$endif}
  { __GTK_SCROLLBAR_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_SCROLLBAR : longint; { return type might be wrong }
    begin
      GTK_TYPE_SCROLLBAR:=gtk_scrollbar_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_SCROLLBAR(obj : longint) : longint;
  begin
    GTK_SCROLLBAR:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_SCROLLBAR,GtkScrollbar);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_SCROLLBAR(obj : longint) : longint;
  begin
    GTK_IS_SCROLLBAR:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_SCROLLBAR);
  end;

  function gtk_scrollbar_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gtk_scrollbar_new(orientation:GtkOrientation; adjustment:PGtkAdjustment):PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_scrollbar_set_adjustment(self:PGtkScrollbar; adjustment:PGtkAdjustment);
  begin
    { You must implement this function }
  end;
  function gtk_scrollbar_get_adjustment(self:PGtkScrollbar):PGtkAdjustment;
  begin
    { You must implement this function }
  end;

