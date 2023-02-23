
unit gtkcenterlayout;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkcenterlayout.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkcenterlayout.h
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
PGtkCenterLayout  = ^GtkCenterLayout;
PGtkLayoutManager  = ^GtkLayoutManager;
PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$include <gtk/gtklayoutmanager.h>}


function GTK_TYPE_CENTER_LAYOUT : longint; { return type might be wrong }




function gtk_center_layout_new:PGtkLayoutManager;cdecl;external;

procedure gtk_center_layout_set_orientation(self:PGtkCenterLayout; orientation:TGtkOrientation);cdecl;external;

function gtk_center_layout_get_orientation(self:PGtkCenterLayout):TGtkOrientation;cdecl;external;

procedure gtk_center_layout_set_baseline_position(self:PGtkCenterLayout; baseline_position:TGtkBaselinePosition);cdecl;external;

function gtk_center_layout_get_baseline_position(self:PGtkCenterLayout):TGtkBaselinePosition;cdecl;external;

procedure gtk_center_layout_set_start_widget(self:PGtkCenterLayout; widget:PGtkWidget);cdecl;external;

function gtk_center_layout_get_start_widget(self:PGtkCenterLayout):PGtkWidget;cdecl;external;

procedure gtk_center_layout_set_center_widget(self:PGtkCenterLayout; widget:PGtkWidget);cdecl;external;

function gtk_center_layout_get_center_widget(self:PGtkCenterLayout):PGtkWidget;cdecl;external;

procedure gtk_center_layout_set_end_widget(self:PGtkCenterLayout; widget:PGtkWidget);cdecl;external;

function gtk_center_layout_get_end_widget(self:PGtkCenterLayout):PGtkWidget;cdecl;external;


implementation

function GTK_TYPE_CENTER_LAYOUT : longint; { return type might be wrong }
  begin
    GTK_TYPE_CENTER_LAYOUT:=gtk_center_layout_get_type;
  end;


end.
