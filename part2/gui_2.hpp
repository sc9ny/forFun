#ifndef GUI_2_H
#define GUI_2_H

#include <QWidget>
#include <QGridLayout>
#include <QPainter>
#include <QMouseEvent>
#include <cmath>
#include <QPen>
#include <vector>
#include <QLabel>
#include <QRadioButton>
#include <QPushButton>
#include <QVBoxLayout>
/*
 * Class to implement part 1 of the accessment.
 *
*/
class GUI :public QWidget
{
    Q_OBJECT
public:
    // constructor for the class
    GUI(QWidget *parent = 0);
    // function to draw events.
    void paintEvent(QPaintEvent *) override;
    // Mouse event for pressing left button
    void mousePressEvent(QMouseEvent *p_event)override;
    // mouse event for releasing left button
    void mouseReleaseEvent(QMouseEvent *r_event) override;
    // function to highlights points that are edge of the circle
    void highlight();
    // finds points that are edge of the circle.
    bool pointsOfCircles(QPointF rect);
    // find minimum and maximum radius.
    void findDistance(QPointF rect);
    // functions connected to signal. called when button is pressed.
private slots:
    void clickPushB();
    void clickRadioB();
private:
    double radius, minR, maxR;
    // tolerance for highlighting points from given radius.
    int tolerance;
    const int RECT_SIZE =6;
    int endX,endY;
    bool validInput = false;
    QPointF startCoord;
    std::vector<QRectF> storage;
    std::vector<QRectF> pointsH;
    bool radioClicked = true;
    bool gener = false;
    QLabel *label;
    QPushButton *generate;
    QRadioButton *ONOFF;
};
#endif // GUI_2_H
