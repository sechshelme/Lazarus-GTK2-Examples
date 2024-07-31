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

#include <gtk/gtkapplication.h>
#include <gtk/gtkaccelgroup.h>
#include <gtk/gtkwidget.h>



#define GTK_TYPE_WINDOW			(gtk_window_get_type ())
#define GTK_WINDOW(obj)			(G_TYPE_CHECK_INSTANCE_CAST ((obj), GTK_TYPE_WINDOW, GtkWindow))
#define GTK_WINDOW_CLASS(klass)		(G_TYPE_CHECK_CLASS_CAST ((klass), GTK_TYPE_WINDOW, GtkWindowClass))
#define GTK_IS_WINDOW(obj)		(G_TYPE_CHECK_INSTANCE_TYPE ((obj), GTK_TYPE_WINDOW))
#define GTK_IS_WINDOW_CLASS(klass)	(G_TYPE_CHECK_CLASS_TYPE ((klass), GTK_TYPE_WINDOW))
#define GTK_WINDOW_GET_CLASS(obj)       (G_TYPE_INSTANCE_GET_CLASS ((obj), GTK_TYPE_WINDOW, GtkWindowClass))

typedef struct _GtkWindowClass        GtkWindowClass;
typedef struct _GtkWindowGroup        GtkWindowGroup;
typedef struct _GtkWindowGroupClass   GtkWindowGroupClass;
typedef struct _GtkWindowGroupPrivate GtkWindowGroupPrivate;

struct _GtkWindow
{
  GtkWidget parent_instance;
};

/**
 * GtkWindowClass:
 * @parent_class: The parent class.
 * @activate_focus: Activates the current focused widget within the window.
 * @activate_default: Activates the default widget for the window.
 * @keys_changed: Signal gets emitted when the set of accelerators or
 *   mnemonics that are associated with window changes.
 * @enable_debugging: Class handler for the `GtkWindow::enable-debugging`
 *   keybinding signal.
 * @close_request: Class handler for the `GtkWindow::close-request` signal.
 */
struct _GtkWindowClass
{
  GtkWidgetClass parent_class;

  /*< public >*/

  /* G_SIGNAL_ACTION signals for keybindings */

  void     (* activate_focus)   (GtkWindow *window);
  void     (* activate_default) (GtkWindow *window);
  void	   (* keys_changed)     (GtkWindow *window);
  gboolean (* enable_debugging) (GtkWindow *window,
                                 gboolean   toggle);
  gboolean (* close_request)    (GtkWindow *window);

  /*< private >*/
  gpointer padding[8];
};


GType      gtk_window_get_type                 (void) ;

GtkWidget* gtk_window_new                      (void);

void       gtk_window_set_title                (GtkWindow           *window,
						const char          *title);

const char * gtk_window_get_title             (GtkWindow           *window);

void       gtk_window_set_startup_id           (GtkWindow           *window,
                                                const char          *startup_id);

void       gtk_window_set_focus                (GtkWindow           *window,
						GtkWidget           *focus);

GtkWidget *gtk_window_get_focus                (GtkWindow           *window);

void       gtk_window_set_default_widget       (GtkWindow           *window,
						GtkWidget           *default_widget);

GtkWidget *gtk_window_get_default_widget       (GtkWindow           *window);


void       gtk_window_set_transient_for        (GtkWindow           *window,
						GtkWindow           *parent);

GtkWindow *gtk_window_get_transient_for        (GtkWindow           *window);

void       gtk_window_set_destroy_with_parent  (GtkWindow           *window,
                                                gboolean             setting);

gboolean   gtk_window_get_destroy_with_parent  (GtkWindow           *window);

void       gtk_window_set_hide_on_close        (GtkWindow           *window,
                                                gboolean             setting);

gboolean   gtk_window_get_hide_on_close        (GtkWindow           *window);

void       gtk_window_set_mnemonics_visible    (GtkWindow           *window,
                                                gboolean             setting);

gboolean   gtk_window_get_mnemonics_visible    (GtkWindow           *window);

void       gtk_window_set_focus_visible        (GtkWindow           *window,
                                                gboolean             setting);

gboolean   gtk_window_get_focus_visible        (GtkWindow           *window);


void       gtk_window_set_resizable            (GtkWindow           *window,
                                                gboolean             resizable);

gboolean   gtk_window_get_resizable            (GtkWindow           *window);


void	   gtk_window_set_display              (GtkWindow	    *window,
						GdkDisplay          *display);


gboolean   gtk_window_is_active                (GtkWindow           *window);


void       gtk_window_set_decorated            (GtkWindow *window,
                                                gboolean   setting);

gboolean   gtk_window_get_decorated            (GtkWindow *window);

void       gtk_window_set_deletable            (GtkWindow *window,
                                                gboolean   setting);

gboolean   gtk_window_get_deletable            (GtkWindow *window);


void       gtk_window_set_icon_name                (GtkWindow   *window,
						    const char *name);

const char * gtk_window_get_icon_name             (GtkWindow  *window);

void       gtk_window_set_default_icon_name        (const char *name);

const char * gtk_window_get_default_icon_name     (void);


void       gtk_window_set_auto_startup_notification (gboolean setting);

/* If window is set modal, input will be grabbed when show and released when hide */

void       gtk_window_set_modal      (GtkWindow *window,
				      gboolean   modal);

gboolean   gtk_window_get_modal      (GtkWindow *window);

GListModel *gtk_window_get_toplevels (void);

GList*     gtk_window_list_toplevels (void);


void     gtk_window_present            (GtkWindow *window);
//_FOR(gtk_window_present)
void     gtk_window_present_with_time  (GtkWindow *window,
				        guint32    timestamp);

void     gtk_window_minimize      (GtkWindow *window);

void     gtk_window_unminimize    (GtkWindow *window);

void     gtk_window_maximize      (GtkWindow *window);

void     gtk_window_unmaximize    (GtkWindow *window);

void     gtk_window_fullscreen    (GtkWindow *window);

void     gtk_window_unfullscreen  (GtkWindow *window);

void     gtk_window_fullscreen_on_monitor (GtkWindow  *window,
                                           GdkMonitor *monitor);

void     gtk_window_close         (GtkWindow *window);

/* Set initial default size of the window (does not constrain user
 * resize operations)
 */

void     gtk_window_set_default_size (GtkWindow   *window,
                                      int          width,
                                      int          height);

void     gtk_window_get_default_size (GtkWindow   *window,
                                      int         *width,
                                      int         *height);


GtkWindowGroup *gtk_window_get_group (GtkWindow   *window);

gboolean gtk_window_has_group        (GtkWindow   *window);



GtkApplication *gtk_window_get_application      (GtkWindow          *window);

void            gtk_window_set_application      (GtkWindow          *window,
                                                 GtkApplication     *application);


void     gtk_window_set_child              (GtkWindow    *window,
                                            GtkWidget    *child);

GtkWidget *gtk_window_get_child            (GtkWindow    *window);


void     gtk_window_set_titlebar           (GtkWindow    *window,
                                            GtkWidget    *titlebar);

GtkWidget *gtk_window_get_titlebar         (GtkWindow    *window);


gboolean gtk_window_is_maximized           (GtkWindow    *window);


gboolean gtk_window_is_fullscreen          (GtkWindow    *window);


gboolean gtk_window_is_suspended           (GtkWindow    *window);


void     gtk_window_destroy                (GtkWindow    *window);


void     gtk_window_set_interactive_debugging (gboolean enable);


void     gtk_window_set_handle_menubar_accel (GtkWindow *window,
                                              gboolean   handle_menubar_accel);

gboolean gtk_window_get_handle_menubar_accel (GtkWindow *window);






