unit gdkcairocontext;

interface

uses
  glib2, Cairo, common_GTK;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  TGdkCairoContext = record
  end;
  PGdkCairoContext = ^TGdkCairoContext;

function gdk_cairo_context_get_type: TGType; cdecl; external gtklib;
function gdk_cairo_context_cairo_create(self: PGdkCairoContext): Pcairo_t; cdecl; external gtklib;

function GDK_CAIRO_ERROR: TGQuark;

// === Konventiert am: 2-8-24 17:09:48 ===

function GDK_TYPE_CAIRO_CONTEXT: TGType;
function GDK_CAIRO_CONTEXT(obj: Pointer): PGdkCairoContext;
function GDK_IS_CAIRO_CONTEXT(obj: Pointer): Tgboolean;

implementation

function GDK_TYPE_CAIRO_CONTEXT: TGType;
begin
  GDK_TYPE_CAIRO_CONTEXT := gdk_cairo_context_get_type;
end;

function GDK_CAIRO_CONTEXT(obj: Pointer): PGdkCairoContext;
begin
  Result := PGdkCairoContext(g_type_check_instance_cast(obj, GDK_TYPE_CAIRO_CONTEXT));
end;

function GDK_IS_CAIRO_CONTEXT(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GDK_TYPE_CAIRO_CONTEXT);
end;


{ was #define dname def_expr }
function GDK_CAIRO_ERROR: TGQuark; { return type might be wrong }
begin
  Result:=0;
  // nicht vorhanden
//  GDK_CAIRO_ERROR := gdk_cairo_error_quark;
end;


end.
