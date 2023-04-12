#include <QApplication>
#include <QPushButton>
#include <QComboBox>
#include <QMainWindow>
#include <QBoxLayout>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);

    QMainWindow w;
w.setWindowTitle("Hello World");

    QHBoxLayout l;



    QPushButton button ("Hello world!");
    
    button.setText("Hallo Welt !\nHello World !");
    button.show();

    QPushButton button2 ("Hello world!");
    
    button2.setText("Hallo Welt !\nHello World !");
    button2.show();

    QComboBox cb;
     
    cb.addItem("item1");
    cb.addItem("item2");
    cb.addItem("item3");
    cb.addItem("item4");
    cb.addItem("item5");

    cb.show();
//cb.parent(l);
//    l.addWidget(&cb);
    l.addWidget(&button);
    l.addWidget(&button2);

w.setLayout(&l);
//    l.show();
    w.show();



    return a.exec(); // .exec starts QApplication and related GUI, this line starts 'event loop'    
}
