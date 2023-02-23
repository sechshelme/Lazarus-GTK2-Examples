
unit gtkgridview;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkgridview.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkgridview.h
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
PGtkGridView  = ^GtkGridView;
PGtkListItemFactory  = ^GtkListItemFactory;
PGtkSelectionModel  = ^GtkSelectionModel;
PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_GRID_VIEW_H__}
{$define __GTK_GRID_VIEW_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtklistbase.h>}


function GTK_TYPE_GRID_VIEW : longint; { return type might be wrong }

function GTK_GRID_VIEW(o : longint) : longint;

function GTK_GRID_VIEW_CLASS(k : longint) : longint;

function GTK_IS_GRID_VIEW(o : longint) : longint;

function GTK_IS_GRID_VIEW_CLASS(k : longint) : longint;

function GTK_GRID_VIEW_GET_CLASS(o : longint) : longint;

type


function gtk_grid_view_get_type:TGType;cdecl;external;

function gtk_grid_view_new(model:PGtkSelectionModel; factory:PGtkListItemFactory):PGtkWidget;cdecl;external;

function gtk_grid_view_get_model(self:PGtkGridView):PGtkSelectionModel;cdecl;external;

procedure gtk_grid_view_set_model(self:PGtkGridView; model:PGtkSelectionModel);cdecl;external;

procedure gtk_grid_view_set_factory(self:PGtkGridView; factory:PGtkListItemFactory);cdecl;external;

function gtk_grid_view_get_factory(self:PGtkGridView):PGtkListItemFactory;cdecl;external;

function gtk_grid_view_get_min_columns(self:PGtkGridView):Tguint;cdecl;external;

procedure gtk_grid_view_set_min_columns(self:PGtkGridView; min_columns:Tguint);cdecl;external;

function gtk_grid_view_get_max_columns(self:PGtkGridView):Tguint;cdecl;external;

procedure gtk_grid_view_set_max_columns(self:PGtkGridView; max_columns:Tguint);cdecl;external;

procedure gtk_grid_view_set_enable_rubberband(self:PGtkGridView; enable_rubberband:Tgboolean);cdecl;external;

function gtk_grid_view_get_enable_rubberband(self:PGtkGridView):Tgboolean;cdecl;external;

procedure gtk_grid_view_set_single_click_activate(self:PGtkGridView; single_click_activate:Tgboolean);cdecl;external;

function gtk_grid_view_get_single_click_activate(self:PGtkGridView):Tgboolean;cdecl;external;

{$endif}


implementation

function GTK_TYPE_GRID_VIEW : longint; { return type might be wrong }
  begin
    GTK_TYPE_GRID_VIEW:=gtk_grid_view_get_type;
  end;

function GTK_GRID_VIEW(o : longint) : longint;
begin
  GTK_GRID_VIEW:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_GRID_VIEW,GtkGridView);
end;

function GTK_GRID_VIEW_CLASS(k : longint) : longint;
begin
  GTK_GRID_VIEW_CLASS:=G_TYPE_CHECK_CLASS_CAST(k,GTK_TYPE_GRID_VIEW,GtkGridViewClass);
end;

function GTK_IS_GRID_VIEW(o : longint) : longint;
begin
  GTK_IS_GRID_VIEW:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_GRID_VIEW);
end;

function GTK_IS_GRID_VIEW_CLASS(k : longint) : longint;
begin
  GTK_IS_GRID_VIEW_CLASS:=G_TYPE_CHECK_CLASS_TYPE(k,GTK_TYPE_GRID_VIEW);
end;

function GTK_GRID_VIEW_GET_CLASS(o : longint) : longint;
begin
  GTK_GRID_VIEW_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GTK_TYPE_GRID_VIEW,GtkGridViewClass);
end;


end.
