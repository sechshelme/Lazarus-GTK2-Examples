
unit gtkconstraintguide;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkconstraintguide.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkconstraintguide.h
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
PGtkConstraintGuide  = ^GtkConstraintGuide;
Plongint  = ^longint;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$include <gtk/gtktypes.h>}
{$include <gtk/gtkenums.h>}
{$include <gtk/gtktypebuiltins.h>}


function GTK_TYPE_CONSTRAINT_GUIDE : longint; { return type might be wrong }




function gtk_constraint_guide_new:PGtkConstraintGuide;cdecl;external;

procedure gtk_constraint_guide_set_min_size(guide:PGtkConstraintGuide; width:longint; height:longint);cdecl;external;

procedure gtk_constraint_guide_get_min_size(guide:PGtkConstraintGuide; width:Plongint; height:Plongint);cdecl;external;

procedure gtk_constraint_guide_set_nat_size(guide:PGtkConstraintGuide; width:longint; height:longint);cdecl;external;

procedure gtk_constraint_guide_get_nat_size(guide:PGtkConstraintGuide; width:Plongint; height:Plongint);cdecl;external;

procedure gtk_constraint_guide_set_max_size(guide:PGtkConstraintGuide; width:longint; height:longint);cdecl;external;

procedure gtk_constraint_guide_get_max_size(guide:PGtkConstraintGuide; width:Plongint; height:Plongint);cdecl;external;

function gtk_constraint_guide_get_strength(guide:PGtkConstraintGuide):TGtkConstraintStrength;cdecl;external;

procedure gtk_constraint_guide_set_strength(guide:PGtkConstraintGuide; strength:TGtkConstraintStrength);cdecl;external;

procedure gtk_constraint_guide_set_name(guide:PGtkConstraintGuide; name:Pchar);cdecl;external;

function gtk_constraint_guide_get_name(guide:PGtkConstraintGuide):Pchar;cdecl;external;


implementation

function GTK_TYPE_CONSTRAINT_GUIDE : longint; { return type might be wrong }
  begin
    GTK_TYPE_CONSTRAINT_GUIDE:=gtk_constraint_guide_get_type;
  end;


end.
