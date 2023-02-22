
  Type
  PGtkPaned  = ^GtkPaned;
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
{$ifndef __GTK_PANED_H__}
{$define __GTK_PANED_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_PANED : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_PANED(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_PANED(obj : longint) : longint;  


  type
    _GtkPaned = GtkPaned;
  { Zeile entfernt  }

  function gtk_paned_get_type:GType;

  { Zeile entfernt  }
  function gtk_paned_new(orientation:GtkOrientation):^GtkWidget;

  { Zeile entfernt  }
  procedure gtk_paned_set_start_child(paned:PGtkPaned; child:PGtkWidget);

  { Zeile entfernt  }
  function gtk_paned_get_start_child(paned:PGtkPaned):^GtkWidget;

  { Zeile entfernt  }
  procedure gtk_paned_set_resize_start_child(paned:PGtkPaned; resize:gboolean);

  { Zeile entfernt  }
  function gtk_paned_get_resize_start_child(paned:PGtkPaned):gboolean;

  { Zeile entfernt  }
  procedure gtk_paned_set_end_child(paned:PGtkPaned; child:PGtkWidget);

  { Zeile entfernt  }
  function gtk_paned_get_end_child(paned:PGtkPaned):^GtkWidget;

  { Zeile entfernt  }
  procedure gtk_paned_set_shrink_start_child(paned:PGtkPaned; resize:gboolean);

  { Zeile entfernt  }
  function gtk_paned_get_shrink_start_child(paned:PGtkPaned):gboolean;

  { Zeile entfernt  }
  procedure gtk_paned_set_resize_end_child(paned:PGtkPaned; resize:gboolean);

  { Zeile entfernt  }
  function gtk_paned_get_resize_end_child(paned:PGtkPaned):gboolean;

  { Zeile entfernt  }
  procedure gtk_paned_set_shrink_end_child(paned:PGtkPaned; resize:gboolean);

  { Zeile entfernt  }
  function gtk_paned_get_shrink_end_child(paned:PGtkPaned):gboolean;

  { Zeile entfernt  }
  function gtk_paned_get_position(paned:PGtkPaned):longint;

  { Zeile entfernt  }
  procedure gtk_paned_set_position(paned:PGtkPaned; position:longint);

  { Zeile entfernt  }
  procedure gtk_paned_set_wide_handle(paned:PGtkPaned; wide:gboolean);

  { Zeile entfernt  }
  function gtk_paned_get_wide_handle(paned:PGtkPaned):gboolean;

  { Zeile entfernt  }
{$endif}
  { __GTK_PANED_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_PANED : longint; { return type might be wrong }
    begin
      GTK_TYPE_PANED:=gtk_paned_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_PANED(obj : longint) : longint;
  begin
    GTK_PANED:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_PANED,GtkPaned);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_PANED(obj : longint) : longint;
  begin
    GTK_IS_PANED:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_PANED);
  end;

  function gtk_paned_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gtk_paned_new(orientation:GtkOrientation):PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_paned_set_start_child(paned:PGtkPaned; child:PGtkWidget);
  begin
    { You must implement this function }
  end;
  function gtk_paned_get_start_child(paned:PGtkPaned):PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_paned_set_resize_start_child(paned:PGtkPaned; resize:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_paned_get_resize_start_child(paned:PGtkPaned):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_paned_set_end_child(paned:PGtkPaned; child:PGtkWidget);
  begin
    { You must implement this function }
  end;
  function gtk_paned_get_end_child(paned:PGtkPaned):PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_paned_set_shrink_start_child(paned:PGtkPaned; resize:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_paned_get_shrink_start_child(paned:PGtkPaned):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_paned_set_resize_end_child(paned:PGtkPaned; resize:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_paned_get_resize_end_child(paned:PGtkPaned):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_paned_set_shrink_end_child(paned:PGtkPaned; resize:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_paned_get_shrink_end_child(paned:PGtkPaned):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_paned_get_position(paned:PGtkPaned):longint;
  begin
    { You must implement this function }
  end;
  procedure gtk_paned_set_position(paned:PGtkPaned; position:longint);
  begin
    { You must implement this function }
  end;
  procedure gtk_paned_set_wide_handle(paned:PGtkPaned; wide:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_paned_get_wide_handle(paned:PGtkPaned):gboolean;
  begin
    { You must implement this function }
  end;

