#define G_DECLARE_INTERFACE(ModuleObjName, module_obj_name, MODULE, OBJ_NAME, PrerequisiteName) \
  GType module_obj_name##_get_type (void);                                                                 \
  G_GNUC_BEGIN_IGNORE_DEPRECATIONS                                                                         \
  typedef struct _##ModuleObjName ModuleObjName;                                                           \
  typedef struct _##ModuleObjName##Interface ModuleObjName##Interface;                                     \
                                                                                                           \
  _GLIB_DEFINE_AUTOPTR_CHAINUP (ModuleObjName, PrerequisiteName)                                           \
                                                                                                           \
  G_GNUC_UNUSED static inline ModuleObjName * MODULE##_##OBJ_NAME (gpointer ptr) {                         \
    return G_TYPE_CHECK_INSTANCE_CAST (ptr, module_obj_name##_get_type (), ModuleObjName); }               \
  G_GNUC_UNUSED static inline gboolean MODULE##_IS_##OBJ_NAME (gpointer ptr) {                             \
    return G_TYPE_CHECK_INSTANCE_TYPE (ptr, module_obj_name##_get_type ()); }                              \
  G_GNUC_UNUSED static inline ModuleObjName##Interface * MODULE##_##OBJ_NAME##_GET_IFACE (gpointer ptr) {  \
    return G_TYPE_INSTANCE_GET_INTERFACE (ptr, module_obj_name##_get_type (), ModuleObjName##Interface); } \
  G_GNUC_END_IGNORE_DEPRECATIONS
