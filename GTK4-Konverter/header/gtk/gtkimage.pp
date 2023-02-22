
  Type
  Pchar  = ^char;
  PGdkPaintable  = ^GdkPaintable;
  PGdkPixbuf  = ^GdkPixbuf;
  PGIcon  = ^GIcon;
  PGtkImage  = ^GtkImage;
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
{$ifndef __GTK_IMAGE_H__}
{$define __GTK_IMAGE_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gio/gio.h>}
{$include <gtk/gtkwidget.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_IMAGE : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IMAGE(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_IMAGE(obj : longint) : longint;  


  type
    _GtkImage = GtkImage;
  {*
   * GtkImageType:
   * @GTK_IMAGE_EMPTY: there is no image displayed by the widget
   * @GTK_IMAGE_ICON_NAME: the widget contains a named icon
   * @GTK_IMAGE_GICON: the widget contains a `GIcon`
   * @GTK_IMAGE_PAINTABLE: the widget contains a `GdkPaintable`
   *
   * Describes the image data representation used by a [class@Gtk.Image].
   *
   * If you want to get the image from the widget, you can only get the
   * currently-stored representation; for instance, if the gtk_image_get_storage_type()
   * returns %GTK_IMAGE_PAINTABLE, then you can call gtk_image_get_paintable().
   *
   * For empty images, you can request any storage type (call any of the "get"
   * functions), but they will all return %NULL values.
    }

    GtkImageType = (GTK_IMAGE_EMPTY,GTK_IMAGE_ICON_NAME,GTK_IMAGE_GICON,
      GTK_IMAGE_PAINTABLE);
  { Zeile entfernt  }

  function gtk_image_get_type:GType;

  { Zeile entfernt  }
  function gtk_image_new:^GtkWidget;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_image_new_from_file(filename:Pchar):^GtkWidget;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_image_new_from_resource(resource_path:Pchar):^GtkWidget;

  { Zeile entfernt  }
  function gtk_image_new_from_pixbuf(pixbuf:PGdkPixbuf):^GtkWidget;

  { Zeile entfernt  }
  function gtk_image_new_from_paintable(paintable:PGdkPaintable):^GtkWidget;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_image_new_from_icon_name(icon_name:Pchar):^GtkWidget;

  { Zeile entfernt  }
  function gtk_image_new_from_gicon(icon:PGIcon):^GtkWidget;

  { Zeile entfernt  }
  procedure gtk_image_clear(image:PGtkImage);

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_image_set_from_file(image:PGtkImage; filename:Pchar);

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_image_set_from_resource(image:PGtkImage; resource_path:Pchar);

  { Zeile entfernt  }
  procedure gtk_image_set_from_pixbuf(image:PGtkImage; pixbuf:PGdkPixbuf);

  { Zeile entfernt  }
  procedure gtk_image_set_from_paintable(image:PGtkImage; paintable:PGdkPaintable);

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_image_set_from_icon_name(image:PGtkImage; icon_name:Pchar);

  { Zeile entfernt  }
  procedure gtk_image_set_from_gicon(image:PGtkImage; icon:PGIcon);

  { Zeile entfernt  }
  procedure gtk_image_set_pixel_size(image:PGtkImage; pixel_size:longint);

  { Zeile entfernt  }
  procedure gtk_image_set_icon_size(image:PGtkImage; icon_size:GtkIconSize);

  { Zeile entfernt  }
  function gtk_image_get_storage_type(image:PGtkImage):GtkImageType;

  { Zeile entfernt  }
  function gtk_image_get_paintable(image:PGtkImage):^GdkPaintable;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_image_get_icon_name(image:PGtkImage):^char;

  { Zeile entfernt  }
  function gtk_image_get_gicon(image:PGtkImage):^GIcon;

  { Zeile entfernt  }
  function gtk_image_get_pixel_size(image:PGtkImage):longint;

  { Zeile entfernt  }
  function gtk_image_get_icon_size(image:PGtkImage):GtkIconSize;

  { Zeile entfernt  }
{$endif}
  { __GTK_IMAGE_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_IMAGE : longint; { return type might be wrong }
    begin
      GTK_TYPE_IMAGE:=gtk_image_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IMAGE(obj : longint) : longint;
  begin
    GTK_IMAGE:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_IMAGE,GtkImage);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_IMAGE(obj : longint) : longint;
  begin
    GTK_IS_IMAGE:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_IMAGE);
  end;

  function gtk_image_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gtk_image_new:PGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_image_new_from_file(filename:Pchar):PGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_image_new_from_resource(resource_path:Pchar):PGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_image_new_from_pixbuf(pixbuf:PGdkPixbuf):PGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_image_new_from_paintable(paintable:PGdkPaintable):PGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_image_new_from_icon_name(icon_name:Pchar):PGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_image_new_from_gicon(icon:PGIcon):PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_image_clear(image:PGtkImage);
  begin
    { You must implement this function }
  end;
  procedure gtk_image_set_from_file(image:PGtkImage; filename:Pchar);
  begin
    { You must implement this function }
  end;
  procedure gtk_image_set_from_resource(image:PGtkImage; resource_path:Pchar);
  begin
    { You must implement this function }
  end;
  procedure gtk_image_set_from_pixbuf(image:PGtkImage; pixbuf:PGdkPixbuf);
  begin
    { You must implement this function }
  end;
  procedure gtk_image_set_from_paintable(image:PGtkImage; paintable:PGdkPaintable);
  begin
    { You must implement this function }
  end;
  procedure gtk_image_set_from_icon_name(image:PGtkImage; icon_name:Pchar);
  begin
    { You must implement this function }
  end;
  procedure gtk_image_set_from_gicon(image:PGtkImage; icon:PGIcon);
  begin
    { You must implement this function }
  end;
  procedure gtk_image_set_pixel_size(image:PGtkImage; pixel_size:longint);
  begin
    { You must implement this function }
  end;
  procedure gtk_image_set_icon_size(image:PGtkImage; icon_size:GtkIconSize);
  begin
    { You must implement this function }
  end;
  function gtk_image_get_storage_type(image:PGtkImage):GtkImageType;
  begin
    { You must implement this function }
  end;
  function gtk_image_get_paintable(image:PGtkImage):PGdkPaintable;
  begin
    { You must implement this function }
  end;
  function gtk_image_get_icon_name(image:PGtkImage):Pchar;
  begin
    { You must implement this function }
  end;
  function gtk_image_get_gicon(image:PGtkImage):PGIcon;
  begin
    { You must implement this function }
  end;
  function gtk_image_get_pixel_size(image:PGtkImage):longint;
  begin
    { You must implement this function }
  end;
  function gtk_image_get_icon_size(image:PGtkImage):GtkIconSize;
  begin
    { You must implement this function }
  end;

