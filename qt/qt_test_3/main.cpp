#include <QApplication>
#include <QPushButton>
#include <QComboBox>
#include <QMainWindow>
#include <QBoxLayout>
#include <QTableWidget>
#include <QtWidgets>

// https://doc.qt.io/qt-6/qvboxlayout.html

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    QWidget *window = new QWidget;
    QPushButton *button1 = new QPushButton("One");
    QPushButton *button2 = new QPushButton("Two");
    QPushButton *button3 = new QPushButton("Three");
    QPushButton *button4 = new QPushButton("Four");
    QPushButton *button5 = new QPushButton("Five");

    QTableWidget *table = new QTableWidget();
    table->setRowCount(10);
    table->setColumnCount(5);

    QTableWidgetItem *newItem = new QTableWidgetItem("Hello World");
    newItem->setIcon(QIcon(QPixmap("emacs.ico")));
    newItem->setTextAlignment(4);
    table->setItem(0, 0, newItem);

    QTableWidgetItem *newItem2 = new QTableWidgetItem("Hello World");
    newItem2->setIcon(QIcon(QPixmap("emacs.ico")));
    newItem2->setTextAlignment(8);
    table->setItem(1, 0, newItem2);

    QHBoxLayout *layout = new QHBoxLayout(window);
    layout->addWidget(button1);
    layout->addWidget(button2);
    layout->addWidget(button3);
    layout->addWidget(button4);
    layout->addWidget(button5);

    layout->addWidget(table);

    window->show();

    return app.exec();
}
