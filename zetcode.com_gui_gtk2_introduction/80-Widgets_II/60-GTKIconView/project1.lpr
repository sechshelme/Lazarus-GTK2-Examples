program project1;

uses
  Math,
  glib2,
  gdk2,
  gtk2,
  gdk2pixbuf;

const
  COL_DISPLAY_NAME = 0;
  COL_PIXBUF = 1;
  NUM_COLS = 2;

  function init_model: PGtkTreeModel; cdecl;
  var
    p1, p2, p3, p4: PGdkPixbuf;
    err: PGError;
    list_store: PGtkListStore;
    iter: TGtkTreeIter;
  begin

    p1 := gdk_pixbuf_new_from_file('mesa.ico', @err);
    p2 := gdk_pixbuf_new_from_file('emacs.ico', @err);
    p3 := gdk_pixbuf_new_from_file('trans.ico', @err);
    p4 := gdk_pixbuf_new_from_file('vlc.ico', @err);

    if err <> nil then begin
      WriteLn('Datei Fehler :',err^.message);
    end;

    list_store := gtk_list_store_new(NUM_COLS, G_TYPE_STRING, GDK_TYPE_PIXBUF);

    gtk_list_store_append(list_store, @iter);
    gtk_list_store_set(list_store, @iter, COL_DISPLAY_NAME, 'Mesa', COL_PIXBUF, p1, -1);

    gtk_list_store_append(list_store, @iter);
    gtk_list_store_set(list_store, @iter, COL_DISPLAY_NAME, 'Emacs', COL_PIXBUF, p2, -1);

    gtk_list_store_append(list_store, @iter);
    gtk_list_store_set(list_store, @iter, COL_DISPLAY_NAME, 'Transmision', COL_PIXBUF, p3, -1);

    gtk_list_store_append(list_store, @iter);
    gtk_list_store_set(list_store, @iter, COL_DISPLAY_NAME, 'VCL-Player', COL_PIXBUF, p4, -1);

    g_object_unref(p1);
    g_object_unref(p2);
    g_object_unref(p3);
    g_object_unref(p4);

    Result := GTK_TREE_MODEL(list_store);
  end;

  function main(argc: integer; argv: PChar): integer;
  var
    window, sw, icon_view: PGtkWidget;
    model: PGtkTreeModel;
  begin
    gtk_init(@argc, @argv);
    window := gtk_window_new(GTK_WINDOW_TOPLEVEL);
    gtk_window_set_title(GTK_WINDOW(window), 'OconView');
    gtk_container_set_border_width(GTK_CONTAINER(window), 10);
    gtk_window_set_default_size(GTK_WINDOW(window), 350, 300);

    sw := gtk_scrolled_window_new(nil, nil);
    gtk_container_add(GTK_CONTAINER(window), sw);

    gtk_scrolled_window_set_policy(GTK_SCROLLED_WINDOW(sw), GTK_POLICY_AUTOMATIC, GTK_POLICY_AUTOMATIC);
    gtk_scrolled_window_set_shadow_type(GTK_SCROLLED_WINDOW(sw), GTK_SHADOW_IN);

    model:=init_model;

    icon_view := gtk_icon_view_new_with_model(model);
    gtk_container_add(GTK_CONTAINER(sw), icon_view);

    gtk_icon_view_set_text_column(GTK_ICON_VIEW(icon_view), COL_DISPLAY_NAME);
    gtk_icon_view_set_pixbuf_column(GTK_ICON_VIEW(icon_view), COL_PIXBUF);
    gtk_icon_view_set_selection_mode(GTK_ICON_VIEW(icon_view), GTK_SELECTION_MULTIPLE);


    g_signal_connect(G_OBJECT(window), 'destroy', G_CALLBACK(@gtk_main_quit), nil);

    gtk_widget_show_all(window);
    gtk_main;
    Result := 0;
  end;

begin
  SetExceptionMask([exDenormalized, exInvalidOp, exOverflow, exPrecision, exUnderflow, exZeroDivide]);
  Halt(main(argc, @argv));
end.
