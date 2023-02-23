
unit gtkcustomlayout;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkcustomlayout.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkcustomlayout.h
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
PGtkWidget  = ^GtkWidget;
Plongint  = ^longint;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$include <gtk/gtklayoutmanager.h>}


function GTK_TYPE_CUSTOM_LAYOUT : longint; { return type might be wrong }


type

  TGtkCustomRequestModeFunc = function (widget:PGtkWidget):TGtkSizeRequestMode;cdecl;


  TGtkCustomMeasureFunc = procedure (widget:PGtkWidget; orientation:TGtkOrientation; for_size:longint; minimum:Plongint; natural:Plongint; 
                minimum_baseline:Plongint; natural_baseline:Plongint);cdecl;


  TGtkCustomAllocateFunc = procedure (widget:PGtkWidget; width:longint; height:longint; baseline:longint);cdecl;




function gtk_custom_layout_new(request_mode:TGtkCustomRequestModeFunc; measure:TGtkCustomMeasureFunc; allocate:TGtkCustomAllocateFunc):PGtkLayoutManager;cdecl;external;


implementation

function GTK_TYPE_CUSTOM_LAYOUT : longint; { return type might be wrong }
  begin
    GTK_TYPE_CUSTOM_LAYOUT:=gtk_custom_layout_get_type;
  end;


end.
