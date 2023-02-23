
unit gtklayoutmanager;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtklayoutmanager.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtklayoutmanager.h
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
PGtkLayoutChild  = ^GtkLayoutChild;
PGtkLayoutManager  = ^GtkLayoutManager;
PGtkLayoutManagerClass  = ^GtkLayoutManagerClass;
PGtkWidget  = ^GtkWidget;
Plongint  = ^longint;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$include <gsk/gsk.h>}
{$include <gtk/gtktypes.h>}
{$include <gtk/gtkwidget.h>}
{$include <gtk/gtklayoutchild.h>}


function GTK_TYPE_LAYOUT_MANAGER : longint; { return type might be wrong }








type
  PGtkLayoutManagerClass = ^TGtkLayoutManagerClass;
  TGtkLayoutManagerClass = record
      parent_class : TGObjectClass;
      get_request_mode : function (manager:PGtkLayoutManager; widget:PGtkWidget):TGtkSizeRequestMode;cdecl;
      measure : procedure (manager:PGtkLayoutManager; widget:PGtkWidget; orientation:TGtkOrientation; for_size:longint; minimum:Plongint; 
                    natural:Plongint; minimum_baseline:Plongint; natural_baseline:Plongint);cdecl;
      allocate : procedure (manager:PGtkLayoutManager; widget:PGtkWidget; width:longint; height:longint; baseline:longint);cdecl;
      layout_child_type : TGType;
      create_layout_child : function (manager:PGtkLayoutManager; widget:PGtkWidget; for_child:PGtkWidget):PGtkLayoutChild;cdecl;
      root : procedure (manager:PGtkLayoutManager);cdecl;
      unroot : procedure (manager:PGtkLayoutManager);cdecl;
      _padding : array[0..15] of Tgpointer;
    end;



procedure gtk_layout_manager_measure(manager:PGtkLayoutManager; widget:PGtkWidget; orientation:TGtkOrientation; for_size:longint; minimum:Plongint; 
            natural:Plongint; minimum_baseline:Plongint; natural_baseline:Plongint);cdecl;external;

procedure gtk_layout_manager_allocate(manager:PGtkLayoutManager; widget:PGtkWidget; width:longint; height:longint; baseline:longint);cdecl;external;

function gtk_layout_manager_get_request_mode(manager:PGtkLayoutManager):TGtkSizeRequestMode;cdecl;external;

function gtk_layout_manager_get_widget(manager:PGtkLayoutManager):PGtkWidget;cdecl;external;

procedure gtk_layout_manager_layout_changed(manager:PGtkLayoutManager);cdecl;external;

function gtk_layout_manager_get_layout_child(manager:PGtkLayoutManager; child:PGtkWidget):PGtkLayoutChild;cdecl;external;


implementation

function GTK_TYPE_LAYOUT_MANAGER : longint; { return type might be wrong }
  begin
    GTK_TYPE_LAYOUT_MANAGER:=gtk_layout_manager_get_type;
  end;


end.
