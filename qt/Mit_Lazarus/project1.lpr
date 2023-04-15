program project1;

uses
  qt5, sysutils;

var
  window: QWidgetH;
  button: QPushButtonH;
  layout: QVBoxLayoutH;

  s: WideString;
  i: integer;
  app: QApplicationH;
begin
  app:=QApplication_Create(@argc,argv);

  window := QWidget_Create();

  layout := QVBoxLayout_Create(window);
  for i := 0 to 15 do begin
    s := 'Button ' + IntToStr(i);
    button := QPushButton_Create(@s);
    QBoxLayout_addWidget(layout, button);
  end;

  QWidget_show(window);

  QApplication_exec();
end.

