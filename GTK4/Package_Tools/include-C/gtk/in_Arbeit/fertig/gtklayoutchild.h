#pragma once

#if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gtk/gtk.h> can be included directly."
#endif

#include <gtk/gtktypes.h>



#define GTK_TYPE_LAYOUT_CHILD (gtk_layout_child_get_type())


//G_DECLARE_DERIVABLE_TYPE (GtkLayoutChild, gtk_layout_child, GTK, LAYOUT_CHILD, GObject)

struct _GtkLayoutChildClass
{
  /*< private >*/
  GObjectClass parent_class;
};


GtkLayoutManager *      gtk_layout_child_get_layout_manager     (GtkLayoutChild *layout_child);

GtkWidget *             gtk_layout_child_get_child_widget       (GtkLayoutChild *layout_child);


