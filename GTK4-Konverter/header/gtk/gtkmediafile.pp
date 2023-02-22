
  Type
  Pchar  = ^char;
  PGFile  = ^GFile;
  PGInputStream  = ^GInputStream;
  PGtkMediaFile  = ^GtkMediaFile;
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
{$ifndef __GTK_MEDIA_FILE_H__}
{$define __GTK_MEDIA_FILE_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkmediastream.h>}
  { Zeile entfernt  }

  const
    GTK_MEDIA_FILE_EXTENSION_POINT_NAME = 'gtk-media-file';    

  { was #define dname def_expr }
  function GTK_TYPE_MEDIA_FILE : longint; { return type might be wrong }

  { Zeile entfernt  }
  { Zeile entfernt  }
  { Padding for future expansion  }

  type
    _GtkMediaFileClass = record
        parent_class : GtkMediaStreamClass;
        open : procedure (self:PGtkMediaFile);cdecl;
        close : procedure (self:PGtkMediaFile);cdecl;
        _gtk_reserved1 : procedure ;cdecl;
        _gtk_reserved2 : procedure ;cdecl;
        _gtk_reserved3 : procedure ;cdecl;
        _gtk_reserved4 : procedure ;cdecl;
      end;

  { Zeile entfernt  }

  function gtk_media_file_new:^GtkMediaStream;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_media_file_new_for_filename(filename:Pchar):^GtkMediaStream;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_media_file_new_for_resource(resource_path:Pchar):^GtkMediaStream;

  { Zeile entfernt  }
  function gtk_media_file_new_for_file(file:PGFile):^GtkMediaStream;

  { Zeile entfernt  }
  function gtk_media_file_new_for_input_stream(stream:PGInputStream):^GtkMediaStream;

  { Zeile entfernt  }
  procedure gtk_media_file_clear(self:PGtkMediaFile);

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_media_file_set_filename(self:PGtkMediaFile; filename:Pchar);

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_media_file_set_resource(self:PGtkMediaFile; resource_path:Pchar);

  { Zeile entfernt  }
  procedure gtk_media_file_set_file(self:PGtkMediaFile; file:PGFile);

  { Zeile entfernt  }
  function gtk_media_file_get_file(self:PGtkMediaFile):^GFile;

  { Zeile entfernt  }
  procedure gtk_media_file_set_input_stream(self:PGtkMediaFile; stream:PGInputStream);

  { Zeile entfernt  }
  function gtk_media_file_get_input_stream(self:PGtkMediaFile):^GInputStream;

  { Zeile entfernt  }
{$endif}
  { __GTK_MEDIA_FILE_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_MEDIA_FILE : longint; { return type might be wrong }
    begin
      GTK_TYPE_MEDIA_FILE:=gtk_media_file_get_type;
    end;

  function gtk_media_file_new:PGtkMediaStream;
  begin
    { You must implement this function }
  end;
  function gtk_media_file_new_for_filename(filename:Pchar):PGtkMediaStream;
  begin
    { You must implement this function }
  end;
  function gtk_media_file_new_for_resource(resource_path:Pchar):PGtkMediaStream;
  begin
    { You must implement this function }
  end;
  function gtk_media_file_new_for_file(file:PGFile):PGtkMediaStream;
  begin
    { You must implement this function }
  end;
  function gtk_media_file_new_for_input_stream(stream:PGInputStream):PGtkMediaStream;
  begin
    { You must implement this function }
  end;
  procedure gtk_media_file_clear(self:PGtkMediaFile);
  begin
    { You must implement this function }
  end;
  procedure gtk_media_file_set_filename(self:PGtkMediaFile; filename:Pchar);
  begin
    { You must implement this function }
  end;
  procedure gtk_media_file_set_resource(self:PGtkMediaFile; resource_path:Pchar);
  begin
    { You must implement this function }
  end;
  procedure gtk_media_file_set_file(self:PGtkMediaFile; file:PGFile);
  begin
    { You must implement this function }
  end;
  function gtk_media_file_get_file(self:PGtkMediaFile):PGFile;
  begin
    { You must implement this function }
  end;
  procedure gtk_media_file_set_input_stream(self:PGtkMediaFile; stream:PGInputStream);
  begin
    { You must implement this function }
  end;
  function gtk_media_file_get_input_stream(self:PGtkMediaFile):PGInputStream;
  begin
    { You must implement this function }
  end;

