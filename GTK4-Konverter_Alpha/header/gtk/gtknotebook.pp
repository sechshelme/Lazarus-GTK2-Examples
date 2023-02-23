
unit gtknotebook;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtknotebook.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtknotebook.h
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
PGtkNotebook  = ^GtkNotebook;
PGtkNotebookPage  = ^GtkNotebookPage;
PGtkNotebookTab  = ^GtkNotebookTab;
PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}





{$ifndef __GTK_NOTEBOOK_H__}
{$define __GTK_NOTEBOOK_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}


function GTK_TYPE_NOTEBOOK : longint; { return type might be wrong }

function GTK_NOTEBOOK(obj : longint) : longint;

function GTK_IS_NOTEBOOK(obj : longint) : longint;

function GTK_TYPE_NOTEBOOK_PAGE : longint; { return type might be wrong }

function GTK_NOTEBOOK_PAGE(obj : longint) : longint;

function GTK_IS_NOTEBOOK_PAGE(obj : longint) : longint;

type


  PGtkNotebookTab = ^TGtkNotebookTab;
  TGtkNotebookTab = (GTK_NOTEBOOK_TAB_FIRST,GTK_NOTEBOOK_TAB_LAST
    );



function gtk_notebook_get_type:TGType;cdecl;external;

function gtk_notebook_new:PGtkWidget;cdecl;external;

function gtk_notebook_append_page(notebook:PGtkNotebook; child:PGtkWidget; tab_label:PGtkWidget):longint;cdecl;external;

function gtk_notebook_append_page_menu(notebook:PGtkNotebook; child:PGtkWidget; tab_label:PGtkWidget; menu_label:PGtkWidget):longint;cdecl;external;

function gtk_notebook_prepend_page(notebook:PGtkNotebook; child:PGtkWidget; tab_label:PGtkWidget):longint;cdecl;external;

function gtk_notebook_prepend_page_menu(notebook:PGtkNotebook; child:PGtkWidget; tab_label:PGtkWidget; menu_label:PGtkWidget):longint;cdecl;external;

function gtk_notebook_insert_page(notebook:PGtkNotebook; child:PGtkWidget; tab_label:PGtkWidget; position:longint):longint;cdecl;external;

function gtk_notebook_insert_page_menu(notebook:PGtkNotebook; child:PGtkWidget; tab_label:PGtkWidget; menu_label:PGtkWidget; position:longint):longint;cdecl;external;

procedure gtk_notebook_remove_page(notebook:PGtkNotebook; page_num:longint);cdecl;external;


procedure gtk_notebook_set_group_name(notebook:PGtkNotebook; group_name:Pchar);cdecl;external;

function gtk_notebook_get_group_name(notebook:PGtkNotebook):Pchar;cdecl;external;


function gtk_notebook_get_current_page(notebook:PGtkNotebook):longint;cdecl;external;

function gtk_notebook_get_nth_page(notebook:PGtkNotebook; page_num:longint):PGtkWidget;cdecl;external;

function gtk_notebook_get_n_pages(notebook:PGtkNotebook):longint;cdecl;external;

function gtk_notebook_page_num(notebook:PGtkNotebook; child:PGtkWidget):longint;cdecl;external;

procedure gtk_notebook_set_current_page(notebook:PGtkNotebook; page_num:longint);cdecl;external;

procedure gtk_notebook_next_page(notebook:PGtkNotebook);cdecl;external;

procedure gtk_notebook_prev_page(notebook:PGtkNotebook);cdecl;external;


procedure gtk_notebook_set_show_border(notebook:PGtkNotebook; show_border:Tgboolean);cdecl;external;

function gtk_notebook_get_show_border(notebook:PGtkNotebook):Tgboolean;cdecl;external;

procedure gtk_notebook_set_show_tabs(notebook:PGtkNotebook; show_tabs:Tgboolean);cdecl;external;

function gtk_notebook_get_show_tabs(notebook:PGtkNotebook):Tgboolean;cdecl;external;

procedure gtk_notebook_set_tab_pos(notebook:PGtkNotebook; pos:TGtkPositionType);cdecl;external;

function gtk_notebook_get_tab_pos(notebook:PGtkNotebook):TGtkPositionType;cdecl;external;

procedure gtk_notebook_set_scrollable(notebook:PGtkNotebook; scrollable:Tgboolean);cdecl;external;

function gtk_notebook_get_scrollable(notebook:PGtkNotebook):Tgboolean;cdecl;external;


procedure gtk_notebook_popup_enable(notebook:PGtkNotebook);cdecl;external;

procedure gtk_notebook_popup_disable(notebook:PGtkNotebook);cdecl;external;


function gtk_notebook_get_tab_label(notebook:PGtkNotebook; child:PGtkWidget):PGtkWidget;cdecl;external;

procedure gtk_notebook_set_tab_label(notebook:PGtkNotebook; child:PGtkWidget; tab_label:PGtkWidget);cdecl;external;

procedure gtk_notebook_set_tab_label_text(notebook:PGtkNotebook; child:PGtkWidget; tab_text:Pchar);cdecl;external;

function gtk_notebook_get_tab_label_text(notebook:PGtkNotebook; child:PGtkWidget):Pchar;cdecl;external;

function gtk_notebook_get_menu_label(notebook:PGtkNotebook; child:PGtkWidget):PGtkWidget;cdecl;external;

procedure gtk_notebook_set_menu_label(notebook:PGtkNotebook; child:PGtkWidget; menu_label:PGtkWidget);cdecl;external;

procedure gtk_notebook_set_menu_label_text(notebook:PGtkNotebook; child:PGtkWidget; menu_text:Pchar);cdecl;external;

function gtk_notebook_get_menu_label_text(notebook:PGtkNotebook; child:PGtkWidget):Pchar;cdecl;external;

procedure gtk_notebook_reorder_child(notebook:PGtkNotebook; child:PGtkWidget; position:longint);cdecl;external;

function gtk_notebook_get_tab_reorderable(notebook:PGtkNotebook; child:PGtkWidget):Tgboolean;cdecl;external;

procedure gtk_notebook_set_tab_reorderable(notebook:PGtkNotebook; child:PGtkWidget; reorderable:Tgboolean);cdecl;external;

function gtk_notebook_get_tab_detachable(notebook:PGtkNotebook; child:PGtkWidget):Tgboolean;cdecl;external;

procedure gtk_notebook_set_tab_detachable(notebook:PGtkNotebook; child:PGtkWidget; detachable:Tgboolean);cdecl;external;

procedure gtk_notebook_detach_tab(notebook:PGtkNotebook; child:PGtkWidget);cdecl;external;

function gtk_notebook_get_action_widget(notebook:PGtkNotebook; pack_type:TGtkPackType):PGtkWidget;cdecl;external;

procedure gtk_notebook_set_action_widget(notebook:PGtkNotebook; widget:PGtkWidget; pack_type:TGtkPackType);cdecl;external;

function gtk_notebook_page_get_type:TGType;cdecl;external;

function gtk_notebook_get_page(notebook:PGtkNotebook; child:PGtkWidget):PGtkNotebookPage;cdecl;external;

function gtk_notebook_page_get_child(page:PGtkNotebookPage):PGtkWidget;cdecl;external;

function gtk_notebook_get_pages(notebook:PGtkNotebook):PGListModel;cdecl;external;

{$endif}


implementation

function GTK_TYPE_NOTEBOOK : longint; { return type might be wrong }
  begin
    GTK_TYPE_NOTEBOOK:=gtk_notebook_get_type;
  end;

function GTK_NOTEBOOK(obj : longint) : longint;
begin
  GTK_NOTEBOOK:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_NOTEBOOK,GtkNotebook);
end;

function GTK_IS_NOTEBOOK(obj : longint) : longint;
begin
  GTK_IS_NOTEBOOK:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_NOTEBOOK);
end;

function GTK_TYPE_NOTEBOOK_PAGE : longint; { return type might be wrong }
  begin
    GTK_TYPE_NOTEBOOK_PAGE:=gtk_notebook_page_get_type;
  end;

function GTK_NOTEBOOK_PAGE(obj : longint) : longint;
begin
  GTK_NOTEBOOK_PAGE:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_NOTEBOOK_PAGE,GtkNotebookPage);
end;

function GTK_IS_NOTEBOOK_PAGE(obj : longint) : longint;
begin
  GTK_IS_NOTEBOOK_PAGE:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_NOTEBOOK_PAGE);
end;


end.
