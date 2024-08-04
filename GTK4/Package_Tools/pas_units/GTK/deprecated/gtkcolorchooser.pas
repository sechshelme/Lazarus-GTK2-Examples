unit gtkcolorchooser;

interface

uses
  glib2, common_GTK, GDK4, gtkenums;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}


type
  TGtkColorChooser = record
  end;
  PGtkColorChooser = ^TGtkColorChooser;

  PGtkColorChooserInterface = ^TGtkColorChooserInterface;

  TGtkColorChooserInterface = record
    base_interface: TGTypeInterface;
    get_rgba: procedure(chooser: PGtkColorChooser; color: PGdkRGBA); cdecl;
    set_rgba: procedure(chooser: PGtkColorChooser; color: PGdkRGBA); cdecl;
    add_palette: procedure(chooser: PGtkColorChooser; orientation: TGtkOrientation; colors_per_line: longint; n_colors: longint; colors: PGdkRGBA); cdecl;
    color_activated: procedure(chooser: PGtkColorChooser; color: PGdkRGBA); cdecl;
    padding: array[0..11] of Tgpointer;
  end;


function gtk_color_chooser_get_type: TGType; cdecl; external gtklib;
procedure gtk_color_chooser_get_rgba(chooser: PGtkColorChooser; color: PGdkRGBA); cdecl; external gtklib;
procedure gtk_color_chooser_set_rgba(chooser: PGtkColorChooser; color: PGdkRGBA); cdecl; external gtklib;
function gtk_color_chooser_get_use_alpha(chooser: PGtkColorChooser): Tgboolean; cdecl; external gtklib;
procedure gtk_color_chooser_set_use_alpha(chooser: PGtkColorChooser; use_alpha: Tgboolean); cdecl; external gtklib;
procedure gtk_color_chooser_add_palette(chooser: PGtkColorChooser; orientation: TGtkOrientation; colors_per_line: longint; n_colors: longint; colors: PGdkRGBA); cdecl; external gtklib;

// === Konventiert am: 29-7-24 19:34:04 ===

function GTK_TYPE_COLOR_CHOOSER: TGType;
function GTK_COLOR_CHOOSER(obj: Pointer): PGtkColorChooser;
function GTK_IS_COLOR_CHOOSER(obj: Pointer): Tgboolean;
function GTK_COLOR_CHOOSER_GET_IFACE(obj: Pointer): PGtkColorChooserInterface;

implementation

function GTK_TYPE_COLOR_CHOOSER: TGType;
begin
  GTK_TYPE_COLOR_CHOOSER := gtk_color_chooser_get_type;
end;

function GTK_COLOR_CHOOSER(obj: Pointer): PGtkColorChooser;
begin
  Result := PGtkColorChooser(g_type_check_instance_cast(obj, GTK_TYPE_COLOR_CHOOSER));
end;

function GTK_IS_COLOR_CHOOSER(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_COLOR_CHOOSER);
end;

function GTK_COLOR_CHOOSER_GET_IFACE(obj: Pointer): PGtkColorChooserInterface;
begin
  Result := g_type_interface_peek(obj, GTK_TYPE_COLOR_CHOOSER);
end;


end.
