program Project1;

uses
  GLib2,
  Gdk2,
  Gtk2;

const
  COLUMN = 0;
  NUM_COLS = 1;

  //  function gtk_tree_store_new(n_columns:gint; args:array of const):PGtkTreeStore; cdecl; overload; varargs; external gtklib;
  //  function gtk_tree_store_new(n_columns: gint; args: array of const): PGtkTreeStore; cdecl; overload; external gtklib;
  function gtk_tree_store_new(n_columns: gint): PGtkTreeStore; cdecl; overload; varargs; external gtklib;


  procedure on_change(w: PGtkWidget; label1: gpointer);
  var
    model: PGtkTreeModel;
    iter: TGtkTreeIter;
    Value: PChar;
  begin
  end;

  function create_and_fill_model: PGtkTreeModel;
  var
    treestore: PGtkTreeStore;
    toplevel, child: TGtkTreeIter;

  begin
    treestore := gtk_tree_store_new(NUM_COLS, G_TYPE_STRING);

    gtk_tree_store_append(treestore, @toplevel, nil);
    gtk_tree_store_set(treestore, @toplevel, COLUMN, 'Interpreter Sprachen', -1);

    gtk_tree_store_append(treestore, @child, @toplevel);
    gtk_tree_store_set(treestore, @child, COLUMN, 'Python', -1);

    gtk_tree_store_append(treestore, @child, @toplevel);
    gtk_tree_store_set(treestore, @child, COLUMN, 'GW-BASIC', -1);

    gtk_tree_store_append(treestore, @child, @toplevel);
    gtk_tree_store_set(treestore, @child, COLUMN, 'Perl', -1);

    gtk_tree_store_append(treestore, @child, @toplevel);
    gtk_tree_store_set(treestore, @child, COLUMN, 'PHP', -1);

    // ---------------------------------------------

    gtk_tree_store_append(treestore, @toplevel, nil);
    gtk_tree_store_set(treestore, @toplevel, COLUMN, 'Kompiler Sprachen', -1);

    gtk_tree_store_append(treestore, @child, @toplevel);
    gtk_tree_store_set(treestore, @child, COLUMN, 'CC', -1);

    gtk_tree_store_append(treestore, @child, @toplevel);
    gtk_tree_store_set(treestore, @child, COLUMN, PChar('C'), -1);

    gtk_tree_store_append(treestore, @child, @toplevel);
    gtk_tree_store_set(treestore, @child, COLUMN, 'C++', -1);

    gtk_tree_store_append(treestore, @child, @toplevel);
    gtk_tree_store_set(treestore, @child, COLUMN, 'Pascal', -1);

    Result := GTK_TREE_MODEL(treestore);
  end;

  function create_view_and_model: PGtkWidget;
  var
    view: PGtkWidget;
    col: PGtkTreeViewColumn;
    render: PGtkCellRenderer;
    model: PGtkTreeModel;
  begin
    view := gtk_tree_view_new;
    col := gtk_tree_view_column_new;
    gtk_tree_view_column_set_title(col, 'Programmiersprachen');
    gtk_tree_view_append_column(GTK_TREE_VIEW(view), col);

    render := gtk_cell_renderer_text_new;
    gtk_tree_view_column_pack_start(col, render, True);
    gtk_tree_view_column_add_attribute(col, render, 'text', COLUMN);

    model := create_and_fill_model;
    gtk_tree_view_set_model(GTK_TREE_VIEW(view), model);
    g_object_unref(model);

    Result := view;
  end;

  procedure main;
  var
    Window, vbox, label1, view, statusbar: PGtkWidget;
    selection: PGtkTreeSelection;
  begin
    GTK_Init(@argc, @argv);

    Window := gtk_window_new(GTK_WINDOW_TOPLEVEL);
    gtk_window_set_title(GTK_WINDOW(Window), 'Tree View');
    gtk_window_set_default_size(GTK_WINDOW(Window), 500, 500);
    gtk_window_set_position(GTK_WINDOW(window), GTK_WIN_POS_CENTER);
    gtk_container_set_border_width(GTK_CONTAINER(Window), 10);

    vbox := gtk_vbox_new(False, 2);
    gtk_container_add(GTK_CONTAINER(Window), vbox);

    view := create_view_and_model;
    selection := gtk_tree_view_get_selection(GTK_TREE_VIEW(view));

    gtk_box_pack_start(GTK_BOX(vbox), view, True, True, 1);

    statusbar := gtk_statusbar_new;
    gtk_box_pack_start(GTK_BOX(vbox), statusbar, False, True, 1);




    g_signal_connect(selection, 'changed', G_CALLBACK(@on_change), label1);

    gtk_widget_show_all(window);

    g_signal_connect(G_OBJECT(window), 'destroy', G_CALLBACK(@gtk_main_quit), nil);

    GTK_Main;
  end;

begin
  main;
end.
