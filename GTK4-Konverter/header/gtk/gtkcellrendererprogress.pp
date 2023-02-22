
  Type
  PGtkCellRenderer  = ^GtkCellRenderer;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { gtkcellrendererprogress.h
   * Copyright (C) 2002 Naba Kumar <kh_naba@users.sourceforge.net>
   * modified by Jörgen Scheibengruber <mfcn@gmx.de>
   *
   * This library is free software; you can redistribute it and/or
   * modify it under the terms of the GNU Library General Public
   * License as published by the Free Software Foundation; either
   * version 2 of the License, or (at your option) any later version.
   *
   * This library is distributed in the hope that it will be useful,
   * but WITHOUT ANY WARRANTY; without even the implied warranty of
   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   * Library General Public License for more details.
   *
   * You should have received a copy of the GNU Library General Public
   * License along with this library. If not, see <http://www.gnu.org/licenses/>.
    }
  {
   * Modified by the GTK+ Team and others 1997-2004.  See the AUTHORS
   * file for a list of people on the GTK+ Team.  See the ChangeLog
   * files for a list of changes.  These files are distributed with
   * GTK+ at ftp://ftp.gtk.org/pub/gtk/.
    }
{$ifndef __GTK_CELL_RENDERER_PROGRESS_H__}
{$define __GTK_CELL_RENDERER_PROGRESS_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkcellrenderer.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_CELL_RENDERER_PROGRESS : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_CELL_RENDERER_PROGRESS(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_CELL_RENDERER_PROGRESS(obj : longint) : longint;  


  type
    _GtkCellRendererProgress = GtkCellRendererProgress;
  { Zeile entfernt  }

  function gtk_cell_renderer_progress_get_type:GType;

  { Zeile entfernt  }
  function gtk_cell_renderer_progress_new:^GtkCellRenderer;

  { Zeile entfernt  }
{$endif}
  { __GTK_CELL_RENDERER_PROGRESS_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_CELL_RENDERER_PROGRESS : longint; { return type might be wrong }
    begin
      GTK_TYPE_CELL_RENDERER_PROGRESS:=gtk_cell_renderer_progress_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_CELL_RENDERER_PROGRESS(obj : longint) : longint;
  begin
    GTK_CELL_RENDERER_PROGRESS:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_CELL_RENDERER_PROGRESS,GtkCellRendererProgress);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_CELL_RENDERER_PROGRESS(obj : longint) : longint;
  begin
    GTK_IS_CELL_RENDERER_PROGRESS:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_CELL_RENDERER_PROGRESS);
  end;

  function gtk_cell_renderer_progress_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gtk_cell_renderer_progress_new:PGtkCellRenderer;
  begin
    { You must implement this function }
  end;

