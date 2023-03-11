program Project1;

uses
  Math,
  GLib2,
  Gdk2,
  Gtk2;

var
  col: TGdkColor;
  draw: PGtkWidget;

  procedure value_changed(range: PGtkRange; cp: Pointer); cdecl;
  var
    val: gdouble;
    str: Pgchar;
  begin
    val := gtk_range_get_value(range);
    case PtrUInt(cp) of
      0: begin
        col.red := Round(val);
      end;
      1: begin
        col.blue := Round(val);
      end;
      2: begin
        col.green := Round(val);
      end;
    end;
    gtk_widget_modify_bg(draw, GTK_STATE_NORMAL, @col);
  end;


  procedure main;
  var
    Window, hbox, hscale, vbox: PGtkWidget;
    col: TGdkColor;
    i: integer;
  begin
    GTK_Init(@argc, @argv);

    Window := gtk_window_new(GTK_WINDOW_TOPLEVEL);
    gtk_window_set_title(GTK_WINDOW(Window), 'GtkButton');
    gtk_window_set_default_size(GTK_WINDOW(Window), 500, 500);
    gtk_window_set_position(GTK_WINDOW(window), GTK_WIN_POS_CENTER);
    gtk_container_set_border_width(GTK_CONTAINER(Window), 5);

    vbox := gtk_vbox_new(False, 0);
    gtk_container_add(GTK_CONTAINER(Window), vbox);


    draw := gtk_drawing_area_new;
    gdk_color_parse('#0000FF', @col);
    gtk_widget_modify_bg(draw, GTK_STATE_NORMAL, @col);
//    gtk_box_pack_start(GTK_BOX(vbox), draw, True, True, 0);
    gtk_container_add(GTK_CONTAINER(vbox), draw);


//    hbox := gtk_hbox_new(False, 0);
//    gtk_box_pack_start(GTK_BOX(vbox), hbox, True, True, 0);


    for i := 0 to 2 do begin

      hscale := gtk_hscale_new_with_range(0, $FFFF, 1);
      gtk_scale_set_draw_value(GTK_SCALE(hscale), False);
      gtk_widget_set_size_request(hscale, 150, -1);
//       gtk_widget_set_size_request(hscale, 80, 10);
//      gtk_container_add(GTK_CONTAINER(vbox), hscale);
      gtk_box_pack_end(GTK_BOX(vbox), hscale, True, True, 0);

      g_signal_connect(G_OBJECT(hscale), 'value-changed', G_CALLBACK(@value_changed), Pointer(i));
    end;

    g_signal_connect(G_OBJECT(window), 'destroy', G_CALLBACK(@gtk_main_quit), nil);
    gtk_widget_show_all(window);

    GTK_Main;
  end;

begin
  SetExceptionMask([exDenormalized, exInvalidOp, exOverflow, exPrecision, exUnderflow, exZeroDivide]);
  main;
end.
