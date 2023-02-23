
unit gtkoverlaylayout;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkoverlaylayout.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkoverlaylayout.h
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
PGtkOverlayLayoutChild  = ^GtkOverlayLayoutChild;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$include <gtk/gtklayoutmanager.h>}


function GTK_TYPE_OVERLAY_LAYOUT : longint; { return type might be wrong }

function GTK_TYPE_OVERLAY_LAYOUT_CHILD : longint; { return type might be wrong }





function gtk_overlay_layout_new:PGtkLayoutManager;cdecl;external;




procedure gtk_overlay_layout_child_set_measure(child:PGtkOverlayLayoutChild; measure:Tgboolean);cdecl;external;

function gtk_overlay_layout_child_get_measure(child:PGtkOverlayLayoutChild):Tgboolean;cdecl;external;

procedure gtk_overlay_layout_child_set_clip_overlay(child:PGtkOverlayLayoutChild; clip_overlay:Tgboolean);cdecl;external;

function gtk_overlay_layout_child_get_clip_overlay(child:PGtkOverlayLayoutChild):Tgboolean;cdecl;external;


implementation

function GTK_TYPE_OVERLAY_LAYOUT : longint; { return type might be wrong }
  begin
    GTK_TYPE_OVERLAY_LAYOUT:=gtk_overlay_layout_get_type;
  end;

function GTK_TYPE_OVERLAY_LAYOUT_CHILD : longint; { return type might be wrong }
  begin
    GTK_TYPE_OVERLAY_LAYOUT_CHILD:=gtk_overlay_layout_child_get_type;
  end;


end.
