unit common_GTK;

interface

//  https://gitlab.com/freepascal.org/lazarus/lazarus/-/tree/main/tools/gir2pascal

uses
  ctypes, glib2,pango;

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

  PPguint = ^Pguint;

  Tdouble = double;

  Tgsize = gsize;
  Tgssize = gssize;
  Pgssize = ^Tgssize;

  PPPangoFontDescription = ^PPangoFontDescription; // Pango Erweiterung
  PPPangoLanguage  =^PPangoLanguage;

  Tgconstpointer = gconstpointer;

  TGInitiallyUnowned = TGObject;

  TGtkTooltip = Pointer; // _GtkTooltip
  PGtkTooltip = ^TGtkTooltip;

  TGtkCssStyleChange = Pointer; // _GtkCssStyleChange
  PGtkCssStyleChange = ^TGtkCssStyleChange;

  TGtkSnapshot = Pointer; //  typedef GdkSnapshot                    GtkSnapshot;
  PGtkSnapshot = ^TGtkSnapshot;

  TGskTransform = Pointer;    // _GskTransform   // /usr/include/gtk-4.0/gsk/gsktypes.h
  PGskTransform = ^TGskTransform;


  TGdkModifierType = longint;        // enum  //     /usr/include/gtk-4.0/gdk/gdkenums.h
  PGdkModifierType = ^TGdkModifierType;

  TGdkSurface = record  // _GdkSurface     /usr/include/gtk-4.0/gdk/gdktypes.h
  end;
  PGdkSurface = ^TGdkSurface;

  TGskRenderer = record  // _GskRenderer       // /usr/include/gtk-4.0/gsk/gsktypes.h
  end;
  PGskRenderer = ^TGskRenderer;



  TGdkEvent=record // _GdkEvent      /usr/include/gtk-4.0/gdk/gdkevents.h
  end;
  PGdkEvent=^TGdkEvent;

  TGdkKeyMatch=LongInt;    // enum             /usr/include/gtk-4.0/gdk/gdkevents.h
  PGdkKeyMatch=^TGdkKeyMatch;


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


  TGdkPaintable = Pointer;  ///G_DECLARE_INTERFACE (GdkPaintable, gdk_paintable, GDK, PAINTABLE, GObject)  // /usr/include/gtk-4.0/gdk/gdkpaintable.h
  PGdkPaintable = ^TGdkPaintable;



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

  TGAsyncResult = Pointer; // _GAsyncResult      // /usr/include/glib-2.0/gio/giotypes.h
  PGAsyncResult = ^TGAsyncResult;

  TGCancellablePrivate = Pointer; // _GCancellablePrivate
  PGCancellablePrivate = ^TGCancellablePrivate;

  TGCancellable = record      // giotypes.h &   /usr/include/glib-2.0/gio/gcancellable.h
    parent_instance: TGObject;
    priv: PGCancellablePrivate;
  end;
  PGCancellable = ^TGCancellable;

  TGAsyncReadyCallback = procedure(source_object: PGObject; res: PGAsyncResult; user_data: Tgpointer); cdecl;   // /usr/include/glib-2.0/gio/giotypes.h

  TGInitiallyUnownedClass = TGObjectClass;  // gobject.h
  PGInitiallyUnownedClass = ^TGInitiallyUnownedClass;




  // === Zwingend ausgelagertes
  // gtkapplicationwindow.h /
  TGtkApplication = record
    parent_instance: TGApplication;
  end;
  PGtkApplication = ^TGtkApplication;

  // ????????'
  // function gtk_ordering_from_cmpfunc(cmpfunc_result:longint):TGtkOrdering;cdecl;external;



  // ==========

  TGDateTime = Pointer; //  _GDateTime       /usr/include/glib-2.0/glib/gdatetime.h
  PGDateTime = ^TGDateTime;

  PGTypeClass = ^TGTypeClass;

  TGTypeClass = record
    g_type: GType;
  end;

  PGTypeInstance = ^TGTypeInstance;

  TGTypeInstance = record
    g_class: PGTypeClass;
  end;

  TGdkRGBA = Pointer;  // _GdkRGBA     /usr/include/gtk-4.0/gdk/gdkrgba.h
  PGdkRGBA = ^TGdkRGBA;



function g_type_check_instance_cast(wid: PGTypeInstance; iface_type: TGType): PGTypeInstance; cdecl; external gtklib;
function g_type_check_instance_is_a(instance: PGTypeInstance; iface_type: GType): gboolean; cdecl; external gobjectlib;

function g_type_check_class_cast(g_class: PGTypeClass; is_a_type: TGType): PGTypeClass; cdecl; external gtklib;
function g_type_check_class_is_a(instance: PGTypeClass; is_a_type: GType): gboolean; cdecl; external gobjectlib;

// ------ libgio
function g_application_run(application: Pointer; argc: longint; argv: PPchar): longint; cdecl; external libgio;

// ------ glib
function g_signal_connect(instance: gpointer; detailed_signal: Pgchar; c_handler: TGCallback; Data: gpointer): gulong;
function G_CALLBACK(f: pointer): TGCallback;

// -------------------


implementation

function g_signal_connect(instance: gpointer; detailed_signal: Pgchar; c_handler: TGCallback; Data: gpointer): gulong;
begin
  g_signal_connect := g_signal_connect_data(instance, detailed_signal, c_handler, Data, nil, 0);
end;

function G_CALLBACK(f: pointer): TGCallback;
begin
  G_CALLBACK := TGCallback(f);
end;

end.
