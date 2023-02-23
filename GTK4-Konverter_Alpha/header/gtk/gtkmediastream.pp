
unit gtkmediastream;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkmediastream.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkmediastream.h
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
PGdkSurface  = ^GdkSurface;
PGError  = ^GError;
PGtkMediaStream  = ^GtkMediaStream;
PGtkMediaStreamClass  = ^GtkMediaStreamClass;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_MEDIA_STREAM_H__}
{$define __GTK_MEDIA_STREAM_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}


function GTK_TYPE_MEDIA_STREAM : longint; { return type might be wrong }




type
  PGtkMediaStreamClass = ^TGtkMediaStreamClass;
  TGtkMediaStreamClass = record
      parent_class : TGObjectClass;
      play : function (self:PGtkMediaStream):Tgboolean;cdecl;
      pause : procedure (self:PGtkMediaStream);cdecl;
      seek : procedure (self:PGtkMediaStream; timestamp:Tgint64);cdecl;
      update_audio : procedure (self:PGtkMediaStream; muted:Tgboolean; volume:Tdouble);cdecl;
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



function gtk_media_stream_is_prepared(self:PGtkMediaStream):Tgboolean;cdecl;external;

function gtk_media_stream_get_error(self:PGtkMediaStream):PGError;cdecl;external;

function gtk_media_stream_has_audio(self:PGtkMediaStream):Tgboolean;cdecl;external;

function gtk_media_stream_has_video(self:PGtkMediaStream):Tgboolean;cdecl;external;

procedure gtk_media_stream_play(self:PGtkMediaStream);cdecl;external;

procedure gtk_media_stream_pause(self:PGtkMediaStream);cdecl;external;

function gtk_media_stream_get_playing(self:PGtkMediaStream):Tgboolean;cdecl;external;

procedure gtk_media_stream_set_playing(self:PGtkMediaStream; playing:Tgboolean);cdecl;external;

function gtk_media_stream_get_ended(self:PGtkMediaStream):Tgboolean;cdecl;external;

function gtk_media_stream_get_timestamp(self:PGtkMediaStream):Tgint64;cdecl;external;

function gtk_media_stream_get_duration(self:PGtkMediaStream):Tgint64;cdecl;external;

function gtk_media_stream_is_seekable(self:PGtkMediaStream):Tgboolean;cdecl;external;

function gtk_media_stream_is_seeking(self:PGtkMediaStream):Tgboolean;cdecl;external;

procedure gtk_media_stream_seek(self:PGtkMediaStream; timestamp:Tgint64);cdecl;external;

function gtk_media_stream_get_loop(self:PGtkMediaStream):Tgboolean;cdecl;external;

procedure gtk_media_stream_set_loop(self:PGtkMediaStream; loop:Tgboolean);cdecl;external;

function gtk_media_stream_get_muted(self:PGtkMediaStream):Tgboolean;cdecl;external;

procedure gtk_media_stream_set_muted(self:PGtkMediaStream; muted:Tgboolean);cdecl;external;

function gtk_media_stream_get_volume(self:PGtkMediaStream):Tdouble;cdecl;external;

procedure gtk_media_stream_set_volume(self:PGtkMediaStream; volume:Tdouble);cdecl;external;

procedure gtk_media_stream_realize(self:PGtkMediaStream; surface:PGdkSurface);cdecl;external;

procedure gtk_media_stream_unrealize(self:PGtkMediaStream; surface:PGdkSurface);cdecl;external;

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

procedure gtk_media_stream_stream_prepared(self:PGtkMediaStream; has_audio:Tgboolean; has_video:Tgboolean; seekable:Tgboolean; duration:Tgint64);cdecl;external;

procedure gtk_media_stream_stream_unprepared(self:PGtkMediaStream);cdecl;external;

procedure gtk_media_stream_update(self:PGtkMediaStream; timestamp:Tgint64);cdecl;external;
(* error 
void                    gtk_media_stream_ended                  (GtkMediaStream *self);
 in declarator_list *)

procedure gtk_media_stream_stream_ended(self:PGtkMediaStream);cdecl;external;

procedure gtk_media_stream_seek_success(self:PGtkMediaStream);cdecl;external;

procedure gtk_media_stream_seek_failed(self:PGtkMediaStream);cdecl;external;

procedure gtk_media_stream_gerror(self:PGtkMediaStream; error:PGError);cdecl;external;

(* error 
                                                                 ...) G_GNUC_PRINTF (4, 5);
(* error 
                                                                 ...) G_GNUC_PRINTF (4, 5);
 in declarator_list *)
 in declarator_list *)

(* error 
                                                                 va_list         args) G_GNUC_PRINTF (4, 0);
(* error 
                                                                 va_list         args) G_GNUC_PRINTF (4, 0);
 in declarator_list *)
 in declarator_list *)

{$endif}


implementation

function GTK_TYPE_MEDIA_STREAM : longint; { return type might be wrong }
  begin
    GTK_TYPE_MEDIA_STREAM:=gtk_media_stream_get_type;
  end;


end.
