
unit gtkimage;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkimage.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkimage.h
    -p
    -T
    -S
    -d
    -c
}

{ Pointers to basic pascal types, inserted by h2pas conversion program.}
Type
  PLongint  = ^Longint;
  PSmallInt = ^SmallInt;
  PByte     = ^Byte;
  PWord     = ^Word;
  PDWord    = ^DWord;
  PDouble   = ^Double;

Type
Pchar  = ^char;
PGdkPaintable  = ^GdkPaintable;
PGdkPixbuf  = ^GdkPixbuf;
PGIcon  = ^GIcon;
PGtkImage  = ^GtkImage;
PGtkImageType  = ^GtkImageType;
PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef __GTK_IMAGE_H__}
{$define __GTK_IMAGE_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gio/gio.h>}
{$include <gtk/gtkwidget.h>}


function GTK_TYPE_IMAGE : longint; { return type might be wrong }

function GTK_IMAGE(obj : longint) : longint;

function GTK_IS_IMAGE(obj : longint) : longint;

type


  PGtkImageType = ^TGtkImageType;
  TGtkImageType = (GTK_IMAGE_EMPTY,GTK_IMAGE_ICON_NAME,GTK_IMAGE_GICON,
    GTK_IMAGE_PAINTABLE);


function gtk_image_get_type:TGType;cdecl;external;

function gtk_image_new:PGtkWidget;cdecl;external;

function gtk_image_new_from_file(filename:Pchar):PGtkWidget;cdecl;external;

function gtk_image_new_from_resource(resource_path:Pchar):PGtkWidget;cdecl;external;

function gtk_image_new_from_pixbuf(pixbuf:PGdkPixbuf):PGtkWidget;cdecl;external;

function gtk_image_new_from_paintable(paintable:PGdkPaintable):PGtkWidget;cdecl;external;

function gtk_image_new_from_icon_name(icon_name:Pchar):PGtkWidget;cdecl;external;

function gtk_image_new_from_gicon(icon:PGIcon):PGtkWidget;cdecl;external;

procedure gtk_image_clear(image:PGtkImage);cdecl;external;

procedure gtk_image_set_from_file(image:PGtkImage; filename:Pchar);cdecl;external;

procedure gtk_image_set_from_resource(image:PGtkImage; resource_path:Pchar);cdecl;external;

procedure gtk_image_set_from_pixbuf(image:PGtkImage; pixbuf:PGdkPixbuf);cdecl;external;

procedure gtk_image_set_from_paintable(image:PGtkImage; paintable:PGdkPaintable);cdecl;external;

procedure gtk_image_set_from_icon_name(image:PGtkImage; icon_name:Pchar);cdecl;external;

procedure gtk_image_set_from_gicon(image:PGtkImage; icon:PGIcon);cdecl;external;

procedure gtk_image_set_pixel_size(image:PGtkImage; pixel_size:longint);cdecl;external;

procedure gtk_image_set_icon_size(image:PGtkImage; icon_size:TGtkIconSize);cdecl;external;

function gtk_image_get_storage_type(image:PGtkImage):TGtkImageType;cdecl;external;

function gtk_image_get_paintable(image:PGtkImage):PGdkPaintable;cdecl;external;

function gtk_image_get_icon_name(image:PGtkImage):Pchar;cdecl;external;

function gtk_image_get_gicon(image:PGtkImage):PGIcon;cdecl;external;

function gtk_image_get_pixel_size(image:PGtkImage):longint;cdecl;external;

function gtk_image_get_icon_size(image:PGtkImage):TGtkIconSize;cdecl;external;

{$endif}


implementation

function GTK_TYPE_IMAGE : longint; { return type might be wrong }
  begin
    GTK_TYPE_IMAGE:=gtk_image_get_type;
  end;

function GTK_IMAGE(obj : longint) : longint;
begin
  GTK_IMAGE:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_IMAGE,GtkImage);
end;

function GTK_IS_IMAGE(obj : longint) : longint;
begin
  GTK_IS_IMAGE:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_IMAGE);
end;


end.
