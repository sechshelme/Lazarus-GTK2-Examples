program project1;

// https://www.docs4dev.com/docs/gtk/4.0.0/ch01s05.html#google_vignette

uses
  glib2,
  common_GTK,
  gtkenums,                   // io.
  gtkadjustment,              // io.
  gtkborder,                  // io.
  gtkbitset,                  // io.
  gtkaccelgroup,              // io.
  gtkfilter,                  // io.
  gtkbuilder,                 // io.
  gtkbookmarklist,            // io.
  gtkactionable,              // io.
  gtkbuilderscope,            // io. -> gtkbuilder;
  gtkbuildable,               // io. -> gtkbuilder;
  gtkstyleprovider,           // io.
  gtkexpression,              // io.


  gtknative,                  // io.    ( TGtkNative ausgelagert )
  gtkwidget,                  // -> pango,Cairo, gtknative
  gtkbutton,                  // io.
  gtklabel,                   // io. -> pango

  gtkactionbar,               // io.
  gtkcalendar,                // io.
  gtkaspectframe,             // io.
  gtkbox,                     // io.
  gtkcenterbox,               // io.
  gtkwindowcontrols,          // io.
  gtkwindow,                  // io.
  gtkapplication,             // io. -> gtkwindow
  gtkapplicationwindow,       // io. -> gtkwindow
  gtkwindowgroup,             // io. -> gtkwindow;
  gtkaboutdialog,             // io. -> gtkwindow;
  gtkroot,                    // io.

  gtkscrollbar,               // io. -> gtkadjustment;
  gtkrange,                   // io. -> gtkadjustment, gtkborder;
  gtkscale,                   // io. -> pango, gtkrange, gtkadjustment;
  gtkscalebutton,             // io. -> gtkadjustment;

  gtkgrid,                    // io.
  gtklayoutchild,             // io.
  gtklayoutmanager,           // io. -> gtklayoutchild;
  gtkbinlayout,               // io. -> gtklayoutmanager;
  gtkgridlayout,              // io. -> gtklayoutmanager, gtklayoutchild;

  gtkshortcutsshortcut,       // io.
  gtkshortcuttrigger,         // io.
  gtkshortcutaction,          // io.
  gtkshortcutlabel,           // io.
  gtkshortcut,                // io. -> gtkshortcuttrigger, gtkshortcutaction;  ( TGtkShortcut ausgelagert )
  gtkshortcutcontroller,      // io. -> gtkshortcut;
  gtkshortcutmanager,         // io. -> gtkshortcutcontroller;
  gtkshortcutsgroup,          // io. -> gtkshortcutsshortcut;
  gtkshortcutssection,        // io. -> gtkshortcutsgroup;
  gtkshortcutswindow,         // io. -> gtkshortcutssection;

  gtkboolfilter,              // io. -> gtkfilter, gtkexpression;


  gtktexttag,                 // io.
  gtktexttagtable,            // io. -> gtktexttag;
  gtktextchild,               // io.
  gtktextiter,                // io. -> pango, gtktexttag, gtktextchild;
  gtktextmark,                // io. -> gtktextiter;
  gtktextbuffer,              // io. -> gtktexttag, gtktextiter, gtktextchild, gtktextmark;
  gtktextview,                // io. -> pango, gtktextiter, gtktextmark, gtktextchild;

  gtklistbox,                 // io. -> gtkadjustment;







  //  gtksnapshot,  // gtk4.14
  //  gtktypebuiltins, // gtk4.14
  gtkfontdialog,               // GTK4.14
  gtkcolordialog,             // geht nur mit 4.14      // Muss überarbeitet werden
  gtkcolordialogbutton,         // GTK4.14
  gtkaccessiblerange,         //  geht nur mit 4.14      Muss überarbeitet werden
  gtkaccessibletext,          //  geht nur mit 4.14      Muss überarbeitet werden
  gtkaccessible,              //  GTK 4.14  Muss überarbeitet werden    G_DECLARE_INTERFACE and G_DECLARE_FINAL_TYPE
  gtkatcontext,               // Muss überarbeitet werden
  gtkalertdialog,             //   geht nur mit 4.14     Muss überarbeitet werden

  // =======  deprecated 4.10

  gtkstylecontext,            // io. -> gtkborder, gtkstyleprovider;

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
    gtk_widget_set_margin_start(Result, 5);
    gtk_widget_set_margin_top(Result, 5);
    gtk_widget_set_margin_bottom(Result, 5);
    gtk_widget_set_margin_end(Result, 5);
  end;

function CreateLabel(Caption: Pgchar): PGtkWidget;
begin
  Result := gtk_label_new(Caption);
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

procedure backspace(self: PGtkTextView; user_data: gpointer);
var
  buf: PGtkTextBuffer;
  pc: PChar;
  start, ende: TGtkTextIter;
begin
  g_print('backspace'#10);
  buf := gtk_text_view_get_buffer(GTK_TEXT_VIEW(self));
  gtk_text_buffer_get_bounds(buf,@start, @ende);

  pc := gtk_text_buffer_get_text(buf, @start, @ende, True);
  WriteLn(pc);
  g_free(pc);
end;

procedure move_cursor(self: PGtkTextView; user_data: gpointer);
begin
  g_print('move'#10);
end;

  function Create_GridBox: PGtkWidget;
  var
    btn, tv: PGtkWidget;
    buf: PGtkTextBuffer;
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
    tv := gtk_text_view_new;
    gtk_grid_attach(GTK_GRID(Result), tv, 0, 3, 3, 1);
    buf := gtk_text_view_get_buffer(GTK_TEXT_VIEW(tv));
    gtk_text_buffer_set_text(buf, 'Hello World !'#10'Hallo Welt !', -1);
    g_signal_connect(tv, 'backspace', G_CALLBACK(@backspace), nil);
    g_signal_connect(tv, 'move-cursor', G_CALLBACK(@move_cursor), nil);
  end;


function Create_Window_Controls: PGtkWidget;
begin
  Result := gtk_window_controls_new(GTK_PACK_START);
end;

function Create_ListBox: PGtkWidget;
begin
  Result := gtk_list_box_new;

  gtk_list_box_insert(GTK_LIST_BOX(Result),CreateButton('hallo1'),0);
  gtk_list_box_insert(GTK_LIST_BOX(Result),CreateButton('hallo2'),0);
  gtk_list_box_insert(GTK_LIST_BOX(Result),CreateButton('hallo3'),0);
  gtk_list_box_insert(GTK_LIST_BOX(Result),CreateLabel('hallo3'),0);
  gtk_list_box_insert(GTK_LIST_BOX(Result),CreateLabel('hallo3'),0);
  gtk_list_box_insert(GTK_LIST_BOX(Result),CreateLabel('hallo3'),0);
  gtk_list_box_insert(GTK_LIST_BOX(Result),CreateLabel('hallo3'),0);
//  row:=gtk_list_box_row_new;
end;



  procedure activate(app: PGtkApplication; user_data: Pointer); cdecl;
  var
    window, box, actionBar, calendar, scrollBar, scaleBtn,
    aspectFram, winCtrl, centerBox, gridBox, listbox: PGTKWidget;
    Winclass: PGtkWindowClass;
    lm: PGtkLayoutManager;
    LMclass: PGtkLayoutManagerClass;
    na: PGtkNative;
    nai: PGtkNativeInterface;
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

    gridBox := Create_GridBox;
    gtk_box_append(GTK_BOX(box), gridBox);

    listbox := Create_ListBox;
    gtk_box_append(GTK_BOX(box), listbox);


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
  begin
    app := gtk_application_new('org.gtk.example', 0);

    g_signal_connect(app, 'activate', G_CALLBACK(@activate), nil);
    g_application_run(app, 0, nil);
  end;

begin
  SetExceptionMask([exDenormalized, exInvalidOp, exOverflow, exPrecision, exUnderflow, exZeroDivide]);
  main;
end.
