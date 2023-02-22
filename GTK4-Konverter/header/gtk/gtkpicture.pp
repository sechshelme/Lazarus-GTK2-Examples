
    Type
    Pchar  = ^char;
    PGdkPaintable  = ^GdkPaintable;
    PGdkPixbuf  = ^GdkPixbuf;
    PGFile  = ^GFile;
    PGtkPicture  = ^GtkPicture;
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
{$ifndef __GTK_PICTURE_H__}
{$define __GTK_PICTURE_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gio/gio.h>}
{$include <gtk/gtkwidget.h>}

  { was #define dname def_expr }
  function GTK_TYPE_PICTURE : longint; { return type might be wrong }

(* error 
G_DECLARE_FINAL_TYPE (GtkPicture, gtk_picture, GTK, PICTURE, GtkWidget)
 in declarator_list *)
(* error 
G_DECLARE_FINAL_TYPE (GtkPicture, gtk_picture, GTK, PICTURE, GtkWidget)
 in declarator_list *)
  function gtk_picture_new_for_paintable(paintable:PGdkPaintable):^GtkWidget;

  function gtk_picture_new_for_pixbuf(pixbuf:PGdkPixbuf):^GtkWidget;

  function gtk_picture_new_for_file(file:PGFile):^GtkWidget;

(* Const before type ignored *)
  function gtk_picture_new_for_filename(filename:Pchar):^GtkWidget;

(* Const before type ignored *)
  function gtk_picture_new_for_resource(resource_path:Pchar):^GtkWidget;

  procedure gtk_picture_set_paintable(self:PGtkPicture; paintable:PGdkPaintable);

  function gtk_picture_get_paintable(self:PGtkPicture):^GdkPaintable;

  procedure gtk_picture_set_file(self:PGtkPicture; file:PGFile);

  function gtk_picture_get_file(self:PGtkPicture):^GFile;

(* Const before type ignored *)
  procedure gtk_picture_set_filename(self:PGtkPicture; filename:Pchar);

(* Const before type ignored *)
  procedure gtk_picture_set_resource(self:PGtkPicture; resource_path:Pchar);

  procedure gtk_picture_set_pixbuf(self:PGtkPicture; pixbuf:PGdkPixbuf);

(* error 
void            gtk_picture_set_keep_aspect_ratio       (GtkPicture             *self,
(* error 
                                                         gboolean                keep_aspect_ratio);
 in declarator_list *)
 in declarator_list *)
(* error 
gboolean        gtk_picture_get_keep_aspect_ratio       (GtkPicture             *self);
 in declarator_list *)
  procedure gtk_picture_set_can_shrink(self:PGtkPicture; can_shrink:gboolean);

  function gtk_picture_get_can_shrink(self:PGtkPicture):gboolean;

(* error 
void            gtk_picture_set_content_fit             (GtkPicture             *self,
in declaration at line 85 *)
(* error 
GtkContentFit   gtk_picture_get_content_fit             (GtkPicture             *self);
 in declarator_list *)
(* Const before type ignored *)
    procedure gtk_picture_set_alternative_text(self:PGtkPicture; alternative_text:Pchar);

(* Const before type ignored *)
    function gtk_picture_get_alternative_text(self:PGtkPicture):^char;

{$endif}
    { __GTK_PICTURE_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_PICTURE : longint; { return type might be wrong }
    begin
      GTK_TYPE_PICTURE:=gtk_picture_get_type;
    end;

  function gtk_picture_new_for_paintable(paintable:PGdkPaintable):PGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_picture_new_for_pixbuf(pixbuf:PGdkPixbuf):PGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_picture_new_for_file(file:PGFile):PGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_picture_new_for_filename(filename:Pchar):PGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_picture_new_for_resource(resource_path:Pchar):PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_picture_set_paintable(self:PGtkPicture; paintable:PGdkPaintable);
  begin
    { You must implement this function }
  end;
  function gtk_picture_get_paintable(self:PGtkPicture):PGdkPaintable;
  begin
    { You must implement this function }
  end;
  procedure gtk_picture_set_file(self:PGtkPicture; file:PGFile);
  begin
    { You must implement this function }
  end;
  function gtk_picture_get_file(self:PGtkPicture):PGFile;
  begin
    { You must implement this function }
  end;
  procedure gtk_picture_set_filename(self:PGtkPicture; filename:Pchar);
  begin
    { You must implement this function }
  end;
  procedure gtk_picture_set_resource(self:PGtkPicture; resource_path:Pchar);
  begin
    { You must implement this function }
  end;
  procedure gtk_picture_set_pixbuf(self:PGtkPicture; pixbuf:PGdkPixbuf);
  begin
    { You must implement this function }
  end;
  procedure gtk_picture_set_can_shrink(self:PGtkPicture; can_shrink:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_picture_get_can_shrink(self:PGtkPicture):gboolean;
  begin
    { You must implement this function }
  end;
    procedure gtk_picture_set_alternative_text(self:PGtkPicture; alternative_text:Pchar);
    begin
      { You must implement this function }
    end;
    function gtk_picture_get_alternative_text(self:PGtkPicture):Pchar;
    begin
      { You must implement this function }
    end;

