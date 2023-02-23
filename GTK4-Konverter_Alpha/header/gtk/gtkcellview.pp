
unit gtkcellview;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkcellview.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkcellview.h
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
PGdkTexture  = ^GdkTexture;
PGtkCellArea  = ^GtkCellArea;
PGtkCellAreaContext  = ^GtkCellAreaContext;
PGtkCellView  = ^GtkCellView;
PGtkTreeModel  = ^GtkTreeModel;
PGtkTreePath  = ^GtkTreePath;
PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_CELL_VIEW_H__}
{$define __GTK_CELL_VIEW_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}
{$include <gtk/gtkcellrenderer.h>}
{$include <gtk/gtkcellarea.h>}
{$include <gtk/gtkcellareacontext.h>}
{$include <gtk/gtktreemodel.h>}


function GTK_TYPE_CELL_VIEW : longint; { return type might be wrong }

function GTK_CELL_VIEW(obj : longint) : longint;

function GTK_IS_CELL_VIEW(obj : longint) : longint;

type


function gtk_cell_view_get_type:TGType;cdecl;external;

function gtk_cell_view_new:PGtkWidget;cdecl;external;

function gtk_cell_view_new_with_context(area:PGtkCellArea; context:PGtkCellAreaContext):PGtkWidget;cdecl;external;

function gtk_cell_view_new_with_text(text:Pchar):PGtkWidget;cdecl;external;

function gtk_cell_view_new_with_markup(markup:Pchar):PGtkWidget;cdecl;external;

function gtk_cell_view_new_with_texture(texture:PGdkTexture):PGtkWidget;cdecl;external;

procedure gtk_cell_view_set_model(cell_view:PGtkCellView; model:PGtkTreeModel);cdecl;external;

function gtk_cell_view_get_model(cell_view:PGtkCellView):PGtkTreeModel;cdecl;external;

procedure gtk_cell_view_set_displayed_row(cell_view:PGtkCellView; path:PGtkTreePath);cdecl;external;

function gtk_cell_view_get_displayed_row(cell_view:PGtkCellView):PGtkTreePath;cdecl;external;

function gtk_cell_view_get_draw_sensitive(cell_view:PGtkCellView):Tgboolean;cdecl;external;

procedure gtk_cell_view_set_draw_sensitive(cell_view:PGtkCellView; draw_sensitive:Tgboolean);cdecl;external;

function gtk_cell_view_get_fit_model(cell_view:PGtkCellView):Tgboolean;cdecl;external;

procedure gtk_cell_view_set_fit_model(cell_view:PGtkCellView; fit_model:Tgboolean);cdecl;external;

{$endif}


implementation

function GTK_TYPE_CELL_VIEW : longint; { return type might be wrong }
  begin
    GTK_TYPE_CELL_VIEW:=gtk_cell_view_get_type;
  end;

function GTK_CELL_VIEW(obj : longint) : longint;
begin
  GTK_CELL_VIEW:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_CELL_VIEW,GtkCellView);
end;

function GTK_IS_CELL_VIEW(obj : longint) : longint;
begin
  GTK_IS_CELL_VIEW:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_CELL_VIEW);
end;


end.
