
unit gtkvideo;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkvideo.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkvideo.h
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
PGFile  = ^GFile;
PGtkMediaStream  = ^GtkMediaStream;
PGtkVideo  = ^GtkVideo;
PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_VIDEO_H__}
{$define __GTK_VIDEO_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkmediastream.h>}
{$include <gtk/gtkwidget.h>}


function GTK_TYPE_VIDEO : longint; { return type might be wrong }




function gtk_video_new:PGtkWidget;cdecl;external;

function gtk_video_new_for_media_stream(stream:PGtkMediaStream):PGtkWidget;cdecl;external;

function gtk_video_new_for_file(file:PGFile):PGtkWidget;cdecl;external;

function gtk_video_new_for_filename(filename:Pchar):PGtkWidget;cdecl;external;

function gtk_video_new_for_resource(resource_path:Pchar):PGtkWidget;cdecl;external;

function gtk_video_get_media_stream(self:PGtkVideo):PGtkMediaStream;cdecl;external;

procedure gtk_video_set_media_stream(self:PGtkVideo; stream:PGtkMediaStream);cdecl;external;

function gtk_video_get_file(self:PGtkVideo):PGFile;cdecl;external;

procedure gtk_video_set_file(self:PGtkVideo; file:PGFile);cdecl;external;

procedure gtk_video_set_filename(self:PGtkVideo; filename:Pchar);cdecl;external;

procedure gtk_video_set_resource(self:PGtkVideo; resource_path:Pchar);cdecl;external;

function gtk_video_get_autoplay(self:PGtkVideo):Tgboolean;cdecl;external;

procedure gtk_video_set_autoplay(self:PGtkVideo; autoplay:Tgboolean);cdecl;external;

function gtk_video_get_loop(self:PGtkVideo):Tgboolean;cdecl;external;

procedure gtk_video_set_loop(self:PGtkVideo; loop:Tgboolean);cdecl;external;

{$endif}


implementation

function GTK_TYPE_VIDEO : longint; { return type might be wrong }
  begin
    GTK_TYPE_VIDEO:=gtk_video_get_type;
  end;


end.
