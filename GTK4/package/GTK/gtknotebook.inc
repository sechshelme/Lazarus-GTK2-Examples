/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  PGtkNotebookTab = ^TGtkNotebookTab;
  TGtkNotebookTab = longint;

const
  GTK_NOTEBOOK_TAB_FIRST = 0;
  GTK_NOTEBOOK_TAB_LAST = 1;

type
  TGtkNotebookPage = record // _GtkNotebookPage
  end;
  PGtkNotebookPage = ^TGtkNotebookPage;

  TGtkNotebook = record // _GtkNotebook
  end;
  PGtkNotebook = ^TGtkNotebook;

{**********************************************************
 *           Creation, insertion, deletion                 *
 ********************************************************** }

function gtk_notebook_get_type: TGType; cdecl; external gtklib;
function gtk_notebook_new: PGtkWidget; cdecl; external gtklib;
function gtk_notebook_append_page(notebook: PGtkNotebook; child: PGtkWidget; tab_label: PGtkWidget): longint; cdecl; external gtklib;
function gtk_notebook_append_page_menu(notebook: PGtkNotebook; child: PGtkWidget; tab_label: PGtkWidget; menu_label: PGtkWidget): longint; cdecl; external gtklib;
function gtk_notebook_prepend_page(notebook: PGtkNotebook; child: PGtkWidget; tab_label: PGtkWidget): longint; cdecl; external gtklib;
function gtk_notebook_prepend_page_menu(notebook: PGtkNotebook; child: PGtkWidget; tab_label: PGtkWidget; menu_label: PGtkWidget): longint; cdecl; external gtklib;
function gtk_notebook_insert_page(notebook: PGtkNotebook; child: PGtkWidget; tab_label: PGtkWidget; position: longint): longint; cdecl; external gtklib;
function gtk_notebook_insert_page_menu(notebook: PGtkNotebook; child: PGtkWidget; tab_label: PGtkWidget; menu_label: PGtkWidget; position: longint): longint; cdecl; external gtklib;
procedure gtk_notebook_remove_page(notebook: PGtkNotebook; page_num: longint); cdecl; external gtklib;
{**********************************************************
 *           Tabs drag and drop                            *
 ********************************************************** }
procedure gtk_notebook_set_group_name(notebook: PGtkNotebook; group_name: PChar); cdecl; external gtklib;
function gtk_notebook_get_group_name(notebook: PGtkNotebook): PChar; cdecl; external gtklib;
{**********************************************************
 *            query, set current NotebookPage              *
 ********************************************************** }
function gtk_notebook_get_current_page(notebook: PGtkNotebook): longint; cdecl; external gtklib;
function gtk_notebook_get_nth_page(notebook: PGtkNotebook; page_num: longint): PGtkWidget; cdecl; external gtklib;
function gtk_notebook_get_n_pages(notebook: PGtkNotebook): longint; cdecl; external gtklib;
function gtk_notebook_page_num(notebook: PGtkNotebook; child: PGtkWidget): longint; cdecl; external gtklib;
procedure gtk_notebook_set_current_page(notebook: PGtkNotebook; page_num: longint); cdecl; external gtklib;
procedure gtk_notebook_next_page(notebook: PGtkNotebook); cdecl; external gtklib;
procedure gtk_notebook_prev_page(notebook: PGtkNotebook); cdecl; external gtklib;
{**********************************************************
 *            set Notebook, NotebookTab style              *
 ********************************************************** }
procedure gtk_notebook_set_show_border(notebook: PGtkNotebook; show_border: Tgboolean); cdecl; external gtklib;
function gtk_notebook_get_show_border(notebook: PGtkNotebook): Tgboolean; cdecl; external gtklib;
procedure gtk_notebook_set_show_tabs(notebook: PGtkNotebook; show_tabs: Tgboolean); cdecl; external gtklib;
function gtk_notebook_get_show_tabs(notebook: PGtkNotebook): Tgboolean; cdecl; external gtklib;
procedure gtk_notebook_set_tab_pos(notebook: PGtkNotebook; pos: TGtkPositionType); cdecl; external gtklib;
function gtk_notebook_get_tab_pos(notebook: PGtkNotebook): TGtkPositionType; cdecl; external gtklib;
procedure gtk_notebook_set_scrollable(notebook: PGtkNotebook; scrollable: Tgboolean); cdecl; external gtklib;
function gtk_notebook_get_scrollable(notebook: PGtkNotebook): Tgboolean; cdecl; external gtklib;
{**********************************************************
 *               enable/disable PopupMenu                  *
 ********************************************************** }
procedure gtk_notebook_popup_enable(notebook: PGtkNotebook); cdecl; external gtklib;
procedure gtk_notebook_popup_disable(notebook: PGtkNotebook); cdecl; external gtklib;
{**********************************************************
 *             query/set NotebookPage Properties           *
 ********************************************************** }
function gtk_notebook_get_tab_label(notebook: PGtkNotebook; child: PGtkWidget): PGtkWidget; cdecl; external gtklib;
procedure gtk_notebook_set_tab_label(notebook: PGtkNotebook; child: PGtkWidget; tab_label: PGtkWidget); cdecl; external gtklib;
procedure gtk_notebook_set_tab_label_text(notebook: PGtkNotebook; child: PGtkWidget; tab_text: PChar); cdecl; external gtklib;
function gtk_notebook_get_tab_label_text(notebook: PGtkNotebook; child: PGtkWidget): PChar; cdecl; external gtklib;
function gtk_notebook_get_menu_label(notebook: PGtkNotebook; child: PGtkWidget): PGtkWidget; cdecl; external gtklib;
procedure gtk_notebook_set_menu_label(notebook: PGtkNotebook; child: PGtkWidget; menu_label: PGtkWidget); cdecl; external gtklib;
procedure gtk_notebook_set_menu_label_text(notebook: PGtkNotebook; child: PGtkWidget; menu_text: PChar); cdecl; external gtklib;
function gtk_notebook_get_menu_label_text(notebook: PGtkNotebook; child: PGtkWidget): PChar; cdecl; external gtklib;
procedure gtk_notebook_reorder_child(notebook: PGtkNotebook; child: PGtkWidget; position: longint); cdecl; external gtklib;
function gtk_notebook_get_tab_reorderable(notebook: PGtkNotebook; child: PGtkWidget): Tgboolean; cdecl; external gtklib;
procedure gtk_notebook_set_tab_reorderable(notebook: PGtkNotebook; child: PGtkWidget; reorderable: Tgboolean); cdecl; external gtklib;
function gtk_notebook_get_tab_detachable(notebook: PGtkNotebook; child: PGtkWidget): Tgboolean; cdecl; external gtklib;
procedure gtk_notebook_set_tab_detachable(notebook: PGtkNotebook; child: PGtkWidget; detachable: Tgboolean); cdecl; external gtklib;
procedure gtk_notebook_detach_tab(notebook: PGtkNotebook; child: PGtkWidget); cdecl; external gtklib;
function gtk_notebook_get_action_widget(notebook: PGtkNotebook; pack_type: TGtkPackType): PGtkWidget; cdecl; external gtklib;
procedure gtk_notebook_set_action_widget(notebook: PGtkNotebook; widget: PGtkWidget; pack_type: TGtkPackType); cdecl; external gtklib;
function gtk_notebook_page_get_type: TGType; cdecl; external gtklib;
function gtk_notebook_get_page(notebook: PGtkNotebook; child: PGtkWidget): PGtkNotebookPage; cdecl; external gtklib;
function gtk_notebook_page_get_child(page: PGtkNotebookPage): PGtkWidget; cdecl; external gtklib;
function gtk_notebook_get_pages(notebook: PGtkNotebook): PGListModel; cdecl; external gtklib;

// === Konventiert am: 22-7-24 17:45:30 ===

function GTK_TYPE_NOTEBOOK: TGType;
function GTK_NOTEBOOK(obj: Pointer): PGtkNotebook;
function GTK_IS_NOTEBOOK(obj: Pointer): Tgboolean;

function GTK_TYPE_NOTEBOOK_PAGE: TGType;
function GTK_NOTEBOOK_PAGE(obj: Pointer): PGtkNotebookPage;
function GTK_IS_NOTEBOOK_PAGE(obj: Pointer): Tgboolean;



{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_NOTEBOOK: TGType;
begin
  GTK_TYPE_NOTEBOOK := gtk_notebook_get_type;
end;

function GTK_NOTEBOOK(obj: Pointer): PGtkNotebook;
begin
  Result := PGtkNotebook(g_type_check_instance_cast(obj, GTK_TYPE_NOTEBOOK));
end;

function GTK_IS_NOTEBOOK(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_NOTEBOOK);
end;

// ====

function GTK_TYPE_NOTEBOOK_PAGE: TGType;
begin
  GTK_TYPE_NOTEBOOK_PAGE := gtk_notebook_page_get_type;
end;

function GTK_NOTEBOOK_PAGE(obj: Pointer): PGtkNotebookPage;
begin
  Result := PGtkNotebookPage(g_type_check_instance_cast(obj, GTK_TYPE_NOTEBOOK_PAGE));
end;

function GTK_IS_NOTEBOOK_PAGE(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_NOTEBOOK_PAGE);
end;


{$ENDIF read_implementation}
