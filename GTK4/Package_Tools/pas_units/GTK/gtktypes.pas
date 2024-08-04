unit gtktypes;

interface

uses
  //  glib2, common_GTK,gdk4,  gdksnapshot;
  glib2, common_GTK, gdk4;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  PGtkSnapshot = ^TGtkSnapshot;
  TGtkSnapshot = TGdkSnapshot;


  // ===  Zwingende Auslagerungen wegen Kreuzverbindungen mit gtkwidget

  TGtkWidgetPrivate = record
  end;
  PGtkWidgetPrivate = ^TGtkWidgetPrivate;

  TGtkWidget = record
    parent_instance: TGInitiallyUnowned;
    priv: PGtkWidgetPrivate;
  end;
  PGtkWidget = ^TGtkWidget;
  PPGtkWidget = ^PGtkWidget;

  TGtkApplication = record
    parent_instance: TGApplication;
  end;
  PGtkApplication = ^TGtkApplication;

  TGtkNative = record
  end;
  PGtkNative = ^TGtkNative;

  TGtkLayoutManager = record
    parent_instance: TGObject
  end;
  PGtkLayoutManager = ^TGtkLayoutManager;

  TGtkRoot = record
  end;
  PGtkRoot = ^TGtkRoot;

  TGtkShortcut = record
  end;
  PGtkShortcut = ^TGtkShortcut;
  TGtkShortcutFunc = function(widget: PGtkWidget; args: PGVariant; user_data: Tgpointer): Tgboolean; cdecl;

  TGtkCssStyleChange = record // _GtkCssStyleChange
  end;
  PGtkCssStyleChange = ^TGtkCssStyleChange;

  TGtkStyleContext = record
    parent_object: TGObject;
  end;
  PGtkStyleContext = ^TGtkStyleContext;

  TGtkTooltip = record // _GtkTooltip
  end;
  PGtkTooltip = ^TGtkTooltip;

  TGtkSettings = record  // _GtkSettings
  end;
  PGtkSettings = ^TGtkSettings;

  TGtkEventController = record // _GtkEventController
  end;
  PGtkEventController = ^TGtkEventController;

  TGtkBuilderScope = record
  end;
  PGtkBuilderScope = ^TGtkBuilderScope;

  TGtkListItemFactory = record
  end;
  PGtkListItemFactory = ^TGtkListItemFactory;

  TGtkAccessible = record
  end;
  PGtkAccessible = ^TGtkAccessible;
  PPGtkAccessible = ^PGtkAccessible;

  TGtkWindowGroupPrivate = record
  end;
  PGtkWindowGroupPrivate = ^TGtkWindowGroupPrivate;

  TGtkWindowGroup = record
    parent_instance: TGObject;
    priv: PGtkWindowGroupPrivate;
  end;
  PGtkWindowGroup = ^TGtkWindowGroup;

  TGtkColumnViewColumn = record // _GtkColumnViewColumn
  end;
  PGtkColumnViewColumn = ^TGtkColumnViewColumn;

  TGtkCellAreaContext = record
    parent_instance: TGObject;
  end;
  PGtkCellAreaContext = ^TGtkCellAreaContext;

  TGtkTreeSelection = record
  end;
  PGtkTreeSelection = ^TGtkTreeSelection;



type
  PGtkBuilderClosureFlags = ^TGtkBuilderClosureFlags;
  TGtkBuilderClosureFlags = longint;

const
  GTK_BUILDER_CLOSURE_SWAPPED = 1 shl 0;


  // =======================



function GTK_INVALID_LIST_POSITION: Tguint;

implementation

function GTK_INVALID_LIST_POSITION: Tguint;
begin
  GTK_INVALID_LIST_POSITION := Tguint($ffffffff);
end;


end.
