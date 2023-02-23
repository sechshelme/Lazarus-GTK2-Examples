
unit gtkcolumnviewcolumn;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkcolumnviewcolumn.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkcolumnviewcolumn.h
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
PGMenuModel  = ^GMenuModel;
PGtkColumnView  = ^GtkColumnView;
PGtkColumnViewColumn  = ^GtkColumnViewColumn;
PGtkListItemFactory  = ^GtkListItemFactory;
PGtkSorter  = ^GtkSorter;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_COLUMN_VIEW_COLUMN_H__}
{$define __GTK_COLUMN_VIEW_COLUMN_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkcolumnview.h>}
{$include <gtk/gtksorter.h>}


function GTK_TYPE_COLUMN_VIEW_COLUMN : longint; { return type might be wrong }

function GTK_COLUMN_VIEW_COLUMN(o : longint) : longint;

function GTK_COLUMN_VIEW_COLUMN_CLASS(k : longint) : longint;

function GTK_IS_COLUMN_VIEW_COLUMN(o : longint) : longint;

function GTK_IS_COLUMN_VIEW_COLUMN_CLASS(k : longint) : longint;

function GTK_COLUMN_VIEW_COLUMN_GET_CLASS(o : longint) : longint;


type


function gtk_column_view_column_get_type:TGType;cdecl;external;

function gtk_column_view_column_new(title:Pchar; factory:PGtkListItemFactory):PGtkColumnViewColumn;cdecl;external;

function gtk_column_view_column_get_column_view(self:PGtkColumnViewColumn):PGtkColumnView;cdecl;external;

procedure gtk_column_view_column_set_factory(self:PGtkColumnViewColumn; factory:PGtkListItemFactory);cdecl;external;

function gtk_column_view_column_get_factory(self:PGtkColumnViewColumn):PGtkListItemFactory;cdecl;external;

procedure gtk_column_view_column_set_title(self:PGtkColumnViewColumn; title:Pchar);cdecl;external;

function gtk_column_view_column_get_title(self:PGtkColumnViewColumn):Pchar;cdecl;external;

procedure gtk_column_view_column_set_sorter(self:PGtkColumnViewColumn; sorter:PGtkSorter);cdecl;external;

function gtk_column_view_column_get_sorter(self:PGtkColumnViewColumn):PGtkSorter;cdecl;external;

procedure gtk_column_view_column_set_visible(self:PGtkColumnViewColumn; visible:Tgboolean);cdecl;external;

function gtk_column_view_column_get_visible(self:PGtkColumnViewColumn):Tgboolean;cdecl;external;

procedure gtk_column_view_column_set_header_menu(self:PGtkColumnViewColumn; menu:PGMenuModel);cdecl;external;

function gtk_column_view_column_get_header_menu(self:PGtkColumnViewColumn):PGMenuModel;cdecl;external;

procedure gtk_column_view_column_set_fixed_width(self:PGtkColumnViewColumn; fixed_width:longint);cdecl;external;

function gtk_column_view_column_get_fixed_width(self:PGtkColumnViewColumn):longint;cdecl;external;

procedure gtk_column_view_column_set_resizable(self:PGtkColumnViewColumn; resizable:Tgboolean);cdecl;external;

function gtk_column_view_column_get_resizable(self:PGtkColumnViewColumn):Tgboolean;cdecl;external;

procedure gtk_column_view_column_set_expand(self:PGtkColumnViewColumn; expand:Tgboolean);cdecl;external;

function gtk_column_view_column_get_expand(self:PGtkColumnViewColumn):Tgboolean;cdecl;external;

{$endif}


implementation

function GTK_TYPE_COLUMN_VIEW_COLUMN : longint; { return type might be wrong }
  begin
    GTK_TYPE_COLUMN_VIEW_COLUMN:=gtk_column_view_column_get_type;
  end;

function GTK_COLUMN_VIEW_COLUMN(o : longint) : longint;
begin
  GTK_COLUMN_VIEW_COLUMN:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_COLUMN_VIEW_COLUMN,GtkColumnViewColumn);
end;

function GTK_COLUMN_VIEW_COLUMN_CLASS(k : longint) : longint;
begin
  GTK_COLUMN_VIEW_COLUMN_CLASS:=G_TYPE_CHECK_CLASS_CAST(k,GTK_TYPE_COLUMN_VIEW_COLUMN,GtkColumnViewColumnClass);
end;

function GTK_IS_COLUMN_VIEW_COLUMN(o : longint) : longint;
begin
  GTK_IS_COLUMN_VIEW_COLUMN:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_COLUMN_VIEW_COLUMN);
end;

function GTK_IS_COLUMN_VIEW_COLUMN_CLASS(k : longint) : longint;
begin
  GTK_IS_COLUMN_VIEW_COLUMN_CLASS:=G_TYPE_CHECK_CLASS_TYPE(k,GTK_TYPE_COLUMN_VIEW_COLUMN);
end;

function GTK_COLUMN_VIEW_COLUMN_GET_CLASS(o : longint) : longint;
begin
  GTK_COLUMN_VIEW_COLUMN_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GTK_TYPE_COLUMN_VIEW_COLUMN,GtkColumnViewColumnClass);
end;


end.
