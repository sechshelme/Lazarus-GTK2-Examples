program project1;

// https://www.docs4dev.com/docs/gtk/4.0.0/ch01s05.html#google_vignette

uses
  glib2,
  common_GTK,
  gtkenums,                   // io. ohne
  gtkadjustment,              // io. -> common_GTK;
  gtkborder,                  // io. -> common_GTK
  gtkbitset,                  // io. -> glib2, common_GTK;
  gtkaccelgroup,              // io. -> glib2, common_GTK;
  gtknative,                  // io. -> glib2, common_GTK;   ( TGtkNative ausgelagert )
  gtkfilter,                  // io. -> glib2, common_GTK;

  gtkwidget,                  // -> glib2, common_GTK, pango,Cairo, gtkenums, gtknative
  gtkbutton,                  // io. -> common_GTK, gtkwidget;
  gtkactionbar,               // io. -> common_GTK, gtkwidget;
  gtkcalendar,                // io. -> common_GTK, gtkwidget;
  gtkaspectframe,             // io. -> common_GTK, gtkwidget;
  gtkbox,                     // io. -> common_GTK, gtkenums, gtkwidget;
  gtkcenterbox,               // io. -> common_GTK, gtkenums, gtkwidget;
  gtkwindowcontrols,          // io. -> common_GTK, gtkenums, gtkwidget;
  gtkaboutdialog,             // io. -> common_GTK, gtkwidget, gtkwindow;

  gtkscrollbar,               // io. -> common_GTK, gtkenums, gtkwidget, gtkadjustment;
  gtkrange,                   // io. -> common_GTK, gtkenums, gtkwidget, gtkadjustment, gtkborder;
  gtkscale,                   // io. -> pango, glib2, common_GTK, gtkenums, gtkwidget, gtkrange, gtkadjustment;
  gtkscalebutton,             // io. -> glib2, common_GTK, gtkwidget, gtkadjustment;

  gtkshortcuttrigger,
//  gtkshortcut,
  gtkshortcutsshortcut,       // io. -> glib2, common_GTK;

  gtkfontdialog,               // GTK4.12

  gtkapplication,             // -> glib2, common_GTK, gtkwindow               ( PGtkApplication ausgelagert )
  gtkapplicationwindow,       // -> common_GTK, gtkwidget, gtkwindow           ( PGtkApplication ausgelagert )
  gtkwindow,                  // -> glib2, common_GTK, gtkwidget               ( PGtkApplication ausgelagert )

  gtkcolordialog,             // geht nur mit 4.12      // Muss überarbeitet werden
  gtkactionable,              // -> glib2, common_GTK;
  gtkaccessiblerange,         //  geht nur mit 4.12      Muss überarbeitet werden
  gtkaccessibletext,          //  geht nur mit 4.12      Muss überarbeitet werden
  gtkaccessible,              //  geht nur mit 4.12      Muss überarbeitet werden    G_DECLARE_INTERFACE and G_DECLARE_FINAL_TYPE
  gtkatcontext,               // Muss überarbeitet werden
  gtkalertdialog,             //   geht nur mit 4.12     Muss überarbeitet werden

  Math,
  ScrollBox;




  // ------- Eigenes

const
  cmAbout = 1000;
  cmColorDlg = 1001;

  function CreateButton(Caption: Pgchar): PGtkWidget;
  var
    border: PGtkBorder;
  begin
    border := gtk_border_new;

    gtk_border_free(border);
    WriteLn(border^.left, 'x', border^.top, 'x', border^.right, 'x', border^.bottom);

    Result := gtk_button_new_with_label(Caption);
    gtk_widget_set_margin_start(Result, 10);
    gtk_widget_set_margin_top(Result, 10);
    gtk_widget_set_margin_bottom(Result, 10);
    gtk_widget_set_margin_end(Result, 10);
  end;

  procedure btn_Click(button: PGTKWidget; user_data: Pointer); cdecl;
  var
    cmd: PtrUInt absolute user_data;
    colDlg: PGtkColorDialog;
  begin
    WriteLn(cmd);
    case cmd of
      cmAbout: begin
        gtk_show_about_dialog(nil,
          'program-name', 'ExampleCode',
          'website', 'https://www.lazarusforum.de/app.php/portal',
          'website_label', 'Lazarus Forum',
          'version', '1234',
          'name', 'name',
          'copyright', 'copyright',
          'comments', 'comments',
          //   'authors', 'authors',
          // 'documenters', 'documenters',
          'translator-credits', 'translator_credits',
          'logo-icon-name', 'accessories-dictionary',
          'license-type', 'GTK_LICENSE_GPL_2_0',
          'screen', 'gtk_widget_get_screen (parent)',

          nil);
      end;
      cmColorDlg: begin
//        colDlg:=gtk_color_dialog_new;
//        gtk_color_dialog_get_modal(colDlg);
      end;
    end;
    WriteLn(gtk_button_get_label(GTK_BUTTON(button)));
  end;

  function Create_ActionBar: PGtkWidget;
  var
    button1: PGtkWidget;
  begin
    Result := gtk_action_bar_new;
    button1 := gtk_button_new_with_label('About...');
    gtk_action_bar_pack_start(GTK_ACTION_BAR(Result), button1);
    g_signal_connect(button1, 'clicked', G_CALLBACK(@btn_Click), gpointer(cmAbout));

    button1 := gtk_button_new_with_label('Color...');
    gtk_action_bar_pack_start(GTK_ACTION_BAR(Result), button1);
    g_signal_connect(button1, 'clicked', G_CALLBACK(@btn_Click), gpointer(cmColorDlg));
  end;

  function Create_Button_Box: PGtkWidget;
  var
    vbox2, vbox1, button1, button2, button3, button4: PGtkWidget;
  begin
    Result := gtk_box_new(GTK_ORIENTATION_HORIZONTAL, 0);

    vbox1 := gtk_box_new(GTK_ORIENTATION_VERTICAL, 0);
    gtk_box_append(GTK_BOX(Result), vbox1);

    button1 := CreateButton('Button 1');
    gtk_box_append(GTK_BOX(vbox1), button1);
    g_signal_connect(button1, 'clicked', G_CALLBACK(@btn_Click), nil);
    //    gtk_widget_set_size_request(button, 75, 25);

    button2 := CreateButton('Button 2');
    gtk_box_append(GTK_BOX(vbox1), button2);
    g_signal_connect(button2, 'clicked', G_CALLBACK(@btn_Click), nil);
    //    gtk_widget_set_size_request(button, 75, 25);

    vbox2 := gtk_box_new(GTK_ORIENTATION_VERTICAL, 0);
    gtk_box_append(GTK_BOX(Result), vbox2);

    button3 := CreateButton('Button 3');
    gtk_box_append(GTK_BOX(vbox2), button3);
    g_signal_connect(button3, 'clicked', G_CALLBACK(@btn_Click), nil);
    //    gtk_widget_set_size_request(button, 75, 25);

    button4 := CreateButton('Button 4');
    gtk_box_append(GTK_BOX(vbox2), button4);
    g_signal_connect(button4, 'clicked', G_CALLBACK(@btn_Click), nil);
    //    gtk_widget_set_size_request(button, 75, 25);

  end;

function Create_Calender: PGtkWidget;
begin
  Result := gtk_calendar_new;
end;

function Create_Aspect_Frame: PGtkWidget;
var
  button4: PGtkWidget;
begin
  Result := gtk_aspect_frame_new(100,100,90,True);

  button4 := CreateButton('Button 4');
  gtk_aspect_frame_set_child(GTK_ASPECT_FRAME(Result), button4);
end;

function Create_CenterBox: PGtkWidget;
var
  btn: PGtkWidget;
begin
  Result := gtk_center_box_new;

  btn := CreateButton('CB-Button 1');
  gtk_center_box_set_end_widget(GTK_CENTER_BOX(Result), btn);
  btn := CreateButton('CB-Button 2');
  gtk_center_box_set_center_widget(GTK_CENTER_BOX(Result), btn);
  btn := CreateButton('CB-Button 3');
  gtk_center_box_set_start_widget(GTK_CENTER_BOX(Result), btn);
end;

function Create_Window_Controls: PGtkWidget;
begin
  Result := gtk_window_controls_new(GTK_PACK_START);
end;



  procedure activate(app: PGtkApplication; user_data: Pointer); cdecl;
  var
    window, box, actionBar, calendar, scrollBar, scaleBtn,
      aspectFram, winCtrl, centerBox: PGTKWidget;
    window_class: PGtkWindowClass;
  begin
    window := gtk_application_window_new(app);

    gtk_window_set_default_size(GTK_WINDOW(window), 320, 200);
    gtk_window_set_title(GTK_WINDOW(window), 'Hello GTK-4');


    box := Create_Button_Box;
    gtk_window_set_child(GTK_WINDOW(window), box);

    actionBar := Create_ActionBar;
    gtk_box_append(GTK_BOX(box), actionBar);
    actionBar := Create_ActionBar;
    gtk_box_append(GTK_BOX(box), actionBar);

    calendar := Create_Calender;
    gtk_box_append(GTK_BOX(box), calendar);

    scrollBar := Create_ScrollBox;
    gtk_box_append(GTK_BOX(box), scrollBar);

    scaleBtn := Create_ScaleButton;
    gtk_box_append(GTK_BOX(box), scaleBtn);

    aspectFram := Create_Aspect_Frame;
    gtk_box_append(GTK_BOX(box), aspectFram);

    winCtrl := Create_Window_Controls;
    gtk_box_append(GTK_BOX(box), winCtrl);

    centerBox := Create_CenterBox;
    gtk_box_append(GTK_BOX(box), centerBox);


    gtk_window_present(GTK_WINDOW(window));

    window_class := GTK_WINDOW_GET_CLASS(window);
    WriteLn('win class: ', G_OBJECT_CLASS_NAME(window_class));
    WriteLn('win is_class: ', GTK_IS_WINDOW_CLASS(window_class));

    window_class := GTK_WINDOW_GET_CLASS(box);
    WriteLn('btn class: ', G_OBJECT_CLASS_NAME(window_class));
    WriteLn('btn is_class: ', GTK_IS_WINDOW_CLASS(window_class));

    WriteLn('is win: ', GTK_IS_WINDOW(window));
    WriteLn('is win: ', GTK_IS_WINDOW(box));
    WriteLn('is btn: ', GTK_IS_BUTTON(box));
    WriteLn('is btn: ', GTK_IS_BUTTON(window));
  end;

  procedure main;
  var
    app: PGtkApplication;
  begin
    app := gtk_application_new('org.gtk.example', 0);

    g_signal_connect(app, 'activate', G_CALLBACK(@activate), nil);
    g_application_run(app, 0, nil);
  end;

begin
  SetExceptionMask([exDenormalized, exInvalidOp, exOverflow, exPrecision, exUnderflow, exZeroDivide]);
  main;
end.
