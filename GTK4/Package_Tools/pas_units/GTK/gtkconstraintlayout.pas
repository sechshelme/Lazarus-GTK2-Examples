unit gtkconstraintlayout;

interface

uses
  glib2, common_GTK, gtkwidget, gtktypes, gtkconstraint, gtklayoutmanager, gtklayoutchild, gtkconstraintguide;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

function GTK_CONSTRAINT_VFL_PARSER_ERROR: TGQuark;

{G_DECLARE_FINAL_TYPE (GtkConstraintLayoutChild, gtk_constraint_layout_child, GTK, CONSTRAINT_LAYOUT_CHILD, GtkLayoutChild) }
type
  TGtkConstraintLayout = record
  end;
  PGtkConstraintLayout = ^TGtkConstraintLayout;

  TGtkConstraintLayoutClass = record
    parent_class: TGtkLayoutManagerClass;
  end;
  PGtkConstraintLayoutClass = ^TGtkConstraintLayoutClass;


  {G_DECLARE_FINAL_TYPE (GtkConstraintLayout, gtk_constraint_layout, GTK, CONSTRAINT_LAYOUT, GtkLayoutManager) }
type
  TGtkConstraintLayoutChild = record
  end;
  PGtkConstraintLayoutChild = ^TGtkConstraintLayoutChild;

  TGtkConstraintLayoutChildClass = record
    parent_class: TGtkLayoutChildClass;
  end;
  PGtkConstraintLayoutChildClass = ^TGtkConstraintLayoutChildClass;

function gtk_constraint_layout_child_get_type: TGType; cdecl; external gtklib;
function gtk_constraint_layout_get_type: TGType; cdecl; external gtklib;
function gtk_constraint_vfl_parser_error_quark: TGQuark; cdecl; external gtklib;
function gtk_constraint_layout_new: PGtkLayoutManager; cdecl; external gtklib;
procedure gtk_constraint_layout_add_constraint(layout: PGtkConstraintLayout; constraint: PGtkConstraint); cdecl; external gtklib;
procedure gtk_constraint_layout_remove_constraint(layout: PGtkConstraintLayout; constraint: PGtkConstraint); cdecl; external gtklib;
procedure gtk_constraint_layout_add_guide(layout: PGtkConstraintLayout; guide: PGtkConstraintGuide); cdecl; external gtklib;
procedure gtk_constraint_layout_remove_guide(layout: PGtkConstraintLayout; guide: PGtkConstraintGuide); cdecl; external gtklib;
procedure gtk_constraint_layout_remove_all_constraints(layout: PGtkConstraintLayout); cdecl; external gtklib;
function gtk_constraint_layout_add_constraints_from_description(layout: PGtkConstraintLayout; Lines: PPchar; n_lines: Tgsize; hspacing: longint; vspacing: longint;
  error: PPGError; first_view: PChar; args: array of const): PGList; cdecl; external gtklib;
function gtk_constraint_layout_add_constraints_from_description(layout: PGtkConstraintLayout; Lines: PPchar; n_lines: Tgsize; hspacing: longint; vspacing: longint;
  error: PPGError; first_view: PChar): PGList; cdecl; external gtklib;
function gtk_constraint_layout_add_constraints_from_descriptionv(layout: PGtkConstraintLayout; Lines: PPchar; n_lines: Tgsize; hspacing: longint; vspacing: longint;
  views: PGHashTable; error: PPGError): PGList; cdecl; external gtklib;
function gtk_constraint_layout_observe_constraints(layout: PGtkConstraintLayout): PGListModel; cdecl; external gtklib;
function gtk_constraint_layout_observe_guides(layout: PGtkConstraintLayout): PGListModel; cdecl; external gtklib;

// === Konventiert am: 24-7-24 19:19:28 ===

function GTK_TYPE_CONSTRAINT_LAYOUT_CHILD: TGType;
function GTK_CONSTRAINT_LAYOUT_CHILD(obj: Pointer): PGtkConstraintLayoutChild;
function GTK_IS_CONSTRAINT_LAYOUT_CHILD(obj: Pointer): Tgboolean;

// =====

function GTK_TYPE_CONSTRAINT_LAYOUT: TGType;
function GTK_CONSTRAINT_LAYOUT(obj: Pointer): PGtkConstraintLayout;
function GTK_IS_CONSTRAINT_LAYOUT(obj: Pointer): Tgboolean;

implementation

function GTK_TYPE_CONSTRAINT_LAYOUT_CHILD: TGType;
begin
  Result := gtk_constraint_layout_child_get_type;
end;

function GTK_CONSTRAINT_LAYOUT_CHILD(obj: Pointer): PGtkConstraintLayoutChild;
begin
  Result := PGtkConstraintLayoutChild(g_type_check_instance_cast(obj, GTK_TYPE_CONSTRAINT_LAYOUT_CHILD));
end;

function GTK_IS_CONSTRAINT_LAYOUT_CHILD(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_CONSTRAINT_LAYOUT_CHILD);
end;

// =====

function GTK_TYPE_CONSTRAINT_LAYOUT: TGType;
begin
  Result := gtk_constraint_layout_get_type;
end;

function GTK_CONSTRAINT_LAYOUT(obj: Pointer): PGtkConstraintLayout;
begin
  Result := PGtkConstraintLayout(g_type_check_instance_cast(obj, GTK_TYPE_CONSTRAINT_LAYOUT));
end;

function GTK_IS_CONSTRAINT_LAYOUT(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_CONSTRAINT_LAYOUT);
end;

// =====


function GTK_CONSTRAINT_VFL_PARSER_ERROR: TGQuark;
begin
  GTK_CONSTRAINT_VFL_PARSER_ERROR := gtk_constraint_vfl_parser_error_quark;
end;


end.
