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

#pragma once


#if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gtk/gtk.h> can be included directly."
#endif

#include <gtk/gtkwidget.h>




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


GType   gtk_notebook_get_type       (void) ;

GtkWidget * gtk_notebook_new        (void);

int gtk_notebook_append_page        (GtkNotebook *notebook,
				     GtkWidget   *child,
				     GtkWidget   *tab_label);

int gtk_notebook_append_page_menu   (GtkNotebook *notebook,
				     GtkWidget   *child,
				     GtkWidget   *tab_label,
				     GtkWidget   *menu_label);

int gtk_notebook_prepend_page       (GtkNotebook *notebook,
				     GtkWidget   *child,
				     GtkWidget   *tab_label);

int gtk_notebook_prepend_page_menu  (GtkNotebook *notebook,
				     GtkWidget   *child,
				     GtkWidget   *tab_label,
				     GtkWidget   *menu_label);

int gtk_notebook_insert_page        (GtkNotebook *notebook,
				     GtkWidget   *child,
				     GtkWidget   *tab_label,
				     int          position);

int gtk_notebook_insert_page_menu   (GtkNotebook *notebook,
				     GtkWidget   *child,
				     GtkWidget   *tab_label,
				     GtkWidget   *menu_label,
				     int          position);

void gtk_notebook_remove_page       (GtkNotebook *notebook,
				     int          page_num);

/***********************************************************
 *           Tabs drag and drop                            *
 ***********************************************************/


void         gtk_notebook_set_group_name (GtkNotebook *notebook,
                                          const char  *group_name);

const char *gtk_notebook_get_group_name  (GtkNotebook *notebook);



/***********************************************************
 *            query, set current NotebookPage              *
 ***********************************************************/


int        gtk_notebook_get_current_page (GtkNotebook *notebook);

GtkWidget* gtk_notebook_get_nth_page     (GtkNotebook *notebook,
					  int          page_num);

int        gtk_notebook_get_n_pages      (GtkNotebook *notebook);

int        gtk_notebook_page_num         (GtkNotebook *notebook,
					  GtkWidget   *child);

void       gtk_notebook_set_current_page (GtkNotebook *notebook,
					  int          page_num);

void       gtk_notebook_next_page        (GtkNotebook *notebook);

void       gtk_notebook_prev_page        (GtkNotebook *notebook);

/***********************************************************
 *            set Notebook, NotebookTab style              *
 ***********************************************************/


void     gtk_notebook_set_show_border      (GtkNotebook     *notebook,
					    gboolean         show_border);

gboolean gtk_notebook_get_show_border      (GtkNotebook     *notebook);

void     gtk_notebook_set_show_tabs        (GtkNotebook     *notebook,
					    gboolean         show_tabs);

gboolean gtk_notebook_get_show_tabs        (GtkNotebook     *notebook);

void     gtk_notebook_set_tab_pos          (GtkNotebook     *notebook,
				            GtkPositionType  pos);

GtkPositionType gtk_notebook_get_tab_pos   (GtkNotebook     *notebook);

void     gtk_notebook_set_scrollable       (GtkNotebook     *notebook,
					    gboolean         scrollable);

gboolean gtk_notebook_get_scrollable       (GtkNotebook     *notebook);

/***********************************************************
 *               enable/disable PopupMenu                  *
 ***********************************************************/


void gtk_notebook_popup_enable  (GtkNotebook *notebook);

void gtk_notebook_popup_disable (GtkNotebook *notebook);

/***********************************************************
 *             query/set NotebookPage Properties           *
 ***********************************************************/


GtkWidget * gtk_notebook_get_tab_label    (GtkNotebook *notebook,
					   GtkWidget   *child);

void gtk_notebook_set_tab_label           (GtkNotebook *notebook,
					   GtkWidget   *child,
					   GtkWidget   *tab_label);

void          gtk_notebook_set_tab_label_text (GtkNotebook *notebook,
                                               GtkWidget   *child,
                                               const char  *tab_text);

const char * gtk_notebook_get_tab_label_text  (GtkNotebook *notebook,
                                               GtkWidget   *child);

GtkWidget * gtk_notebook_get_menu_label   (GtkNotebook *notebook,
					   GtkWidget   *child);

void gtk_notebook_set_menu_label          (GtkNotebook *notebook,
					   GtkWidget   *child,
					   GtkWidget   *menu_label);

void          gtk_notebook_set_menu_label_text (GtkNotebook *notebook,
                                                GtkWidget   *child,
                                                const char  *menu_text);

const char * gtk_notebook_get_menu_label_text  (GtkNotebook *notebook,
						GtkWidget   *child);

void gtk_notebook_reorder_child           (GtkNotebook *notebook,
					   GtkWidget   *child,
					   int          position);

gboolean gtk_notebook_get_tab_reorderable (GtkNotebook *notebook,
					   GtkWidget   *child);

void gtk_notebook_set_tab_reorderable     (GtkNotebook *notebook,
					   GtkWidget   *child,
					   gboolean     reorderable);

gboolean gtk_notebook_get_tab_detachable  (GtkNotebook *notebook,
					   GtkWidget   *child);

void gtk_notebook_set_tab_detachable      (GtkNotebook *notebook,
					   GtkWidget   *child,
					   gboolean     detachable);

void gtk_notebook_detach_tab              (GtkNotebook *notebook,
                                           GtkWidget   *child);


GtkWidget* gtk_notebook_get_action_widget (GtkNotebook *notebook,
                                           GtkPackType  pack_type);

void       gtk_notebook_set_action_widget (GtkNotebook *notebook,
                                           GtkWidget   *widget,
                                           GtkPackType  pack_type);


GType   gtk_notebook_page_get_type  (void) ;


GtkNotebookPage *gtk_notebook_get_page (GtkNotebook *notebook,
                                        GtkWidget   *child);

GtkWidget *gtk_notebook_page_get_child (GtkNotebookPage *page);

GListModel *gtk_notebook_get_pages (GtkNotebook *notebook);





