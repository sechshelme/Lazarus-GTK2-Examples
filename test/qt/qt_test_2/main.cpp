#include <QApplication>
#include <QPushButton>
#include <QComboBox>
#include <QMainWindow>
#include <QBoxLayout>
#include <QtWidgets>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);

    QWidget w;

    QVBoxLayout *l =new QVBoxLayout;

    QPushButton  *button= new QPushButton("Hello world!");
    button->setText("Hallo Welt !\nHello World !");
    button->show();

    QPushButton button2 ("Hello world!");
    
    button2.setText("Button: Hallo Welt !\nTaster: Hello World !");
    button2.show();

    QComboBox cb;
     
    cb.addItem("item1");
    cb.addItem("item2");
    cb.addItem("item3");
    cb.addItem("item4");
    cb.addItem("item5");

    l->addWidget(&cb);
    l->addWidget(button);
    l->addWidget(&button2);

    w.setLayout(l);
    w.show();

    return a.exec();
}
