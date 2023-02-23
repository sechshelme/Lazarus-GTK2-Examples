#pragma once

#if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gtk/gtk.h> can be included directly."
#endif

#include <gtk/gtktypes.h>

/* Zeile entfernt */

#define GTK_TYPE_LAYOUT_CHILD (gtk_layout_child_get_type())

/* Zeile entfernt */
/* Zeile entfernt */

struct _GtkLayoutChildClass
{
  /*< private >*/
  GObjectClass parent_class;
};

/* Zeile entfernt */
GtkLayoutManager *      gtk_layout_child_get_layout_manager     (GtkLayoutChild *layout_child);
/* Zeile entfernt */
GtkWidget *             gtk_layout_child_get_child_widget       (GtkLayoutChild *layout_child);

/* Zeile entfernt */
