
  Type
  PGtkSpinner  = ^GtkSpinner;
  PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GTK - The GIMP Toolkit
   *
   * Copyright (C) 2007 John Stowers, Neil Jagdish Patel.
   * Copyright (C) 2009 Bastien Nocera, David Zeuthen
   *
   * This library is free software; you can redistribute it and/or
   * modify it under the terms of the GNU Lesser General Public
   * License as published by the Free Software Foundation; either
   * version 2 of the License, or (at your option) any later version.
   *
   * This library is distributed in the hope that it will be useful,
   * but WITHOUT ANY WARRANTY; without even the implied warranty of
   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the GNU
   * Lesser General Public License for more details.
   *
   * You should have received a copy of the GNU Lesser General Public
   * License along with this library. If not, see <http://www.gnu.org/licenses/>.
   *
   * Code adapted from egg-spinner
   * by Christian Hergert <christian.hergert@gmail.com>
    }
{$ifndef __GTK_SPINNER_H__}
{$define __GTK_SPINNER_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_SPINNER : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_SPINNER(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_SPINNER(obj : longint) : longint;  


  type
    _GtkSpinner = GtkSpinner;
  { Zeile entfernt  }

  function gtk_spinner_get_type:GType;

  { Zeile entfernt  }
  function gtk_spinner_new:^GtkWidget;

  { Zeile entfernt  }
  procedure gtk_spinner_start(spinner:PGtkSpinner);

  { Zeile entfernt  }
  procedure gtk_spinner_stop(spinner:PGtkSpinner);

  { Zeile entfernt  }
  procedure gtk_spinner_set_spinning(spinner:PGtkSpinner; spinning:gboolean);

  { Zeile entfernt  }
  function gtk_spinner_get_spinning(spinner:PGtkSpinner):gboolean;

  { Zeile entfernt  }
{$endif}
  { __GTK_SPINNER_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_SPINNER : longint; { return type might be wrong }
    begin
      GTK_TYPE_SPINNER:=gtk_spinner_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_SPINNER(obj : longint) : longint;
  begin
    GTK_SPINNER:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_SPINNER,GtkSpinner);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_SPINNER(obj : longint) : longint;
  begin
    GTK_IS_SPINNER:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_SPINNER);
  end;

  function gtk_spinner_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gtk_spinner_new:PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_spinner_start(spinner:PGtkSpinner);
  begin
    { You must implement this function }
  end;
  procedure gtk_spinner_stop(spinner:PGtkSpinner);
  begin
    { You must implement this function }
  end;
  procedure gtk_spinner_set_spinning(spinner:PGtkSpinner; spinning:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_spinner_get_spinning(spinner:PGtkSpinner):gboolean;
  begin
    { You must implement this function }
  end;

