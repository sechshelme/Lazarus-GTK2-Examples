/* GTK - The GIMP Toolkit
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
 */

/*
 * Modified by the GTK+ Team and others 1997-2000.  See the AUTHORS
 * file for a list of people on the GTK+ Team.  See the ChangeLog
 * files for a list of changes.  These files are distributed with
 * GTK+ at ftp://ftp.gtk.org/pub/gtk/.
 */

#pragma once

#if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gtk/gtk.h> can be included directly."
#endif

#include <gtk/gtktexttag.h>



/**
 * GtkTextTagTableForeach:
 * @tag: the `GtkTextTag`
 * @data: (closure): data passed to gtk_text_tag_table_foreach()
 *
 * A function used with gtk_text_tag_table_foreach(),
 * to iterate over every `GtkTextTag` inside a `GtkTextTagTable`.
 */
typedef void (* GtkTextTagTableForeach) (GtkTextTag *tag, gpointer data);

#define GTK_TYPE_TEXT_TAG_TABLE            (gtk_text_tag_table_get_type ())
#define GTK_TEXT_TAG_TABLE(obj)            (G_TYPE_CHECK_INSTANCE_CAST ((obj), GTK_TYPE_TEXT_TAG_TABLE, GtkTextTagTable))
#define GTK_IS_TEXT_TAG_TABLE(obj)         (G_TYPE_CHECK_INSTANCE_TYPE ((obj), GTK_TYPE_TEXT_TAG_TABLE))


GType          gtk_text_tag_table_get_type (void) ;


GtkTextTagTable *gtk_text_tag_table_new      (void);

gboolean         gtk_text_tag_table_add      (GtkTextTagTable        *table,
                                              GtkTextTag             *tag);

void             gtk_text_tag_table_remove   (GtkTextTagTable        *table,
                                              GtkTextTag             *tag);

GtkTextTag      *gtk_text_tag_table_lookup   (GtkTextTagTable        *table,
                                              const char             *name);

void             gtk_text_tag_table_foreach  (GtkTextTagTable        *table,
                                              GtkTextTagTableForeach  func,
                                              gpointer                data);

int              gtk_text_tag_table_get_size (GtkTextTagTable        *table);





