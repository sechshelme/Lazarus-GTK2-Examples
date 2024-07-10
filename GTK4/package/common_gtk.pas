unit common_GTK;

interface

//  https://gitlab.com/freepascal.org/lazarus/lazarus/-/tree/main/tools/gir2pascal

uses
  glib2;

const
  gtklib = 'libgtk-4.so';
  libgio = 'libgio-2.0.so.0';
  gobjectlib = 'libgobject-2.0.so';

type
  Tgpointer = gpointer;
  TGType = GType;
  Tgboolean = gboolean;

  Tguint=guint;

  Tguint32=guint32;

  TGTKWidget = Pointer;   // rec
  PGTKWidget = ^TGTKWidget;

  TGtkWidgetClass = Pointer;    // rec
  PGtkWidgetClass = ^TGtkWidgetClass;

  TGApplication=Pointer;        // rec  gapplication.h
  PGApplication=^TGApplication;

  TGApplicationClass=Pointer; // rec  gobject.h
  PGApplicationClass=^TGApplicationClass;

  TGApplicationFlags=Integer; // gioenums.h
  TGMenuModel=Pointer;      // rec gmenumodel.h
  PGMenuModel=^TGMenuModel;
  TGMenu=Pointer;   // _GMenu  gmenu.h
  PGMenu=^TGMenu;

  TGdkDisplay=Pointer;       // _GdkDisplay
  PGdkDisplay=^TGdkDisplay;

  TGdkMonitor=Pointer;        // _GdkMonitor
  PGdkMonitor=^TGdkMonitor;

  TGtkWindowGroup=Pointer;   // rec
  PGtkWindowGroup=^TGtkWindowGroup;

  TGtkShortcutsWindow=Pointer;  //  == _GtkShortcutsWindow
  PGtkShortcutsWindow=^TGtkShortcutsWindow;

  TGListModel=Pointer;         // ???
  PGListModel=^TGListModel;


  // === Zwingend ausgelagertes

    PGtkApplication = ^TGtkApplication;
  TGtkApplication = record
    parent_instance: TGApplication;
  end;


  // ==========

  PGTypeClass = ^TGTypeClass;
  TGTypeClass = record
    g_type : GType;
  end;

  PGTypeInstance = ^TGTypeInstance;
  TGTypeInstance = record
    g_class : PGTypeClass;
  end;
  function g_type_check_instance_cast(wid:PGTypeInstance; iface_type:TGType):PGTypeInstance ;cdecl;external gtklib;
  function g_type_check_instance_is_a(instance:PGTypeInstance; iface_type:GType):gboolean; cdecl; external gobjectlib;

  function g_type_check_class_cast(g_class:PGTypeClass; is_a_type:TGType):PGTypeClass ;cdecl;external gtklib;
  function g_type_check_class_is_a(instance:PGTypeClass; is_a_type:GType):gboolean; cdecl; external gobjectlib;


implementation

end.
