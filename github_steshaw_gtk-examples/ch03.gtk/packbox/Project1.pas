program Project1;

// https://github.com/steshaw/gtk-examples/blob/master/ch04.button.edit.combo/listbox.c

uses
  Math,
  SysUtils,
  GLib2,
  Gdk2,
  Gtk2;

  function CloseAppWindow(w: PGtkWidget; Data: pgpointer): gint;
  begin
    WriteLn('delete');
    gtk_main_quit;
    Result := 0;
  end;

  procedure AddListItem(listbox: PGtkWidget; sText: PChar);
  var
    item: PGtkWidget;
  begin
    item := gtk_list_item_new_with_label(sText);
    gtk_container_add(GTK_CONTAINER(listbox), item);
  end;

  function CompareName(a, b: gconstpointer): gint; cdecl;
  begin
    Result := strcomp(PChar(a), PChar(b));
  end;



  procedure main;
  const
    cbitems: PGList = nil;
    cbsitems: PGSList = nil;
  var
    window, hbox, table, vbox, label_, button1, entry, check,
    listbox, combo, combpbtn, btn, w: PGtkWidget;
  begin
    GTK_Init(@argc, @argv);

    window := gtk_window_new(GTK_WINDOW_TOPLEVEL);
    gtk_window_set_title(GTK_WINDOW(Window), 'packbox');

    gtk_signal_connect(GTK_OBJECT(Window), 'delete_event', GTK_SIGNAL_FUNC(@CloseAppWindow), nil);
    gtk_container_border_width(GTK_CONTAINER(Window), 10);

    vbox := gtk_vbox_new(False, 0);

    label_ := gtk_label_new('label');
    gtk_misc_set_alignment(GTK_MISC(label_), 0, 0);
    gtk_box_pack_start(GTK_BOX(vbox), label_, False, False, 0);

    button1 := gtk_button_new_with_label('Button');
    gtk_box_pack_start(GTK_BOX(vbox), button1, False, False, 0);

    entry := gtk_entry_new_with_max_length(20);
    gtk_box_pack_start(GTK_BOX(vbox), entry, False, False, 0);

    check := gtk_check_button_new_with_label('Check button');
    gtk_box_pack_start(GTK_BOX(vbox), check, False, False, 0);

    listbox := gtk_list_new;
    gtk_list_set_selection_mode(GTK_LIST(listbox), GTK_SELECTION_BROWSE);
    gtk_box_pack_start(GTK_BOX(vbox), listbox, False, False, 0);

    AddListItem(listbox, 'This is a listbox');
    AddListItem(listbox, 'Quite useful ... ');
    AddListItem(listbox, 'When it needs to be.');
    AddListItem(listbox, 'This list can be ');
    AddListItem(listbox, 'quite long, you know.');

    cbitems := g_list_append(cbitems, PChar('Car'));
    cbitems := g_list_append(cbitems, PChar('House'));
    cbitems := g_list_append(cbitems, PChar('Job'));
    cbitems := g_list_append(cbitems, PChar('Computer'));

    combo := gtk_combo_new;
    gtk_combo_set_popdown_strings(GTK_COMBO(combo), cbitems);
    gtk_entry_set_text(GTK_ENTRY(GTK_COMBO(combo)^.entry), 'Hello');
    gtk_button_set_label(GTK_BUTTON(GTK_COMBO(combo)^.button), '***cb btn***');



        w:=GTK_COMBO(combo)^.popup;

        btn := gtk_button_new_with_label('new btn 1');
        gtk_box_pack_end(GTK_BOX(combo), btn, False, False, 0);
        btn := gtk_button_new_with_label('new btn 2');
        gtk_box_pack_end(GTK_BOX(combo), btn, False, False, 0);
//   gtk_container_add(GTK_CONTAINER(combo), btn);
gtk_box_reorder_child(GTK_BOX(combo),btn,-1);


    gtk_box_pack_start(GTK_BOX(vbox), combo, False, False, 0);

    // Test Sort-list

    label_ := gtk_label_new('sortiert');
    gtk_misc_set_alignment(GTK_MISC(label_), 0, 0);
    gtk_box_pack_start(GTK_BOX(vbox), label_, False, False, 0);

    cbsitems := g_slist_insert_sorted(cbsitems, PChar('Job3'), @CompareName);
    cbsitems := g_slist_insert_sorted(cbsitems, PChar('House'), @CompareName);
    cbsitems := g_slist_insert_sorted(cbsitems, PChar('Job2'), @CompareName);
    cbsitems := g_slist_insert_sorted(cbsitems, PChar('Job1'), @CompareName);
    cbsitems := g_slist_insert_sorted(cbsitems, PChar('Computer'), @CompareName);
    cbsitems := g_slist_insert_sorted(cbsitems, PChar('Car'), @CompareName);
    cbsitems := g_slist_insert_sorted(cbsitems, PChar('Job4'), @CompareName);

    combo := gtk_combo_new;
    gtk_combo_set_popdown_strings(GTK_COMBO(combo), PGList(cbsitems));
    gtk_box_pack_start(GTK_BOX(vbox), combo, False, False, 0);

    gtk_container_add(GTK_CONTAINER(window), vbox);


    gtk_box_reorder_child(GTK_BOX(vbox),entry,5);


    gtk_widget_show_all(window);

    GTK_Main;
  end;

begin
  SetExceptionMask([exDenormalized, exInvalidOp, exOverflow, exPrecision, exUnderflow, exZeroDivide]);
  main;
end.
