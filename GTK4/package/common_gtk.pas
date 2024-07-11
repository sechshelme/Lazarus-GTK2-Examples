unit common_GTK;

interface

//  https://gitlab.com/freepascal.org/lazarus/lazarus/-/tree/main/tools/gir2pascal

uses
  ctypes, glib2;

const
  gtklib = 'libgtk-4.so';
  libgio = 'libgio-2.0.so.0';
  gobjectlib = 'libgobject-2.0.so';

type
  Tgpointer = gpointer;
  TGType = GType;
  Tgboolean = gboolean;

  Tgchar = gchar;

  Tgint = gint;
  Tguint = guint;

  Tgint8 = gint8;
  Tguint8 = guint8;
  Tgint16 = gint16;
  Tugint16 = guint16;
  Tgint32 = gint32;
  Tguint32 = guint32;
  Tgint64 = gint64;
  Tguint64 = guint64;

  Tdouble = double;

  Tgssize = gssize;
  Pgssize = ^Tgssize;

  PGObject = ^TGObject;

  TGObject = record
    g_type_instance: TGTypeInstance;
    ref_count: guint;
    qdata: PGData;
  end;

  TGInitiallyUnowned = TGObject;

  TGtkTooltip = Pointer; // _GtkTooltip
  PGtkTooltip = ^TGtkTooltip;

  TGtkCssStyleChange = Pointer; // _GtkCssStyleChange
  PGtkCssStyleChange = ^TGtkCssStyleChange;

  TGtkSnapshot = Pointer; //  typedef GdkSnapshot                    GtkSnapshot;
  PGtkSnapshot = ^TGtkSnapshot;

  TGskTransform = Pointer;    // _GskTransform   // /usr/include/gtk-4.0/gsk/gsktypes.h
  PGskTransform = ^TGskTransform;

  TGtkLayoutManager = Pointer;  // G_DECLARE_DERIVABLE_TYPE (GtkLayoutManager, gtk_layout_manager, GTK, LAYOUT_MANAGER, GObject)
  PGtkLayoutManager = ^TGtkLayoutManager;

  TGdkModifierType = longint;        // enum  //     /usr/include/gtk-4.0/gdk/gdkenums.h
  PGdkModifierType = ^TGdkModifierType;


  TGtkShortcutFunc = Pointer; // typedef gboolean (* GtkShortcutFunc) (GtkWidget *widget, GVariant  *args, gpointer   user_data);
  TPGtkShortcutFunc = ^TGtkShortcutFunc;

  TGtkShortcut = Pointer;// G_DECLARE_FINAL_TYPE (GtkShortcut, gtk_shortcut, GTK, SHORTCUT, GObject)
  PGtkShortcut = ^TGtkShortcut;

  TGtkRoot = Pointer;// G_DECLARE_INTERFACE (GtkRoot, gtk_root, GTK, ROOT, GtkWidget)  // gtkroot.h
  PGtkRoot = ^TGtkRoot;

  TGtkNative = Pointer;                     //  G_DECLARE_INTERFACE (GtkNative, gtk_native, GTK, NATIVE, GtkWidget)  // gtknative.h
  PGtkNative = ^TGtkNative;

  Tgraphene_matrix_t = Pointer; //    /usr/include/graphene-1.0/graphene-matrix.h
  Pgraphene_matrix_t = ^Tgraphene_matrix_t;
  Tgraphene_rect_t = Pointer;
  Pgraphene_rect_t = ^Tgraphene_rect_t;
  Tgraphene_point_t = Pointer;
  Pgraphene_point_t = ^Tgraphene_point_t;

  TGtkSettings = Pointer;  // _GtkSettings
  PGtkSettings = ^TGtkSettings;
  TGdkClipboard = Pointer;  // _GdkClipboard
  PGdkClipboard = ^TGdkClipboard;
  TGtkEventController = Pointer; // _GtkEventController
  PGtkEventController = ^TGtkEventController;
  TGdkCursor = Pointer;  // _GdkCursor
  PGdkCursor = ^TGdkCursor;

  TGActionGroup = Pointer;       // _GActionGroup
  PGActionGroup = ^TGActionGroup;

  TGVariant = Pointer;   // _GVariant
  PGVariant = ^TGVariant;
  TGVariantType = Pointer; // _GVariantType
  PGVariantType = TGVariantType;
  PPGVariantType = ^PGVariantType;


  TGBytes = Pointer; // garray.h
  PGBytes = ^TGBytes;

  TGtkBuilderScope = Pointer;// G_DECLARE_INTERFACE (GtkBuilderScope, gtk_builder_scope, GTK, BUILDER_SCOPE, GObject)        // /usr/include/gtk-4.0/gtk/gtkbuilderscope.h
  PGtkBuilderScope = ^TGtkBuilderScope;

  TGtkStyleContext = record      // /usr/include/gtk-4.0/gtk/gtkstylecontext.h
    parent_object: TGObject;
  end;
  PGtkStyleContext = ^TGtkStyleContext;


  //  typedef cairo_rectangle_int_t         GdkRectangle;    // /usr/include/gtk-4.0/gdk/gdktypes.h
  TGdkRectangle = record
    x, y, Width, Height: cint;
  end;
  PGdkRectangle = ^TGdkRectangle;

  TGdkFrameClock = Pointer; //  typedef struct _GdkFrameClock              GdkFrameClock;     // /usr/include/gtk-4.0/gdk/gdkframeclock.h
  PGdkFrameClock = ^TGdkFrameClock;

  TGApplication = Pointer;        // rec  gapplication.h
  PGApplication = ^TGApplication;

  TGApplicationClass = Pointer; // rec  gobject.h
  PGApplicationClass = ^TGApplicationClass;

  TGApplicationFlags = integer; // gioenums.h
  TGMenuModel = Pointer;      // rec gmenumodel.h
  PGMenuModel = ^TGMenuModel;
  TGMenu = Pointer;   // _GMenu  gmenu.h
  PGMenu = ^TGMenu;

  TGdkDisplay = Pointer;       // _GdkDisplay
  PGdkDisplay = ^TGdkDisplay;

  TGdkMonitor = Pointer;        // _GdkMonitor
  PGdkMonitor = ^TGdkMonitor;

  TGtkWindowGroup = Pointer;   // rec
  PGtkWindowGroup = ^TGtkWindowGroup;

  TGtkShortcutsWindow = Pointer;  //  == _GtkShortcutsWindow
  PGtkShortcutsWindow = ^TGtkShortcutsWindow;

  TGListModel = Pointer;         // ???
  PGListModel = ^TGListModel;


  // === Zwingend ausgelagertes
  // gtkapplicationwindow.h /
  TGtkApplication = record
    parent_instance: TGApplication;
  end;
  PGtkApplication = ^TGtkApplication;

  // ????????'
  // function gtk_ordering_from_cmpfunc(cmpfunc_result:longint):TGtkOrdering;cdecl;external;



  // ==========

  TGDateTime=Pointer; //  _GDateTime       /usr/include/glib-2.0/glib/gdatetime.h
  PGDateTime=^TGDateTime;

  PGTypeClass = ^TGTypeClass;

  TGTypeClass = record
    g_type: GType;
  end;

  PGTypeInstance = ^TGTypeInstance;

  TGTypeInstance = record
    g_class: PGTypeClass;
  end;

function g_type_check_instance_cast(wid: PGTypeInstance; iface_type: TGType): PGTypeInstance; cdecl; external gtklib;
function g_type_check_instance_is_a(instance: PGTypeInstance; iface_type: GType): gboolean; cdecl; external gobjectlib;

function g_type_check_class_cast(g_class: PGTypeClass; is_a_type: TGType): PGTypeClass; cdecl; external gtklib;
function g_type_check_class_is_a(instance: PGTypeClass; is_a_type: GType): gboolean; cdecl; external gobjectlib;


implementation

end.
