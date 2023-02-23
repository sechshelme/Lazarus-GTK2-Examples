
unit gtkpicture;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkpicture.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkpicture.h
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
PGFile  = ^GFile;
PGtkPicture  = ^GtkPicture;
PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_PICTURE_H__}
{$define __GTK_PICTURE_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gio/gio.h>}
{$include <gtk/gtkwidget.h>}


function GTK_TYPE_PICTURE : longint; { return type might be wrong }




function gtk_picture_new:PGtkWidget;cdecl;external;

function gtk_picture_new_for_paintable(paintable:PGdkPaintable):PGtkWidget;cdecl;external;

function gtk_picture_new_for_pixbuf(pixbuf:PGdkPixbuf):PGtkWidget;cdecl;external;

function gtk_picture_new_for_file(file:PGFile):PGtkWidget;cdecl;external;

function gtk_picture_new_for_filename(filename:Pchar):PGtkWidget;cdecl;external;

function gtk_picture_new_for_resource(resource_path:Pchar):PGtkWidget;cdecl;external;

procedure gtk_picture_set_paintable(self:PGtkPicture; paintable:PGdkPaintable);cdecl;external;

function gtk_picture_get_paintable(self:PGtkPicture):PGdkPaintable;cdecl;external;

procedure gtk_picture_set_file(self:PGtkPicture; file:PGFile);cdecl;external;

function gtk_picture_get_file(self:PGtkPicture):PGFile;cdecl;external;

procedure gtk_picture_set_filename(self:PGtkPicture; filename:Pchar);cdecl;external;

procedure gtk_picture_set_resource(self:PGtkPicture; resource_path:Pchar);cdecl;external;

procedure gtk_picture_set_pixbuf(self:PGtkPicture; pixbuf:PGdkPixbuf);cdecl;external;

procedure gtk_picture_set_keep_aspect_ratio(self:PGtkPicture; keep_aspect_ratio:Tgboolean);cdecl;external;

function gtk_picture_get_keep_aspect_ratio(self:PGtkPicture):Tgboolean;cdecl;external;

procedure gtk_picture_set_can_shrink(self:PGtkPicture; can_shrink:Tgboolean);cdecl;external;

function gtk_picture_get_can_shrink(self:PGtkPicture):Tgboolean;cdecl;external;

procedure gtk_picture_set_alternative_text(self:PGtkPicture; alternative_text:Pchar);cdecl;external;

function gtk_picture_get_alternative_text(self:PGtkPicture):Pchar;cdecl;external;

{$endif}


implementation

function GTK_TYPE_PICTURE : longint; { return type might be wrong }
  begin
    GTK_TYPE_PICTURE:=gtk_picture_get_type;
  end;


end.
