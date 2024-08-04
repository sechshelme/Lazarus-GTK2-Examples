unit gtkboxlayout;

interface

uses
  glib2, common_GTK, gtkenums, gtktypes, gtkwidget, gtklayoutmanager;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


{G_DECLARE_FINAL_TYPE (GtkBoxLayout, gtk_box_layout, GTK, BOX_LAYOUT, GtkLayoutManager) }
type
  TGtkBoxLayout = record
  end;
  PGtkBoxLayout = ^TGtkBoxLayout;

  TGtkBoxLayoutClass = record
    parent_class: TGtkLayoutManagerClass;
  end;
  PGtkBoxLayoutClass = ^TGtkBoxLayoutClass;

function gtk_box_layout_get_type: TGType; cdecl; external gtklib;
function gtk_box_layout_new(orientation:TGtkOrientation):PGtkLayoutManager;cdecl;external gtklib;
procedure gtk_box_layout_set_homogeneous(box_layout:PGtkBoxLayout; homogeneous:Tgboolean);cdecl;external gtklib;
function gtk_box_layout_get_homogeneous(box_layout:PGtkBoxLayout):Tgboolean;cdecl;external gtklib;
procedure gtk_box_layout_set_spacing(box_layout:PGtkBoxLayout; spacing:Tguint);cdecl;external gtklib;
function gtk_box_layout_get_spacing(box_layout:PGtkBoxLayout):Tguint;cdecl;external gtklib;
procedure gtk_box_layout_set_baseline_position(box_layout:PGtkBoxLayout; position:TGtkBaselinePosition);cdecl;external gtklib;
function gtk_box_layout_get_baseline_position(box_layout:PGtkBoxLayout):TGtkBaselinePosition;cdecl;external gtklib;
procedure gtk_box_layout_set_baseline_child(box_layout:PGtkBoxLayout; child:longint);cdecl;external gtklib;
function gtk_box_layout_get_baseline_child(box_layout:PGtkBoxLayout):longint;cdecl;external gtklib;

// === Konventiert am: 21-7-24 15:29:30 ===

function GTK_TYPE_BOX_LAYOUT: TGType;
function GTK_BOX_LAYOUT(obj: Pointer): PGtkBoxLayout;
function GTK_IS_BOX_LAYOUT(obj: Pointer): Tgboolean;

implementation

function GTK_TYPE_BOX_LAYOUT: TGType;
begin
  Result := gtk_box_layout_get_type;
end;

function GTK_BOX_LAYOUT(obj: Pointer): PGtkBoxLayout;
begin
  Result := PGtkBoxLayout(g_type_check_instance_cast(obj, GTK_TYPE_BOX_LAYOUT));
end;

function GTK_IS_BOX_LAYOUT(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_BOX_LAYOUT);
end;




end.
