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


  function CloseDialog(w: PGtkWidget; Data: pgpointer): gint; cdecl;
  begin
    WriteLn('cloasing');
    gtk_widget_destroy(GTK_WIDGET(Data));
  end;

  function ClosingDialog(w: PGtkWidget; Data: pgpointer): gint; cdecl;
  begin
    WriteLn('close');
    gtk_grab_remove(GTK_WIDGET(Data));
  end;

  function DisplayYes(w: PGtkWidget; Data: pgpointer): gint; cdecl;
  begin
    g_print('Withdrawing: $60''000''000''000.00'#10);
    gtk_widget_destroy(GTK_WIDGET(Data));
  end;

  function DisplayNo(w: PGtkWidget; Data: pgpointer): gint; cdecl;
  begin
    g_print('Money can''t buy you happiness.'#10);
    gtk_widget_destroy(GTK_WIDGET(Data));
  end;

  procedure YesNo(szmessage: PChar; YesFunc: Pointer; NoFunc: Pointer); cdecl;
  var
    dialog_window, label1, button1: PGtkWidget;
  begin
    dialog_window := gtk_dialog_new;
    gtk_window_set_title(GTK_WINDOW(dialog_window), 'YesNo');
    gtk_signal_connect(GTK_OBJECT(dialog_window), 'destroy', GTK_SIGNAL_FUNC(@ClosingDialog), dialog_window);
    gtk_container_set_border_width(GTK_CONTAINER(dialog_window), 5);

    label1 := gtk_label_new(szmessage);
    gtk_misc_set_padding(GTK_MISC(label1), 10, 10);
    gtk_box_pack_start(GTK_BOX(GTK_DIALOG(dialog_window)^.vbox), label1, True, True, 0);
    gtk_widget_show(label1);

    button1 := gtk_button_new_with_label('Yes');
    gtk_signal_connect(GTK_OBJECT(button1), 'clicked', GTK_SIGNAL_FUNC(YesFunc), dialog_window);
    GTK_WIDGET_SET_FLAGS(button1, GTK_CAN_DEFAULT);
    gtk_box_pack_start(GTK_BOX(GTK_DIALOG(dialog_window)^.action_area), button1, True, True, 0);
    gtk_widget_grab_default(button1);
    gtk_widget_show(button1);

    button1 := gtk_button_new_with_label('No');
    gtk_signal_connect(GTK_OBJECT(button1), 'clicked', GTK_SIGNAL_FUNC(NoFunc), dialog_window);
    GTK_WIDGET_SET_FLAGS(button1, GTK_CAN_DEFAULT);
    gtk_box_pack_start(GTK_BOX(GTK_DIALOG(dialog_window)^.action_area), button1, True, True, 0);
    gtk_widget_grab_default(button1);
    gtk_widget_show(button1);

    gtk_widget_show(dialog_window);
    gtk_grab_add(dialog_window);
  end;

  procedure Popup(szmessage: PChar);
  var
    dialog_window, label1, button1: PGtkWidget;
  begin
    dialog_window := gtk_dialog_new;
    gtk_signal_connect(GTK_OBJECT(dialog_window), 'destroy', GTK_SIGNAL_FUNC(@ClosingDialog), dialog_window);
    gtk_window_set_title(GTK_WINDOW(dialog_window), 'Popup');
    gtk_container_set_border_width(GTK_CONTAINER(dialog_window), 5);

    label1 := gtk_label_new(szmessage);
    gtk_misc_set_padding(GTK_MISC(label1), 10, 10);
    gtk_box_pack_start(GTK_BOX(GTK_DIALOG(dialog_window)^.vbox), label1, True, True, 0);
    gtk_widget_show(label1);

    button1 := gtk_button_new_with_label('Ok');
    gtk_signal_connect(GTK_OBJECT(button1), 'clicked', GTK_SIGNAL_FUNC(@CloseDialog), dialog_window);
    GTK_WIDGET_SET_FLAGS(button1, GTK_CAN_DEFAULT);
    gtk_box_pack_start(GTK_BOX(GTK_DIALOG(dialog_window)^.action_area), button1, True, True, 0);
    gtk_widget_grab_default(button1);
    gtk_widget_show(button1);

    gtk_widget_show(dialog_window);
    gtk_grab_add(dialog_window);
  end;

  function CloseAppWindow(w: PGtkWidget; Data: pgpointer): gint; cdecl;
  begin
    gtk_main_quit;
    Result := 0;
  end;

  function CallButton(w: PGtkWidget; Data: pgpointer): gint; cdecl;
  begin
    case PtrUInt(Data) of
      cmOk: begin
        Popup('This will bankrupt Microsoft.');
      end;
      cmYesNo: begin
        YesNo('Are you sure you want to siphon all of'#10 +
          ' Bill Gates money from his account?', @DisplayYes, @DisplayNo);
      end;
    end;
    Result := 0;
  end;

  procedure main;
  var
    Window, vbox, button1: PGtkWidget;
  begin
    GTK_Init(@argc, @argv);

    Window := gtk_window_new(GTK_WINDOW_TOPLEVEL);
    gtk_window_set_title(GTK_WINDOW(Window), 'CheckBox');
    gtk_window_set_default_size(GTK_WINDOW(Window), 250, 250);
    gtk_window_set_position(GTK_WINDOW(window), GTK_WIN_POS_CENTER);
    gtk_signal_connect(GTK_OBJECT(Window), 'delete_event', GTK_SIGNAL_FUNC(@CloseAppWindow), nil);

    gtk_container_set_border_width(GTK_CONTAINER(Window), 10);

    vbox := gtk_vbox_new(True, 5);

    button1 := gtk_button_new_with_label('Ok');
    gtk_signal_connect(GTK_OBJECT(button1), 'clicked', GTK_SIGNAL_FUNC(@CallButton), gpointer(cmOk));
    gtk_box_pack_start(GTK_BOX(vbox), button1, True, True, 0);
    gtk_widget_show(button1);

    button1 := gtk_button_new_with_label('YesNo');
    gtk_signal_connect(GTK_OBJECT(button1), 'clicked', GTK_SIGNAL_FUNC(@CallButton), gpointer(cmYesNo));
    gtk_box_pack_start(GTK_BOX(vbox), button1, True, True, 0);
    gtk_widget_show(button1);

    button1 := gtk_button_new_with_label('Quit');
    gtk_signal_connect(GTK_OBJECT(button1), 'clicked', GTK_SIGNAL_FUNC(@gtk_main_quit), nil);
    gtk_box_pack_start(GTK_BOX(vbox), button1, True, True, 0);
    gtk_widget_show(button1);

    gtk_widget_show(vbox);
    gtk_container_add(GTK_CONTAINER(Window), vbox);

    gtk_widget_show(window);
    GTK_Main;
  end;

begin
  SetExceptionMask([exDenormalized, exInvalidOp, exOverflow, exPrecision, exUnderflow, exZeroDivide]);
  main;
end.
