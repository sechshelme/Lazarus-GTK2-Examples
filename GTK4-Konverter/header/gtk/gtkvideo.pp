
  Type
  Pchar  = ^char;
  PGFile  = ^GFile;
  PGtkMediaStream  = ^GtkMediaStream;
  PGtkVideo  = ^GtkVideo;
  PGtkWidget  = ^GtkWidget;
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
{$ifndef __GTK_VIDEO_H__}
{$define __GTK_VIDEO_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkmediastream.h>}
{$include <gtk/gtkwidget.h>}

  { was #define dname def_expr }
  function GTK_TYPE_VIDEO : longint; { return type might be wrong }

(* error 
G_DECLARE_FINAL_TYPE (GtkVideo, gtk_video, GTK, VIDEO, GtkWidget)
 in declarator_list *)
(* error 
G_DECLARE_FINAL_TYPE (GtkVideo, gtk_video, GTK, VIDEO, GtkWidget)
 in declarator_list *)
  function gtk_video_new_for_media_stream(stream:PGtkMediaStream):^GtkWidget;

  function gtk_video_new_for_file(file:PGFile):^GtkWidget;

(* Const before type ignored *)
  function gtk_video_new_for_filename(filename:Pchar):^GtkWidget;

(* Const before type ignored *)
  function gtk_video_new_for_resource(resource_path:Pchar):^GtkWidget;

  function gtk_video_get_media_stream(self:PGtkVideo):^GtkMediaStream;

  procedure gtk_video_set_media_stream(self:PGtkVideo; stream:PGtkMediaStream);

  function gtk_video_get_file(self:PGtkVideo):^GFile;

  procedure gtk_video_set_file(self:PGtkVideo; file:PGFile);

(* Const before type ignored *)
  procedure gtk_video_set_filename(self:PGtkVideo; filename:Pchar);

(* Const before type ignored *)
  procedure gtk_video_set_resource(self:PGtkVideo; resource_path:Pchar);

  function gtk_video_get_autoplay(self:PGtkVideo):gboolean;

  procedure gtk_video_set_autoplay(self:PGtkVideo; autoplay:gboolean);

  function gtk_video_get_loop(self:PGtkVideo):gboolean;

  procedure gtk_video_set_loop(self:PGtkVideo; loop:gboolean);

{$endif}
  { __GTK_VIDEO_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_VIDEO : longint; { return type might be wrong }
    begin
      GTK_TYPE_VIDEO:=gtk_video_get_type;
    end;

  function gtk_video_new_for_media_stream(stream:PGtkMediaStream):PGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_video_new_for_file(file:PGFile):PGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_video_new_for_filename(filename:Pchar):PGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_video_new_for_resource(resource_path:Pchar):PGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_video_get_media_stream(self:PGtkVideo):PGtkMediaStream;
  begin
    { You must implement this function }
  end;
  procedure gtk_video_set_media_stream(self:PGtkVideo; stream:PGtkMediaStream);
  begin
    { You must implement this function }
  end;
  function gtk_video_get_file(self:PGtkVideo):PGFile;
  begin
    { You must implement this function }
  end;
  procedure gtk_video_set_file(self:PGtkVideo; file:PGFile);
  begin
    { You must implement this function }
  end;
  procedure gtk_video_set_filename(self:PGtkVideo; filename:Pchar);
  begin
    { You must implement this function }
  end;
  procedure gtk_video_set_resource(self:PGtkVideo; resource_path:Pchar);
  begin
    { You must implement this function }
  end;
  function gtk_video_get_autoplay(self:PGtkVideo):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_video_set_autoplay(self:PGtkVideo; autoplay:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_video_get_loop(self:PGtkVideo):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_video_set_loop(self:PGtkVideo; loop:gboolean);
  begin
    { You must implement this function }
  end;

