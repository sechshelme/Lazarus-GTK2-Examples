unit gtkheaderbar;

interface

uses
  glib2, common_GTK, gtktypes, gtkwidget;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  TGtkHeaderBar = record // _GtkHeaderBar
  end;
  PGtkHeaderBar = ^TGtkHeaderBar;

function gtk_header_bar_get_type: TGType; cdecl; external gtklib;
function gtk_header_bar_new: PGtkWidget; cdecl; external gtklib;
procedure gtk_header_bar_set_title_widget(bar: PGtkHeaderBar; title_widget: PGtkWidget); cdecl; external gtklib;
function gtk_header_bar_get_title_widget(bar: PGtkHeaderBar): PGtkWidget; cdecl; external gtklib;
procedure gtk_header_bar_pack_start(bar: PGtkHeaderBar; child: PGtkWidget); cdecl; external gtklib;
procedure gtk_header_bar_pack_end(bar: PGtkHeaderBar; child: PGtkWidget); cdecl; external gtklib;
procedure gtk_header_bar_remove(bar: PGtkHeaderBar; child: PGtkWidget); cdecl; external gtklib;
function gtk_header_bar_get_show_title_buttons(bar: PGtkHeaderBar): Tgboolean; cdecl; external gtklib;
procedure gtk_header_bar_set_show_title_buttons(bar: PGtkHeaderBar; setting: Tgboolean); cdecl; external gtklib;
procedure gtk_header_bar_set_decoration_layout(bar: PGtkHeaderBar; layout: PChar); cdecl; external gtklib;
function gtk_header_bar_get_decoration_layout(bar: PGtkHeaderBar): PChar; cdecl; external gtklib;

// === Konventiert am: 27-7-24 19:30:59 ===

function GTK_TYPE_HEADER_BAR: TGType;
function GTK_HEADER_BAR(obj: Pointer): PGtkHeaderBar;
function GTK_IS_HEADER_BAR(obj: Pointer): Tgboolean;

implementation

function GTK_TYPE_HEADER_BAR: TGType;
begin
  GTK_TYPE_HEADER_BAR := gtk_header_bar_get_type;
end;

function GTK_HEADER_BAR(obj: Pointer): PGtkHeaderBar;
begin
  Result := PGtkHeaderBar(g_type_check_instance_cast(obj, GTK_TYPE_HEADER_BAR));
end;

function GTK_IS_HEADER_BAR(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_HEADER_BAR);
end;



end.
