program Project1;

// https://github.com/steshaw/gtk-examples/blob/master/ch04.button.edit.combo/listbox.c

uses
  Math,
  SysUtils,
  GLib2,
  Gdk2,
  Gtk2;

  function Destroy(w: PGtkWidget; Data: pgpointer): gint;
  begin
    WriteLn('destroy');
  end;

  function CloseAppWindow(w: PGtkWidget; Data: pgpointer): gint;
  begin
    WriteLn('delete');
    gtk_main_quit;
    Result := 0;
  end;

  function CreateTable(szTitle: PChar; xoptions, yoptions: gint): PGtkWidget;
  var
    table, button1, frame: PGtkWidget;
  begin
    table := gtk_table_new(4, 4, True);

    button1 := gtk_button_new_with_label('Button at 0,0');
    gtk_table_attach(GTK_TABLE(table), button1, 0, 1, 0, 1, xoptions, yoptions, 0, 0);

    button1 := gtk_button_new_with_label('Big sqare button');
    gtk_table_attach(GTK_TABLE(table), button1, 2, 4, 2, 4, xoptions, yoptions, 0, 0);

    button1 := gtk_button_new_with_label('Short fat button');
    gtk_table_attach(GTK_TABLE(table), button1, 0, 2, 3, 4, xoptions, yoptions, 0, 0);

    button1 := gtk_button_new_with_label('Tall skinny Button');
    gtk_table_attach(GTK_TABLE(table), button1, 3, 4, 0, 2, xoptions, yoptions, 0, 0);

    frame := gtk_frame_new(szTitle);
    gtk_container_border_width(GTK_CONTAINER(frame), 10);
    gtk_frame_set_shadow_type(GTK_FRAME(frame), GTK_SHADOW_IN);
    gtk_container_add(GTK_CONTAINER(frame), table);

    Result := frame;
  end;

  procedure main;
  var
    window, hbox, table, vbox: PGtkWidget;
  begin
    GTK_Init(@argc, @argv);

    window := gtk_window_new(GTK_WINDOW_TOPLEVEL);
    gtk_window_set_title(GTK_WINDOW(Window), 'Table');

    gtk_signal_connect(GTK_OBJECT(Window), 'destroy', GTK_SIGNAL_FUNC(@Destroy), nil);
    gtk_signal_connect(GTK_OBJECT(Window), 'delete_event', GTK_SIGNAL_FUNC(@CloseAppWindow), nil);

    gtk_container_border_width(GTK_CONTAINER(Window), 0);

    vbox := gtk_vbox_new(False, 0);

    hbox := gtk_hbox_new(False, 0);
    table := CreateTable('Nothing', 0, 0);
    gtk_container_add(GTK_CONTAINER(hbox), table);
    table := CreateTable('Fill', GTK_FILL, GTK_FILL);
    gtk_container_add(GTK_CONTAINER(hbox), table);
    table := CreateTable('Shrink', GTK_SHRINK, GTK_SHRINK);
    gtk_container_add(GTK_CONTAINER(hbox), table);
    gtk_container_add(GTK_CONTAINER(vbox), hbox);

    hbox := gtk_hbox_new(False, 0);
    table := CreateTable('Expand | Shrink', GTK_EXPAND or GTK_SHRINK, GTK_EXPAND or GTK_SHRINK);
    gtk_container_add(GTK_CONTAINER(hbox), table);
    table := CreateTable('Fill | Expand', GTK_EXPAND or GTK_FILL, GTK_EXPAND or GTK_FILL);
    gtk_container_add(GTK_CONTAINER(hbox), table);
    table := CreateTable('Fill | Shrink', GTK_SHRINK or GTK_FILL, GTK_SHRINK or GTK_FILL);
    gtk_container_add(GTK_CONTAINER(vbox), hbox);

    hbox := gtk_hbox_new(False, 0);
    gtk_container_add(GTK_CONTAINER(hbox), table);
    table := CreateTable('Fill | Expand| Shrink', GTK_SHRINK or GTK_EXPAND or GTK_FILL, GTK_SHRINK or GTK_EXPAND or GTK_FILL);
    gtk_container_add(GTK_CONTAINER(hbox), table);

    gtk_container_add(GTK_CONTAINER(vbox), hbox);
    gtk_container_add(GTK_CONTAINER(window), vbox);

    gtk_widget_show_all(window);

    GTK_Main;
  end;

begin
  SetExceptionMask([exDenormalized, exInvalidOp, exOverflow, exPrecision, exUnderflow, exZeroDivide]);
  main;
end.
