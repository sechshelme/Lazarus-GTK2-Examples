/* -*- Mode: C; c-file-style: "gnu"; tab-width: 8 -*- */
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
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
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

#ifndef __GTK_NOTEBOOK_H__
#define __GTK_NOTEBOOK_H__


#if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gtk/gtk.h> can be included directly."
#endif

#include <gtk/gtkwidget.h>


/* Zeile entfernt */

#define GTK_TYPE_NOTEBOOK                  (gtk_notebook_get_type ())
#define GTK_NOTEBOOK(obj)                  (G_TYPE_CHECK_INSTANCE_CAST ((obj), GTK_TYPE_NOTEBOOK, GtkNotebook))
#define GTK_IS_NOTEBOOK(obj)               (G_TYPE_CHECK_INSTANCE_TYPE ((obj), GTK_TYPE_NOTEBOOK))

#define GTK_TYPE_NOTEBOOK_PAGE (gtk_notebook_page_get_type ())
#define GTK_NOTEBOOK_PAGE(obj) (G_TYPE_CHECK_INSTANCE_CAST ((obj), GTK_TYPE_NOTEBOOK_PAGE, GtkNotebookPage))
#define GTK_IS_NOTEBOOK_PAGE(obj) (G_TYPE_CHECK_INSTANCE_TYPE ((obj), GTK_TYPE_NOTEBOOK_PAGE))

typedef struct _GtkNotebookPage GtkNotebookPage;

/**
 * GtkNotebookTab:
 * @GTK_NOTEBOOK_TAB_FIRST: the first tab in the notebook
 * @GTK_NOTEBOOK_TAB_LAST: the last tab in the notebook
 *
 * The parameter used in the action signals of `GtkNotebook`.
 */
typedef enum
{
  GTK_NOTEBOOK_TAB_FIRST,
  GTK_NOTEBOOK_TAB_LAST
} GtkNotebookTab;

typedef struct _GtkNotebook GtkNotebook;

/***********************************************************
 *           Creation, insertion, deletion                 *
 ***********************************************************/

/* Zeile entfernt */
GType   gtk_notebook_get_type       (void) ;
/* Zeile entfernt */
GtkWidget * gtk_notebook_new        (void);
/* Zeile entfernt */
int gtk_notebook_append_page        (GtkNotebook *notebook,
				     GtkWidget   *child,
				     GtkWidget   *tab_label);
/* Zeile entfernt */
int gtk_notebook_append_page_menu   (GtkNotebook *notebook,
				     GtkWidget   *child,
				     GtkWidget   *tab_label,
				     GtkWidget   *menu_label);
/* Zeile entfernt */
int gtk_notebook_prepend_page       (GtkNotebook *notebook,
				     GtkWidget   *child,
				     GtkWidget   *tab_label);
/* Zeile entfernt */
int gtk_notebook_prepend_page_menu  (GtkNotebook *notebook,
				     GtkWidget   *child,
				     GtkWidget   *tab_label,
				     GtkWidget   *menu_label);
/* Zeile entfernt */
int gtk_notebook_insert_page        (GtkNotebook *notebook,
				     GtkWidget   *child,
				     GtkWidget   *tab_label,
				     int          position);
/* Zeile entfernt */
int gtk_notebook_insert_page_menu   (GtkNotebook *notebook,
				     GtkWidget   *child,
				     GtkWidget   *tab_label,
				     GtkWidget   *menu_label,
				     int          position);
/* Zeile entfernt */
void gtk_notebook_remove_page       (GtkNotebook *notebook,
				     int          page_num);

/***********************************************************
 *           Tabs drag and drop                            *
 ***********************************************************/

/* Zeile entfernt */
void         gtk_notebook_set_group_name (GtkNotebook *notebook,
                                          const char  *group_name);
/* Zeile entfernt */
const char *gtk_notebook_get_group_name  (GtkNotebook *notebook);



/***********************************************************
 *            query, set current NotebookPage              *
 ***********************************************************/

/* Zeile entfernt */
int        gtk_notebook_get_current_page (GtkNotebook *notebook);
/* Zeile entfernt */
GtkWidget* gtk_notebook_get_nth_page     (GtkNotebook *notebook,
					  int          page_num);
/* Zeile entfernt */
int        gtk_notebook_get_n_pages      (GtkNotebook *notebook);
/* Zeile entfernt */
int        gtk_notebook_page_num         (GtkNotebook *notebook,
					  GtkWidget   *child);
/* Zeile entfernt */
void       gtk_notebook_set_current_page (GtkNotebook *notebook,
					  int          page_num);
/* Zeile entfernt */
void       gtk_notebook_next_page        (GtkNotebook *notebook);
/* Zeile entfernt */
void       gtk_notebook_prev_page        (GtkNotebook *notebook);

/***********************************************************
 *            set Notebook, NotebookTab style              *
 ***********************************************************/

/* Zeile entfernt */
void     gtk_notebook_set_show_border      (GtkNotebook     *notebook,
					    gboolean         show_border);
/* Zeile entfernt */
gboolean gtk_notebook_get_show_border      (GtkNotebook     *notebook);
/* Zeile entfernt */
void     gtk_notebook_set_show_tabs        (GtkNotebook     *notebook,
					    gboolean         show_tabs);
/* Zeile entfernt */
gboolean gtk_notebook_get_show_tabs        (GtkNotebook     *notebook);
/* Zeile entfernt */
void     gtk_notebook_set_tab_pos          (GtkNotebook     *notebook,
				            GtkPositionType  pos);
/* Zeile entfernt */
GtkPositionType gtk_notebook_get_tab_pos   (GtkNotebook     *notebook);
/* Zeile entfernt */
void     gtk_notebook_set_scrollable       (GtkNotebook     *notebook,
					    gboolean         scrollable);
/* Zeile entfernt */
gboolean gtk_notebook_get_scrollable       (GtkNotebook     *notebook);

/***********************************************************
 *               enable/disable PopupMenu                  *
 ***********************************************************/

/* Zeile entfernt */
void gtk_notebook_popup_enable  (GtkNotebook *notebook);
/* Zeile entfernt */
void gtk_notebook_popup_disable (GtkNotebook *notebook);

/***********************************************************
 *             query/set NotebookPage Properties           *
 ***********************************************************/

/* Zeile entfernt */
GtkWidget * gtk_notebook_get_tab_label    (GtkNotebook *notebook,
					   GtkWidget   *child);
/* Zeile entfernt */
void gtk_notebook_set_tab_label           (GtkNotebook *notebook,
					   GtkWidget   *child,
					   GtkWidget   *tab_label);
/* Zeile entfernt */
void          gtk_notebook_set_tab_label_text (GtkNotebook *notebook,
                                               GtkWidget   *child,
                                               const char  *tab_text);
/* Zeile entfernt */
const char * gtk_notebook_get_tab_label_text  (GtkNotebook *notebook,
                                               GtkWidget   *child);
/* Zeile entfernt */
GtkWidget * gtk_notebook_get_menu_label   (GtkNotebook *notebook,
					   GtkWidget   *child);
/* Zeile entfernt */
void gtk_notebook_set_menu_label          (GtkNotebook *notebook,
					   GtkWidget   *child,
					   GtkWidget   *menu_label);
/* Zeile entfernt */
void          gtk_notebook_set_menu_label_text (GtkNotebook *notebook,
                                                GtkWidget   *child,
                                                const char  *menu_text);
/* Zeile entfernt */
const char * gtk_notebook_get_menu_label_text  (GtkNotebook *notebook,
						GtkWidget   *child);
/* Zeile entfernt */
void gtk_notebook_reorder_child           (GtkNotebook *notebook,
					   GtkWidget   *child,
					   int          position);
/* Zeile entfernt */
gboolean gtk_notebook_get_tab_reorderable (GtkNotebook *notebook,
					   GtkWidget   *child);
/* Zeile entfernt */
void gtk_notebook_set_tab_reorderable     (GtkNotebook *notebook,
					   GtkWidget   *child,
					   gboolean     reorderable);
/* Zeile entfernt */
gboolean gtk_notebook_get_tab_detachable  (GtkNotebook *notebook,
					   GtkWidget   *child);
/* Zeile entfernt */
void gtk_notebook_set_tab_detachable      (GtkNotebook *notebook,
					   GtkWidget   *child,
					   gboolean     detachable);
/* Zeile entfernt */
void gtk_notebook_detach_tab              (GtkNotebook *notebook,
                                           GtkWidget   *child);

/* Zeile entfernt */
GtkWidget* gtk_notebook_get_action_widget (GtkNotebook *notebook,
                                           GtkPackType  pack_type);
/* Zeile entfernt */
void       gtk_notebook_set_action_widget (GtkNotebook *notebook,
                                           GtkWidget   *widget,
                                           GtkPackType  pack_type);

/* Zeile entfernt */
GType   gtk_notebook_page_get_type  (void) ;

/* Zeile entfernt */
GtkNotebookPage *gtk_notebook_get_page (GtkNotebook *notebook,
                                        GtkWidget   *child);
/* Zeile entfernt */
GtkWidget *gtk_notebook_page_get_child (GtkNotebookPage *page);
/* Zeile entfernt */
GListModel *gtk_notebook_get_pages (GtkNotebook *notebook);

/* Zeile entfernt */

#endif /* __GTK_NOTEBOOK_H__ */
