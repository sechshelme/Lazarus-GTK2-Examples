unit ScrollBox;


interface

uses
  glib2, GTK4;

function Create_ScrollBox: PGtkWidget;
function Create_ScaleButton: PGtkWidget;

implementation

const
  cmPlus = 1000;
  cmMinus = 1001;
  cmPopup = 1002;
  cmNewValue = 1003;

  cmScrollValueChange = 2000;
  cmScrollChange = 2001;

var
  ScrollBar: PGtkWidget;

procedure btn_Click({%H-}button: PGTKWidget; user_data: Pointer); cdecl;
var
  cmd: PtrUInt absolute user_data;
  adj: PGtkAdjustment;
begin
  case cmd of
    cmMinus: begin
      g_print('Press Minus' + #10);
    end;
    cmPlus: begin
      g_print('Press Plus' + #10);
    end;
    cmPopup: begin
      g_print('PopUp' + #10);
    end;
    cmNewValue: begin
      g_print('new Val Button' + #10);
      adj := gtk_scrollbar_get_adjustment(GTK_SCROLLBAR(ScrollBar));
      gtk_adjustment_set_value(adj, 50);
      gtk_scrollbar_set_adjustment(GTK_SCROLLBAR(ScrollBar), adj);
    end;
    else begin
      g_print('Unknow: %i' + #10, cmd);
    end;
  end;
  WriteLn(gtk_button_get_label(GTK_BUTTON(button)));
  gtk_button_set_label(GTK_BUTTON(button), 'abc');
end;

procedure Scroll_Change({%H-}sb: PGTKWidget; user_data: Pointer); cdecl;
var
  cmd: PtrUInt absolute user_data;
begin
  case cmd of
    cmScrollValueChange: begin
      g_print('Scroll Value Change' + #10);
    end;
    cmScrollChange: begin
      g_print('Scroll Change' + #10);
    end;
    else begin
      g_print('Unknow Scroll: %i' + #10, cmd);
    end;
  end;
end;


function Create_ScaleButton: PGtkWidget;
var
  btnPlus, btnMinus, btnPopup: PGtkWidget;
begin
  Result := gtk_scale_button_new(0, 100, 10, nil);

  btnPlus := gtk_scale_button_get_plus_button(GTK_SCALE_BUTTON(Result));
  g_signal_connect(btnPlus, 'clicked', G_CALLBACK(@btn_Click), Pointer(cmPlus));

  btnMinus := gtk_scale_button_get_minus_button(GTK_SCALE_BUTTON(Result));
  g_signal_connect(btnMinus, 'clicked', G_CALLBACK(@btn_Click), Pointer(cmMinus));

  btnPopup := gtk_scale_button_get_popup(GTK_SCALE_BUTTON(Result));
  g_signal_connect(btnPopup, 'clicked', G_CALLBACK(@btn_Click), Pointer(cmPopup));
end;


function Create_ScrollBar: PGtkWidget;
var
  vadj: PGtkAdjustment;
begin
  //vadj := GTK_ADJUSTMENT(gtk_adjustment_new(1, -100, 100, 0.1, 10, 0));
  ////  Result:=gtk_scrollbar_new(GTK_ORIENTATION_VERTICAL,vadj);
  //Result := g_object_new(GTK_TYPE_SCROLLBAR,
  //  'orientation', GTK_ORIENTATION_VERTICAL,
  //  'adjustment', vadj,
  //  nil);
  //g_signal_connect(Result, 'value-changed', G_CALLBACK(@btn_Click), nil);
end;

function Create_Spinnbutton: PGtkWidget;
var
  vadj: PGtkAdjustment;
begin
  vadj := GTK_ADJUSTMENT(gtk_adjustment_new(1, -100, 100, 0.1, 10, 0));
  Result := gtk_spin_button_new(vadj, 23, 4);
end;



function Create_ScrollBar2: PGtkWidget;
var
  vadj: PGtkAdjustment;
begin
  // https://discourse.gnome.org/t/gtk4-x-scrollbar-and-g-signal-connect/22136
  vadj := gtk_adjustment_new(1, -100, 100, 0.1, 10, 10);
  Result := gtk_scrollbar_new(GTK_ORIENTATION_VERTICAL, vadj);
  g_signal_connect(vadj, 'value-changed', G_CALLBACK(@Scroll_Change), Pointer(cmScrollValueChange));
  g_signal_connect(vadj, 'changed', G_CALLBACK(@Scroll_Change), Pointer(cmScrollChange));
end;


function Create_ScrollBox: PGtkWidget;
  // https://openbook.rheinwerk-verlag.de/linux_unix_programmierung/Kap15-008.htm
var
  button1, SpinnButton: PGtkWidget;
begin
  Result := gtk_box_new(GTK_ORIENTATION_HORIZONTAL, 5);
  ScrollBar := Create_ScrollBar2;
  gtk_box_append(GTK_BOX(Result), ScrollBar);

  SpinnButton:=Create_Spinnbutton;
  gtk_box_append(GTK_BOX(Result), SpinnButton);


  button1 := gtk_button_new_with_label('Color...');
  gtk_box_append(GTK_BOX(Result), button1);
  g_signal_connect(button1, 'clicked', G_CALLBACK(@btn_Click), Pointer(cmNewValue));
end;

end.
