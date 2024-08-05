program project1;

// https://www.docs4dev.com/docs/gtk/4.0.0/ch01s05.html#google_vignette

uses
  Math,
  glib2,

  GDK4,
  GSK4,
  GTK4,
  GTK4_unix_print,
//  GDK4_broadway,
//  GSK4_broadway,

  common_GTK,




  // --- Eigenes
  ScrollBox,
  TextEdit,
  ListBox,
  DrawArena;




  // ------- Eigenes

const
  cmAbout = 1000;
  cmColorDlg = 1001;
  cmFileDlg = 1002;

  function CreateButton(Caption: Pgchar): PGtkWidget;
  begin
    Result := gtk_button_new_with_label(Caption);
    gtk_widget_set_margin_start(Result, 5);
    gtk_widget_set_margin_top(Result, 5);
    gtk_widget_set_margin_bottom(Result, 5);
    gtk_widget_set_margin_end(Result, 5);
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

    GTK_BUILDER_WARN_INVALID_CHILD_TYPE(button, 'dfdsfs');
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

    button1 := gtk_button_new_with_label('File...');
    gtk_action_bar_pack_start(GTK_ACTION_BAR(Result), button1);
    g_signal_connect(button1, 'clicked', G_CALLBACK(@btn_Click), gpointer(cmFileDlg));
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
    Result := gtk_aspect_frame_new(100, 100, 90, True);
    button4 := CreateButton('aspect 1');
    gtk_aspect_frame_set_child(GTK_ASPECT_FRAME(Result), button4);
    button4 := CreateButton('aspect 2');
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

  function Create_GridBox: PGtkWidget;
  var
    btn, tv: PGtkWidget;
  begin
    Result := gtk_grid_new;

    btn := CreateButton('Grid 1');
    gtk_grid_attach(GTK_GRID(Result), btn, 0, 0, 1, 1);
    btn := CreateButton('Grid 2');
    gtk_grid_attach(GTK_GRID(Result), btn, 0, 1, 1, 1);
    btn := CreateButton('Grid 3');
    gtk_grid_attach(GTK_GRID(Result), btn, 1, 0, 1, 1);
    btn := CreateButton('Grid 4');
    gtk_grid_attach(GTK_GRID(Result), btn, 1, 1, 1, 1);
    btn := CreateButton('Grid 5');
    gtk_grid_attach(GTK_GRID(Result), btn, 0, 2, 2, 1);
    btn := CreateButton('Grid 6');
    gtk_grid_attach(GTK_GRID(Result), btn, 2, 0, 1, 3);

    tv := Create_TextView;
    gtk_grid_attach(GTK_GRID(Result), tv, 0, 3, 3, 1);
  end;


  function Create_Window_Controls: PGtkWidget;
  begin
    Result := gtk_window_controls_new(GTK_PACK_START);
  end;

  function Create_FlowBox: PGtkWidget;
  var
    i: integer;
    tb: PGtkWidget;
  begin
    Result := gtk_flow_box_new;
    gtk_flow_box_set_min_children_per_line(GTK_FLOW_BOX(Result), 2);
    gtk_flow_box_set_max_children_per_line(GTK_FLOW_BOX(Result), 4);
    for i := 0 to 15 do begin
      tb := gtk_toggle_button_new_with_label('Flow 1');
      if i mod 2 = 1 then  begin
        gtk_toggle_button_set_active(GTK_TOGGLE_BUTTON(tb), gTRUE);
      end;
      gtk_flow_box_append(GTK_FLOW_BOX(Result), tb);
    end;
  end;

  function Create_Label(l: PChar): PGtkWidget;
  begin
    Result := gtk_label_new(l);
  end;


  function Create_Stack: PGtkWidget;
  begin
    Result := gtk_stack_new;
    gtk_stack_add_child(GTK_STACK(Result), Create_FlowBox);
    gtk_stack_add_child(GTK_STACK(Result), Create_Calender);
    gtk_stack_add_child(GTK_STACK(Result), Create_GridBox);
  end;


  function Create_Spinner: PGtkWidget;
  begin
    Result := gtk_spinner_new;
    gtk_spinner_set_spinning(GTK_SPINNER(Result), gTRUE);
  end;

  function Create_ScrollWindows: PGtkWidget;
  var
    i: integer;
    box: PGtkWidget;
  begin
    Result := gtk_scrolled_window_new;
    box := gtk_box_new(GTK_ORIENTATION_VERTICAL, 5);
    gtk_scrolled_window_set_child(GTK_SCROLLED_WINDOW(Result), box);

    for i := 0 to 15 do begin
      gtk_box_append(GTK_BOX(box), CreateButton('button'));
    end;
  end;

  function Create_EditLabel: PGtkWidget;
  begin
    Result := gtk_editable_label_new('Edit Label');
  end;

  function Create_Expander: PGtkWidget;
  var
    ex, wh: PGtkWidget;
  begin
    Result := gtk_box_new(GTK_ORIENTATION_VERTICAL, 5);
    wh := gtk_window_handle_new;
    gtk_window_handle_set_child(GTK_WINDOW_HANDLE(wh), CreateButton('wh'));

    ex := gtk_expander_new('Expander wh');
    gtk_expander_set_child(GTK_EXPANDER(ex), wh);
    gtk_box_append(GTK_BOX(Result), ex);
    ex := gtk_expander_new('Expander 1');
    gtk_expander_set_child(GTK_EXPANDER(ex), CreateButton('Button'));
    gtk_box_append(GTK_BOX(Result), ex);
    ex := gtk_expander_new('Expander 2');
    gtk_expander_set_child(GTK_EXPANDER(ex), CreateButton('Button'));
    gtk_box_append(GTK_BOX(Result), ex);
  end;

  function Create_LevelBar: PGtkWidget;
  begin
    Result := gtk_level_bar_new_for_interval(10, 20);
    gtk_level_bar_set_value(GTK_LEVEL_BAR(Result), 15);
  end;

  function Create_MediaControls: PGtkWidget;
  begin
    Result := gtk_media_controls_new(nil);
  end;


  function Create_Notebook: PGtkWidget;
  begin
    Result := gtk_notebook_new;
    gtk_notebook_set_scrollable(GTK_NOTEBOOK(Result), True);
    gtk_notebook_append_page(GTK_NOTEBOOK(Result), Create_DrawArena, Create_Label('DrawArena'));
    gtk_notebook_append_page(GTK_NOTEBOOK(Result), Create_MediaControls, Create_Label('MediaControls'));
    gtk_notebook_append_page(GTK_NOTEBOOK(Result), Create_LevelBar, Create_Label('LevelBar'));
    gtk_notebook_append_page(GTK_NOTEBOOK(Result), Create_FlowBox, Create_Label('FlowBox'));
    gtk_notebook_append_page(GTK_NOTEBOOK(Result), Create_Calender, Create_Label('Calendar'));
    gtk_notebook_append_page(GTK_NOTEBOOK(Result), Create_GridBox, Create_Label('Grid'));
    gtk_notebook_append_page(GTK_NOTEBOOK(Result), Create_ListBox, Create_Label('ListBox'));
    gtk_notebook_append_page(GTK_NOTEBOOK(Result), Create_CenterBox, Create_Label('CenterBox'));
    gtk_notebook_append_page(GTK_NOTEBOOK(Result), Create_ActionBar, Create_Label('ActionBar'));
    gtk_notebook_append_page(GTK_NOTEBOOK(Result), Create_ScrollBox, Create_Label('ScrollBox'));
    gtk_notebook_append_page(GTK_NOTEBOOK(Result), Create_ScaleButton, Create_Label('ScaleButton'));
    gtk_notebook_append_page(GTK_NOTEBOOK(Result), Create_Button_Box, Create_Label('ButtonBox'));
    gtk_notebook_append_page(GTK_NOTEBOOK(Result), Create_Window_Controls, Create_Label('WindowControl'));
    gtk_notebook_append_page(GTK_NOTEBOOK(Result), Create_Aspect_Frame, Create_Label('AspectFrame'));
    gtk_notebook_append_page(GTK_NOTEBOOK(Result), Create_Stack, Create_Label('Stack'));
    gtk_notebook_append_page(GTK_NOTEBOOK(Result), Create_Spinner, Create_Label('Spinner'));
    gtk_notebook_append_page(GTK_NOTEBOOK(Result), Create_ScrollWindows, Create_Label('ScrollWindow'));
    gtk_notebook_append_page(GTK_NOTEBOOK(Result), Create_EditLabel, Create_Label('EditLabel'));
    gtk_notebook_append_page(GTK_NOTEBOOK(Result), Create_Expander, Create_Label('Expander'));
  end;




  procedure activate(app: PGtkApplication; user_data: Pointer); cdecl;
  var
    window, box, notebook, psu: PGTKWidget;
    Winclass: PGtkWindowClass;
    lm: PGtkLayoutManager;
    LMclass: PGtkLayoutManagerClass;
    na: PGtkNative;
    nai: PGtkNativeInterface;
  begin
    window := gtk_application_window_new(app);

    gtk_window_set_default_size(GTK_WINDOW(window), 320, 200);
    gtk_window_set_title(GTK_WINDOW(window), 'Hello GTK-4');


// psu:=   gtk_page_setup_unix_dialog_new('unix-print', nil);


    box := Create_Button_Box;
    gtk_window_set_child(GTK_WINDOW(window), box);

    notebook := Create_Notebook;
    gtk_box_append(GTK_BOX(box), notebook);


    gtk_window_present(GTK_WINDOW(window));

    Winclass := GTK_WINDOW_GET_CLASS(window);
    WriteLn('win class: ', G_OBJECT_CLASS_NAME(Winclass));
    WriteLn('win is_class: ', GTK_IS_WINDOW_CLASS(Winclass));
    WriteLn();
    Winclass := GTK_WINDOW_GET_CLASS(box);
    WriteLn('box class: ', G_OBJECT_CLASS_NAME(Winclass));
    WriteLn('box is_class: ', GTK_IS_BOX_CLASS(Winclass));
    WriteLn();

    lm := gtk_widget_get_layout_manager(box);
    LMclass := GTK_LAYOUT_MANAGER_GET_CLASS(lm);
    WriteLn('lm class: ', G_OBJECT_CLASS_NAME(LMclass));
    WriteLn('lm is_class: ', GTK_IS_LAYOUT_MANAGER_CLASS(LMclass));
    WriteLn();

    na := gtk_widget_get_native(box);
    nai := GTK_NATIVE_GET_IFACE(na);
    WriteLn('na class: ', G_OBJECT_CLASS_NAME(LMclass));
    WriteLn('na is_class: ', GTK_IS_NATIVE(nai));
    WriteLn();

    WriteLn('is win: ', GTK_IS_WINDOW(window));
    WriteLn('is win: ', GTK_IS_WINDOW(box));
    WriteLn('is btn: ', GTK_IS_BUTTON(box));
    WriteLn('is btn: ', GTK_IS_BUTTON(window));
  end;

  procedure main;
  var
    app: PGtkApplication;
    sur: PGdkSurface;
  begin
 sur:=    gdk_surface_new_toplevel(nil);



    app := gtk_application_new('org.gtk.example', 0);

    g_signal_connect(app, 'activate', G_CALLBACK(@activate), nil);
    g_application_run(app, 0, nil);
  end;

begin
  SetExceptionMask([exDenormalized, exInvalidOp, exOverflow, exPrecision, exUnderflow, exZeroDivide]);
  main;
end.
