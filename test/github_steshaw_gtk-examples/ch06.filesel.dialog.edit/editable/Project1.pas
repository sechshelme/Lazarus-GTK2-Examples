program Project1;

uses
  Math,
  SysUtils,
  pango,
  GLib2,
  Gdk2,
  Gtk2;

const
  cmOk = 1000;
  cmYesNo = 1001;


  function CloseAppWindow(w: PGtkWidget; Data: pgpointer): gint; cdecl;
  begin
    gtk_main_quit;
    Result := 0;
  end;

  function CreateEditable(parent: PGtkWidget): PGtkWidget;
  var
    sw, btn, vbox: PGtkWidget;
    edit1: pointer;
  begin
    sw := gtk_scrolled_window_new(nil, nil);

    gtk_scrolled_window_set_policy(GTK_SCROLLED_WINDOW(sw), GTK_POLICY_AUTOMATIC, GTK_POLICY_AUTOMATIC);

    gtk_widget_show(sw);
    gtk_container_add(GTK_CONTAINER(parent), sw);

    edit1 := gtk_text_new(nil, nil);
    gtk_text_set_word_wrap(GTK_TEXT(edit1),False);
    gtk_text_set_editable(GTK_TEXT(edit1), True);
//  gtk_container_add(GTK_CONTAINER(sw), edit1);
    gtk_widget_show(edit1);

    vbox:=gtk_vbox_new(False,0);
    gtk_widget_show(vbox);

    btn:=gtk_button_new_with_label('Hello');
    gtk_widget_show(btn);
    gtk_container_add(GTK_CONTAINER(vbox), btn);

    btn:=gtk_button_new_with_label('Hello');
    gtk_widget_show(btn);
    gtk_container_add(GTK_CONTAINER(vbox), btn);


    gtk_container_add(GTK_CONTAINER(sw), vbox);
  end;

  procedure main;
  var
    Window, main_vbox: PGtkWidget;
  begin
    GTK_Init(@argc, @argv);

    Window := gtk_window_new(GTK_WINDOW_TOPLEVEL);
    gtk_window_set_title(GTK_WINDOW(Window), 'editable');
    gtk_window_set_default_size(GTK_WINDOW(Window), 350, 250);
    gtk_window_set_position(GTK_WINDOW(window), GTK_WIN_POS_CENTER);
    gtk_signal_connect(GTK_OBJECT(Window), 'delete_event', GTK_SIGNAL_FUNC(@CloseAppWindow), nil);

    gtk_container_set_border_width(GTK_CONTAINER(Window), 10);

    main_vbox := gtk_vbox_new(True, 5);

    gtk_widget_show(main_vbox);
    gtk_container_add(GTK_CONTAINER(Window), main_vbox);

    CreateEditable(main_vbox);
    CreateEditable(main_vbox);

    gtk_widget_show(window);
    GTK_Main;
  end;

begin
  SetExceptionMask([exDenormalized, exInvalidOp, exOverflow, exPrecision, exUnderflow, exZeroDivide]);
  main;
end.
