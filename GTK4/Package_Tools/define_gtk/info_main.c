//
// gcc main.c -o main
// gcc main.c -o main `pkg-config gtk4 --libs --cflags`
//

#include <stdlib.h>
#include <gtk/gtk.h>
#include <stdio.h>

#define mul(x, y) (x * y + 10)

//G_DECLARE_FINAL_TYPE (GtkWindowControls, gtk_window_controls, GTK, WINDOW_CONTROLS, GtkWidget)

int main() {
  printf("Multi: %d\n", mul(3, 4));

  GtkWindowControls *wk = gtk_window_controls_new(0);

  gboolean is;
  is = GTK_IS_WINDOW_CONTROLS(wk);
}




extern GType gtk_window_controls_get_type (void);
# 32 "/usr/include/gtk-4.0/gtk/gtkwindowcontrols.h"
#pragma GCC diagnostic push
# 32 "/usr/include/gtk-4.0/gtk/gtkwindowcontrols.h"

# 32 "/usr/include/gtk-4.0/gtk/gtkwindowcontrols.h"
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"
# 32 "/usr/include/gtk-4.0/gtk/gtkwindowcontrols.h"


typedef struct _GtkWindowControls GtkWindowControls; 
typedef struct { 
  GtkWidgetClass parent_class; 
} GtkWindowControlsClass; 

typedef GtkWindowControls *GtkWindowControls_autoptr; 


typedef GList *GtkWindowControls_listautoptr; 
typedef GSList *GtkWindowControls_slistautoptr; 
typedef GQueue *GtkWindowControls_queueautoptr;

# 32 "/usr/include/gtk-4.0/gtk/gtkwindowcontrols.h"
#pragma GCC diagnostic push
# 32 "/usr/include/gtk-4.0/gtk/gtkwindowcontrols.h"

# 32 "/usr/include/gtk-4.0/gtk/gtkwindowcontrols.h"
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"
# 32 "/usr/include/gtk-4.0/gtk/gtkwindowcontrols.h"
 static __attribute__ ((__unused__)) inline void glib_autoptr_clear_GtkWindowControls (GtkWindowControls *_ptr) { if (_ptr) (glib_autoptr_clear_GtkWidget) ((GtkWidget *) _ptr); } static __attribute__ ((__unused__)) inline void glib_autoptr_cleanup_GtkWindowControls (GtkWindowControls **_ptr) { glib_autoptr_clear_GtkWindowControls (*_ptr); } static __attribute__ ((__unused__)) inline void glib_listautoptr_cleanup_GtkWindowControls (GList **_l) { g_list_free_full (*_l, (GDestroyNotify) (void(*)(void)) glib_autoptr_clear_GtkWidget); } static __attribute__ ((__unused__)) inline void glib_slistautoptr_cleanup_GtkWindowControls (GSList **_l) { g_slist_free_full (*_l, (GDestroyNotify) (void(*)(void)) glib_autoptr_clear_GtkWidget); } static __attribute__ ((__unused__)) inline void glib_queueautoptr_cleanup_GtkWindowControls (GQueue **_q) { if (*_q) g_queue_free_full (*_q, (GDestroyNotify) (void(*)(void)) glib_autoptr_clear_GtkWidget); }
# 32 "/usr/include/gtk-4.0/gtk/gtkwindowcontrols.h"
#pragma GCC diagnostic pop

typedef GtkWindowControlsClass *GtkWindowControlsClass_autoptr; 
typedef GList *GtkWindowControlsClass_listautoptr; 
typedef GSList *GtkWindowControlsClass_slistautoptr; 
typedef GQueue *GtkWindowControlsClass_queueautoptr;

#pragma GCC diagnostic push

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

static __attribute__ ((__unused__)) inline void glib_autoptr_clear_GtkWindowControlsClass (GtkWindowControlsClass *_ptr) { 
  if (_ptr) (g_type_class_unref) ((GtkWindowControlsClass *) _ptr); 
} 

static __attribute__ ((__unused__)) inline void glib_autoptr_cleanup_GtkWindowControlsClass (GtkWindowControlsClass **_ptr) { 
  glib_autoptr_clear_GtkWindowControlsClass (*_ptr); 
} 

static __attribute__ ((__unused__)) inline void glib_listautoptr_cleanup_GtkWindowControlsClass (GList **_l) { 
  g_list_free_full (*_l, (GDestroyNotify) (void(*)(void)) g_type_class_unref); 
} 

static __attribute__ ((__unused__)) inline void glib_slistautoptr_cleanup_GtkWindowControlsClass (GSList **_l) { 
  g_slist_free_full (*_l, (GDestroyNotify) (void(*)(void)) g_type_class_unref); 
} 

static __attribute__ ((__unused__)) inline void glib_queueautoptr_cleanup_GtkWindowControlsClass (GQueue **_q) { 
  if (*_q) g_queue_free_full (*_q, (GDestroyNotify) (void(*)(void)) g_type_class_unref); 

}

 __attribute__ ((__unused__)) static inline GtkWindowControls * GTK_WINDOW_CONTROLS (gpointer ptr) { 
  return (((GtkWindowControls*) (void *) g_type_check_instance_cast ((GTypeInstance*) (ptr), (gtk_window_controls_get_type ())))); 
} 

__attribute__ ((__unused__)) static inline gboolean GTK_IS_WINDOW_CONTROLS (gpointer ptr) { 
  return ((__extension__ ( { 
    GTypeInstance *__inst = (GTypeInstance*) (ptr); GType __t = (gtk_window_controls_get_type ()); gboolean __r; if (!__inst) __r = (0); else if (__inst->g_class && __inst->g_class->g_type == __t) __r = (!(0)); else __r = g_type_check_instance_is_a (__inst, __t); __r; 
  }
  ))); 
}


