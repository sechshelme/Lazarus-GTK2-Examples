
unit gtkconstraintlayout;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkconstraintlayout.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkconstraintlayout.h
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
Pchar  = ^char;
PGError  = ^GError;
PGHashTable  = ^GHashTable;
PGList  = ^GList;
PGListModel  = ^GListModel;
PGtkConstraint  = ^GtkConstraint;
PGtkConstraintGuide  = ^GtkConstraintGuide;
PGtkConstraintLayout  = ^GtkConstraintLayout;
PGtkLayoutManager  = ^GtkLayoutManager;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$include <gtk/gtklayoutmanager.h>}
{$include <gtk/gtkconstraint.h>}
{$include <gtk/gtkconstraintguide.h>}


function GTK_TYPE_CONSTRAINT_LAYOUT : longint; { return type might be wrong }

function GTK_TYPE_CONSTRAINT_LAYOUT_CHILD : longint; { return type might be wrong }

function GTK_CONSTRAINT_VFL_PARSER_ERROR : longint; { return type might be wrong }






function gtk_constraint_vfl_parser_error_quark:TGQuark;cdecl;external;

function gtk_constraint_layout_new:PGtkLayoutManager;cdecl;external;

procedure gtk_constraint_layout_add_constraint(layout:PGtkConstraintLayout; constraint:PGtkConstraint);cdecl;external;

procedure gtk_constraint_layout_remove_constraint(layout:PGtkConstraintLayout; constraint:PGtkConstraint);cdecl;external;

procedure gtk_constraint_layout_add_guide(layout:PGtkConstraintLayout; guide:PGtkConstraintGuide);cdecl;external;

procedure gtk_constraint_layout_remove_guide(layout:PGtkConstraintLayout; guide:PGtkConstraintGuide);cdecl;external;

procedure gtk_constraint_layout_remove_all_constraints(layout:PGtkConstraintLayout);cdecl;external;

function gtk_constraint_layout_add_constraints_from_description(layout:PGtkConstraintLayout; lines:PPchar; n_lines:Tgsize; hspacing:longint; vspacing:longint; 
           error:PPGError; first_view:Pchar; args:array of const):PGList;cdecl;external;
function gtk_constraint_layout_add_constraints_from_description(layout:PGtkConstraintLayout; lines:PPchar; n_lines:Tgsize; hspacing:longint; vspacing:longint; 
           error:PPGError; first_view:Pchar):PGList;cdecl;external;

function gtk_constraint_layout_add_constraints_from_descriptionv(layout:PGtkConstraintLayout; lines:PPchar; n_lines:Tgsize; hspacing:longint; vspacing:longint; 
           views:PGHashTable; error:PPGError):PGList;cdecl;external;

function gtk_constraint_layout_observe_constraints(layout:PGtkConstraintLayout):PGListModel;cdecl;external;

function gtk_constraint_layout_observe_guides(layout:PGtkConstraintLayout):PGListModel;cdecl;external;


implementation

function GTK_TYPE_CONSTRAINT_LAYOUT : longint; { return type might be wrong }
  begin
    GTK_TYPE_CONSTRAINT_LAYOUT:=gtk_constraint_layout_get_type;
  end;

function GTK_TYPE_CONSTRAINT_LAYOUT_CHILD : longint; { return type might be wrong }
  begin
    GTK_TYPE_CONSTRAINT_LAYOUT_CHILD:=gtk_constraint_layout_child_get_type;
  end;

function GTK_CONSTRAINT_VFL_PARSER_ERROR : longint; { return type might be wrong }
  begin
    GTK_CONSTRAINT_VFL_PARSER_ERROR:=gtk_constraint_vfl_parser_error_quark;
  end;


end.
