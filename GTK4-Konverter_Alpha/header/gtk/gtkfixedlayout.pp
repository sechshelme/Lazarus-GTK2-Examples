
unit gtkfixedlayout;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkfixedlayout.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkfixedlayout.h
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
PGskTransform  = ^GskTransform;
PGtkFixedLayoutChild  = ^GtkFixedLayoutChild;
PGtkLayoutManager  = ^GtkLayoutManager;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$include <gtk/gtklayoutmanager.h>}


function GTK_TYPE_FIXED_LAYOUT : longint; { return type might be wrong }

function GTK_TYPE_FIXED_LAYOUT_CHILD : longint; { return type might be wrong }





function gtk_fixed_layout_new:PGtkLayoutManager;cdecl;external;




procedure gtk_fixed_layout_child_set_transform(child:PGtkFixedLayoutChild; transform:PGskTransform);cdecl;external;

function gtk_fixed_layout_child_get_transform(child:PGtkFixedLayoutChild):PGskTransform;cdecl;external;


implementation

function GTK_TYPE_FIXED_LAYOUT : longint; { return type might be wrong }
  begin
    GTK_TYPE_FIXED_LAYOUT:=gtk_fixed_layout_get_type;
  end;

function GTK_TYPE_FIXED_LAYOUT_CHILD : longint; { return type might be wrong }
  begin
    GTK_TYPE_FIXED_LAYOUT_CHILD:=gtk_fixed_layout_child_get_type;
  end;


end.
