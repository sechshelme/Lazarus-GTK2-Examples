program Project1;

uses
  Math,
  GLib2,
  Gdk2,
  Gtk2;

type
  PEntry = ^TEntry;

  TEntry = record
    Name, Age, Occupation: PGtkWidget;
  end;

  procedure save_Entry(w: PGtkWidget; entry: PEntry);
  var
    Text: string;
  begin
    if entry <> nil then begin
      Text := gtk_entry_get_text(GTK_ENTRY(entry^.Name));
      WriteLn(Text);
      Text := gtk_entry_get_text(GTK_ENTRY(entry^.Age));
      WriteLn(Text);
      Text := gtk_entry_get_text(GTK_ENTRY(entry^.Occupation));
      WriteLn(Text);
    end;
  end;

  procedure main;
  var
    Window, table, label3, label1, label2, vbox, hbox, btn_close, btn_save: PGtkWidget;
    entry: TEntry;
  begin
    GTK_Init(@argc, @argv);

    Window := gtk_window_new(GTK_WINDOW_TOPLEVEL);
    gtk_window_set_title(GTK_WINDOW(Window), 'GtkEntry');
    gtk_window_set_position(GTK_WINDOW(window), GTK_WIN_POS_CENTER);
    gtk_container_set_border_width(GTK_CONTAINER(Window), 5);

    vbox := gtk_vbox_new(False, 0);
    gtk_container_add(GTK_CONTAINER(Window), vbox);

    table := gtk_table_new(3, 2, False);
    gtk_container_add(GTK_CONTAINER(vbox), table);

    label1 := gtk_label_new('Name');
    gtk_table_attach(GTK_TABLE(table), label1, 0, 1, 0, 1, GTK_FILL or GTK_SHRINK, GTK_FILL or GTK_SHRINK, 5, 5);
    label2 := gtk_label_new('Age');
    gtk_table_attach(GTK_TABLE(table), label2, 0, 1, 1, 2, GTK_FILL or GTK_SHRINK, GTK_FILL or GTK_SHRINK, 5, 5);
    label3 := gtk_label_new('Occupation');
    gtk_table_attach(GTK_TABLE(table), label3, 0, 1, 2, 3, GTK_FILL or GTK_SHRINK, GTK_FILL or GTK_SHRINK, 5, 5);

    entry.Name := gtk_entry_new;
    gtk_table_attach(GTK_TABLE(table), entry.Name, 1, 2, 0, 1, GTK_FILL or GTK_EXPAND, GTK_FILL or GTK_SHRINK, 5, 5);
    entry.Age := gtk_entry_new;
    gtk_table_attach(GTK_TABLE(table), entry.Age, 1, 2, 1, 2, GTK_FILL or GTK_EXPAND, GTK_FILL or GTK_SHRINK, 5, 5);
    entry.Occupation := gtk_entry_new;
    gtk_table_attach(GTK_TABLE(table), entry.Occupation, 1, 2, 2, 3, GTK_FILL or GTK_EXPAND, GTK_FILL or GTK_SHRINK, 5, 5);

    hbox := gtk_hbox_new(False, 0);
    gtk_box_pack_end(GTK_BOX(vbox), hbox, False, False, 0);

    btn_close := gtk_button_new_with_label('Chancel');
    gtk_box_pack_end(GTK_BOX(hbox), btn_close, False, False, 0);
    g_signal_connect(G_OBJECT(btn_close), 'clicked', G_CALLBACK(@gtk_main_quit), nil);

    btn_save := gtk_button_new_with_label('Save');
    gtk_box_pack_end(GTK_BOX(hbox), btn_save, False, False, 0);
    g_signal_connect(G_OBJECT(btn_save), 'clicked', G_CALLBACK(@save_Entry), @entry);

    gtk_widget_show_all(window);

    g_signal_connect(G_OBJECT(window), 'destroy', G_CALLBACK(@gtk_main_quit), nil);

    GTK_Main;
  end;

begin
  SetExceptionMask([exDenormalized, exInvalidOp, exOverflow, exPrecision, exUnderflow, exZeroDivide]);
  main;
end.
