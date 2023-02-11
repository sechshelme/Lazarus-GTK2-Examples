program project1;

uses
  Math,
  glib2,
  gdk2,
  gtk2;

const
  cmError = 1000;
  cmInfo = 1001;
  cmWarning = 1002;
  cmQuestion = 1003;
  cmOthero = 1004;
  cmYesNo = 1005;
  cmUser = 1006;

var
  Text: string;


  procedure show_dialog(button: PGtkButton; Data: gpointer);
  var
    error_msg: PGtkWidget;
    res: gint;
  begin
    case PtrUInt(Data) of
      cmError: begin
        error_msg := gtk_message_dialog_new(nil, GTK_DIALOG_MODAL, GTK_MESSAGE_ERROR, GTK_BUTTONS_OK, 'Es ist ein Fehler aufgetreten !');
        gtk_dialog_run(GTK_DIALOG(error_msg));
        gtk_widget_destroy(error_msg);
      end;
      cmInfo: begin
        error_msg := gtk_message_dialog_new(nil, GTK_DIALOG_MODAL, GTK_MESSAGE_INFO, GTK_BUTTONS_OK, 'Es ist eine Info Meldung !');
        gtk_dialog_run(GTK_DIALOG(error_msg));
        gtk_widget_destroy(error_msg);
      end;
      cmWarning: begin
        error_msg := gtk_message_dialog_new(nil, GTK_DIALOG_MODAL, GTK_MESSAGE_WARNING, GTK_BUTTONS_OK, 'Es ist eine Warnung aufgetreten !');
        gtk_dialog_run(GTK_DIALOG(error_msg));
        gtk_widget_destroy(error_msg);
      end;
      cmQuestion: begin
        error_msg := gtk_message_dialog_new(nil, GTK_DIALOG_MODAL, GTK_MESSAGE_QUESTION, GTK_BUTTONS_OK, 'eine Frage, bei der der Benutzer eine einfache Auswahlmöglichkeit hat');
        gtk_dialog_run(GTK_DIALOG(error_msg));
        gtk_widget_destroy(error_msg);
      end;
      cmOthero: begin
        error_msg := gtk_message_dialog_new(nil, GTK_DIALOG_MODAL, TGtkMessageType(4), GTK_BUTTONS_OK, 'für sonstige Zwecke, es wird kein Icon gezeigt');
        gtk_dialog_run(GTK_DIALOG(error_msg));
        gtk_widget_destroy(error_msg);
      end;
      cmYesNo: begin
        error_msg := gtk_message_dialog_new(nil, GTK_DIALOG_MODAL, TGtkMessageType(4), GTK_BUTTONS_YES_NO, 'für sonstige Zwecke, es wird kein Icon gezeigt');
        res:=gtk_dialog_run(GTK_DIALOG(error_msg));
        WriteLn(res);
        gtk_widget_destroy(error_msg);
      end;
      cmUser: begin
        error_msg := gtk_message_dialog_new(nil, GTK_DIALOG_MODAL, GTK_MESSAGE_WARNING, GTK_BUTTONS_NONE, 'Im Text befinden sich noch ungespeicherte Änderungen !');
        gtk_dialog_add_buttons(GTK_DIALOG(error_msg), 'Beenden', 100, 'Abbrechen', 101, 'Speichern', 102, nil);
        res:= gtk_dialog_run(GTK_DIALOG(error_msg));
        WriteLn(res);
        gtk_widget_destroy(error_msg);
      end;
    end;
  end;


  procedure change_text(button: PGtkButton; Data: gpointer);
  begin
    Text := gtk_entry_get_text(Data);
  end;

  procedure new_text(button: PGtkButton; Data: gpointer);
  begin
    gtk_entry_set_text(Data, 'Hello World !');
  end;


  function main(argc: integer; argv: PChar): integer;
  var
    window, vbox, label1, button1, buttonQuit, button2, button3, button4, button5, buttonYesNo,
      buttonUser: PGtkWidget;
  begin
    gtk_init(@argc, @argv);
    window := gtk_window_new(GTK_WINDOW_TOPLEVEL);

    vbox := gtk_vbox_new(False, 0);
    gtk_container_add(GTK_CONTAINER(window), vbox);

    label1 := gtk_label_new('Gib etwas ein!');
    gtk_box_pack_start(GTK_BOX(vbox), label1, False, False, 0);


    button1 := gtk_button_new_with_label('Fehler');
    gtk_box_pack_start(GTK_BOX(vbox), button1, False, False, 0);
    g_signal_connect(button1, 'clicked', G_CALLBACK(@show_dialog), Pointer(cmError));

    button2 := gtk_button_new_with_label('Warnung');
    gtk_box_pack_start(GTK_BOX(vbox), button2, False, False, 0);
    g_signal_connect(button2, 'clicked', G_CALLBACK(@show_dialog), Pointer(cmWarning));

    button3 := gtk_button_new_with_label('Info');
    gtk_box_pack_start(GTK_BOX(vbox), button3, False, False, 0);
    g_signal_connect(button3, 'clicked', G_CALLBACK(@show_dialog), Pointer(cmInfo));

    button4 := gtk_button_new_with_label('Question');
    gtk_box_pack_start(GTK_BOX(vbox), button4, False, False, 0);
    g_signal_connect(button4, 'clicked', G_CALLBACK(@show_dialog), Pointer(cmQuestion));

    button5 := gtk_button_new_with_label('Other');
    gtk_box_pack_start(GTK_BOX(vbox), button5, False, False, 0);
    g_signal_connect(button5, 'clicked', G_CALLBACK(@show_dialog), Pointer(cmOthero));

    buttonYesNo := gtk_button_new_with_label('Ja / Nein');
    gtk_box_pack_start(GTK_BOX(vbox), buttonYesNo, False, False, 0);
    g_signal_connect(buttonYesNo, 'clicked', G_CALLBACK(@show_dialog), Pointer(cmYesNo));

    buttonUser := gtk_button_new_with_label('Eigenbau');
    gtk_box_pack_start(GTK_BOX(vbox), buttonUser, False, False, 0);
    g_signal_connect(buttonUser, 'clicked', G_CALLBACK(@show_dialog), Pointer(cmUser));

    buttonQuit := gtk_button_new_with_label('Programm beenden');
    gtk_box_pack_start(GTK_BOX(vbox), buttonQuit, False, False, 5);
    g_signal_connect(buttonQuit, 'clicked', G_CALLBACK(@gtk_main_quit), nil);


    g_signal_connect(window, 'destroy', G_CALLBACK(@gtk_main_quit), nil);

    gtk_widget_show_all(window);

    gtk_main;
    Result := 0;
  end;

begin
  SetExceptionMask([exDenormalized, exInvalidOp, exOverflow, exPrecision, exUnderflow, exZeroDivide]);
  Halt(main(argc, @argv));
end.
