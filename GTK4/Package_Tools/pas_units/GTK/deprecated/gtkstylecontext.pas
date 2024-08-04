unit gtkstylecontext;

interface

uses
  glib2, common_GTK, GDK4, gtkenums, gtkwidget, gtktypes, gtkborder, gtkstyleprovider;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  // Ausgelagert wegen gtkwidget
  //TGtkStyleContext = record
  //  parent_object: TGObject;
  //end;
  //PGtkStyleContext = ^TGtkStyleContext;

  TGtkStyleContextClass = record
    parent_class: TGObjectClass;
    changed: procedure(context: PGtkStyleContext); cdecl;
    _gtk_reserved1: procedure; cdecl;
    _gtk_reserved2: procedure; cdecl;
    _gtk_reserved3: procedure; cdecl;
    _gtk_reserved4: procedure; cdecl;
  end;
  PGtkStyleContextClass = ^TGtkStyleContextClass;


function gtk_style_context_get_type: TGType; cdecl; external gtklib;
procedure gtk_style_context_add_provider(context: PGtkStyleContext; provider: PGtkStyleProvider; priority: Tguint); cdecl; external gtklib;
procedure gtk_style_context_remove_provider(context: PGtkStyleContext; provider: PGtkStyleProvider); cdecl; external gtklib;
procedure gtk_style_context_save(context: PGtkStyleContext); cdecl; external gtklib;
procedure gtk_style_context_restore(context: PGtkStyleContext); cdecl; external gtklib;
procedure gtk_style_context_set_state(context: PGtkStyleContext; flags: TGtkStateFlags); cdecl; external gtklib;
function gtk_style_context_get_state(context: PGtkStyleContext): TGtkStateFlags; cdecl; external gtklib;
procedure gtk_style_context_set_scale(context: PGtkStyleContext; scale: longint); cdecl; external gtklib;
function gtk_style_context_get_scale(context: PGtkStyleContext): longint; cdecl; external gtklib;
procedure gtk_style_context_add_class(context: PGtkStyleContext; class_name: PChar); cdecl; external gtklib;
procedure gtk_style_context_remove_class(context: PGtkStyleContext; class_name: PChar); cdecl; external gtklib;
function gtk_style_context_has_class(context: PGtkStyleContext; class_name: PChar): Tgboolean; cdecl; external gtklib;
procedure gtk_style_context_set_display(context: PGtkStyleContext; display: PGdkDisplay); cdecl; external gtklib;
function gtk_style_context_get_display(context: PGtkStyleContext): PGdkDisplay; cdecl; external gtklib;
function gtk_style_context_lookup_color(context: PGtkStyleContext; color_name: PChar; color: PGdkRGBA): Tgboolean; cdecl; external gtklib;
procedure gtk_style_context_get_color(context: PGtkStyleContext; color: PGdkRGBA); cdecl; external gtklib;
procedure gtk_style_context_get_border(context: PGtkStyleContext; border: PGtkBorder); cdecl; external gtklib;
procedure gtk_style_context_get_padding(context: PGtkStyleContext; padding: PGtkBorder); cdecl; external gtklib;
procedure gtk_style_context_get_margin(context: PGtkStyleContext; margin: PGtkBorder); cdecl; external gtklib;

type
  PGtkStyleContextPrintFlags = ^TGtkStyleContextPrintFlags;
  TGtkStyleContextPrintFlags = longint;

const
  GTK_STYLE_CONTEXT_PRINT_NONE = 0;
  GTK_STYLE_CONTEXT_PRINT_RECURSE = 1 shl 0;
  GTK_STYLE_CONTEXT_PRINT_SHOW_STYLE = 1 shl 1;
  GTK_STYLE_CONTEXT_PRINT_SHOW_CHANGE = 1 shl 2;


function gtk_style_context_to_string(context: PGtkStyleContext; flags: TGtkStyleContextPrintFlags): PChar; cdecl; external gtklib;

// === Konventiert am: 17-7-24 16:27:37 ===

function GTK_TYPE_STYLE_CONTEXT: TGType;
function GTK_STYLE_CONTEXT(obj: Pointer): PGtkStyleContext;
function GTK_STYLE_CONTEXT_CLASS(klass: Pointer): PGtkStyleContextClass;
function GTK_IS_STYLE_CONTEXT(obj: Pointer): Tgboolean;
function GTK_IS_STYLE_CONTEXT_CLASS(klass: Pointer): Tgboolean;
function GTK_STYLE_CONTEXT_GET_CLASS(obj: Pointer): PGtkStyleContextClass;

implementation

function GTK_TYPE_STYLE_CONTEXT: TGType;
begin
  GTK_TYPE_STYLE_CONTEXT := gtk_style_context_get_type;
end;

function GTK_STYLE_CONTEXT(obj: Pointer): PGtkStyleContext;
begin
  Result := PGtkStyleContext(g_type_check_instance_cast(obj, GTK_TYPE_STYLE_CONTEXT));
end;

function GTK_STYLE_CONTEXT_CLASS(klass: Pointer): PGtkStyleContextClass;
begin
  Result := PGtkStyleContextClass(g_type_check_class_cast(klass, GTK_TYPE_STYLE_CONTEXT));
end;

function GTK_IS_STYLE_CONTEXT(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_STYLE_CONTEXT);
end;

function GTK_IS_STYLE_CONTEXT_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_STYLE_CONTEXT);
end;

function GTK_STYLE_CONTEXT_GET_CLASS(obj: Pointer): PGtkStyleContextClass;
begin
  Result := PGtkStyleContextClass(PGTypeInstance(obj)^.g_class);
end;



end.
