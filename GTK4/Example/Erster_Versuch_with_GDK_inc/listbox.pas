unit ListBox;

{$mode ObjFPC}{$H+}

interface

uses
  glib2, GTK4;

function Create_ListBox: PGtkWidget;

implementation

function CreateButton(Caption: Pgchar): PGtkWidget;
begin
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

function Create_Spinner: PGtkWidget;
var
  lb, spinner: PGtkWidget;
begin
  Result := gtk_center_box_new;
  lb := gtk_label_new('Bitte warten');
  gtk_center_box_set_start_widget(GTK_CENTER_BOX(Result), lb);
  spinner := gtk_spinner_new;
  gtk_spinner_set_spinning(GTK_SPINNER(spinner), gTRUE);
  gtk_center_box_set_center_widget(GTK_CENTER_BOX(Result), spinner);
end;

function Create_CheckButton: PGtkWidget;
var
  lb , cb: PGtkWidget;
begin
  Result := gtk_center_box_new;
  lb := gtk_label_new('CheckButton');
  gtk_center_box_set_start_widget(GTK_CENTER_BOX(Result), lb);
  cb := gtk_check_button_new;
  gtk_center_box_set_center_widget(GTK_CENTER_BOX(Result), cb);
end;

function Create_Spinner2: PGtkWidget;
var
  lb, spinner: PGtkWidget;
begin
  //Result := gtk_center_layout_new;
  //lb := gtk_label_new('Bitte warten');
  //gtk_center_layout_set_start_widget(GTK_CENTER_LAYOUT(Result), lb);
  //spinner := gtk_spinner_new;
  //gtk_spinner_set_spinning(GTK_SPINNER(spinner), gTRUE);
  //gtk_center_layout_set_center_widget(GTK_CENTER_LAYOUT(Result), spinner);
  Result:=nil;;
end;

function Create_ListBox: PGtkWidget;
begin
  Result := gtk_list_box_new;

  gtk_list_box_insert(GTK_LIST_BOX(Result), CreateButton('hallo1'), 0);
  gtk_list_box_insert(GTK_LIST_BOX(Result), CreateButton('hallo2'), 0);
  gtk_list_box_insert(GTK_LIST_BOX(Result), CreateButton('hallo3'), 0);
  gtk_list_box_insert(GTK_LIST_BOX(Result), CreateLabel('hallo3'), 0);
  gtk_list_box_insert(GTK_LIST_BOX(Result), CreateLabel('hallo3'), 0);
  gtk_list_box_insert(GTK_LIST_BOX(Result), CreateLabel('hallo3'), 0);
  gtk_list_box_insert(GTK_LIST_BOX(Result), CreateLabel('hallo3'), 0);
  gtk_list_box_insert(GTK_LIST_BOX(Result), Create_CheckButton, 0);
  gtk_list_box_insert(GTK_LIST_BOX(Result), Create_CheckButton, 0);
  gtk_list_box_insert(GTK_LIST_BOX(Result), Create_CheckButton, 0);
  gtk_list_box_insert(GTK_LIST_BOX(Result), Create_Spinner, 0);
  gtk_list_box_insert(GTK_LIST_BOX(Result), Create_Spinner, 0);
  gtk_list_box_insert(GTK_LIST_BOX(Result), Create_Spinner, 0);
  gtk_list_box_insert(GTK_LIST_BOX(Result), Create_Spinner2, 0);
  gtk_list_box_insert(GTK_LIST_BOX(Result), Create_Spinner2, 0);
  gtk_list_box_insert(GTK_LIST_BOX(Result), Create_Spinner2, 0);
  gtk_list_box_insert(GTK_LIST_BOX(Result), Create_CheckButton, 0);
  gtk_list_box_insert(GTK_LIST_BOX(Result), Create_CheckButton, 0);
  gtk_list_box_insert(GTK_LIST_BOX(Result), Create_CheckButton, 0);
end;




end.
