program Project1;

uses
  GTK2,
  SysUtils;

var
  Btn0, Window, halign, Btn1: pGTKWidget;

begin
  GTK_Init(@argc, @argv);

  Window := gtk_window_new(GTK_WINDOW_TOPLEVEL);
  gtk_window_set_title(GTK_WINDOW(Window), 'Hallo');
  gtk_window_set_default_size(GTK_WINDOW(Window), 500, 500);
  gtk_container_set_border_width(GTK_CONTAINER(window), 15);

  Btn0 := gtk_button_new_with_label('Button0');
//  gtk_signal_connect(Btn0, 'clicked',@gtk_button_clicked, nil);

  Btn1 := gtk_button_new_with_label('Button1');

  halign := gtk_alignment_new(5, 5, 100, 100);
  gtk_container_add(GTK_CONTAINER(halign), Btn0);
  gtk_container_add(GTK_CONTAINER(halign), Btn1);

//  gtk_container_add(GTK_CONTAINER(window), Btn0);
//  gtk_container_add(GTK_CONTAINER(window), Btn0);
gtk_container_add(GTK_CONTAINER(window), halign);

   gtk_widget_show_all(window);


//  GTK_Container_Add(GTK_Container(Window), Btn0);
//  GTK_Widget_Show(Window);
//  GTK_Widget_Show(Btn0);
  GTK_Main;
end.
