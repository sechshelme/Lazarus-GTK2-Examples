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

  procedure CreateTable(szTitle: PChar; xoptions, yoptions: gint);
  var
    window, table, button1: PGtkWidget;
  begin
    window := gtk_window_new(GTK_WINDOW_TOPLEVEL);
    gtk_window_set_title(GTK_WINDOW(Window), szTitle);

    gtk_signal_connect(GTK_OBJECT(Window), 'destroy', GTK_SIGNAL_FUNC(@Destroy), nil);
    gtk_signal_connect(GTK_OBJECT(Window), 'delete_event', GTK_SIGNAL_FUNC(@CloseAppWindow), nil);

    gtk_container_border_width(GTK_CONTAINER(Window), 10);

    table := gtk_table_new(4, 4, True);

    button1 := gtk_button_new_with_label('Button at 0,0');
    gtk_table_attach(GTK_TABLE(table), button1, 0, 1, 0, 1, xoptions, yoptions, 0, 0);
    gtk_widget_show(button1);

    button1 := gtk_button_new_with_label('Big sqare button');
    gtk_table_attach(GTK_TABLE(table), button1, 2, 4, 2, 4, xoptions, yoptions, 0, 0);
    gtk_widget_show(button1);

    button1 := gtk_button_new_with_label('Short fat button');
    gtk_table_attach(GTK_TABLE(table), button1, 0, 2, 3, 4, xoptions, yoptions, 0, 0);
    gtk_widget_show(button1);

    button1 := gtk_button_new_with_label('Tall skinny Button');
    gtk_table_attach(GTK_TABLE(table), button1, 3, 4, 0, 2, xoptions, yoptions, 0, 0);
    gtk_widget_show(button1);

    gtk_container_add(GTK_CONTAINER(window), table);
    gtk_widget_show(table);
    gtk_widget_show(window);
  end;

  procedure main;
  begin
    GTK_Init(@argc, @argv);

    CreateTable('Nothing', 0, 0);
    CreateTable('Fill', GTK_FILL, GTK_FILL);
    CreateTable('Shrink', GTK_SHRINK, GTK_SHRINK);
    CreateTable('Expand | Shrink', GTK_EXPAND or GTK_SHRINK, GTK_EXPAND or GTK_SHRINK);
    CreateTable('Fill | Expand', GTK_EXPAND or GTK_FILL, GTK_EXPAND or GTK_FILL);
    CreateTable('Fill | Shrink', GTK_SHRINK or GTK_FILL, GTK_SHRINK or GTK_FILL);
    CreateTable('Fill | Expand| Shrink', GTK_SHRINK or GTK_EXPAND or GTK_FILL, GTK_SHRINK or GTK_EXPAND or GTK_FILL);

    GTK_Main;
  end;

begin
  SetExceptionMask([exDenormalized, exInvalidOp, exOverflow, exPrecision, exUnderflow, exZeroDivide]);
  main;
end.
