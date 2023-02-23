
unit gtkcelllayout;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkcelllayout.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkcelllayout.h
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
PGList  = ^GList;
PGObject  = ^GObject;
Pgpointer  = ^gpointer;
PGtkBuildable  = ^GtkBuildable;
PGtkBuildableParser  = ^GtkBuildableParser;
PGtkBuilder  = ^GtkBuilder;
PGtkCellArea  = ^GtkCellArea;
PGtkCellLayout  = ^GtkCellLayout;
PGtkCellLayoutIface  = ^GtkCellLayoutIface;
PGtkCellRenderer  = ^GtkCellRenderer;
PGtkTreeIter  = ^GtkTreeIter;
PGtkTreeModel  = ^GtkTreeModel;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_CELL_LAYOUT_H__}
{$define __GTK_CELL_LAYOUT_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkcellrenderer.h>}
{$include <gtk/gtkcellarea.h>}
{$include <gtk/gtkbuildable.h>}
{$include <gtk/gtkbuilder.h>}


function GTK_TYPE_CELL_LAYOUT : longint; { return type might be wrong }

function GTK_CELL_LAYOUT(obj : longint) : longint;

function GTK_IS_CELL_LAYOUT(obj : longint) : longint;

function GTK_CELL_LAYOUT_GET_IFACE(obj : longint) : longint;

type




  TGtkCellLayoutDataFunc = procedure (cell_layout:PGtkCellLayout; cell:PGtkCellRenderer; tree_model:PGtkTreeModel; iter:PGtkTreeIter; data:Tgpointer);cdecl;




  PGtkCellLayoutIface = ^TGtkCellLayoutIface;
  TGtkCellLayoutIface = record
      g_iface : TGTypeInterface;cdecl;
      pack_start : procedure (cell_layout:PGtkCellLayout; cell:PGtkCellRenderer; expand:Tgboolean);cdecl;
      pack_end : procedure (cell_layout:PGtkCellLayout; cell:PGtkCellRenderer; expand:Tgboolean);cdecl;
      clear : procedure (cell_layout:PGtkCellLayout);cdecl;
      add_attribute : procedure (cell_layout:PGtkCellLayout; cell:PGtkCellRenderer; attribute:Pchar; column:longint);cdecl;
      set_cell_data_func : procedure (cell_layout:PGtkCellLayout; cell:PGtkCellRenderer; func:TGtkCellLayoutDataFunc; func_data:Tgpointer; destroy:TGDestroyNotify);cdecl;
      clear_attributes : procedure (cell_layout:PGtkCellLayout; cell:PGtkCellRenderer);cdecl;
      reorder : procedure (cell_layout:PGtkCellLayout; cell:PGtkCellRenderer; position:longint);cdecl;
      get_cells : function (cell_layout:PGtkCellLayout):PGList;cdecl;
      get_area : function (cell_layout:PGtkCellLayout):PGtkCellArea;cdecl;
    end;



function gtk_cell_layout_get_type:TGType;cdecl;external;

procedure gtk_cell_layout_pack_start(cell_layout:PGtkCellLayout; cell:PGtkCellRenderer; expand:Tgboolean);cdecl;external;

procedure gtk_cell_layout_pack_end(cell_layout:PGtkCellLayout; cell:PGtkCellRenderer; expand:Tgboolean);cdecl;external;

function gtk_cell_layout_get_cells(cell_layout:PGtkCellLayout):PGList;cdecl;external;

procedure gtk_cell_layout_clear(cell_layout:PGtkCellLayout);cdecl;external;

procedure gtk_cell_layout_set_attributes(cell_layout:PGtkCellLayout; cell:PGtkCellRenderer; args:array of const);cdecl;external;
procedure gtk_cell_layout_set_attributes(cell_layout:PGtkCellLayout; cell:PGtkCellRenderer);cdecl;external;

procedure gtk_cell_layout_add_attribute(cell_layout:PGtkCellLayout; cell:PGtkCellRenderer; attribute:Pchar; column:longint);cdecl;external;

procedure gtk_cell_layout_set_cell_data_func(cell_layout:PGtkCellLayout; cell:PGtkCellRenderer; func:TGtkCellLayoutDataFunc; func_data:Tgpointer; destroy:TGDestroyNotify);cdecl;external;

procedure gtk_cell_layout_clear_attributes(cell_layout:PGtkCellLayout; cell:PGtkCellRenderer);cdecl;external;

procedure gtk_cell_layout_reorder(cell_layout:PGtkCellLayout; cell:PGtkCellRenderer; position:longint);cdecl;external;

function gtk_cell_layout_get_area(cell_layout:PGtkCellLayout):PGtkCellArea;cdecl;external;
function _gtk_cell_layout_buildable_custom_tag_start(buildable:PGtkBuildable; builder:PGtkBuilder; child:PGObject; tagname:Pchar; parser:PGtkBuildableParser; 
           data:Pgpointer):Tgboolean;cdecl;external;
function _gtk_cell_layout_buildable_custom_tag_end(buildable:PGtkBuildable; builder:PGtkBuilder; child:PGObject; tagname:Pchar; data:Pgpointer):Tgboolean;cdecl;external;
procedure _gtk_cell_layout_buildable_add_child(buildable:PGtkBuildable; builder:PGtkBuilder; child:PGObject; _type:Pchar);cdecl;external;

{$endif}


implementation

function GTK_TYPE_CELL_LAYOUT : longint; { return type might be wrong }
  begin
    GTK_TYPE_CELL_LAYOUT:=gtk_cell_layout_get_type;
  end;

function GTK_CELL_LAYOUT(obj : longint) : longint;
begin
  GTK_CELL_LAYOUT:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_CELL_LAYOUT,GtkCellLayout);
end;

function GTK_IS_CELL_LAYOUT(obj : longint) : longint;
begin
  GTK_IS_CELL_LAYOUT:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_CELL_LAYOUT);
end;

function GTK_CELL_LAYOUT_GET_IFACE(obj : longint) : longint;
begin
  GTK_CELL_LAYOUT_GET_IFACE:=G_TYPE_INSTANCE_GET_INTERFACE(obj,GTK_TYPE_CELL_LAYOUT,GtkCellLayoutIface);
end;


end.
