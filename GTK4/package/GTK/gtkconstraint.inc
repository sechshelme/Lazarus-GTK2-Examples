/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

  {G_DECLARE_INTERFACE (GtkConstraintTarget, gtk_constraint_target, GTK, CONSTRAINT_TARGET, GObject) }
type
  TGtkConstraintTarget = record
  end;
  PGtkConstraintTarget = ^TGtkConstraintTarget;

  TGtkConstraintTargetInterface = record
  end;
  PGtkConstraintTargetInterface = ^TGtkConstraintTargetInterface;

  {G_DECLARE_FINAL_TYPE (GtkConstraint, gtk_constraint, GTK, CONSTRAINT, GObject) }
type
  TGtkConstraint = record
  end;
  PGtkConstraint = ^TGtkConstraint;

  TGtkConstraintClass = record
    parent_class: TGObjectClass;
  end;
  PGtkConstraintClass = ^TGtkConstraintClass;

function gtk_constraint_get_type: TGType; cdecl; external gtklib;
function gtk_constraint_new(target: Tgpointer; target_attribute: TGtkConstraintAttribute; relation: TGtkConstraintRelation; Source: Tgpointer; source_attribute: TGtkConstraintAttribute;
  multiplier: Tdouble; constant: Tdouble; strength: longint): PGtkConstraint; cdecl; external gtklib;
function gtk_constraint_new_constant(target: Tgpointer; target_attribute: TGtkConstraintAttribute; relation: TGtkConstraintRelation; constant: Tdouble; strength: longint): PGtkConstraint; cdecl; external gtklib;
function gtk_constraint_get_target(constraint: PGtkConstraint): PGtkConstraintTarget; cdecl; external gtklib;
function gtk_constraint_get_target_attribute(constraint: PGtkConstraint): TGtkConstraintAttribute; cdecl; external gtklib;
function gtk_constraint_get_source(constraint: PGtkConstraint): PGtkConstraintTarget; cdecl; external gtklib;
function gtk_constraint_get_source_attribute(constraint: PGtkConstraint): TGtkConstraintAttribute; cdecl; external gtklib;
function gtk_constraint_get_relation(constraint: PGtkConstraint): TGtkConstraintRelation; cdecl; external gtklib;
function gtk_constraint_get_multiplier(constraint: PGtkConstraint): Tdouble; cdecl; external gtklib;
function gtk_constraint_get_constant(constraint: PGtkConstraint): Tdouble; cdecl; external gtklib;
function gtk_constraint_get_strength(constraint: PGtkConstraint): longint; cdecl; external gtklib;
function gtk_constraint_is_required(constraint: PGtkConstraint): Tgboolean; cdecl; external gtklib;
function gtk_constraint_is_attached(constraint: PGtkConstraint): Tgboolean; cdecl; external gtklib;
function gtk_constraint_is_constant(constraint: PGtkConstraint): Tgboolean; cdecl; external gtklib;

function gtk_constraint_target_get_type: TGType; cdecl; external gtklib;

// === Konventiert am: 24-7-24 19:18:06 ===

function GTK_TYPE_CONSTRAINT: TGType;
function GTK_CONSTRAINT(obj: Pointer): PGtkConstraint;
function GTK_IS_CONSTRAINT(obj: Pointer): Tgboolean;

function GTK_TYPE_CONSTRAINT_TARGET: TGType;
function GTK_CONSTRAINT_TARGET(obj: Pointer): PGtkConstraintTarget;
function GTK_IS_CONSTRAINT_TARGET(obj: Pointer): Tgboolean;
function GTK_CONSTRAINT_TARGET_GET_IFACE(obj: Pointer): PGtkConstraintTargetInterface;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_CONSTRAINT: TGType;
begin
  Result := gtk_constraint_get_type;
end;

function GTK_CONSTRAINT(obj: Pointer): PGtkConstraint;
begin
  Result := PGtkConstraint(g_type_check_instance_cast(obj, GTK_TYPE_CONSTRAINT));
end;

function GTK_IS_CONSTRAINT(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_CONSTRAINT);
end;

// ====

function GTK_TYPE_CONSTRAINT_TARGET: TGType;
begin
  Result := gtk_constraint_target_get_type;
end;

function GTK_CONSTRAINT_TARGET(obj: Pointer): PGtkConstraintTarget;
begin
  Result := PGtkConstraintTarget(g_type_check_instance_cast(obj, GTK_TYPE_CONSTRAINT_TARGET));
end;

function GTK_IS_CONSTRAINT_TARGET(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_CONSTRAINT_TARGET);
end;

function GTK_CONSTRAINT_TARGET_GET_IFACE(obj: Pointer): PGtkConstraintTargetInterface;
begin
  Result := g_type_interface_peek(obj, GTK_TYPE_CONSTRAINT_TARGET);
end;


{$ENDIF read_implementation}
