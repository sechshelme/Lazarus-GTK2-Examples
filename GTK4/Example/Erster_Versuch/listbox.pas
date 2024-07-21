unit ListBox;

{$mode ObjFPC}{$H+}

interface

uses
  glib2, gtkwidget, gtkbutton, gtklabel, gtklistbox;

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
  //  row:=gtk_list_box_row_new;
end;




end.
