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

  Tguint32=guint32;

  TGTKWidget = Pointer;   // rec
  PGTKWidget = ^TGTKWidget;

  TGtkWidgetClass = Pointer;    // rec
  PGtkWidgetClass = ^TGtkWidgetClass;

  TGdkDisplay=Pointer;       // _GdkDisplay
  PGdkDisplay=^TGdkDisplay;

  TGdkMonitor=Pointer;        // _GdkMonitor
  PGdkMonitor=^TGdkMonitor;

  TGtkWindowGroup=Pointer;   // rec
  PGtkWindowGroup=^TGtkWindowGroup;

  TGListModel=Pointer;         // ???
  PGListModel=^TGListModel;

  TGtkApplication=Pointer;         // rec
  PGtkApplication=^TGtkApplication;


implementation

end.
