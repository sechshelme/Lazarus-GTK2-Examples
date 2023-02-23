
unit gtkdropdown;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkdropdown.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkdropdown.h
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
PGListModel  = ^GListModel;
PGtkDropDown  = ^GtkDropDown;
PGtkExpression  = ^GtkExpression;
PGtkListItemFactory  = ^GtkListItemFactory;
PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_DROP_DOWN_H__}
{$define __GTK_DROP_DOWN_H__}
{$include <gtk/gtkwidget.h>}
{$include <gtk/gtkexpression.h>}


function GTK_TYPE_DROP_DOWN : longint; { return type might be wrong }




function gtk_drop_down_new(model:PGListModel; expression:PGtkExpression):PGtkWidget;cdecl;external;

function gtk_drop_down_new_from_strings(strings:PPchar):PGtkWidget;cdecl;external;

procedure gtk_drop_down_set_model(self:PGtkDropDown; model:PGListModel);cdecl;external;

function gtk_drop_down_get_model(self:PGtkDropDown):PGListModel;cdecl;external;

procedure gtk_drop_down_set_selected(self:PGtkDropDown; position:Tguint);cdecl;external;

function gtk_drop_down_get_selected(self:PGtkDropDown):Tguint;cdecl;external;

function gtk_drop_down_get_selected_item(self:PGtkDropDown):Tgpointer;cdecl;external;

procedure gtk_drop_down_set_factory(self:PGtkDropDown; factory:PGtkListItemFactory);cdecl;external;

function gtk_drop_down_get_factory(self:PGtkDropDown):PGtkListItemFactory;cdecl;external;

procedure gtk_drop_down_set_list_factory(self:PGtkDropDown; factory:PGtkListItemFactory);cdecl;external;

function gtk_drop_down_get_list_factory(self:PGtkDropDown):PGtkListItemFactory;cdecl;external;

procedure gtk_drop_down_set_expression(self:PGtkDropDown; expression:PGtkExpression);cdecl;external;

function gtk_drop_down_get_expression(self:PGtkDropDown):PGtkExpression;cdecl;external;

procedure gtk_drop_down_set_enable_search(self:PGtkDropDown; enable_search:Tgboolean);cdecl;external;

function gtk_drop_down_get_enable_search(self:PGtkDropDown):Tgboolean;cdecl;external;

procedure gtk_drop_down_set_show_arrow(self:PGtkDropDown; show_arrow:Tgboolean);cdecl;external;

function gtk_drop_down_get_show_arrow(self:PGtkDropDown):Tgboolean;cdecl;external;

{$endif}


implementation

function GTK_TYPE_DROP_DOWN : longint; { return type might be wrong }
  begin
    GTK_TYPE_DROP_DOWN:=gtk_drop_down_get_type;
  end;


end.
