
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


  { GTK - The GIMP Toolkit
   * Copyright (C) 2017 Benjamin Otte
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
{$ifndef __GTK_CONTENT_FORMATS_H__}
{$define __GTK_CONTENT_FORMATS_H__}  
{$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}
{$include <gdk/gdkversionmacros.h>}
{$include <gdk/gdktypes.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GDK_TYPE_CONTENT_FORMATS : longint; { return type might be wrong }

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
  function gdk_intern_mime_type(_string:Pchar):^char;

  { Zeile entfernt  }
  function gdk_content_formats_get_type:GType;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gdk_content_formats_new(mime_types:PPchar; n_mime_types:guint):^GdkContentFormats;

  { Zeile entfernt  }
  function gdk_content_formats_new_for_gtype(_type:GType):^GdkContentFormats;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gdk_content_formats_parse(_string:Pchar):^GdkContentFormats;

  { Zeile entfernt  }
  function gdk_content_formats_ref(formats:PGdkContentFormats):^GdkContentFormats;

  { Zeile entfernt  }
  procedure gdk_content_formats_unref(formats:PGdkContentFormats);

  { Zeile entfernt  }
  procedure gdk_content_formats_print(formats:PGdkContentFormats; _string:PGString);

  { Zeile entfernt  }
  function gdk_content_formats_to_string(formats:PGdkContentFormats):^char;

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
  function gdk_content_formats_get_gtypes(formats:PGdkContentFormats; n_gtypes:Pgsize):^GType;

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before declarator ignored *)
  function gdk_content_formats_get_mime_types(formats:PGdkContentFormats; n_mime_types:Pgsize):^^char;

  { Zeile entfernt  }
(* Const before type ignored *)
(* error 
                                                                 const GdkContentFormats        *second) G_GNUC_WARN_UNUSED_RESULT;
 in declarator_list *)

    var
 : GdkContentFormats;
  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)

  function gdk_content_formats_match(first:PGdkContentFormats; second:PGdkContentFormats):gboolean;

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
  function gdk_content_formats_match_gtype(first:PGdkContentFormats; second:PGdkContentFormats):GType;

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)
  function gdk_content_formats_match_mime_type(first:PGdkContentFormats; second:PGdkContentFormats):^char;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gdk_content_formats_contain_gtype(formats:PGdkContentFormats; _type:GType):gboolean;

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
  function gdk_content_formats_contain_mime_type(formats:PGdkContentFormats; mime_type:Pchar):gboolean;

  { was #define dname def_expr }
  function GDK_TYPE_CONTENT_FORMATS_BUILDER : longint; { return type might be wrong }


  type
    _GdkContentFormatsBuilder = GdkContentFormatsBuilder;
  { Zeile entfernt  }

  function gdk_content_formats_builder_get_type:GType;

  { Zeile entfernt  }
  function gdk_content_formats_builder_new:^GdkContentFormatsBuilder;

  { Zeile entfernt  }
  function gdk_content_formats_builder_ref(builder:PGdkContentFormatsBuilder):^GdkContentFormatsBuilder;

  { Zeile entfernt  }
  procedure gdk_content_formats_builder_unref(builder:PGdkContentFormatsBuilder);

  { Zeile entfernt  }
(* error 
GdkContentFormats *     gdk_content_formats_builder_free_to_formats (GdkContentFormatsBuilder  *builder) G_GNUC_WARN_UNUSED_RESULT;
 in declarator_list *)

    var
 : GdkContentFormats;
  { Zeile entfernt  }
(* error 
GdkContentFormats *     gdk_content_formats_builder_to_formats  (GdkContentFormatsBuilder  *builder) G_GNUC_WARN_UNUSED_RESULT;
 in declarator_list *)
 : GdkContentFormats;
  { Zeile entfernt  }
(* Const before type ignored *)

  procedure gdk_content_formats_builder_add_formats(builder:PGdkContentFormatsBuilder; formats:PGdkContentFormats);

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gdk_content_formats_builder_add_mime_type(builder:PGdkContentFormatsBuilder; mime_type:Pchar);

  { Zeile entfernt  }
  procedure gdk_content_formats_builder_add_gtype(builder:PGdkContentFormatsBuilder; _type:GType);

  { dunno where else to put this  }
  { was #define dname def_expr }
  function GDK_TYPE_FILE_LIST : longint; { return type might be wrong }

  { Zeile entfernt  }
  function gdk_file_list_get_type:GType;

  {*
   * GdkFileList:
   *
   * An opaque type representing a list of files.
   *
   * Since: 4.6
    }

  type
    _GdkFileList = GdkFileList;
  { Zeile entfernt  }

  function gdk_file_list_get_files(file_list:PGdkFileList):^GSList;

(* error 
GdkFileList *   gdk_file_list_new_from_list (GSList *files);
 in declarator_list *)
(* error 
GdkFileList *   gdk_file_list_new_from_array (GFile **files,
(* error 
                                              gsize   n_files);
 in declarator_list *)
 in declarator_list *)
  { Zeile entfernt  }
{$endif}
  { __GTK_CONTENT_FORMATS_H__  }
  { was #define dname def_expr }
  function GDK_TYPE_CONTENT_FORMATS : longint; { return type might be wrong }
    begin
      GDK_TYPE_CONTENT_FORMATS:=gdk_content_formats_get_type;
    end;

  function gdk_intern_mime_type(_string:Pchar):Pchar;
  begin
    { You must implement this function }
  end;
  function gdk_content_formats_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gdk_content_formats_new(mime_types:PPchar; n_mime_types:guint):PGdkContentFormats;
  begin
    { You must implement this function }
  end;
  function gdk_content_formats_new_for_gtype(_type:GType):PGdkContentFormats;
  begin
    { You must implement this function }
  end;
  function gdk_content_formats_parse(_string:Pchar):PGdkContentFormats;
  begin
    { You must implement this function }
  end;
  function gdk_content_formats_ref(formats:PGdkContentFormats):PGdkContentFormats;
  begin
    { You must implement this function }
  end;
  procedure gdk_content_formats_unref(formats:PGdkContentFormats);
  begin
    { You must implement this function }
  end;
  procedure gdk_content_formats_print(formats:PGdkContentFormats; _string:PGString);
  begin
    { You must implement this function }
  end;
  function gdk_content_formats_to_string(formats:PGdkContentFormats):Pchar;
  begin
    { You must implement this function }
  end;
  function gdk_content_formats_get_gtypes(formats:PGdkContentFormats; n_gtypes:Pgsize):PGType;
  begin
    { You must implement this function }
  end;
  function gdk_content_formats_get_mime_types(formats:PGdkContentFormats; n_mime_types:Pgsize):PPchar;
  begin
    { You must implement this function }
  end;
  function gdk_content_formats_match(first:PGdkContentFormats; second:PGdkContentFormats):gboolean;
  begin
    { You must implement this function }
  end;
  function gdk_content_formats_match_gtype(first:PGdkContentFormats; second:PGdkContentFormats):GType;
  begin
    { You must implement this function }
  end;
  function gdk_content_formats_match_mime_type(first:PGdkContentFormats; second:PGdkContentFormats):Pchar;
  begin
    { You must implement this function }
  end;
  function gdk_content_formats_contain_gtype(formats:PGdkContentFormats; _type:GType):gboolean;
  begin
    { You must implement this function }
  end;
  function gdk_content_formats_contain_mime_type(formats:PGdkContentFormats; mime_type:Pchar):gboolean;
  begin
    { You must implement this function }
  end;
  { was #define dname def_expr }
  function GDK_TYPE_CONTENT_FORMATS_BUILDER : longint; { return type might be wrong }
    begin
      GDK_TYPE_CONTENT_FORMATS_BUILDER:=gdk_content_formats_builder_get_type;
    end;

  function gdk_content_formats_builder_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gdk_content_formats_builder_new:PGdkContentFormatsBuilder;
  begin
    { You must implement this function }
  end;
  function gdk_content_formats_builder_ref(builder:PGdkContentFormatsBuilder):PGdkContentFormatsBuilder;
  begin
    { You must implement this function }
  end;
  procedure gdk_content_formats_builder_unref(builder:PGdkContentFormatsBuilder);
  begin
    { You must implement this function }
  end;
  procedure gdk_content_formats_builder_add_formats(builder:PGdkContentFormatsBuilder; formats:PGdkContentFormats);
  begin
    { You must implement this function }
  end;
  procedure gdk_content_formats_builder_add_mime_type(builder:PGdkContentFormatsBuilder; mime_type:Pchar);
  begin
    { You must implement this function }
  end;
  procedure gdk_content_formats_builder_add_gtype(builder:PGdkContentFormatsBuilder; _type:GType);
  begin
    { You must implement this function }
  end;
  { was #define dname def_expr }
  function GDK_TYPE_FILE_LIST : longint; { return type might be wrong }
    begin
      GDK_TYPE_FILE_LIST:=gdk_file_list_get_type;
    end;

  function gdk_file_list_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gdk_file_list_get_files(file_list:PGdkFileList):PGSList;
  begin
    { You must implement this function }
  end;

