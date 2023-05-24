#include <QApplication>
#include <QPushButton>
#include <QComboBox>
#include <QBoxLayout>
#include <QtWidgets>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);

    QWidget w;
//    w.setTitle("Erstes QT Fenster");

    QVBoxLayout l(&w);

    QPushButton button ("Hallo Welt !\nHello World !");

    QComboBox cb;
     
    cb.addItem("item1");
    cb.addItem("item2");
    cb.addItem("item3");
    cb.addItem("item4");
    cb.addItem("item5");

//    cb.show();
    l.addWidget(&cb);
    l.addWidget(&button);

    w.show();

    return a.exec(); 
}
