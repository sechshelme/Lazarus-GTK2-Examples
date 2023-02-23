
unit gtkbinlayout;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkbinlayout.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkbinlayout.h
    -v
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
PGtkLayoutManager  = ^GtkLayoutManager;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$include <gtk/gtklayoutmanager.h>}


function GTK_TYPE_BIN_LAYOUT : longint; { return type might be wrong }




function gtk_bin_layout_new:PGtkLayoutManager;cdecl;external;


implementation

function GTK_TYPE_BIN_LAYOUT : longint; { return type might be wrong }
  begin
    GTK_TYPE_BIN_LAYOUT:=gtk_bin_layout_get_type;
  end;


end.
