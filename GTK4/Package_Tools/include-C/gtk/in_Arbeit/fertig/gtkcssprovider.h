/* GTK - The GIMP Toolkit
 * Copyright (C) 2010 Carlos Garnacho <carlosg@gnome.org>
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

#include <gio/gio.h>
#include <gtk/css/gtkcss.h>



#define GTK_TYPE_CSS_PROVIDER         (gtk_css_provider_get_type ())
#define GTK_CSS_PROVIDER(o)           (G_TYPE_CHECK_INSTANCE_CAST ((o), GTK_TYPE_CSS_PROVIDER, GtkCssProvider))
#define GTK_IS_CSS_PROVIDER(o)        (G_TYPE_CHECK_INSTANCE_TYPE ((o), GTK_TYPE_CSS_PROVIDER))

typedef struct _GtkCssProvider GtkCssProvider;
typedef struct _GtkCssProviderClass GtkCssProviderClass;
typedef struct _GtkCssProviderPrivate GtkCssProviderPrivate;

struct _GtkCssProvider
{
  GObject parent_instance;
};



GType gtk_css_provider_get_type (void) ;


GtkCssProvider * gtk_css_provider_new (void);


char *           gtk_css_provider_to_string      (GtkCssProvider  *provider);

void             gtk_css_provider_load_from_data (GtkCssProvider  *css_provider,
                                                  const char      *data,
                                                  gssize           length);

void             gtk_css_provider_load_from_string (GtkCssProvider *css_provider,
                                                    const char     *string);


void             gtk_css_provider_load_from_bytes  (GtkCssProvider *css_provider,
                                                    GBytes         *data);


void             gtk_css_provider_load_from_file (GtkCssProvider  *css_provider,
                                                  GFile           *file);

void             gtk_css_provider_load_from_path (GtkCssProvider  *css_provider,
                                                  const char      *path);


void             gtk_css_provider_load_from_resource (GtkCssProvider *css_provider,
                                                      const char     *resource_path);


void             gtk_css_provider_load_named     (GtkCssProvider  *provider,
                                                  const char      *name,
                                                  const char      *variant);





