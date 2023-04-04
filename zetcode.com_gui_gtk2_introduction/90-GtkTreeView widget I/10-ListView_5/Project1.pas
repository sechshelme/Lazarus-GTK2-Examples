program Project1;

uses
  Math,
  GLib2,
  Gdk2,
  Gtk2,
  gdk2pixbuf;

type
  Items = (LIST_ITEM, Color_blue, LIST_Int, Color_Green, LIST_Float, ColorRed, LIST_TOGGLE, COL_PIXBUF, Color_Black, N_COLUMNS);

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
    render, togglerender, pixbufrender: PGtkCellRenderer;
    column: PGtkTreeViewColumn;
    store: PGtkListStore;
  begin

    //    https://docs.gtk.org/gtk4/ctor.TreeViewColumn.new_with_attributes.html

    render := gtk_cell_renderer_text_new;
    togglerender := gtk_cell_renderer_toggle_new;
    pixbufrender := gtk_cell_renderer_pixbuf_new;

    column := gtk_tree_view_column_new_with_attributes('List Items', render, 'text', LIST_ITEM, 'foreground', Color_blue, 'background', Color_Black, nil);
    gtk_tree_view_append_column(GTK_TREE_VIEW(list), column);

    column := gtk_tree_view_column_new_with_attributes('List Items', render, 'text', LIST_Int, 'foreground', ColorRed, nil);
    gtk_tree_view_append_column(GTK_TREE_VIEW(list), column);

    column := gtk_tree_view_column_new_with_attributes('List Items', render, 'text', LIST_Float, 'foreground', Color_Green, nil);
    gtk_tree_view_append_column(GTK_TREE_VIEW(list), column);

    // http://irtfweb.ifa.hawaii.edu/SoftwareDocs/gtk20/gtk/gtkcellrenderertoggle.html
    column := gtk_tree_view_column_new_with_attributes('List Items', togglerender, 'active', LIST_TOGGLE, nil);
    gtk_tree_view_append_column(GTK_TREE_VIEW(list), column);

    // http://irtfweb.ifa.hawaii.edu/SoftwareDocs/gtk20/gtk/gtkcellrendererpixbuf.html
    column := gtk_tree_view_column_new_with_attributes('List Items', pixbufrender, 'pixbuf', COL_PIXBUF,'stock-size', LIST_Int, nil);
    gtk_tree_view_append_column(GTK_TREE_VIEW(list), column);

    store := gtk_list_store_new(gint(N_COLUMNS), G_TYPE_STRING, G_TYPE_STRING, G_TYPE_INT, G_TYPE_STRING, G_TYPE_FLOAT, G_TYPE_STRING, G_TYPE_BOOLEAN, GDK_TYPE_PIXBUF, G_TYPE_STRING);

    gtk_tree_view_set_model(GTK_TREE_VIEW(list), GTK_TREE_MODEL(store));
    g_object_unref(store);

  end;

  procedure add_to_list(list: PGtkWidget; str: Pgchar);
  var
    store: PGtkListStore;
    iter: TGtkTreeIter;
    b: boolean;
    f: single;
    p: PGdkPixbuf;
    err: PGError;
  begin
    p := gdk_pixbuf_new_from_file('emacs.ico', @err);
    if err <> nil then begin
      WriteLn('Datei Fehler :', err^.message);
    end;

    store := GTK_LIST_STORE(gtk_tree_view_get_model(GTK_TREE_VIEW(list)));
    gtk_list_store_append(store, @iter);
    b := boolean(random(2));
    f := Random;
    //    gtk_list_store_set(store, @iter, LIST_ITEM, str, Color_blue, 'blue', LIST_Int, 123, Color_Green, 'red', ColorRed, 'green', LIST_Float, f, ColorRed, 'green', LIST_TOGGLE, b, COL_PIXBUF, p, Color_Black, 'black', -1);

    gtk_list_store_set(store, @iter, LIST_ITEM, str, Color_blue, 'blue', -1);
    gtk_list_store_set(store, @iter, LIST_Int, 6, Color_Green, 'red', -1);
    gtk_list_store_set(store, @iter, ColorRed, 'green', LIST_Float, f, ColorRed, 'green', LIST_TOGGLE, b, COL_PIXBUF, p, Color_Black, 'black', -1);

    g_object_unref(p);
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
  SetExceptionMask([exDenormalized, exInvalidOp, exOverflow, exPrecision, exUnderflow, exZeroDivide]);
  Randomize;
  main;
end.
