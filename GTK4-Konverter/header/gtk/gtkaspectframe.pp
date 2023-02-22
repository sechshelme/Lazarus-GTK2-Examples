
  Type
  PGtkAspectFrame  = ^GtkAspectFrame;
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
   * Modified by the GTK+ Team and others 1997-2001.  See the AUTHORS
   * file for a list of people on the GTK+ Team.  See the ChangeLog
   * files for a list of changes.  These files are distributed with
   * GTK+ at ftp://ftp.gtk.org/pub/gtk/.
    }
{$ifndef __GTK_ASPECT_FRAME_H__}
{$define __GTK_ASPECT_FRAME_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}

  { was #define dname def_expr }
  function GTK_TYPE_ASPECT_FRAME : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_ASPECT_FRAME(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_ASPECT_FRAME(obj : longint) : longint;  


  type
    _GtkAspectFrame = GtkAspectFrame;
(* error 
GType      gtk_aspect_frame_get_type   (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;

  function gtk_aspect_frame_new(xalign:single; yalign:single; ratio:single; obey_child:gboolean):^GtkWidget;

  procedure gtk_aspect_frame_set_xalign(self:PGtkAspectFrame; xalign:single);

  function gtk_aspect_frame_get_xalign(self:PGtkAspectFrame):single;

  procedure gtk_aspect_frame_set_yalign(self:PGtkAspectFrame; yalign:single);

  function gtk_aspect_frame_get_yalign(self:PGtkAspectFrame):single;

  procedure gtk_aspect_frame_set_ratio(self:PGtkAspectFrame; ratio:single);

  function gtk_aspect_frame_get_ratio(self:PGtkAspectFrame):single;

  procedure gtk_aspect_frame_set_obey_child(self:PGtkAspectFrame; obey_child:gboolean);

  function gtk_aspect_frame_get_obey_child(self:PGtkAspectFrame):gboolean;

  procedure gtk_aspect_frame_set_child(self:PGtkAspectFrame; child:PGtkWidget);

  function gtk_aspect_frame_get_child(self:PGtkAspectFrame):^GtkWidget;

{$endif}
  { __GTK_ASPECT_FRAME_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_ASPECT_FRAME : longint; { return type might be wrong }
    begin
      GTK_TYPE_ASPECT_FRAME:=gtk_aspect_frame_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_ASPECT_FRAME(obj : longint) : longint;
  begin
    GTK_ASPECT_FRAME:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_ASPECT_FRAME,GtkAspectFrame);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_ASPECT_FRAME(obj : longint) : longint;
  begin
    GTK_IS_ASPECT_FRAME:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_ASPECT_FRAME);
  end;

  function gtk_aspect_frame_new(xalign:single; yalign:single; ratio:single; obey_child:gboolean):PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_aspect_frame_set_xalign(self:PGtkAspectFrame; xalign:single);
  begin
    { You must implement this function }
  end;
  function gtk_aspect_frame_get_xalign(self:PGtkAspectFrame):single;
  begin
    { You must implement this function }
  end;
  procedure gtk_aspect_frame_set_yalign(self:PGtkAspectFrame; yalign:single);
  begin
    { You must implement this function }
  end;
  function gtk_aspect_frame_get_yalign(self:PGtkAspectFrame):single;
  begin
    { You must implement this function }
  end;
  procedure gtk_aspect_frame_set_ratio(self:PGtkAspectFrame; ratio:single);
  begin
    { You must implement this function }
  end;
  function gtk_aspect_frame_get_ratio(self:PGtkAspectFrame):single;
  begin
    { You must implement this function }
  end;
  procedure gtk_aspect_frame_set_obey_child(self:PGtkAspectFrame; obey_child:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_aspect_frame_get_obey_child(self:PGtkAspectFrame):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_aspect_frame_set_child(self:PGtkAspectFrame; child:PGtkWidget);
  begin
    { You must implement this function }
  end;
  function gtk_aspect_frame_get_child(self:PGtkAspectFrame):PGtkWidget;
  begin
    { You must implement this function }
  end;

