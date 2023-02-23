
unit gtkcellrenderer;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkcellrenderer.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkcellrenderer.h
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
PGtkCellEditable  = ^GtkCellEditable;
PGtkCellRenderer  = ^GtkCellRenderer;
PGtkCellRendererClass  = ^GtkCellRendererClass;
PGtkCellRendererMode  = ^GtkCellRendererMode;
PGtkCellRendererPrivate  = ^GtkCellRendererPrivate;
PGtkCellRendererState  = ^GtkCellRendererState;
PGtkRequisition  = ^GtkRequisition;
PGtkSnapshot  = ^GtkSnapshot;
PGtkWidget  = ^GtkWidget;
Plongint  = ^longint;
Psingle  = ^single;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_CELL_RENDERER_H__}
{$define __GTK_CELL_RENDERER_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkcelleditable.h>}



type
  PGtkCellRendererState = ^TGtkCellRendererState;
  TGtkCellRendererState = (GTK_CELL_RENDERER_SELECTED := 1 shl 0,GTK_CELL_RENDERER_PRELIT := 1 shl 1,
    GTK_CELL_RENDERER_INSENSITIVE := 1 shl 2,GTK_CELL_RENDERER_SORTED := 1 shl 3,
    GTK_CELL_RENDERER_FOCUSED := 1 shl 4,GTK_CELL_RENDERER_EXPANDABLE := 1 shl 5,
    GTK_CELL_RENDERER_EXPANDED := 1 shl 6);


  PGtkCellRendererMode = ^TGtkCellRendererMode;
  TGtkCellRendererMode = (GTK_CELL_RENDERER_MODE_INERT,GTK_CELL_RENDERER_MODE_ACTIVATABLE,
    GTK_CELL_RENDERER_MODE_EDITABLE);

function GTK_TYPE_CELL_RENDERER : longint; { return type might be wrong }

function GTK_CELL_RENDERER(obj : longint) : longint;

function GTK_CELL_RENDERER_CLASS(klass : longint) : longint;

function GTK_IS_CELL_RENDERER(obj : longint) : longint;

function GTK_IS_CELL_RENDERER_CLASS(klass : longint) : longint;

function GTK_CELL_RENDERER_GET_CLASS(obj : longint) : longint;

type

  PGtkCellRenderer = ^TGtkCellRenderer;
  TGtkCellRenderer = record
      parent_instance : TGInitiallyUnowned;
      priv : PGtkCellRendererPrivate;
    end;







  PGtkCellRendererClass = ^TGtkCellRendererClass;
  TGtkCellRendererClass = record
      parent_class : TGInitiallyUnownedClass;
      get_request_mode : function (cell:PGtkCellRenderer):TGtkSizeRequestMode;cdecl;
      get_preferred_width : procedure (cell:PGtkCellRenderer; widget:PGtkWidget; minimum_size:Plongint; natural_size:Plongint);cdecl;
      get_preferred_height_for_width : procedure (cell:PGtkCellRenderer; widget:PGtkWidget; width:longint; minimum_height:Plongint; natural_height:Plongint);cdecl;
      get_preferred_height : procedure (cell:PGtkCellRenderer; widget:PGtkWidget; minimum_size:Plongint; natural_size:Plongint);cdecl;
      get_preferred_width_for_height : procedure (cell:PGtkCellRenderer; widget:PGtkWidget; height:longint; minimum_width:Plongint; natural_width:Plongint);cdecl;
      get_aligned_area : procedure (cell:PGtkCellRenderer; widget:PGtkWidget; flags:TGtkCellRendererState; cell_area:PGdkRectangle; aligned_area:PGdkRectangle);cdecl;
      snapshot : procedure (cell:PGtkCellRenderer; snapshot:PGtkSnapshot; widget:PGtkWidget; background_area:PGdkRectangle; cell_area:PGdkRectangle; 
                    flags:TGtkCellRendererState);cdecl;
      activate : function (cell:PGtkCellRenderer; event:PGdkEvent; widget:PGtkWidget; path:Pchar; background_area:PGdkRectangle; 
                   cell_area:PGdkRectangle; flags:TGtkCellRendererState):Tgboolean;cdecl;
      start_editing : function (cell:PGtkCellRenderer; event:PGdkEvent; widget:PGtkWidget; path:Pchar; background_area:PGdkRectangle; 
                   cell_area:PGdkRectangle; flags:TGtkCellRendererState):PGtkCellEditable;cdecl;
      editing_canceled : procedure (cell:PGtkCellRenderer);cdecl;
      editing_started : procedure (cell:PGtkCellRenderer; editable:PGtkCellEditable; path:Pchar);cdecl;
      padding : array[0..7] of Tgpointer;
    end;



function gtk_cell_renderer_get_type:TGType;cdecl;external;

function gtk_cell_renderer_get_request_mode(cell:PGtkCellRenderer):TGtkSizeRequestMode;cdecl;external;

procedure gtk_cell_renderer_get_preferred_width(cell:PGtkCellRenderer; widget:PGtkWidget; minimum_size:Plongint; natural_size:Plongint);cdecl;external;

procedure gtk_cell_renderer_get_preferred_height_for_width(cell:PGtkCellRenderer; widget:PGtkWidget; width:longint; minimum_height:Plongint; natural_height:Plongint);cdecl;external;

procedure gtk_cell_renderer_get_preferred_height(cell:PGtkCellRenderer; widget:PGtkWidget; minimum_size:Plongint; natural_size:Plongint);cdecl;external;

procedure gtk_cell_renderer_get_preferred_width_for_height(cell:PGtkCellRenderer; widget:PGtkWidget; height:longint; minimum_width:Plongint; natural_width:Plongint);cdecl;external;

procedure gtk_cell_renderer_get_preferred_size(cell:PGtkCellRenderer; widget:PGtkWidget; minimum_size:PGtkRequisition; natural_size:PGtkRequisition);cdecl;external;

procedure gtk_cell_renderer_get_aligned_area(cell:PGtkCellRenderer; widget:PGtkWidget; flags:TGtkCellRendererState; cell_area:PGdkRectangle; aligned_area:PGdkRectangle);cdecl;external;

procedure gtk_cell_renderer_snapshot(cell:PGtkCellRenderer; snapshot:PGtkSnapshot; widget:PGtkWidget; background_area:PGdkRectangle; cell_area:PGdkRectangle; 
            flags:TGtkCellRendererState);cdecl;external;

function gtk_cell_renderer_activate(cell:PGtkCellRenderer; event:PGdkEvent; widget:PGtkWidget; path:Pchar; background_area:PGdkRectangle; 
           cell_area:PGdkRectangle; flags:TGtkCellRendererState):Tgboolean;cdecl;external;

function gtk_cell_renderer_start_editing(cell:PGtkCellRenderer; event:PGdkEvent; widget:PGtkWidget; path:Pchar; background_area:PGdkRectangle; 
           cell_area:PGdkRectangle; flags:TGtkCellRendererState):PGtkCellEditable;cdecl;external;

procedure gtk_cell_renderer_set_fixed_size(cell:PGtkCellRenderer; width:longint; height:longint);cdecl;external;

procedure gtk_cell_renderer_get_fixed_size(cell:PGtkCellRenderer; width:Plongint; height:Plongint);cdecl;external;

procedure gtk_cell_renderer_set_alignment(cell:PGtkCellRenderer; xalign:single; yalign:single);cdecl;external;

procedure gtk_cell_renderer_get_alignment(cell:PGtkCellRenderer; xalign:Psingle; yalign:Psingle);cdecl;external;

procedure gtk_cell_renderer_set_padding(cell:PGtkCellRenderer; xpad:longint; ypad:longint);cdecl;external;

procedure gtk_cell_renderer_get_padding(cell:PGtkCellRenderer; xpad:Plongint; ypad:Plongint);cdecl;external;

procedure gtk_cell_renderer_set_visible(cell:PGtkCellRenderer; visible:Tgboolean);cdecl;external;

function gtk_cell_renderer_get_visible(cell:PGtkCellRenderer):Tgboolean;cdecl;external;

procedure gtk_cell_renderer_set_sensitive(cell:PGtkCellRenderer; sensitive:Tgboolean);cdecl;external;

function gtk_cell_renderer_get_sensitive(cell:PGtkCellRenderer):Tgboolean;cdecl;external;

function gtk_cell_renderer_is_activatable(cell:PGtkCellRenderer):Tgboolean;cdecl;external;

procedure gtk_cell_renderer_set_is_expander(cell:PGtkCellRenderer; is_expander:Tgboolean);cdecl;external;

function gtk_cell_renderer_get_is_expander(cell:PGtkCellRenderer):Tgboolean;cdecl;external;

procedure gtk_cell_renderer_set_is_expanded(cell:PGtkCellRenderer; is_expanded:Tgboolean);cdecl;external;

function gtk_cell_renderer_get_is_expanded(cell:PGtkCellRenderer):Tgboolean;cdecl;external;


procedure gtk_cell_renderer_stop_editing(cell:PGtkCellRenderer; canceled:Tgboolean);cdecl;external;
procedure _gtk_cell_renderer_calc_offset(cell:PGtkCellRenderer; cell_area:PGdkRectangle; direction:TGtkTextDirection; width:longint; height:longint; 
            x_offset:Plongint; y_offset:Plongint);cdecl;external;

function gtk_cell_renderer_get_state(cell:PGtkCellRenderer; widget:PGtkWidget; cell_state:TGtkCellRendererState):TGtkStateFlags;cdecl;external;

{$endif}


implementation

function GTK_TYPE_CELL_RENDERER : longint; { return type might be wrong }
  begin
    GTK_TYPE_CELL_RENDERER:=gtk_cell_renderer_get_type;
  end;

function GTK_CELL_RENDERER(obj : longint) : longint;
begin
  GTK_CELL_RENDERER:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_CELL_RENDERER,GtkCellRenderer);
end;

function GTK_CELL_RENDERER_CLASS(klass : longint) : longint;
begin
  GTK_CELL_RENDERER_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_CELL_RENDERER,GtkCellRendererClass);
end;

function GTK_IS_CELL_RENDERER(obj : longint) : longint;
begin
  GTK_IS_CELL_RENDERER:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_CELL_RENDERER);
end;

function GTK_IS_CELL_RENDERER_CLASS(klass : longint) : longint;
begin
  GTK_IS_CELL_RENDERER_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_CELL_RENDERER);
end;

function GTK_CELL_RENDERER_GET_CLASS(obj : longint) : longint;
begin
  GTK_CELL_RENDERER_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_CELL_RENDERER,GtkCellRendererClass);
end;


end.
