/*
 * gtkinfobar.h
 * This file is part of GTK
 *
 * Copyright (C) 2005 - Paolo Maggi
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
 * Modified by the gedit Team, 2005. See the gedit AUTHORS file for a
 * list of people on the gedit Team.
 * See the gedit ChangeLog files for a list of changes.
 *
 * Modified by the GTK+ Team, 2008-2009.
 */

#pragma once

#if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gtk/gtk.h> can be included directly."
#endif

#include <gtk/gtkwidget.h>
#include <gtk/gtkenums.h>



#define GTK_TYPE_INFO_BAR              (gtk_info_bar_get_type())
#define GTK_INFO_BAR(obj)              (G_TYPE_CHECK_INSTANCE_CAST((obj), GTK_TYPE_INFO_BAR, GtkInfoBar))
#define GTK_IS_INFO_BAR(obj)           (G_TYPE_CHECK_INSTANCE_TYPE((obj), GTK_TYPE_INFO_BAR))

typedef struct _GtkInfoBar GtkInfoBar;


GType          gtk_info_bar_get_type               (void) ;

GtkWidget     *gtk_info_bar_new                    (void);


GtkWidget     *gtk_info_bar_new_with_buttons       (const char     *first_button_text,
                                                    ...);


void           gtk_info_bar_add_action_widget      (GtkInfoBar     *info_bar,
                                                    GtkWidget      *child,
                                                    int             response_id);

void           gtk_info_bar_remove_action_widget   (GtkInfoBar     *info_bar,
                                                    GtkWidget      *widget);

GtkWidget     *gtk_info_bar_add_button             (GtkInfoBar     *info_bar,
                                                    const char     *button_text,
                                                    int             response_id);

void           gtk_info_bar_add_buttons            (GtkInfoBar     *info_bar,
                                                    const char     *first_button_text,
                                                    ...);

void           gtk_info_bar_add_child              (GtkInfoBar     *info_bar,
                                                    GtkWidget      *widget);

void           gtk_info_bar_remove_child           (GtkInfoBar     *info_bar,
                                                    GtkWidget      *widget);


void           gtk_info_bar_set_response_sensitive (GtkInfoBar     *info_bar,
                                                    int             response_id,
                                                    gboolean        setting);

void           gtk_info_bar_set_default_response   (GtkInfoBar     *info_bar,
                                                    int             response_id);


void           gtk_info_bar_response               (GtkInfoBar     *info_bar,
                                                    int             response_id);


void           gtk_info_bar_set_message_type       (GtkInfoBar     *info_bar,
                                                    GtkMessageType  message_type);

GtkMessageType gtk_info_bar_get_message_type       (GtkInfoBar     *info_bar);


void           gtk_info_bar_set_show_close_button  (GtkInfoBar     *info_bar,
                                                    gboolean        setting);

gboolean       gtk_info_bar_get_show_close_button  (GtkInfoBar     *info_bar);


void           gtk_info_bar_set_revealed           (GtkInfoBar     *info_bar,
                                                    gboolean        revealed);

gboolean       gtk_info_bar_get_revealed           (GtkInfoBar     *info_bar);





