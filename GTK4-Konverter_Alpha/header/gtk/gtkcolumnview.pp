
unit gtkcolumnview;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkcolumnview.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkcolumnview.h
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
PGListModel  = ^GListModel;
PGtkColumnView  = ^GtkColumnView;
PGtkColumnViewColumn  = ^GtkColumnViewColumn;
PGtkSelectionModel  = ^GtkSelectionModel;
PGtkSorter  = ^GtkSorter;
PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_COLUMN_VIEW_H__}
{$define __GTK_COLUMN_VIEW_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtktypes.h>}
{$include <gtk/gtksortlistmodel.h>}
{$include <gtk/gtkselectionmodel.h>}
{$include <gtk/gtksorter.h>}


function GTK_TYPE_COLUMN_VIEW : longint; { return type might be wrong }

function GTK_COLUMN_VIEW(o : longint) : longint;

function GTK_COLUMN_VIEW_CLASS(k : longint) : longint;

function GTK_IS_COLUMN_VIEW(o : longint) : longint;

function GTK_IS_COLUMN_VIEW_CLASS(k : longint) : longint;

function GTK_COLUMN_VIEW_GET_CLASS(o : longint) : longint;

type



function gtk_column_view_get_type:TGType;cdecl;external;

function gtk_column_view_new(model:PGtkSelectionModel):PGtkWidget;cdecl;external;

function gtk_column_view_get_columns(self:PGtkColumnView):PGListModel;cdecl;external;

procedure gtk_column_view_append_column(self:PGtkColumnView; column:PGtkColumnViewColumn);cdecl;external;

procedure gtk_column_view_remove_column(self:PGtkColumnView; column:PGtkColumnViewColumn);cdecl;external;

procedure gtk_column_view_insert_column(self:PGtkColumnView; position:Tguint; column:PGtkColumnViewColumn);cdecl;external;

function gtk_column_view_get_model(self:PGtkColumnView):PGtkSelectionModel;cdecl;external;

procedure gtk_column_view_set_model(self:PGtkColumnView; model:PGtkSelectionModel);cdecl;external;

function gtk_column_view_get_show_row_separators(self:PGtkColumnView):Tgboolean;cdecl;external;

procedure gtk_column_view_set_show_row_separators(self:PGtkColumnView; show_row_separators:Tgboolean);cdecl;external;

function gtk_column_view_get_show_column_separators(self:PGtkColumnView):Tgboolean;cdecl;external;

procedure gtk_column_view_set_show_column_separators(self:PGtkColumnView; show_column_separators:Tgboolean);cdecl;external;

function gtk_column_view_get_sorter(self:PGtkColumnView):PGtkSorter;cdecl;external;

procedure gtk_column_view_sort_by_column(self:PGtkColumnView; column:PGtkColumnViewColumn; direction:TGtkSortType);cdecl;external;

procedure gtk_column_view_set_single_click_activate(self:PGtkColumnView; single_click_activate:Tgboolean);cdecl;external;

function gtk_column_view_get_single_click_activate(self:PGtkColumnView):Tgboolean;cdecl;external;

procedure gtk_column_view_set_reorderable(self:PGtkColumnView; reorderable:Tgboolean);cdecl;external;

function gtk_column_view_get_reorderable(self:PGtkColumnView):Tgboolean;cdecl;external;

procedure gtk_column_view_set_enable_rubberband(self:PGtkColumnView; enable_rubberband:Tgboolean);cdecl;external;

function gtk_column_view_get_enable_rubberband(self:PGtkColumnView):Tgboolean;cdecl;external;

{$endif}


implementation

function GTK_TYPE_COLUMN_VIEW : longint; { return type might be wrong }
  begin
    GTK_TYPE_COLUMN_VIEW:=gtk_column_view_get_type;
  end;

function GTK_COLUMN_VIEW(o : longint) : longint;
begin
  GTK_COLUMN_VIEW:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_COLUMN_VIEW,GtkColumnView);
end;

function GTK_COLUMN_VIEW_CLASS(k : longint) : longint;
begin
  GTK_COLUMN_VIEW_CLASS:=G_TYPE_CHECK_CLASS_CAST(k,GTK_TYPE_COLUMN_VIEW,GtkColumnViewClass);
end;

function GTK_IS_COLUMN_VIEW(o : longint) : longint;
begin
  GTK_IS_COLUMN_VIEW:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_COLUMN_VIEW);
end;

function GTK_IS_COLUMN_VIEW_CLASS(k : longint) : longint;
begin
  GTK_IS_COLUMN_VIEW_CLASS:=G_TYPE_CHECK_CLASS_TYPE(k,GTK_TYPE_COLUMN_VIEW);
end;

function GTK_COLUMN_VIEW_GET_CLASS(o : longint) : longint;
begin
  GTK_COLUMN_VIEW_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GTK_TYPE_COLUMN_VIEW,GtkColumnViewClass);
end;


end.
