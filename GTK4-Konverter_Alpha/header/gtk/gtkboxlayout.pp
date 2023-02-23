
unit gtkboxlayout;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkboxlayout.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkboxlayout.h
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



{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkenums.h>}
{$include <gtk/gtklayoutmanager.h>}


function GTK_TYPE_BOX_LAYOUT : longint; { return type might be wrong }




function gtk_box_layout_new(orientation:TGtkOrientation):PGtkLayoutManager;cdecl;external;

procedure gtk_box_layout_set_homogeneous(var box_layout:TGtkBoxLayout; homogeneous:Tgboolean);cdecl;external;

function gtk_box_layout_get_homogeneous(var box_layout:TGtkBoxLayout):Tgboolean;cdecl;external;

procedure gtk_box_layout_set_spacing(var box_layout:TGtkBoxLayout; spacing:Tguint);cdecl;external;

function gtk_box_layout_get_spacing(var box_layout:TGtkBoxLayout):Tguint;cdecl;external;

procedure gtk_box_layout_set_baseline_position(var box_layout:TGtkBoxLayout; position:TGtkBaselinePosition);cdecl;external;

function gtk_box_layout_get_baseline_position(var box_layout:TGtkBoxLayout):TGtkBaselinePosition;cdecl;external;


implementation

function GTK_TYPE_BOX_LAYOUT : longint; { return type might be wrong }
  begin
    GTK_TYPE_BOX_LAYOUT:=gtk_box_layout_get_type;
  end;


end.
