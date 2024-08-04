unit gtkwidgetpaintable;

interface

uses
  glib2, common_GTK, GDK4, gtktypes, gtkwidget;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}


  {G_DECLARE_FINAL_TYPE (GtkWidgetPaintable, gtk_widget_paintable, GTK, WIDGET_PAINTABLE, GObject) }
type
  TGtkWidgetPaintable = record
  end;
  PGtkWidgetPaintable = ^TGtkWidgetPaintable;

  TGtkWidgetPaintableClass = record
    parent_class: TGObjectClass;
  end;
  PGtkWidgetPaintableClass = ^TGtkWidgetPaintableClass;

function gtk_widget_paintable_get_type: TGType; cdecl; external gtklib;
function gtk_widget_paintable_new(widget: PGtkWidget): PGdkPaintable; cdecl; external gtklib;
function gtk_widget_paintable_get_widget(self: PGtkWidgetPaintable): PGtkWidget; cdecl; external gtklib;
procedure gtk_widget_paintable_set_widget(self: PGtkWidgetPaintable; widget: PGtkWidget); cdecl; external gtklib;

// === Konventiert am: 28-7-24 17:07:14 ===

function GTK_TYPE_WIDGET_PAINTABLE: TGType;
function GTK_WIDGET_PAINTABLE(obj: Pointer): PGtkWidgetPaintable;
function GTK_IS_WIDGET_PAINTABLE(obj: Pointer): Tgboolean;

implementation

function GTK_TYPE_WIDGET_PAINTABLE: TGType;
begin
  Result := gtk_widget_paintable_get_type;
end;

function GTK_WIDGET_PAINTABLE(obj: Pointer): PGtkWidgetPaintable;
begin
  Result := PGtkWidgetPaintable(g_type_check_instance_cast(obj, GTK_TYPE_WIDGET_PAINTABLE));
end;

function GTK_IS_WIDGET_PAINTABLE(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_WIDGET_PAINTABLE);
end;




end.
