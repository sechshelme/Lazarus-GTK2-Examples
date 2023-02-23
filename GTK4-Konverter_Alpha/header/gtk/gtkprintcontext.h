/* GTK - The GIMP Toolkit
 * gtkprintcontext.h: Print Context
 * Copyright (C) 2006, Red Hat, Inc.
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

#ifndef __GTK_PRINT_CONTEXT_H__
#define __GTK_PRINT_CONTEXT_H__


#if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gtk/gtk.h> can be included directly."
#endif

#include <pango/pango.h>
#include <gtk/gtkpagesetup.h>


/* Zeile entfernt */

typedef struct _GtkPrintContext GtkPrintContext;

#define GTK_TYPE_PRINT_CONTEXT    (gtk_print_context_get_type ())
#define GTK_PRINT_CONTEXT(obj)    (G_TYPE_CHECK_INSTANCE_CAST ((obj), GTK_TYPE_PRINT_CONTEXT, GtkPrintContext))
#define GTK_IS_PRINT_CONTEXT(obj) (G_TYPE_CHECK_INSTANCE_TYPE ((obj), GTK_TYPE_PRINT_CONTEXT))

/* Zeile entfernt */
GType          gtk_print_context_get_type (void) ;


/* Rendering */
/* Zeile entfernt */
cairo_t      *gtk_print_context_get_cairo_context    (GtkPrintContext *context);

/* Zeile entfernt */
GtkPageSetup *gtk_print_context_get_page_setup       (GtkPrintContext *context);
/* Zeile entfernt */
double        gtk_print_context_get_width            (GtkPrintContext *context);
/* Zeile entfernt */
double        gtk_print_context_get_height           (GtkPrintContext *context);
/* Zeile entfernt */
double        gtk_print_context_get_dpi_x            (GtkPrintContext *context);
/* Zeile entfernt */
double        gtk_print_context_get_dpi_y            (GtkPrintContext *context);
/* Zeile entfernt */
gboolean      gtk_print_context_get_hard_margins     (GtkPrintContext *context,
						      double          *top,
						      double          *bottom,
						      double          *left,
						      double          *right);

/* Fonts */
/* Zeile entfernt */
PangoFontMap *gtk_print_context_get_pango_fontmap    (GtkPrintContext *context);
/* Zeile entfernt */
PangoContext *gtk_print_context_create_pango_context (GtkPrintContext *context);
/* Zeile entfernt */
PangoLayout  *gtk_print_context_create_pango_layout  (GtkPrintContext *context);

/* Needed for preview implementations */
/* Zeile entfernt */
void         gtk_print_context_set_cairo_context     (GtkPrintContext *context,
						      cairo_t         *cr,
						      double           dpi_x,
						      double           dpi_y);

/* Zeile entfernt */

#endif /* __GTK_PRINT_CONTEXT_H__ */
