unit common_GTK;

interface

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

  TGTKWidget = Pointer;
  PGTKWidget = ^TGTKWidget;

  TGtkWidgetClass = Pointer;
  PGtkWidgetClass = ^TGtkWidgetClass;

implementation

end.
