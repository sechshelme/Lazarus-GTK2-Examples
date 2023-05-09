program Project1;

uses
  Math,
  SysUtils,
  Cairo,
  GLib2,
  Gdk2,
  Gtk2;

const
  list_Titel:array of Pgchar= ('Nr', 'Name');


  function gtk_clist_new_with_titles(columns:gint; titles:ppchar):PGtkWidget; cdecl; external gtklib;


  procedure AddList(list: PGtkWidget;Nr:Integer; atom: PChar);
  var
    Data: array[0..1] of PChar;
  begin
    Data[0] := PChar( Nr.ToString);
    Data[1] := atom;
    gtk_clist_append(GTK_CLIST(list), Data);
  end;

procedure main;
  var
    Window, vbox, sb, btn, clist: PGtkWidget;
    i: Integer;
    ppc:PPChar;
    atom_id: TGdkAtom;
  begin
    GTK_Init(@argc, @argv);

    Window := gtk_window_new(GTK_WINDOW_TOPLEVEL);
    gtk_window_set_title(GTK_WINDOW(Window), 'Einfache ListBox');
    gtk_window_set_default_size(GTK_WINDOW(Window), 500, 500);
    gtk_window_set_position(GTK_WINDOW(window), GTK_WIN_POS_CENTER);
    g_signal_connect(G_OBJECT(window), 'destroy', G_CALLBACK(@gtk_main_quit), nil);

    gtk_container_set_border_width(GTK_CONTAINER(Window), 10);

    vbox := gtk_vbox_new(False, 0);
    gtk_container_add(GTK_CONTAINER(Window), vbox);

    sb := gtk_scrolled_window_new(nil, nil);
    gtk_container_add(GTK_CONTAINER(vbox), sb);

    ppc:=PPChar(list_Titel);
    clist:=gtk_clist_new_with_titles(Length(list_Titel),ppc);
        gtk_container_add(GTK_CONTAINER(sb), clist);


        WriteLn(gdk_atom_intern('STRING', True));
        WriteLn(gdk_atom_intern('_NET_ACTIVE_WINDOW', True));

    for i:=1 to 100 do begin
//      WriteLn(gdk_atom_name(i));
      AddList(clist,i,gdk_atom_name(i));
    end;

    gtk_widget_show_all(window);

    GTK_Main;
  end;

begin
  SetExceptionMask([exDenormalized, exInvalidOp, exOverflow, exPrecision, exUnderflow, exZeroDivide]);
  main;
end.
