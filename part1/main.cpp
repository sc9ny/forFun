#include <QApplication>
#include "gui.hpp"
int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    QWidget *b = new QWidget;

    GUI gui(b);
    gui.show();

    return a.exec();
}
