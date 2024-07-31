/* GTK - The GIMP Toolkit
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
 */

#pragma once

#if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gdk/gdk.h> can be included directly."
#endif

#include <gdk/gdktypes.h>



#define GDK_TYPE_CONTENT_FORMATS    (gdk_content_formats_get_type ())


const char *            gdk_intern_mime_type                    (const char                     *string);


GType                   gdk_content_formats_get_type            (void) ;

GdkContentFormats *     gdk_content_formats_new                 (const char                    **mime_types,
                                                                 guint                           n_mime_types);

GdkContentFormats *     gdk_content_formats_new_for_gtype       (GType                           type);

GdkContentFormats *     gdk_content_formats_parse               (const char                     *string);

GdkContentFormats *     gdk_content_formats_ref                 (GdkContentFormats              *formats);

void                    gdk_content_formats_unref               (GdkContentFormats              *formats);


void                    gdk_content_formats_print               (GdkContentFormats              *formats,
                                                                 GString                        *string);

char *                  gdk_content_formats_to_string           (GdkContentFormats              *formats);


const GType *           gdk_content_formats_get_gtypes          (const GdkContentFormats        *formats,
                                                                 gsize                          *n_gtypes);

const char * const *    gdk_content_formats_get_mime_types      (const GdkContentFormats        *formats,
                                                                 gsize                          *n_mime_types);


GdkContentFormats *     gdk_content_formats_union               (GdkContentFormats              *first,
                                                                 const GdkContentFormats        *second) ;

gboolean                gdk_content_formats_match               (const GdkContentFormats        *first,
                                                                 const GdkContentFormats        *second);

GType                   gdk_content_formats_match_gtype         (const GdkContentFormats        *first,
                                                                 const GdkContentFormats        *second);

const char *            gdk_content_formats_match_mime_type     (const GdkContentFormats        *first,
                                                                 const GdkContentFormats        *second);

gboolean                gdk_content_formats_contain_gtype       (const GdkContentFormats        *formats,
                                                                 GType                           type);

gboolean                gdk_content_formats_contain_mime_type   (const GdkContentFormats        *formats,
                                                                 const char                     *mime_type);

#define GDK_TYPE_CONTENT_FORMATS_BUILDER (gdk_content_formats_builder_get_type ())

typedef struct _GdkContentFormatsBuilder GdkContentFormatsBuilder;


GType                   gdk_content_formats_builder_get_type    (void) ;


GdkContentFormatsBuilder *gdk_content_formats_builder_new        (void);

GdkContentFormatsBuilder *gdk_content_formats_builder_ref       (GdkContentFormatsBuilder       *builder);

void                    gdk_content_formats_builder_unref       (GdkContentFormatsBuilder       *builder);

GdkContentFormats *     gdk_content_formats_builder_free_to_formats (GdkContentFormatsBuilder  *builder) ;

GdkContentFormats *     gdk_content_formats_builder_to_formats  (GdkContentFormatsBuilder  *builder) ;

void                    gdk_content_formats_builder_add_formats (GdkContentFormatsBuilder       *builder,
                                                                 const GdkContentFormats        *formats);

void                    gdk_content_formats_builder_add_mime_type(GdkContentFormatsBuilder      *builder,
                                                                 const char                     *mime_type);

void                    gdk_content_formats_builder_add_gtype   (GdkContentFormatsBuilder       *builder,
                                                                 GType                           type);



/* dunno where else to put this */
#define GDK_TYPE_FILE_LIST (gdk_file_list_get_type ())

GType gdk_file_list_get_type (void) ;

/**
 * GdkFileList:
 *
 * An opaque type representing a list of files.
 *
 * Since: 4.6
 */
typedef struct _GdkFileList GdkFileList;


GSList *        gdk_file_list_get_files (GdkFileList *file_list);

GdkFileList *   gdk_file_list_new_from_list (GSList *files);

GdkFileList *   gdk_file_list_new_from_array (GFile **files,
                                              gsize   n_files);



