//
// gcc main.c -o main
//

#include <stdio.h>

#define DECLARE(a, b, c)  void a##b() { printf("Hello World: %i\n", c); };

DECLARE(Aus, gabe, 123)

int main() {
  Ausgabe();
}

// G_DECLARE_XXX (GtkFilter, gtk_filter, GTK, FILTER, GObject)


// ===========================
#define G_DECLARE_FINAL_TYPE(ModuleObjName, module_obj_name, MODULE, OBJ_NAME, ParentName) 

  GType gtk_filter_get_type (void);                                                               

  typedef struct _GtkFilter GtkFilter;                                                         
  typedef struct { 
    GObjectClass parent_class; 
  } GtkFilterClass;                               
                                                                                                         
                                                                                                         
  GtkFilter * GTK_FILTER (gpointer ptr) {                       
    return G_TYPE_CHECK_INSTANCE_CAST (ptr, gtk_filter_get_type (), GtkFilter); 
  }   
          
  gboolean GTK_IS_FILTER (gpointer ptr) {                           
    return G_TYPE_CHECK_INSTANCE_TYPE (ptr, gtk_filter_get_type ()); 
  }                            


// ===========================
#define G_DECLARE_DERIVABLE_TYPE(ModuleObjName, module_obj_name, MODULE, OBJ_NAME, ParentName) 

  GType gtk_filter_get_type (void);                                     
  typedef struct _GtkFilter GtkFilter;                                     
  struct _GtkFilter { 
    GObject parent_instance; 
  };                                             

  typedef struct _GtkFilterClass GtkFilterClass;                               
                                                                                                       
  GtkFilter * GTK_FILTER (gpointer ptr) {                       
    return G_TYPE_CHECK_INSTANCE_CAST (ptr, gtk_filter_get_type (), GtkFilter); 
  }             

  gboolean GTK_IS_FILTER (gpointer ptr) {                           
    return G_TYPE_CHECK_INSTANCE_TYPE (ptr, gtk_filter_get_type ()); 
  }                            
// -----
  GtkFilterClass * GTK_FILTER_CLASS (gpointer ptr) {        
    return G_TYPE_CHECK_CLASS_CAST (ptr, gtk_filter_get_type (), GtkFilterClass); 
  }         

  gboolean GTK_IS_FILTER_CLASS (gpointer ptr) {                   
    return G_TYPE_CHECK_CLASS_TYPE (ptr, gtk_filter_get_type ()); 
  }                               
  
  GtkFilterClass * GTK_FILTER_GET_CLASS (gpointer ptr) {    
    return G_TYPE_INSTANCE_GET_CLASS (ptr, gtk_filter_get_type (), GtkFilterClass); 
  }       


// ===========================
#define G_DECLARE_INTERFACE(ModuleObjName, module_obj_name, MODULE, OBJ_NAME, PrerequisiteName) 

  GType gtk_filter_get_type (void);                                                                 

  typedef struct _GtkFilter GtkFilter;                                                           
  typedef struct _GtkFilterInterface GtkFilterInterface;                                     
                                                                                                           
  GtkFilter * GTK_FILTER (gpointer ptr) {                         
    return G_TYPE_CHECK_INSTANCE_CAST (ptr, gtk_filter_get_type (), GtkFilter); 
  }               

  gboolean GTK_IS_FILTER (gpointer ptr) {                             
    return G_TYPE_CHECK_INSTANCE_TYPE (ptr, gtk_filter_get_type ()); 
  }                              
// -----
  GtkFilterInterface * GTK_FILTER_GET_IFACE (gpointer ptr) {  
    return G_TYPE_INSTANCE_GET_INTERFACE (ptr, gtk_filter_get_type (), GtkFilterInterface); 
  } 


// ===========================
#define GDK_DECLARE_INTERNAL_TYPE(ModuleObjName, module_obj_name, MODULE, OBJ_NAME, ParentName) 

  GType gtk_filter_get_type (void);                                                               
  G_GNUC_BEGIN_IGNORE_DEPRECATIONS                                                                       
  typedef struct _GtkFilter GtkFilter;                                                         
  typedef struct _GtkFilterClass GtkFilterClass;                                           
                                                                                                         
                                                                                                         
  G_GNUC_UNUSED static inline GtkFilter * GTK_FILTER (gpointer ptr) {                       
    return G_TYPE_CHECK_INSTANCE_CAST (ptr, gtk_filter_get_type (), GtkFilter);
  }             
 
  G_GNUC_UNUSED static inline gboolean GTK_IS_FILTER (gpointer ptr) {                           
    return G_TYPE_CHECK_INSTANCE_TYPE (ptr, gtk_filter_get_type ()); 
  }                            

// -----
  G_GNUC_UNUSED static inline GtkFilterClass * GTK_FILTER_CLASS (gpointer ptr) {        
    return G_TYPE_CHECK_CLASS_CAST (ptr, gtk_filter_get_type (), GtkFilterClass); 
  }         

  G_GNUC_UNUSED static inline gboolean GTK_IS_FILTER_CLASS (gpointer ptr) {                   
    return G_TYPE_CHECK_CLASS_TYPE (ptr, gtk_filter_get_type ()); 
  }                               

  G_GNUC_UNUSED static inline GtkFilterClass * GTK_FILTER_GET_CLASS (gpointer ptr) {    
    return G_TYPE_INSTANCE_GET_CLASS (ptr, gtk_filter_get_type (), GtkFilterClass); 
  }       






