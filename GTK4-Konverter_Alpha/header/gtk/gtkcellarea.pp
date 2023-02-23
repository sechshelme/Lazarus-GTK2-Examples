
unit gtkcellarea;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkcellarea.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkcellarea.h
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
PGdkEvent  = ^GdkEvent;
PGdkRectangle  = ^GdkRectangle;
PGList  = ^GList;
PGParamSpec  = ^GParamSpec;
PGtkCellArea  = ^GtkCellArea;
PGtkCellAreaClass  = ^GtkCellAreaClass;
PGtkCellAreaContext  = ^GtkCellAreaContext;
PGtkCellEditable  = ^GtkCellEditable;
PGtkCellRenderer  = ^GtkCellRenderer;
PGtkSnapshot  = ^GtkSnapshot;
PGtkTreeIter  = ^GtkTreeIter;
PGtkTreeModel  = ^GtkTreeModel;
PGtkWidget  = ^GtkWidget;
Pguint  = ^guint;
PGValue  = ^GValue;
Plongint  = ^longint;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_CELL_AREA_H__}
{$define __GTK_CELL_AREA_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkcellrenderer.h>}
{$include <gtk/gtkwidget.h>}
{$include <gtk/gtktreemodel.h>}


function GTK_TYPE_CELL_AREA : longint; { return type might be wrong }

function GTK_CELL_AREA(obj : longint) : longint;

function GTK_CELL_AREA_CLASS(klass : longint) : longint;

function GTK_IS_CELL_AREA(obj : longint) : longint;

function GTK_IS_CELL_AREA_CLASS(klass : longint) : longint;

function GTK_CELL_AREA_GET_CLASS(obj : longint) : longint;

type


function GTK_CELL_AREA_WARN_INVALID_CELL_PROPERTY_ID(object,property_id,pspec : longint) : longint;


type

  TGtkCellCallback = function (renderer:PGtkCellRenderer; data:Tgpointer):Tgboolean;cdecl;


  TGtkCellAllocCallback = function (renderer:PGtkCellRenderer; cell_area:PGdkRectangle; cell_background:PGdkRectangle; data:Tgpointer):Tgboolean;cdecl;

  PGtkCellArea = ^TGtkCellArea;
  TGtkCellArea = record
      parent_instance : TGInitiallyUnowned;cdecl;
    end;









  PGtkCellAreaClass = ^TGtkCellAreaClass;
  TGtkCellAreaClass = record
      parent_class : TGInitiallyUnownedClass;
      add : procedure (area:PGtkCellArea; renderer:PGtkCellRenderer);cdecl;
      remove : procedure (area:PGtkCellArea; renderer:PGtkCellRenderer);cdecl;
      foreach : procedure (area:PGtkCellArea; callback:TGtkCellCallback; callback_data:Tgpointer);cdecl;
      foreach_alloc : procedure (area:PGtkCellArea; context:PGtkCellAreaContext; widget:PGtkWidget; cell_area:PGdkRectangle; background_area:PGdkRectangle; 
                    callback:TGtkCellAllocCallback; callback_data:Tgpointer);cdecl;
      event : function (area:PGtkCellArea; context:PGtkCellAreaContext; widget:PGtkWidget; event:PGdkEvent; cell_area:PGdkRectangle; 
                   flags:TGtkCellRendererState):longint;cdecl;
      snapshot : procedure (area:PGtkCellArea; context:PGtkCellAreaContext; widget:PGtkWidget; snapshot:PGtkSnapshot; background_area:PGdkRectangle; 
                    cell_area:PGdkRectangle; flags:TGtkCellRendererState; paint_focus:Tgboolean);cdecl;
      apply_attributes : procedure (area:PGtkCellArea; tree_model:PGtkTreeModel; iter:PGtkTreeIter; is_expander:Tgboolean; is_expanded:Tgboolean);cdecl;
      create_context : function (area:PGtkCellArea):PGtkCellAreaContext;cdecl;
      copy_context : function (area:PGtkCellArea; context:PGtkCellAreaContext):PGtkCellAreaContext;cdecl;
      get_request_mode : function (area:PGtkCellArea):TGtkSizeRequestMode;cdecl;
      get_preferred_width : procedure (area:PGtkCellArea; context:PGtkCellAreaContext; widget:PGtkWidget; minimum_width:Plongint; natural_width:Plongint);cdecl;
      get_preferred_height_for_width : procedure (area:PGtkCellArea; context:PGtkCellAreaContext; widget:PGtkWidget; width:longint; minimum_height:Plongint; 
                    natural_height:Plongint);cdecl;
      get_preferred_height : procedure (area:PGtkCellArea; context:PGtkCellAreaContext; widget:PGtkWidget; minimum_height:Plongint; natural_height:Plongint);cdecl;
      get_preferred_width_for_height : procedure (area:PGtkCellArea; context:PGtkCellAreaContext; widget:PGtkWidget; height:longint; minimum_width:Plongint; 
                    natural_width:Plongint);cdecl;
      set_cell_property : procedure (area:PGtkCellArea; renderer:PGtkCellRenderer; property_id:Tguint; value:PGValue; pspec:PGParamSpec);cdecl;
      get_cell_property : procedure (area:PGtkCellArea; renderer:PGtkCellRenderer; property_id:Tguint; value:PGValue; pspec:PGParamSpec);cdecl;
      focus : function (area:PGtkCellArea; direction:TGtkDirectionType):Tgboolean;cdecl;
      is_activatable : function (area:PGtkCellArea):Tgboolean;cdecl;
      activate : function (area:PGtkCellArea; context:PGtkCellAreaContext; widget:PGtkWidget; cell_area:PGdkRectangle; flags:TGtkCellRendererState; 
                   edit_only:Tgboolean):Tgboolean;cdecl;
      padding : array[0..7] of Tgpointer;
    end;



function gtk_cell_area_get_type:TGType;cdecl;external;


procedure gtk_cell_area_add(area:PGtkCellArea; renderer:PGtkCellRenderer);cdecl;external;

procedure gtk_cell_area_remove(area:PGtkCellArea; renderer:PGtkCellRenderer);cdecl;external;

function gtk_cell_area_has_renderer(area:PGtkCellArea; renderer:PGtkCellRenderer):Tgboolean;cdecl;external;

procedure gtk_cell_area_foreach(area:PGtkCellArea; callback:TGtkCellCallback; callback_data:Tgpointer);cdecl;external;

procedure gtk_cell_area_foreach_alloc(area:PGtkCellArea; context:PGtkCellAreaContext; widget:PGtkWidget; cell_area:PGdkRectangle; background_area:PGdkRectangle; 
            callback:TGtkCellAllocCallback; callback_data:Tgpointer);cdecl;external;

function gtk_cell_area_event(area:PGtkCellArea; context:PGtkCellAreaContext; widget:PGtkWidget; event:PGdkEvent; cell_area:PGdkRectangle; 
           flags:TGtkCellRendererState):longint;cdecl;external;

procedure gtk_cell_area_snapshot(area:PGtkCellArea; context:PGtkCellAreaContext; widget:PGtkWidget; snapshot:PGtkSnapshot; background_area:PGdkRectangle; 
            cell_area:PGdkRectangle; flags:TGtkCellRendererState; paint_focus:Tgboolean);cdecl;external;

procedure gtk_cell_area_get_cell_allocation(area:PGtkCellArea; context:PGtkCellAreaContext; widget:PGtkWidget; renderer:PGtkCellRenderer; cell_area:PGdkRectangle; 
            allocation:PGdkRectangle);cdecl;external;

function gtk_cell_area_get_cell_at_position(area:PGtkCellArea; context:PGtkCellAreaContext; widget:PGtkWidget; cell_area:PGdkRectangle; x:longint; 
           y:longint; alloc_area:PGdkRectangle):PGtkCellRenderer;cdecl;external;


function gtk_cell_area_create_context(area:PGtkCellArea):PGtkCellAreaContext;cdecl;external;

function gtk_cell_area_copy_context(area:PGtkCellArea; context:PGtkCellAreaContext):PGtkCellAreaContext;cdecl;external;

function gtk_cell_area_get_request_mode(area:PGtkCellArea):TGtkSizeRequestMode;cdecl;external;

procedure gtk_cell_area_get_preferred_width(area:PGtkCellArea; context:PGtkCellAreaContext; widget:PGtkWidget; minimum_width:Plongint; natural_width:Plongint);cdecl;external;

procedure gtk_cell_area_get_preferred_height_for_width(area:PGtkCellArea; context:PGtkCellAreaContext; widget:PGtkWidget; width:longint; minimum_height:Plongint; 
            natural_height:Plongint);cdecl;external;

procedure gtk_cell_area_get_preferred_height(area:PGtkCellArea; context:PGtkCellAreaContext; widget:PGtkWidget; minimum_height:Plongint; natural_height:Plongint);cdecl;external;

procedure gtk_cell_area_get_preferred_width_for_height(area:PGtkCellArea; context:PGtkCellAreaContext; widget:PGtkWidget; height:longint; minimum_width:Plongint; 
            natural_width:Plongint);cdecl;external;

function gtk_cell_area_get_current_path_string(area:PGtkCellArea):Pchar;cdecl;external;


procedure gtk_cell_area_apply_attributes(area:PGtkCellArea; tree_model:PGtkTreeModel; iter:PGtkTreeIter; is_expander:Tgboolean; is_expanded:Tgboolean);cdecl;external;

procedure gtk_cell_area_attribute_connect(area:PGtkCellArea; renderer:PGtkCellRenderer; attribute:Pchar; column:longint);cdecl;external;

procedure gtk_cell_area_attribute_disconnect(area:PGtkCellArea; renderer:PGtkCellRenderer; attribute:Pchar);cdecl;external;

function gtk_cell_area_attribute_get_column(area:PGtkCellArea; renderer:PGtkCellRenderer; attribute:Pchar):longint;cdecl;external;


procedure gtk_cell_area_class_install_cell_property(aclass:PGtkCellAreaClass; property_id:Tguint; pspec:PGParamSpec);cdecl;external;

function gtk_cell_area_class_find_cell_property(aclass:PGtkCellAreaClass; property_name:Pchar):PGParamSpec;cdecl;external;

function gtk_cell_area_class_list_cell_properties(aclass:PGtkCellAreaClass; n_properties:Pguint):^PGParamSpec;cdecl;external;

procedure gtk_cell_area_add_with_properties(area:PGtkCellArea; renderer:PGtkCellRenderer; first_prop_name:Pchar; args:array of const);cdecl;external;
procedure gtk_cell_area_add_with_properties(area:PGtkCellArea; renderer:PGtkCellRenderer; first_prop_name:Pchar);cdecl;external;

procedure gtk_cell_area_cell_set(area:PGtkCellArea; renderer:PGtkCellRenderer; first_prop_name:Pchar; args:array of const);cdecl;external;
procedure gtk_cell_area_cell_set(area:PGtkCellArea; renderer:PGtkCellRenderer; first_prop_name:Pchar);cdecl;external;

procedure gtk_cell_area_cell_get(area:PGtkCellArea; renderer:PGtkCellRenderer; first_prop_name:Pchar; args:array of const);cdecl;external;
procedure gtk_cell_area_cell_get(area:PGtkCellArea; renderer:PGtkCellRenderer; first_prop_name:Pchar);cdecl;external;

procedure gtk_cell_area_cell_set_valist(area:PGtkCellArea; renderer:PGtkCellRenderer; first_property_name:Pchar; var_args:Tva_list);cdecl;external;

procedure gtk_cell_area_cell_get_valist(area:PGtkCellArea; renderer:PGtkCellRenderer; first_property_name:Pchar; var_args:Tva_list);cdecl;external;

procedure gtk_cell_area_cell_set_property(area:PGtkCellArea; renderer:PGtkCellRenderer; property_name:Pchar; value:PGValue);cdecl;external;

procedure gtk_cell_area_cell_get_property(area:PGtkCellArea; renderer:PGtkCellRenderer; property_name:Pchar; value:PGValue);cdecl;external;


function gtk_cell_area_is_activatable(area:PGtkCellArea):Tgboolean;cdecl;external;

function gtk_cell_area_activate(area:PGtkCellArea; context:PGtkCellAreaContext; widget:PGtkWidget; cell_area:PGdkRectangle; flags:TGtkCellRendererState; 
           edit_only:Tgboolean):Tgboolean;cdecl;external;

function gtk_cell_area_focus(area:PGtkCellArea; direction:TGtkDirectionType):Tgboolean;cdecl;external;

procedure gtk_cell_area_set_focus_cell(area:PGtkCellArea; renderer:PGtkCellRenderer);cdecl;external;

function gtk_cell_area_get_focus_cell(area:PGtkCellArea):PGtkCellRenderer;cdecl;external;


procedure gtk_cell_area_add_focus_sibling(area:PGtkCellArea; renderer:PGtkCellRenderer; sibling:PGtkCellRenderer);cdecl;external;

procedure gtk_cell_area_remove_focus_sibling(area:PGtkCellArea; renderer:PGtkCellRenderer; sibling:PGtkCellRenderer);cdecl;external;

function gtk_cell_area_is_focus_sibling(area:PGtkCellArea; renderer:PGtkCellRenderer; sibling:PGtkCellRenderer):Tgboolean;cdecl;external;

function gtk_cell_area_get_focus_siblings(area:PGtkCellArea; renderer:PGtkCellRenderer):PGList;cdecl;external;

function gtk_cell_area_get_focus_from_sibling(area:PGtkCellArea; renderer:PGtkCellRenderer):PGtkCellRenderer;cdecl;external;


function gtk_cell_area_get_edited_cell(area:PGtkCellArea):PGtkCellRenderer;cdecl;external;

function gtk_cell_area_get_edit_widget(area:PGtkCellArea):PGtkCellEditable;cdecl;external;

function gtk_cell_area_activate_cell(area:PGtkCellArea; widget:PGtkWidget; renderer:PGtkCellRenderer; event:PGdkEvent; cell_area:PGdkRectangle; 
           flags:TGtkCellRendererState):Tgboolean;cdecl;external;

procedure gtk_cell_area_stop_editing(area:PGtkCellArea; canceled:Tgboolean);cdecl;external;



procedure gtk_cell_area_inner_cell_area(area:PGtkCellArea; widget:PGtkWidget; cell_area:PGdkRectangle; inner_area:PGdkRectangle);cdecl;external;


procedure gtk_cell_area_request_renderer(area:PGtkCellArea; renderer:PGtkCellRenderer; orientation:TGtkOrientation; widget:PGtkWidget; for_size:longint; 
            minimum_size:Plongint; natural_size:Plongint);cdecl;external;

procedure _gtk_cell_area_set_cell_data_func_with_proxy(area:PGtkCellArea; cell:PGtkCellRenderer; func:TGFunc; func_data:Tgpointer; destroy:TGDestroyNotify; 
            proxy:Tgpointer);cdecl;external;

{$endif}


implementation

function GTK_TYPE_CELL_AREA : longint; { return type might be wrong }
  begin
    GTK_TYPE_CELL_AREA:=gtk_cell_area_get_type;
  end;

function GTK_CELL_AREA(obj : longint) : longint;
begin
  GTK_CELL_AREA:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_CELL_AREA,GtkCellArea);
end;

function GTK_CELL_AREA_CLASS(klass : longint) : longint;
begin
  GTK_CELL_AREA_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_CELL_AREA,GtkCellAreaClass);
end;

function GTK_IS_CELL_AREA(obj : longint) : longint;
begin
  GTK_IS_CELL_AREA:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_CELL_AREA);
end;

function GTK_IS_CELL_AREA_CLASS(klass : longint) : longint;
begin
  GTK_IS_CELL_AREA_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_CELL_AREA);
end;

function GTK_CELL_AREA_GET_CLASS(obj : longint) : longint;
begin
  GTK_CELL_AREA_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_CELL_AREA,GtkCellAreaClass);
end;

function GTK_CELL_AREA_WARN_INVALID_CELL_PROPERTY_ID(object,property_id,pspec : longint) : longint;
begin
  GTK_CELL_AREA_WARN_INVALID_CELL_PROPERTY_ID:=G_OBJECT_WARN_INVALID_PSPEC(object,'cell property id',property_id,pspec);
end;


end.
