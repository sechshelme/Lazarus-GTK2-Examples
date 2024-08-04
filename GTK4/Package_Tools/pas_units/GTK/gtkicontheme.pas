unit gtkicontheme;

interface

uses
  glib2, common_GTK, GDK4, gtkenums;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  TGtkIconPaintable = record // _GtkIconPaintable
  end;
  PGtkIconPaintable = ^TGtkIconPaintable;

  TGtkIconTheme = record // _GtkIconTheme
  end;
  PGtkIconTheme = ^TGtkIconTheme;


  PGtkIconLookupFlags = ^TGtkIconLookupFlags;
  TGtkIconLookupFlags = longint;

const
  GTK_ICON_LOOKUP_FORCE_REGULAR = 1 shl 0;
  GTK_ICON_LOOKUP_FORCE_SYMBOLIC = 1 shl 1;
  GTK_ICON_LOOKUP_PRELOAD = 1 shl 2;

type
  PGtkIconThemeError = ^TGtkIconThemeError;
  TGtkIconThemeError = longint;

const
  GTK_ICON_THEME_NOT_FOUND = 0;
  GTK_ICON_THEME_FAILED = 1;


function gtk_icon_theme_error_quark: TGQuark; cdecl; external gtklib;
function gtk_icon_theme_get_type: TGType; cdecl; external gtklib;
function gtk_icon_theme_new: PGtkIconTheme; cdecl; external gtklib;
function gtk_icon_theme_get_for_display(display: PGdkDisplay): PGtkIconTheme; cdecl; external gtklib;
function gtk_icon_theme_get_display(self: PGtkIconTheme): PGdkDisplay; cdecl; external gtklib;
procedure gtk_icon_theme_set_search_path(self: PGtkIconTheme; path: PPchar); cdecl; external gtklib;
function gtk_icon_theme_get_search_path(self: PGtkIconTheme): PPchar; cdecl; external gtklib;
procedure gtk_icon_theme_add_search_path(self: PGtkIconTheme; path: PChar); cdecl; external gtklib;
procedure gtk_icon_theme_set_resource_path(self: PGtkIconTheme; path: PPchar); cdecl; external gtklib;
function gtk_icon_theme_get_resource_path(self: PGtkIconTheme): PPchar; cdecl; external gtklib;
procedure gtk_icon_theme_add_resource_path(self: PGtkIconTheme; path: PChar); cdecl; external gtklib;
procedure gtk_icon_theme_set_theme_name(self: PGtkIconTheme; theme_name: PChar); cdecl; external gtklib;
function gtk_icon_theme_get_theme_name(self: PGtkIconTheme): PChar; cdecl; external gtklib;
function gtk_icon_theme_has_icon(self: PGtkIconTheme; icon_name: PChar): Tgboolean; cdecl; external gtklib;
function gtk_icon_theme_has_gicon(self: PGtkIconTheme; gicon: PGIcon): Tgboolean; cdecl; external gtklib;
function gtk_icon_theme_get_icon_sizes(self: PGtkIconTheme; icon_name: PChar): Plongint; cdecl; external gtklib;
function gtk_icon_theme_lookup_icon(self: PGtkIconTheme; icon_name: PChar; fallbacks: PPchar; size: longint; scale: longint;
  direction: TGtkTextDirection; flags: TGtkIconLookupFlags): PGtkIconPaintable; cdecl; external gtklib;
function gtk_icon_theme_lookup_by_gicon(self: PGtkIconTheme; icon: PGIcon; size: longint; scale: longint; direction: TGtkTextDirection;
  flags: TGtkIconLookupFlags): PGtkIconPaintable; cdecl; external gtklib;
function gtk_icon_paintable_new_for_file(file_: PGFile; size: longint; scale: longint): PGtkIconPaintable; cdecl; external gtklib;
function gtk_icon_theme_get_icon_names(self: PGtkIconTheme): PPchar; cdecl; external gtklib;
function gtk_icon_paintable_get_type: TGType; cdecl; external gtklib;
function gtk_icon_paintable_get_file(self: PGtkIconPaintable): PGFile; cdecl; external gtklib;
function gtk_icon_paintable_get_icon_name(self: PGtkIconPaintable): PChar; cdecl; external gtklib;
function gtk_icon_paintable_is_symbolic(self: PGtkIconPaintable): Tgboolean; cdecl; external gtklib;

function GTK_ICON_THEME_ERROR: TGType;

// === Konventiert am: 24-7-24 15:19:36 ===

function GTK_TYPE_ICON_THEME: TGType;
function GTK_ICON_THEME(obj: Pointer): PGtkIconTheme;
function GTK_IS_ICON_THEME(obj: Pointer): Tgboolean;

function GTK_TYPE_ICON_PAINTABLE: TGType;
function GTK_ICON_PAINTABLE(obj: Pointer): PGtkIconPaintable;
function GTK_IS_ICON_PAINTABLE(obj: Pointer): Tgboolean;

implementation

function GTK_TYPE_ICON_PAINTABLE: TGType;
begin
  GTK_TYPE_ICON_PAINTABLE := gtk_icon_paintable_get_type;
end;

function GTK_ICON_PAINTABLE(obj: Pointer): PGtkIconPaintable;
begin
  Result := PGtkIconPaintable(g_type_check_instance_cast(obj, GTK_TYPE_ICON_PAINTABLE));
end;

function GTK_IS_ICON_PAINTABLE(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_ICON_PAINTABLE);
end;

// ====

function GTK_TYPE_ICON_THEME: TGType;
begin
  GTK_TYPE_ICON_THEME := gtk_icon_theme_get_type;
end;

function GTK_ICON_THEME(obj: Pointer): PGtkIconTheme;
begin
  Result := PGtkIconTheme(g_type_check_instance_cast(obj, GTK_TYPE_ICON_THEME));
end;

function GTK_IS_ICON_THEME(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_ICON_THEME);
end;

// ====

function GTK_ICON_THEME_ERROR: TGType;
begin
  GTK_ICON_THEME_ERROR := gtk_icon_theme_error_quark;
end;


end.
