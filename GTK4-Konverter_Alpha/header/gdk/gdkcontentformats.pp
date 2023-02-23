
unit gdkcontentformats;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdkcontentformats.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdkcontentformats.h
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
PGdkContentFormats  = ^GdkContentFormats;
PGdkContentFormatsBuilder  = ^GdkContentFormatsBuilder;
PGdkFileList  = ^GdkFileList;
Pgsize  = ^gsize;
PGSList  = ^GSList;
PGString  = ^GString;
PGType  = ^GType;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_CONTENT_FORMATS_H__}
{$define __GTK_CONTENT_FORMATS_H__}
{$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}
{$include <gdk/gdkversionmacros.h>}
{$include <gdk/gdktypes.h>}


function GDK_TYPE_CONTENT_FORMATS : longint; { return type might be wrong }


function gdk_intern_mime_type(_string:Pchar):Pchar;cdecl;external;

function gdk_content_formats_get_type:TGType;cdecl;external;

function gdk_content_formats_new(mime_types:PPchar; n_mime_types:Tguint):PGdkContentFormats;cdecl;external;

function gdk_content_formats_new_for_gtype(_type:TGType):PGdkContentFormats;cdecl;external;

function gdk_content_formats_parse(_string:Pchar):PGdkContentFormats;cdecl;external;

function gdk_content_formats_ref(formats:PGdkContentFormats):PGdkContentFormats;cdecl;external;

procedure gdk_content_formats_unref(formats:PGdkContentFormats);cdecl;external;

procedure gdk_content_formats_print(formats:PGdkContentFormats; _string:PGString);cdecl;external;

function gdk_content_formats_to_string(formats:PGdkContentFormats):Pchar;cdecl;external;

function gdk_content_formats_get_gtypes(formats:PGdkContentFormats; n_gtypes:Pgsize):PGType;cdecl;external;

function gdk_content_formats_get_mime_types(formats:PGdkContentFormats; n_mime_types:Pgsize):^Pchar;cdecl;external;

(* error 
                                                                 const GdkContentFormats        *second) G_GNUC_WARN_UNUSED_RESULT;
 in declarator_list *)
  var
 : TGdkContentFormats;


function gdk_content_formats_match(first:PGdkContentFormats; second:PGdkContentFormats):Tgboolean;cdecl;external;

function gdk_content_formats_match_gtype(first:PGdkContentFormats; second:PGdkContentFormats):TGType;cdecl;external;

function gdk_content_formats_match_mime_type(first:PGdkContentFormats; second:PGdkContentFormats):Pchar;cdecl;external;

function gdk_content_formats_contain_gtype(formats:PGdkContentFormats; _type:TGType):Tgboolean;cdecl;external;

function gdk_content_formats_contain_mime_type(formats:PGdkContentFormats; mime_type:Pchar):Tgboolean;cdecl;external;
function GDK_TYPE_CONTENT_FORMATS_BUILDER : longint; { return type might be wrong }

type


function gdk_content_formats_builder_get_type:TGType;cdecl;external;

function gdk_content_formats_builder_new:PGdkContentFormatsBuilder;cdecl;external;

function gdk_content_formats_builder_ref(builder:PGdkContentFormatsBuilder):PGdkContentFormatsBuilder;cdecl;external;

procedure gdk_content_formats_builder_unref(builder:PGdkContentFormatsBuilder);cdecl;external;

(* error 
GdkContentFormats *     gdk_content_formats_builder_free_to_formats (GdkContentFormatsBuilder  *builder) G_GNUC_WARN_UNUSED_RESULT;
 in declarator_list *)
  var
 : TGdkContentFormats;

(* error 
GdkContentFormats *     gdk_content_formats_builder_to_formats  (GdkContentFormatsBuilder  *builder) G_GNUC_WARN_UNUSED_RESULT;
 in declarator_list *)
 : TGdkContentFormats;


procedure gdk_content_formats_builder_add_formats(builder:PGdkContentFormatsBuilder; formats:PGdkContentFormats);cdecl;external;

procedure gdk_content_formats_builder_add_mime_type(builder:PGdkContentFormatsBuilder; mime_type:Pchar);cdecl;external;

procedure gdk_content_formats_builder_add_gtype(builder:PGdkContentFormatsBuilder; _type:TGType);cdecl;external;

function GDK_TYPE_FILE_LIST : longint; { return type might be wrong }


function gdk_file_list_get_type:TGType;cdecl;external;

type


function gdk_file_list_get_files(file_list:PGdkFileList):PGSList;cdecl;external;

{$endif}


implementation

function GDK_TYPE_CONTENT_FORMATS : longint; { return type might be wrong }
  begin
    GDK_TYPE_CONTENT_FORMATS:=gdk_content_formats_get_type;
  end;

function GDK_TYPE_CONTENT_FORMATS_BUILDER : longint; { return type might be wrong }
  begin
    GDK_TYPE_CONTENT_FORMATS_BUILDER:=gdk_content_formats_builder_get_type;
  end;

function GDK_TYPE_FILE_LIST : longint; { return type might be wrong }
  begin
    GDK_TYPE_FILE_LIST:=gdk_file_list_get_type;
  end;


end.
