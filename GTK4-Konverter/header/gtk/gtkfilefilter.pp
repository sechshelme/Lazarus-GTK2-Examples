
    Type
    Pchar  = ^char;
    PGtkFileFilter  = ^GtkFileFilter;
    PGVariant  = ^GVariant;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GTK - The GIMP Toolkit
   * gtkfilefilter.h: Filters for selecting a file subset
   * Copyright (C) 2003, Red Hat, Inc.
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
{$ifndef __GTK_FILE_FILTER_H__}
{$define __GTK_FILE_FILTER_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <glib-object.h>}
{$include <gdk/gdk.h>}

  { was #define dname def_expr }
  function GTK_TYPE_FILE_FILTER : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_FILE_FILTER(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_FILE_FILTER(obj : longint) : longint;  


  type
    _GtkFileFilter = GtkFileFilter;
(* error 
GType           gtk_file_filter_get_type           (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;

  function gtk_file_filter_new:^GtkFileFilter;

(* Const before type ignored *)
  procedure gtk_file_filter_set_name(filter:PGtkFileFilter; name:Pchar);

(* Const before type ignored *)
  function gtk_file_filter_get_name(filter:PGtkFileFilter):^char;

(* Const before type ignored *)
  procedure gtk_file_filter_add_mime_type(filter:PGtkFileFilter; mime_type:Pchar);

(* Const before type ignored *)
  procedure gtk_file_filter_add_pattern(filter:PGtkFileFilter; pattern:Pchar);

(* error 
void            gtk_file_filter_add_suffix         (GtkFileFilter *filter,
in declaration at line 58 *)
    procedure gtk_file_filter_add_pixbuf_formats(filter:PGtkFileFilter);

(* Const before type ignored *)
    function gtk_file_filter_get_attributes(filter:PGtkFileFilter):^^char;

    function gtk_file_filter_to_gvariant(filter:PGtkFileFilter):^GVariant;

    function gtk_file_filter_new_from_gvariant(variant:PGVariant):^GtkFileFilter;

{$endif}
    { __GTK_FILE_FILTER_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_FILE_FILTER : longint; { return type might be wrong }
    begin
      GTK_TYPE_FILE_FILTER:=gtk_file_filter_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_FILE_FILTER(obj : longint) : longint;
  begin
    GTK_FILE_FILTER:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_FILE_FILTER,GtkFileFilter);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_FILE_FILTER(obj : longint) : longint;
  begin
    GTK_IS_FILE_FILTER:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_FILE_FILTER);
  end;

  function gtk_file_filter_new:PGtkFileFilter;
  begin
    { You must implement this function }
  end;
  procedure gtk_file_filter_set_name(filter:PGtkFileFilter; name:Pchar);
  begin
    { You must implement this function }
  end;
  function gtk_file_filter_get_name(filter:PGtkFileFilter):Pchar;
  begin
    { You must implement this function }
  end;
  procedure gtk_file_filter_add_mime_type(filter:PGtkFileFilter; mime_type:Pchar);
  begin
    { You must implement this function }
  end;
  procedure gtk_file_filter_add_pattern(filter:PGtkFileFilter; pattern:Pchar);
  begin
    { You must implement this function }
  end;
    procedure gtk_file_filter_add_pixbuf_formats(filter:PGtkFileFilter);
    begin
      { You must implement this function }
    end;
    function gtk_file_filter_get_attributes(filter:PGtkFileFilter):PPchar;
    begin
      { You must implement this function }
    end;
    function gtk_file_filter_to_gvariant(filter:PGtkFileFilter):PGVariant;
    begin
      { You must implement this function }
    end;
    function gtk_file_filter_new_from_gvariant(variant:PGVariant):PGtkFileFilter;
    begin
      { You must implement this function }
    end;

