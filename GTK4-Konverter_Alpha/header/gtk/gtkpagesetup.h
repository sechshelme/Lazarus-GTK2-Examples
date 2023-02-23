/* GTK - The GIMP Toolkit
 * gtkpagesetup.h: Page Setup
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

#ifndef __GTK_PAGE_SETUP_H__
#define __GTK_PAGE_SETUP_H__


#if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gtk/gtk.h> can be included directly."
#endif

#include <gtk/gtkpapersize.h>


/* Zeile entfernt */

typedef struct _GtkPageSetup GtkPageSetup;

#define GTK_TYPE_PAGE_SETUP    (gtk_page_setup_get_type ())
#define GTK_PAGE_SETUP(obj)    (G_TYPE_CHECK_INSTANCE_CAST ((obj), GTK_TYPE_PAGE_SETUP, GtkPageSetup))
#define GTK_IS_PAGE_SETUP(obj) (G_TYPE_CHECK_INSTANCE_TYPE ((obj), GTK_TYPE_PAGE_SETUP))

/* Zeile entfernt */
GType              gtk_page_setup_get_type          (void) ;
/* Zeile entfernt */
GtkPageSetup *     gtk_page_setup_new               (void);
/* Zeile entfernt */
GtkPageSetup *     gtk_page_setup_copy              (GtkPageSetup       *other);
/* Zeile entfernt */
GtkPageOrientation gtk_page_setup_get_orientation   (GtkPageSetup       *setup);
/* Zeile entfernt */
void               gtk_page_setup_set_orientation   (GtkPageSetup       *setup,
						     GtkPageOrientation  orientation);
/* Zeile entfernt */
GtkPaperSize *     gtk_page_setup_get_paper_size    (GtkPageSetup       *setup);
/* Zeile entfernt */
void               gtk_page_setup_set_paper_size    (GtkPageSetup       *setup,
						     GtkPaperSize       *size);
/* Zeile entfernt */
double             gtk_page_setup_get_top_margin    (GtkPageSetup       *setup,
						     GtkUnit             unit);
/* Zeile entfernt */
void               gtk_page_setup_set_top_margin    (GtkPageSetup       *setup,
						     double              margin,
						     GtkUnit             unit);
/* Zeile entfernt */
double             gtk_page_setup_get_bottom_margin (GtkPageSetup       *setup,
						     GtkUnit             unit);
/* Zeile entfernt */
void               gtk_page_setup_set_bottom_margin (GtkPageSetup       *setup,
						     double              margin,
						     GtkUnit             unit);
/* Zeile entfernt */
double             gtk_page_setup_get_left_margin   (GtkPageSetup       *setup,
						     GtkUnit             unit);
/* Zeile entfernt */
void               gtk_page_setup_set_left_margin   (GtkPageSetup       *setup,
						     double              margin,
						     GtkUnit             unit);
/* Zeile entfernt */
double             gtk_page_setup_get_right_margin  (GtkPageSetup       *setup,
						     GtkUnit             unit);
/* Zeile entfernt */
void               gtk_page_setup_set_right_margin  (GtkPageSetup       *setup,
						     double              margin,
						     GtkUnit             unit);

/* Zeile entfernt */
void gtk_page_setup_set_paper_size_and_default_margins (GtkPageSetup    *setup,
							GtkPaperSize    *size);

/* These take orientation, but not margins into consideration */
/* Zeile entfernt */
double             gtk_page_setup_get_paper_width   (GtkPageSetup       *setup,
						     GtkUnit             unit);
/* Zeile entfernt */
double             gtk_page_setup_get_paper_height  (GtkPageSetup       *setup,
						     GtkUnit             unit);


/* These take orientation, and margins into consideration */
/* Zeile entfernt */
double             gtk_page_setup_get_page_width    (GtkPageSetup       *setup,
						     GtkUnit             unit);
/* Zeile entfernt */
double             gtk_page_setup_get_page_height   (GtkPageSetup       *setup,
						     GtkUnit             unit);

/* Saving and restoring page setup */
/* Zeile entfernt */
GtkPageSetup	  *gtk_page_setup_new_from_file	    (const char          *file_name,
						     GError              **error);
/* Zeile entfernt */
gboolean	   gtk_page_setup_load_file	    (GtkPageSetup        *setup,
						     const char          *file_name,
						     GError             **error);
/* Zeile entfernt */
gboolean	   gtk_page_setup_to_file	    (GtkPageSetup        *setup,
						     const char          *file_name,
						     GError             **error);
/* Zeile entfernt */
GtkPageSetup	  *gtk_page_setup_new_from_key_file (GKeyFile            *key_file,
						     const char          *group_name,
						     GError             **error);
/* Zeile entfernt */
gboolean           gtk_page_setup_load_key_file     (GtkPageSetup        *setup,
				                     GKeyFile            *key_file,
				                     const char          *group_name,
				                     GError             **error);
/* Zeile entfernt */
void		   gtk_page_setup_to_key_file	    (GtkPageSetup        *setup,
						     GKeyFile            *key_file,
						     const char          *group_name);

/* Zeile entfernt */
GVariant          *gtk_page_setup_to_gvariant       (GtkPageSetup        *setup);
/* Zeile entfernt */
GtkPageSetup      *gtk_page_setup_new_from_gvariant (GVariant            *variant);

/* Zeile entfernt */

#endif /* __GTK_PAGE_SETUP_H__ */
