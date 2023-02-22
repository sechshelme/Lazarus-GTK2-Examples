
  Type
  PGdkSurface  = ^GdkSurface;
  PGError  = ^GError;
  PGtkMediaStream  = ^GtkMediaStream;
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
{$ifndef __GTK_MEDIA_STREAM_H__}
{$define __GTK_MEDIA_STREAM_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_MEDIA_STREAM : longint; { return type might be wrong }

  { Zeile entfernt  }
  { Zeile entfernt  }
  { Padding for future expansion  }

  type
    _GtkMediaStreamClass = record
        parent_class : GObjectClass;
        play : function (self:PGtkMediaStream):gboolean;cdecl;
        pause : procedure (self:PGtkMediaStream);cdecl;
        seek : procedure (self:PGtkMediaStream; timestamp:gint64);cdecl;
        update_audio : procedure (self:PGtkMediaStream; muted:gboolean; volume:double);cdecl;
        realize : procedure (self:PGtkMediaStream; surface:PGdkSurface);cdecl;
        unrealize : procedure (self:PGtkMediaStream; surface:PGdkSurface);cdecl;
        _gtk_reserved1 : procedure ;cdecl;
        _gtk_reserved2 : procedure ;cdecl;
        _gtk_reserved3 : procedure ;cdecl;
        _gtk_reserved4 : procedure ;cdecl;
        _gtk_reserved5 : procedure ;cdecl;
        _gtk_reserved6 : procedure ;cdecl;
        _gtk_reserved7 : procedure ;cdecl;
        _gtk_reserved8 : procedure ;cdecl;
      end;

  { Zeile entfernt  }

  function gtk_media_stream_is_prepared(self:PGtkMediaStream):gboolean;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_media_stream_get_error(self:PGtkMediaStream):^GError;

  { Zeile entfernt  }
  function gtk_media_stream_has_audio(self:PGtkMediaStream):gboolean;

  { Zeile entfernt  }
  function gtk_media_stream_has_video(self:PGtkMediaStream):gboolean;

  { Zeile entfernt  }
  procedure gtk_media_stream_play(self:PGtkMediaStream);

  { Zeile entfernt  }
  procedure gtk_media_stream_pause(self:PGtkMediaStream);

  { Zeile entfernt  }
  function gtk_media_stream_get_playing(self:PGtkMediaStream):gboolean;

  { Zeile entfernt  }
  procedure gtk_media_stream_set_playing(self:PGtkMediaStream; playing:gboolean);

  { Zeile entfernt  }
  function gtk_media_stream_get_ended(self:PGtkMediaStream):gboolean;

  { Zeile entfernt  }
  function gtk_media_stream_get_timestamp(self:PGtkMediaStream):gint64;

  { Zeile entfernt  }
  function gtk_media_stream_get_duration(self:PGtkMediaStream):gint64;

  { Zeile entfernt  }
  function gtk_media_stream_is_seekable(self:PGtkMediaStream):gboolean;

  { Zeile entfernt  }
  function gtk_media_stream_is_seeking(self:PGtkMediaStream):gboolean;

  { Zeile entfernt  }
  procedure gtk_media_stream_seek(self:PGtkMediaStream; timestamp:gint64);

  { Zeile entfernt  }
  function gtk_media_stream_get_loop(self:PGtkMediaStream):gboolean;

  { Zeile entfernt  }
  procedure gtk_media_stream_set_loop(self:PGtkMediaStream; loop:gboolean);

  { Zeile entfernt  }
  function gtk_media_stream_get_muted(self:PGtkMediaStream):gboolean;

  { Zeile entfernt  }
  procedure gtk_media_stream_set_muted(self:PGtkMediaStream; muted:gboolean);

  { Zeile entfernt  }
  function gtk_media_stream_get_volume(self:PGtkMediaStream):double;

  { Zeile entfernt  }
  procedure gtk_media_stream_set_volume(self:PGtkMediaStream; volume:double);

  { Zeile entfernt  }
  procedure gtk_media_stream_realize(self:PGtkMediaStream; surface:PGdkSurface);

  { Zeile entfernt  }
  procedure gtk_media_stream_unrealize(self:PGtkMediaStream; surface:PGdkSurface);

  { for implementations only  }
(* error 
void                    gtk_media_stream_prepared               (GtkMediaStream *self,
(* error 
                                                                 gboolean        has_audio,
(* error 
                                                                 gboolean        has_video,
(* error 
                                                                 gboolean        seekable,
(* error 
                                                                 gint64          duration);
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
void                    gtk_media_stream_unprepared             (GtkMediaStream *self);
 in declarator_list *)
  { Zeile entfernt  }
  procedure gtk_media_stream_stream_prepared(self:PGtkMediaStream; has_audio:gboolean; has_video:gboolean; seekable:gboolean; duration:gint64);

  { Zeile entfernt  }
  procedure gtk_media_stream_stream_unprepared(self:PGtkMediaStream);

  { Zeile entfernt  }
  procedure gtk_media_stream_update(self:PGtkMediaStream; timestamp:gint64);

(* error 
void                    gtk_media_stream_ended                  (GtkMediaStream *self);
 in declarator_list *)
  { Zeile entfernt  }
  procedure gtk_media_stream_stream_ended(self:PGtkMediaStream);

  { Zeile entfernt  }
  procedure gtk_media_stream_seek_success(self:PGtkMediaStream);

  { Zeile entfernt  }
  procedure gtk_media_stream_seek_failed(self:PGtkMediaStream);

  { Zeile entfernt  }
  procedure gtk_media_stream_gerror(self:PGtkMediaStream; error:PGError);

  { Zeile entfernt  }
(* Const before type ignored *)
(* error 
                                                                 ...) G_GNUC_PRINTF (4, 5);
(* error 
                                                                 ...) G_GNUC_PRINTF (4, 5);
 in declarator_list *)
 in declarator_list *)
  { Zeile entfernt  }
(* Const before type ignored *)
(* error 
                                                                 va_list         args) G_GNUC_PRINTF (4, 0);
(* error 
                                                                 va_list         args) G_GNUC_PRINTF (4, 0);
 in declarator_list *)
 in declarator_list *)
  { Zeile entfernt  }
{$endif}
  { __GTK_MEDIA_STREAM_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_MEDIA_STREAM : longint; { return type might be wrong }
    begin
      GTK_TYPE_MEDIA_STREAM:=gtk_media_stream_get_type;
    end;

  function gtk_media_stream_is_prepared(self:PGtkMediaStream):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_media_stream_get_error(self:PGtkMediaStream):PGError;
  begin
    { You must implement this function }
  end;
  function gtk_media_stream_has_audio(self:PGtkMediaStream):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_media_stream_has_video(self:PGtkMediaStream):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_media_stream_play(self:PGtkMediaStream);
  begin
    { You must implement this function }
  end;
  procedure gtk_media_stream_pause(self:PGtkMediaStream);
  begin
    { You must implement this function }
  end;
  function gtk_media_stream_get_playing(self:PGtkMediaStream):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_media_stream_set_playing(self:PGtkMediaStream; playing:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_media_stream_get_ended(self:PGtkMediaStream):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_media_stream_get_timestamp(self:PGtkMediaStream):gint64;
  begin
    { You must implement this function }
  end;
  function gtk_media_stream_get_duration(self:PGtkMediaStream):gint64;
  begin
    { You must implement this function }
  end;
  function gtk_media_stream_is_seekable(self:PGtkMediaStream):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_media_stream_is_seeking(self:PGtkMediaStream):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_media_stream_seek(self:PGtkMediaStream; timestamp:gint64);
  begin
    { You must implement this function }
  end;
  function gtk_media_stream_get_loop(self:PGtkMediaStream):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_media_stream_set_loop(self:PGtkMediaStream; loop:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_media_stream_get_muted(self:PGtkMediaStream):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_media_stream_set_muted(self:PGtkMediaStream; muted:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_media_stream_get_volume(self:PGtkMediaStream):double;
  begin
    { You must implement this function }
  end;
  procedure gtk_media_stream_set_volume(self:PGtkMediaStream; volume:double);
  begin
    { You must implement this function }
  end;
  procedure gtk_media_stream_realize(self:PGtkMediaStream; surface:PGdkSurface);
  begin
    { You must implement this function }
  end;
  procedure gtk_media_stream_unrealize(self:PGtkMediaStream; surface:PGdkSurface);
  begin
    { You must implement this function }
  end;
  procedure gtk_media_stream_stream_prepared(self:PGtkMediaStream; has_audio:gboolean; has_video:gboolean; seekable:gboolean; duration:gint64);
  begin
    { You must implement this function }
  end;
  procedure gtk_media_stream_stream_unprepared(self:PGtkMediaStream);
  begin
    { You must implement this function }
  end;
  procedure gtk_media_stream_update(self:PGtkMediaStream; timestamp:gint64);
  begin
    { You must implement this function }
  end;
  procedure gtk_media_stream_stream_ended(self:PGtkMediaStream);
  begin
    { You must implement this function }
  end;
  procedure gtk_media_stream_seek_success(self:PGtkMediaStream);
  begin
    { You must implement this function }
  end;
  procedure gtk_media_stream_seek_failed(self:PGtkMediaStream);
  begin
    { You must implement this function }
  end;
  procedure gtk_media_stream_gerror(self:PGtkMediaStream; error:PGError);
  begin
    { You must implement this function }
  end;

