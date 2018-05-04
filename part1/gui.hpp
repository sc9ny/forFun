#ifndef GUI_H
#define GUI_H

#include <QWidget>
#include <QGridLayout>
#include <QPainter>
#include <QMouseEvent>
#include <cmath>
#include <QPen>
#include <vector>
#include <QLabel>
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
    QLabel *label;
};
#endif // GUI_H
