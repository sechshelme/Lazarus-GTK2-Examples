
  Type
  Pchar  = ^char;
  PGtkTextTag  = ^GtkTextTag;
  PGtkTextTagTable  = ^GtkTextTagTable;
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
   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the GNU
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
{$ifndef __GTK_TEXT_TAG_TABLE_H__}
{$define __GTK_TEXT_TAG_TABLE_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtktexttag.h>}
  {*
   * GtkTextTagTableForeach:
   * @tag: the `GtkTextTag`
   * @data: (closure): data passed to gtk_text_tag_table_foreach()
   *
   * A function used with gtk_text_tag_table_foreach(),
   * to iterate over every `GtkTextTag` inside a `GtkTextTagTable`.
    }

  type

    GtkTextTagTableForeach = procedure (tag:PGtkTextTag; data:gpointer);cdecl;

  { was #define dname def_expr }
  function GTK_TYPE_TEXT_TAG_TABLE : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_TEXT_TAG_TABLE(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_TEXT_TAG_TABLE(obj : longint) : longint;  

(* error 
GType          gtk_text_tag_table_get_type (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;

  function gtk_text_tag_table_new:^GtkTextTagTable;

  function gtk_text_tag_table_add(table:PGtkTextTagTable; tag:PGtkTextTag):gboolean;

  procedure gtk_text_tag_table_remove(table:PGtkTextTagTable; tag:PGtkTextTag);

(* Const before type ignored *)
  function gtk_text_tag_table_lookup(table:PGtkTextTagTable; name:Pchar):^GtkTextTag;

  procedure gtk_text_tag_table_foreach(table:PGtkTextTagTable; func:GtkTextTagTableForeach; data:gpointer);

  function gtk_text_tag_table_get_size(table:PGtkTextTagTable):longint;

{$endif}
  { was #define dname def_expr }
  function GTK_TYPE_TEXT_TAG_TABLE : longint; { return type might be wrong }
    begin
      GTK_TYPE_TEXT_TAG_TABLE:=gtk_text_tag_table_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_TEXT_TAG_TABLE(obj : longint) : longint;
  begin
    GTK_TEXT_TAG_TABLE:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_TEXT_TAG_TABLE,GtkTextTagTable);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_TEXT_TAG_TABLE(obj : longint) : longint;
  begin
    GTK_IS_TEXT_TAG_TABLE:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_TEXT_TAG_TABLE);
  end;

  function gtk_text_tag_table_new:PGtkTextTagTable;
  begin
    { You must implement this function }
  end;
  function gtk_text_tag_table_add(table:PGtkTextTagTable; tag:PGtkTextTag):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_text_tag_table_remove(table:PGtkTextTagTable; tag:PGtkTextTag);
  begin
    { You must implement this function }
  end;
  function gtk_text_tag_table_lookup(table:PGtkTextTagTable; name:Pchar):PGtkTextTag;
  begin
    { You must implement this function }
  end;
  procedure gtk_text_tag_table_foreach(table:PGtkTextTagTable; func:GtkTextTagTableForeach; data:gpointer);
  begin
    { You must implement this function }
  end;
  function gtk_text_tag_table_get_size(table:PGtkTextTagTable):longint;
  begin
    { You must implement this function }
  end;

