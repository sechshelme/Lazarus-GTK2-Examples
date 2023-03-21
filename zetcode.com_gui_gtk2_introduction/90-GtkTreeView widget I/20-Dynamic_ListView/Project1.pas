program Project1;

uses
  GLib2,
  Gdk2,
  Gtk2;

const
  LIST_ITEM = 0;
  N_COLUMNS = 1;

var
  list: pointer=nil;

procedure append_item(widget: PGtkWidget; entry: gpointer);
var
  store: PGtkListStore;
  iter: TGtkTreeIter;
  s: Pgchar;
begin
  s:=gtk_entry_get_text(entry);
  store := GTK_LIST_STORE(gtk_tree_view_get_model(GTK_TREE_VIEW(list)));
  gtk_list_store_append(store, @iter);
  gtk_list_store_set(store, @iter, LIST_ITEM, s, -1);
  gtk_entry_set_text(entry,'');
end;

procedure remove_item(widget: PGtkWidget; selection: gpointer);
var
  store: PGtkListStore;
  model: PGtkTreeModel;
  iter: TGtkTreeIter;
begin
  store := GTK_LIST_STORE(gtk_tree_view_get_model(GTK_TREE_VIEW(list)));
  model := gtk_tree_view_get_model(GTK_TREE_VIEW(list));
  if gtk_tree_model_get_iter_first(model, @iter) = False then begin
    Exit;
  end;
  if gtk_tree_selection_get_selected(GTK_TREE_SELECTION(selection), @model, @iter) then begin
    gtk_list_store_remove(store, @iter);
  end;
end;

procedure remove_all(widget: PGtkWidget; selection: gpointer);
var
  store: PGtkListStore;
  model: PGtkTreeModel;
  iter: TGtkTreeIter;
begin
  store := GTK_LIST_STORE(gtk_tree_view_get_model(GTK_TREE_VIEW(list)));
  model := gtk_tree_view_get_model(GTK_TREE_VIEW(list));
  if gtk_tree_model_get_iter_first(model, @iter) = False then begin
    Exit;
  end;
  gtk_list_store_clear(store);
end;

  procedure init_list(list: PGtkWidget);
  var
    render: PGtkCellRenderer;
    column: PGtkTreeViewColumn;
    store: PGtkListStore;
  begin
    render := gtk_cell_renderer_text_new;
    column := gtk_tree_view_column_new_with_attributes('List Items', render, 'text', LIST_ITEM, nil);
    gtk_tree_view_append_column(GTK_TREE_VIEW(list), column);
    store := gtk_list_store_new(N_COLUMNS, G_TYPE_STRING);
    gtk_tree_view_set_model(GTK_TREE_VIEW(list), GTK_TREE_MODEL(store));
    g_object_unref(store);
  end;

procedure add_to_list(list2: PGtkWidget; str: Pgchar);
var
  store: PGtkListStore;
  iter: TGtkTreeIter;
begin
  store := GTK_LIST_STORE(gtk_tree_view_get_model(GTK_TREE_VIEW(list)));
  WriteLn(PtrUInt(list));
  gtk_list_store_append(store, @iter);
  gtk_list_store_set(store, @iter, LIST_ITEM, str, -1);
end;

  procedure main;
  var
    Window, vbox, label1, BtnAdd, hbox, Entry, BtnRemove, BtnRemoveAll: PGtkWidget;
    selection: PGtkTreeSelection;
  begin
    GTK_Init(@argc, @argv);

    Window := gtk_window_new(GTK_WINDOW_TOPLEVEL);
    gtk_window_set_title(GTK_WINDOW(Window), 'GtkComboBox');
    gtk_window_set_default_size(GTK_WINDOW(Window), 500, 500);
    gtk_window_set_position(GTK_WINDOW(window), GTK_WIN_POS_CENTER);
    gtk_container_set_border_width(GTK_CONTAINER(Window), 10);

    //    sw:=gtk_scrolled_window_new(nil,nil);

    list := gtk_tree_view_new;

    gtk_tree_view_set_headers_visible(GTK_TREE_VIEW(list), False);

    vbox := gtk_vbox_new(False, 0);
    gtk_container_add(GTK_CONTAINER(Window), vbox);

    gtk_box_pack_start(GTK_BOX(vbox), list, False, False, 5);

    hbox := gtk_hbox_new(False, 0);
    gtk_box_pack_end(GTK_BOX(vbox), hbox, False, False, 5);

    init_list(list);

    add_to_list(list, 'Montag');
    add_to_list(list, 'Dienstag');
    add_to_list(list, 'Mittwoch');
    add_to_list(list, 'Donnerstag');
    add_to_list(list, 'Freitag');
    add_to_list(list, 'Samstag');
    add_to_list(list, 'Sonntag');

    selection := gtk_tree_view_get_selection(GTK_TREE_VIEW(list));

    Entry := gtk_entry_new;
    gtk_box_pack_end(GTK_BOX(hbox), Entry, False, False, 5);

    BtnAdd := gtk_button_new_with_label('Add');
    gtk_box_pack_end(GTK_BOX(hbox), BtnAdd, False, False, 5);


    BtnRemove := gtk_button_new_with_label('Remove');
    gtk_box_pack_end(GTK_BOX(hbox), BtnRemove, False, False, 5);

    BtnRemoveAll := gtk_button_new_with_label('Remove All');
    gtk_box_pack_end(GTK_BOX(hbox), BtnRemoveAll, False, False, 5);

    label1 := gtk_label_new('Source:');
    gtk_box_pack_end(GTK_BOX(vbox), label1, False, False, 5);

    g_signal_connect(BtnAdd, 'clicked', G_CALLBACK(@append_item), Entry);
    g_signal_connect(BtnRemove, 'clicked', G_CALLBACK(@remove_item), selection);
    g_signal_connect(BtnRemoveAll, 'clicked', G_CALLBACK(@remove_all), selection);

    selection := gtk_tree_view_get_selection(GTK_TREE_VIEW(list));

    gtk_widget_show_all(window);

    g_signal_connect(G_OBJECT(window), 'destroy', G_CALLBACK(@gtk_main_quit), nil);

    GTK_Main;
  end;

begin
  main;
end.
