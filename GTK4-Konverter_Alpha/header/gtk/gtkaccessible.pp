
unit gtkaccessible;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkaccessible.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkaccessible.h
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
PGtkAccessible  = ^GtkAccessible;
PGtkAccessibleProperty  = ^GtkAccessibleProperty;
PGtkAccessibleRelation  = ^GtkAccessibleRelation;
PGtkAccessibleState  = ^GtkAccessibleState;
PGValue  = ^GValue;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <glib-object.h>}
{$include <gtk/gtktypes.h>}
{$include <gtk/gtkenums.h>}


function GTK_TYPE_ACCESSIBLE : longint; { return type might be wrong }




function gtk_accessible_get_accessible_role(self:PGtkAccessible):TGtkAccessibleRole;cdecl;external;

procedure gtk_accessible_update_state(self:PGtkAccessible; first_state:TGtkAccessibleState; args:array of const);cdecl;external;
procedure gtk_accessible_update_state(self:PGtkAccessible; first_state:TGtkAccessibleState);cdecl;external;

procedure gtk_accessible_update_property(self:PGtkAccessible; first_property:TGtkAccessibleProperty; args:array of const);cdecl;external;
procedure gtk_accessible_update_property(self:PGtkAccessible; first_property:TGtkAccessibleProperty);cdecl;external;

procedure gtk_accessible_update_relation(self:PGtkAccessible; first_relation:TGtkAccessibleRelation; args:array of const);cdecl;external;
procedure gtk_accessible_update_relation(self:PGtkAccessible; first_relation:TGtkAccessibleRelation);cdecl;external;

procedure gtk_accessible_update_state_value(self:PGtkAccessible; n_states:longint; states:PGtkAccessibleState; values:PGValue);cdecl;external;

procedure gtk_accessible_update_property_value(self:PGtkAccessible; n_properties:longint; properties:PGtkAccessibleProperty; values:PGValue);cdecl;external;

procedure gtk_accessible_update_relation_value(self:PGtkAccessible; n_relations:longint; relations:PGtkAccessibleRelation; values:PGValue);cdecl;external;

procedure gtk_accessible_reset_state(self:PGtkAccessible; state:TGtkAccessibleState);cdecl;external;

procedure gtk_accessible_reset_property(self:PGtkAccessible; _property:TGtkAccessibleProperty);cdecl;external;

procedure gtk_accessible_reset_relation(self:PGtkAccessible; relation:TGtkAccessibleRelation);cdecl;external;

procedure gtk_accessible_state_init_value(state:TGtkAccessibleState; value:PGValue);cdecl;external;

procedure gtk_accessible_property_init_value(_property:TGtkAccessibleProperty; value:PGValue);cdecl;external;

procedure gtk_accessible_relation_init_value(relation:TGtkAccessibleRelation; value:PGValue);cdecl;external;


implementation

function GTK_TYPE_ACCESSIBLE : longint; { return type might be wrong }
  begin
    GTK_TYPE_ACCESSIBLE:=gtk_accessible_get_type;
  end;


end.
