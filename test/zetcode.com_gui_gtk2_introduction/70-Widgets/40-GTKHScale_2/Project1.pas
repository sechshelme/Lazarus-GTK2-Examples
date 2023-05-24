program Project1;

uses
  Math,
  Cairo,
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
        col.green := Round(val);
      end;
      2: begin
        col.blue := Round(val);
      end;
    end;
    gtk_widget_modify_bg(draw, GTK_STATE_NORMAL, @col);
  end;

  procedure button_click(btn: PGtkButton; ra: PGtkRange); cdecl;
  begin
    gtk_range_set_value(ra, $FFFF);
  end;

// https://docs.gtk.org/gtk4/class.DrawingArea.html
function on_Exposs_Event(widget: PGtkWidget; event: PGdkEventExpose; Data: gpointer): gboolean;
var
  cr: Pcairo_t;
begin
  cr := gdk_cairo_create(widget^.window);

  cairo_move_to(cr, 0, 100);
  cairo_line_to(cr, 200, 100);
  cairo_stroke(cr);

  cairo_destroy(cr);
  Result := False;
end;

  procedure main;
  const
    btl_label: array of PChar = ('red', 'green', 'blue');
  var
    Window, vbox, btn, lab: PGtkWidget;
    hscale: array[0..2] of PGtkWidget;
    col: TGdkColor;
    i: integer;
  begin
    GTK_Init(@argc, @argv);

    Window := gtk_window_new(GTK_WINDOW_TOPLEVEL);
    gtk_window_set_title(GTK_WINDOW(Window), 'GtkButton');
    gtk_window_set_default_size(GTK_WINDOW(Window), 500, 500);
    gtk_window_set_position(GTK_WINDOW(window), GTK_WIN_POS_CENTER);
    gtk_container_set_border_width(GTK_CONTAINER(Window), 15);

    vbox := gtk_vbox_new(False, 0);
    gtk_container_add(GTK_CONTAINER(Window), vbox);

    draw := gtk_drawing_area_new;
    gdk_color_parse('#888888', @col);
    gtk_widget_modify_bg(draw, GTK_STATE_NORMAL, @col);
    g_signal_connect(draw, 'expose-event', G_CALLBACK(@on_Exposs_Event), nil);
    //    gtk_drawing_area_size (GTK_DRAWING_AREA (draw), 100,100);
//        gtk_drawing_area_ng_area_seize (GTK_DRAWING_AREA (draw), 100,100);


    gtk_container_add(GTK_CONTAINER(vbox), draw);


    for i := 0 to Length(hscale) - 1 do begin
      lab:=gtk_label_new(btl_label[i]);
      gtk_box_pack_start(GTK_BOX(vbox), lab, False, False, 0);

      hscale[i] := gtk_hscale_new_with_range(0, $FFFF, 1);
      gtk_scale_set_draw_value(GTK_SCALE(hscale[i]), False);
      gtk_widget_set_size_request(hscale[i], 150, -1);
      gtk_box_pack_start(GTK_BOX(vbox), hscale[i], False, False, 0);

      g_signal_connect(G_OBJECT(hscale[i]), 'value-changed', G_CALLBACK(@value_changed), Pointer(i));
    end;

    for i := 0 to Length(hscale) - 1 do begin
      btn := gtk_button_new_with_label(btl_label[i]);
      gtk_box_pack_start(GTK_BOX(vbox), btn, False, False, 0);
      g_signal_connect(G_OBJECT(btn), 'clicked', G_CALLBACK(@button_click), hscale[i]);
    end;



    g_signal_connect(G_OBJECT(window), 'destroy', G_CALLBACK(@gtk_main_quit), nil);
    gtk_widget_show_all(window);

    GTK_Main;
  end;

begin
  SetExceptionMask([exDenormalized, exInvalidOp, exOverflow, exPrecision, exUnderflow, exZeroDivide]);
  main;
end.
