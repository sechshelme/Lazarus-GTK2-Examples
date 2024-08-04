unit gtkatcontext;

interface

uses
  glib2, common_GTK, GDK4, gtkenums, gtktypes, gtkwidget;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

  {GDK_DECLARE_INTERNAL_TYPE (GtkATContext, gtk_at_context, GTK, AT_CONTEXT, GObject) }
type
  TGtkATContext = record
  end;
  PGtkATContext = ^TGtkATContext;

  TGtkATContextClass = record
  end;
  PGtkATContextClass = ^TGtkATContextClass;

function gtk_at_context_get_type: TGType; cdecl; external gtklib;
function gtk_at_context_get_accessible(self: PGtkATContext): PGtkAccessible; cdecl; external gtklib;
function gtk_at_context_get_accessible_role(self: PGtkATContext): TGtkAccessibleRole; cdecl; external gtklib;
function gtk_at_context_create(accessible_role: TGtkAccessibleRole; accessible: PGtkAccessible; display: PGdkDisplay): PGtkATContext; cdecl; external gtklib;

// === Konventiert am: 27-7-24 14:05:43 ===

function GTK_TYPE_AT_CONTEXT: TGType;
function GTK_AT_CONTEXT(obj: Pointer): PGtkATContext;
function GTK_IS_AT_CONTEXT(obj: Pointer): Tgboolean;
function GTK_AT_CONTEXT_CLASS(klass: Pointer): PGtkATContextClass;
function GTK_IS_AT_CONTEXT_CLASS(klass: Pointer): Tgboolean;
function GTK_AT_CONTEXT_GET_CLASS(obj: Pointer): PGtkATContextClass;

implementation

function GTK_TYPE_AT_CONTEXT: TGType;
begin
  Result := gtk_at_context_get_type;
end;

function GTK_AT_CONTEXT(obj: Pointer): PGtkATContext;
begin
  Result := PGtkATContext(g_type_check_instance_cast(obj, GTK_TYPE_AT_CONTEXT));
end;

function GTK_IS_AT_CONTEXT(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_AT_CONTEXT);
end;

function GTK_AT_CONTEXT_CLASS(klass: Pointer): PGtkATContextClass;
begin
  Result := PGtkATContextClass(g_type_check_class_cast(klass, GTK_TYPE_AT_CONTEXT));
end;

function GTK_IS_AT_CONTEXT_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_AT_CONTEXT);
end;

function GTK_AT_CONTEXT_GET_CLASS(obj: Pointer): PGtkATContextClass;
begin
  Result := PGtkATContextClass(PGTypeInstance(obj)^.g_class);
end;




end.
