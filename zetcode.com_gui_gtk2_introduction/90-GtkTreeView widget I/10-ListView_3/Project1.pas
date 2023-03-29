program Project1;

uses
  GLib2,
  Gdk2,
  Gtk2;

const
  LIST_ITEM = 0;
  LIST_NO2 = 1;
  LIST_NO3 = 2;
  LIST_TOGGLE = 3;
  N_COLUMNS = 4;

  procedure on_change(w: PGtkWidget; label1: gpointer);
  var
    model: PGtkTreeModel;
    iter: TGtkTreeIter;
    Value: PChar;
  begin
    if gtk_tree_selection_get_selected(GTK_TREE_SELECTION(w), @model, @iter) then begin
      gtk_tree_model_get(model, @iter, LIST_ITEM, @Value, -1);
      gtk_label_set_text(GTK_LABEL(label1), Value);
      g_free(Value);
    end;
  end;

  procedure init_list(list: PGtkWidget);
  var
    render, togglerender: PGtkCellRenderer;
    column: PGtkTreeViewColumn;
    store: PGtkListStore;
  begin
    render := gtk_cell_renderer_text_new;
    togglerender := gtk_cell_renderer_toggle_new;

    column := gtk_tree_view_column_new_with_attributes('List Items', render, 'text', LIST_ITEM, nil);
    gtk_tree_view_append_column(GTK_TREE_VIEW(list), column);

    //    https://docs.gtk.org/gtk4/ctor.TreeViewColumn.new_with_attributes.html

    column := gtk_tree_view_column_new_with_attributes('List Items', render, 'text', LIST_NO2, nil);
    gtk_tree_view_append_column(GTK_TREE_VIEW(list), column);

    column := gtk_tree_view_column_new_with_attributes('List Items', render, 'text', LIST_NO3, nil);
    gtk_tree_view_append_column(GTK_TREE_VIEW(list), column);

    column := gtk_tree_view_column_new_with_attributes('List Items', togglerender, 'active', LIST_TOGGLE, nil);
    gtk_tree_view_append_column(GTK_TREE_VIEW(list), column);

    store := gtk_list_store_new(N_COLUMNS, G_TYPE_STRING, G_TYPE_INT, G_TYPE_INT, G_TYPE_BOOLEAN);
    gtk_tree_view_set_model(GTK_TREE_VIEW(list), GTK_TREE_MODEL(store));
    g_object_unref(store);

  end;

  procedure add_to_list(list: PGtkWidget; str: Pgchar);
  var
    store: PGtkListStore;
    iter: TGtkTreeIter;
    b: boolean;
  begin
    store := GTK_LIST_STORE(gtk_tree_view_get_model(GTK_TREE_VIEW(list)));
    gtk_list_store_append(store, @iter);
    b := boolean(random(2));
    gtk_list_store_set(store, @iter, LIST_ITEM, str, LIST_NO2, 123, LIST_NO3, 123, LIST_TOGGLE, b, -1);
  end;

  procedure main;
  var
    Window, vbox, label1, list: PGtkWidget;
    selection: PGtkTreeSelection;
  begin
    GTK_Init(@argc, @argv);

    Window := gtk_window_new(GTK_WINDOW_TOPLEVEL);
    gtk_window_set_title(GTK_WINDOW(Window), 'GtkComboBox');
    gtk_window_set_default_size(GTK_WINDOW(Window), 500, 500);
    gtk_window_set_position(GTK_WINDOW(window), GTK_WIN_POS_CENTER);
    gtk_container_set_border_width(GTK_CONTAINER(Window), 10);

    list := gtk_tree_view_new;

    gtk_tree_view_set_headers_visible(GTK_TREE_VIEW(list), False);

    vbox := gtk_vbox_new(False, 0);
    gtk_container_add(GTK_CONTAINER(Window), vbox);

    gtk_box_pack_start(GTK_BOX(vbox), list, False, False, 5);

    label1 := gtk_label_new('');
    gtk_box_pack_start(GTK_BOX(vbox), label1, False, False, 5);

    init_list(list);

    add_to_list(list, 'Montag');
    add_to_list(list, 'Dienstag');
    add_to_list(list, 'Mittwoch');
    add_to_list(list, 'Donnerstag');
    add_to_list(list, 'Freitag');
    add_to_list(list, 'Samstag');
    add_to_list(list, 'Sonntag');

    selection := gtk_tree_view_get_selection(GTK_TREE_VIEW(list));

    g_signal_connect(selection, 'changed', G_CALLBACK(@on_change), label1);

    gtk_widget_show_all(window);

    g_signal_connect(G_OBJECT(window), 'destroy', G_CALLBACK(@gtk_main_quit), nil);

    GTK_Main;
  end;

begin
  Randomize;
  main;
end.
