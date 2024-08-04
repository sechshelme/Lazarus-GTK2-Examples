unit common_GTK;

interface

uses
  ctypes, Cairo, glib2, pango;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

const
  {$IFDEF Linux}
  gtklib = 'libgtk-4';
  libgio = 'libgio-2.0';
  gobjectlib = 'libgobject-2.0';
  {$ENDIF}

  {$IFDEF Windows}
  gtklib = 'libgtk-4.dll';
  libgio = 'libgio-2.0.dll';
  gobjectlib = 'libgobject-2.0.dll';
  {$ENDIF}
  //const
  //  gtklib = 'libgtk-4.so';
  //  libgio = 'libgio-2.0.so.0';
  //  gobjectlib = 'libgobject-2.0.so';

type
  // === Exotisches
  Tsize_t = SizeUInt;

  Tva_list = Pointer; //  /usr/lib/gcc/x86_64-linux-gnu/11/include/stdarg.h

  Tgraphene_matrix_t = Pointer; //    /usr/include/graphene-1.0/graphene-matrix.h
  Pgraphene_matrix_t = ^Tgraphene_matrix_t;
  Tgraphene_rect_t = Pointer;
  Pgraphene_rect_t = ^Tgraphene_rect_t;
  Tgraphene_point_t = Pointer;
  Pgraphene_point_t = ^Tgraphene_point_t;
  Tgraphene_vec2_t = Pointer;        // /usr/include/graphene-1.0/graphene-vec3.h
  Pgraphene_vec2_t = ^Tgraphene_vec2_t;
  Tgraphene_vec3_t = Pointer;        // /usr/include/graphene-1.0/graphene-vec3.h
  Pgraphene_vec3_t = ^Tgraphene_vec3_t;
  Tgraphene_vec4_t = Pointer;        // /usr/include/graphene-1.0/graphene-vec4.h
  Pgraphene_vec4_t = ^Tgraphene_vec4_t;

  Tgraphene_size_t = record
    Width, Height: cfloat;
  end;
  Pgraphene_size_t = ^Tgraphene_size_t;  // /usr/include/graphene-1.0/graphene-size.h

  Tgraphene_point3d_t = record
    x, y, z: cfloat;
  end;
  Pgraphene_point3d_t = ^Tgraphene_point3d_t;

  Tcairo_content_t = cairo_content_t;

  // Wayland;

  Twl_surface = Pointer;
  Pwl_surface = ^Twl_surface;

  Twl_seat = Pointer;
  Pwl_seat = ^Twl_seat;

  Twl_output = Pointer;
  Pwl_output = ^Twl_output;

  Twl_display = Pointer;
  Pwl_display = ^Twl_display;

  Twl_compositor = Pointer;
  Pwl_compositor = ^Twl_compositor;

  Twl_pointer = Pointer;
  Pwl_pointer = ^Twl_pointer;

  Twl_keyboard = Pointer;
  Pwl_keyboard = ^Twl_keyboard;

  Txkb_keymap = Pointer;
  Pxkb_keymap = ^Txkb_keymap;




  // === Standard Typen
  Tgpointer = gpointer;
  TGType = GType;
  Tgboolean = gboolean;

  Tgchar = gchar;

  Tgint = gint;
  Tguint = guint;

  Tgint8 = gint8;
  Tguint8 = guint8;
  Tgint16 = gint16;
  Tguint16 = guint16;
  Tgint32 = gint32;
  Tguint32 = guint32;
  Tgint64 = gint64;
  Tguint64 = guint64;

  PPguint = ^Pguint;

  Tdouble = double;

  Tgsize = gsize;
  Tgssize = gssize;
  Pgssize = ^Tgssize;


  Tgunichar = gunichar;

  // === glib2
const
  G_PRIORITY_HIGH_IDLE = 100;         // /usr/include/glib-2.0/glib/gmain.h

type
  Tgconstpointer = gconstpointer;
  TGInitiallyUnowned = TGObject;

  TGVariant = Pointer;   // _GVariant
  PGVariant = ^TGVariant;
  TGVariantType = Pointer; // _GVariantType
  PGVariantType = TGVariantType;
  PPGVariantType = ^PGVariantType;

  TGBytes = Pointer; // garray.h
  PGBytes = ^TGBytes;

  PPGParamSpec = ^PGParamSpec;

  TGActionGroup = Pointer;       // _GActionGroup
  PGActionGroup = ^TGActionGroup;

  TGIcon = record // _GIcon     giotypes.h
  end;
  PGIcon = ^TGIcon;

  TGApplication = Pointer;        // rec  gapplication.h
  PGApplication = ^TGApplication;

  TGApplicationClass = Pointer; // rec  gobject.h
  PGApplicationClass = ^TGApplicationClass;

  TGApplicationFlags = integer; // gioenums.h
  TGMenuModel = Pointer;      // rec gmenumodel.h
  PGMenuModel = ^TGMenuModel;
  TGMenu = Pointer;   // _GMenu  gmenu.h
  PGMenu = ^TGMenu;

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

  TGDateTime = Pointer; //  _GDateTime       /usr/include/glib-2.0/glib/gdatetime.h
  PGDateTime = ^TGDateTime;
  PPGDateTime = ^PGDateTime;

  TGAppInfo = record  // giotypes.h
  end;
  PGAppInfo = ^TGAppInfo;

  TGTypeClass = record
    g_type: GType;
  end;
  PGTypeClass = ^TGTypeClass;

  TGTypeInstance = record
    g_class: PGTypeClass;
  end;
  PGTypeInstance = ^TGTypeInstance;

  TGFile = record // _GFile  // giotypes.h
  end;
  PGFile = ^TGFile;
  PPGFile = ^PGFile;

  TGKeyFile = record // _GKeyFile;
  end;
  PGKeyFile = ^TGKeyFile;

  TGOutputStreamPrivate = record // _GOutputStreamPrivate       /usr/include/glib-2.0/gio/goutputstream.h
  end;
  PGOutputStreamPrivate = ^TGOutputStreamPrivate;

  TGOutputStream = record // _GOutputStream
    parent_instance: TGObject;
    priv: PGOutputStreamPrivate;
  end;
  PGOutputStream = ^TGOutputStream;

  TGMountOperationClass = record   //     /usr/include/glib-2.0/gio/gmountoperation.h
  end;
  PGMountOperationClass = ^TGMountOperationClass;

  TGMountOperation = record   //     /usr/include/glib-2.0/gio/gmountoperation.h
    parent_instance: TGObject;
    // ......
  end;
  PGMountOperation = ^TGMountOperation;

  TGInputStream = record //     /usr/include/glib-2.0/gio/ginputstream.h
    // ......
  end;
  PGInputStream = ^TGInputStream;

  TGPermission = record  // gpermission.h
    // .....
  end;
  PGPermission = ^TGPermission;

  TGError = record  // gerror.h
    // .....
  end;
  PGError = ^TGError;
  PPGError = ^PGError;

  // ==== Pango
  PPPangoFontDescription = ^PPangoFontDescription; // Pango Erweiterung
  PPPangoLanguage = ^PPangoLanguage;

  PPPangoAttrList = ^PPangoAttrList;

  // ==== GDK

  // ==== GSK


  // ======================================


//function g_type_check_instance_cast(wid: PGTypeInstance; iface_type: TGType): PGTypeInstance; cdecl; external gtklib;
function g_type_check_instance_is_a(instance: PGTypeInstance; iface_type: GType): gboolean; cdecl; external gobjectlib;

//function g_type_check_class_cast(g_class: PGTypeClass; is_a_type: TGType): PGTypeClass; cdecl; external gtklib;
function g_type_check_class_is_a(instance: PGTypeClass; is_a_type: GType): gboolean; cdecl; external gobjectlib;

// ------ libgio
function g_application_run(application: Pointer; argc: longint; argv: PPchar): longint; cdecl; external libgio;

// ------ glib
//function g_signal_connect(instance: gpointer; detailed_signal: Pgchar; c_handler: TGCallback; Data: gpointer): gulong;
//function G_CALLBACK(f: pointer): TGCallback;

// -------------------


implementation

//function g_signal_connect(instance: gpointer; detailed_signal: Pgchar; c_handler: TGCallback; Data: gpointer): gulong;
//begin
//  g_signal_connect := g_signal_connect_data(instance, detailed_signal, c_handler, Data, nil, 0);
//end;
//
//function G_CALLBACK(f: pointer): TGCallback;
//begin
//  G_CALLBACK := TGCallback(f);
//end;

end.
