
  Type
  PGtkOverlay  = ^GtkOverlay;
  PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  {
   * gtkoverlay.h
   * This file is part of gtk
   *
   * Copyright (C) 2011 - Ignacio Casal Quinteiro
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
{$ifndef __GTK_OVERLAY_H__}
{$define __GTK_OVERLAY_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_OVERLAY : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_OVERLAY(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_OVERLAY(obj : longint) : longint;  


  type
    _GtkOverlay = GtkOverlay;
  { Zeile entfernt  }

  function gtk_overlay_get_type:GType;

  { Zeile entfernt  }
  function gtk_overlay_new:^GtkWidget;

  { Zeile entfernt  }
  procedure gtk_overlay_add_overlay(overlay:PGtkOverlay; widget:PGtkWidget);

  { Zeile entfernt  }
  procedure gtk_overlay_remove_overlay(overlay:PGtkOverlay; widget:PGtkWidget);

  { Zeile entfernt  }
  procedure gtk_overlay_set_child(overlay:PGtkOverlay; child:PGtkWidget);

  { Zeile entfernt  }
  function gtk_overlay_get_child(overlay:PGtkOverlay):^GtkWidget;

  { Zeile entfernt  }
  function gtk_overlay_get_measure_overlay(overlay:PGtkOverlay; widget:PGtkWidget):gboolean;

  { Zeile entfernt  }
  procedure gtk_overlay_set_measure_overlay(overlay:PGtkOverlay; widget:PGtkWidget; measure:gboolean);

  { Zeile entfernt  }
  function gtk_overlay_get_clip_overlay(overlay:PGtkOverlay; widget:PGtkWidget):gboolean;

  { Zeile entfernt  }
  procedure gtk_overlay_set_clip_overlay(overlay:PGtkOverlay; widget:PGtkWidget; clip_overlay:gboolean);

  { Zeile entfernt  }
{$endif}
  { __GTK_OVERLAY_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_OVERLAY : longint; { return type might be wrong }
    begin
      GTK_TYPE_OVERLAY:=gtk_overlay_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_OVERLAY(obj : longint) : longint;
  begin
    GTK_OVERLAY:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_OVERLAY,GtkOverlay);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_OVERLAY(obj : longint) : longint;
  begin
    GTK_IS_OVERLAY:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_OVERLAY);
  end;

  function gtk_overlay_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gtk_overlay_new:PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_overlay_add_overlay(overlay:PGtkOverlay; widget:PGtkWidget);
  begin
    { You must implement this function }
  end;
  procedure gtk_overlay_remove_overlay(overlay:PGtkOverlay; widget:PGtkWidget);
  begin
    { You must implement this function }
  end;
  procedure gtk_overlay_set_child(overlay:PGtkOverlay; child:PGtkWidget);
  begin
    { You must implement this function }
  end;
  function gtk_overlay_get_child(overlay:PGtkOverlay):PGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_overlay_get_measure_overlay(overlay:PGtkOverlay; widget:PGtkWidget):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_overlay_set_measure_overlay(overlay:PGtkOverlay; widget:PGtkWidget; measure:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_overlay_get_clip_overlay(overlay:PGtkOverlay; widget:PGtkWidget):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_overlay_set_clip_overlay(overlay:PGtkOverlay; widget:PGtkWidget; clip_overlay:gboolean);
  begin
    { You must implement this function }
  end;

