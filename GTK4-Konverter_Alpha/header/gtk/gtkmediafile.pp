
unit gtkmediafile;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkmediafile.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkmediafile.h
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
PGInputStream  = ^GInputStream;
PGtkMediaFile  = ^GtkMediaFile;
PGtkMediaFileClass  = ^GtkMediaFileClass;
PGtkMediaStream  = ^GtkMediaStream;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_MEDIA_FILE_H__}
{$define __GTK_MEDIA_FILE_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkmediastream.h>}


const
  GTK_MEDIA_FILE_EXTENSION_POINT_NAME = 'gtk-media-file';  

function GTK_TYPE_MEDIA_FILE : longint; { return type might be wrong }




type
  PGtkMediaFileClass = ^TGtkMediaFileClass;
  TGtkMediaFileClass = record
      parent_class : TGtkMediaStreamClass;
      open : procedure (self:PGtkMediaFile);cdecl;
      close : procedure (self:PGtkMediaFile);cdecl;
      _gtk_reserved1 : procedure ;cdecl;
      _gtk_reserved2 : procedure ;cdecl;
      _gtk_reserved3 : procedure ;cdecl;
      _gtk_reserved4 : procedure ;cdecl;
    end;



function gtk_media_file_new:PGtkMediaStream;cdecl;external;

function gtk_media_file_new_for_filename(filename:Pchar):PGtkMediaStream;cdecl;external;

function gtk_media_file_new_for_resource(resource_path:Pchar):PGtkMediaStream;cdecl;external;

function gtk_media_file_new_for_file(file:PGFile):PGtkMediaStream;cdecl;external;

function gtk_media_file_new_for_input_stream(stream:PGInputStream):PGtkMediaStream;cdecl;external;

procedure gtk_media_file_clear(self:PGtkMediaFile);cdecl;external;

procedure gtk_media_file_set_filename(self:PGtkMediaFile; filename:Pchar);cdecl;external;

procedure gtk_media_file_set_resource(self:PGtkMediaFile; resource_path:Pchar);cdecl;external;

procedure gtk_media_file_set_file(self:PGtkMediaFile; file:PGFile);cdecl;external;

function gtk_media_file_get_file(self:PGtkMediaFile):PGFile;cdecl;external;

procedure gtk_media_file_set_input_stream(self:PGtkMediaFile; stream:PGInputStream);cdecl;external;

function gtk_media_file_get_input_stream(self:PGtkMediaFile):PGInputStream;cdecl;external;

{$endif}


implementation

function GTK_TYPE_MEDIA_FILE : longint; { return type might be wrong }
  begin
    GTK_TYPE_MEDIA_FILE:=gtk_media_file_get_type;
  end;


end.
