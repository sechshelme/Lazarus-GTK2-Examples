/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}


  {G_DECLARE_FINAL_TYPE (GtkConstraintGuide, gtk_constraint_guide, GTK, CONSTRAINT_GUIDE, GObject) }
type
  TGtkConstraintGuide = record
  end;
  PGtkConstraintGuide = ^TGtkConstraintGuide;

  TGtkConstraintGuideClass = record
    parent_class: TGObjectClass;
  end;
  PGtkConstraintGuideClass = ^TGtkConstraintGuideClass;

function gtk_constraint_guide_get_type: TGType; cdecl; external gtklib;
function gtk_constraint_guide_new: PGtkConstraintGuide; cdecl; external gtklib;
procedure gtk_constraint_guide_set_min_size(guide: PGtkConstraintGuide; Width: longint; Height: longint); cdecl; external gtklib;
procedure gtk_constraint_guide_get_min_size(guide: PGtkConstraintGuide; Width: Plongint; Height: Plongint); cdecl; external gtklib;
procedure gtk_constraint_guide_set_nat_size(guide: PGtkConstraintGuide; Width: longint; Height: longint); cdecl; external gtklib;
procedure gtk_constraint_guide_get_nat_size(guide: PGtkConstraintGuide; Width: Plongint; Height: Plongint); cdecl; external gtklib;
procedure gtk_constraint_guide_set_max_size(guide: PGtkConstraintGuide; Width: longint; Height: longint); cdecl; external gtklib;
procedure gtk_constraint_guide_get_max_size(guide: PGtkConstraintGuide; Width: Plongint; Height: Plongint); cdecl; external gtklib;
function gtk_constraint_guide_get_strength(guide: PGtkConstraintGuide): TGtkConstraintStrength; cdecl; external gtklib;
procedure gtk_constraint_guide_set_strength(guide: PGtkConstraintGuide; strength: TGtkConstraintStrength); cdecl; external gtklib;
procedure gtk_constraint_guide_set_name(guide: PGtkConstraintGuide; Name: PChar); cdecl; external gtklib;
function gtk_constraint_guide_get_name(guide: PGtkConstraintGuide): PChar; cdecl; external gtklib;

// === Konventiert am: 24-7-24 19:18:42 ===

function GTK_TYPE_CONSTRAINT_GUIDE: TGType;
function GTK_CONSTRAINT_GUIDE(obj: Pointer): PGtkConstraintGuide;
function GTK_IS_CONSTRAINT_GUIDE(obj: Pointer): Tgboolean;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_CONSTRAINT_GUIDE: TGType;
begin
  Result := gtk_constraint_guide_get_type;
end;

function GTK_CONSTRAINT_GUIDE(obj: Pointer): PGtkConstraintGuide;
begin
  Result := PGtkConstraintGuide(g_type_check_instance_cast(obj, GTK_TYPE_CONSTRAINT_GUIDE));
end;

function GTK_IS_CONSTRAINT_GUIDE(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_CONSTRAINT_GUIDE);
end;




{$ENDIF read_implementation}
