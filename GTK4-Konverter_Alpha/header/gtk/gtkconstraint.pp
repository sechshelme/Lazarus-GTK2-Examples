
unit gtkconstraint;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkconstraint.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkconstraint.h
    -p
    -T
    -S
    -d
    -c
}

{ Pointers to basic pascal types, inserted by h2pas conversion program.}
Type
  PLongint  = ^Longint;
  PSmallInt = ^SmallInt;
  PByte     = ^Byte;
  PWord     = ^Word;
  PDWord    = ^DWord;
  PDouble   = ^Double;

Type
PGtkConstraint  = ^GtkConstraint;
PGtkConstraintTarget  = ^GtkConstraintTarget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$include <gtk/gtktypes.h>}
{$include <gtk/gtkenums.h>}

type

function GTK_TYPE_CONSTRAINT_TARGET : longint; { return type might be wrong }




function GTK_TYPE_CONSTRAINT : longint; { return type might be wrong }




function gtk_constraint_new(target:Tgpointer; target_attribute:TGtkConstraintAttribute; relation:TGtkConstraintRelation; source:Tgpointer; source_attribute:TGtkConstraintAttribute; 
           multiplier:Tdouble; constant:Tdouble; strength:longint):PGtkConstraint;cdecl;external;

function gtk_constraint_new_constant(target:Tgpointer; target_attribute:TGtkConstraintAttribute; relation:TGtkConstraintRelation; constant:Tdouble; strength:longint):PGtkConstraint;cdecl;external;

function gtk_constraint_get_target(constraint:PGtkConstraint):PGtkConstraintTarget;cdecl;external;

function gtk_constraint_get_target_attribute(constraint:PGtkConstraint):TGtkConstraintAttribute;cdecl;external;

function gtk_constraint_get_source(constraint:PGtkConstraint):PGtkConstraintTarget;cdecl;external;

function gtk_constraint_get_source_attribute(constraint:PGtkConstraint):TGtkConstraintAttribute;cdecl;external;

function gtk_constraint_get_relation(constraint:PGtkConstraint):TGtkConstraintRelation;cdecl;external;

function gtk_constraint_get_multiplier(constraint:PGtkConstraint):Tdouble;cdecl;external;

function gtk_constraint_get_constant(constraint:PGtkConstraint):Tdouble;cdecl;external;

function gtk_constraint_get_strength(constraint:PGtkConstraint):longint;cdecl;external;

function gtk_constraint_is_required(constraint:PGtkConstraint):Tgboolean;cdecl;external;

function gtk_constraint_is_attached(constraint:PGtkConstraint):Tgboolean;cdecl;external;

function gtk_constraint_is_constant(constraint:PGtkConstraint):Tgboolean;cdecl;external;


implementation

function GTK_TYPE_CONSTRAINT_TARGET : longint; { return type might be wrong }
  begin
    GTK_TYPE_CONSTRAINT_TARGET:=gtk_constraint_target_get_type;
  end;

function GTK_TYPE_CONSTRAINT : longint; { return type might be wrong }
  begin
    GTK_TYPE_CONSTRAINT:=gtk_constraint_get_type;
  end;


end.
