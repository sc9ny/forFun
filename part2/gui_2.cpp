#include "gui_2.hpp"
GUI::GUI(QWidget *parent)
{
    //GUI initialization
    QGridLayout *grid = new QGridLayout(parent);
    QVBoxLayout *box = new QVBoxLayout(parent);
    label = new QLabel("",parent);
    generate = new QPushButton("Generate",parent);
    ONOFF = new QRadioButton("On/Off",parent);
    ONOFF->setChecked(true);
    box->addWidget(label);
    box ->addWidget(generate);
    box->addWidget(ONOFF);
    grid->addLayout(box,4,4,Qt::AlignBottom);

    setLayout(grid);
    setWindowTitle("Assesment");
    setStyleSheet("background-color: white");
    setUpdatesEnabled(true);
    resize(400,320);
    // connect the signals with slots to start listening to button.
    connect (generate, SIGNAL(clicked(bool)), SLOT(clickPushB()));
    connect(ONOFF,SIGNAL(clicked(bool)), SLOT(clickRadioB()));

}
void GUI::paintEvent(QPaintEvent*)
{
    QPainter painter(this);
    // initial setup to create 20 *20 grey circles.
    //169 169 169 is code for dark grey.
    QColor *color = new QColor(169,169,169);
    storage.clear();
    if (radioClicked)
    {
        // the grid starts from position of x=60 and y =10 so it is initialized in the middle in x axis
        // when window is resized to 320,320 (in the constructor)
        for (int i =60; i < 260; i+=10)
        {
            for (int j = 10; j < 210; j +=10)
            {
                QRectF rect(i,j,RECT_SIZE,RECT_SIZE);
                storage.push_back(rect);
                painter.drawEllipse(rect);
                painter.fillRect(rect,*color);
            }
        }
    }

    // wait until startcoord is updated. Once updated, highlight.
    // while doing this, find the minimum radius and maximum radius.
    color = new QColor(0,0,255);
    painter.setPen(QPen(*color));
    if (validInput && gener)
    {
        painter.drawEllipse(startCoord,radius,radius);
        for (unsigned int k =0; k<pointsH.size(); k++)
        {
            if (radioClicked)
                painter.fillRect(pointsH[k], *color);

        }


    }

    //FOR PART1
//    for (unsigned int k =0; k<pointsH.size(); k++)
//    {
//        painter.fillRect(pointsH[k], *color);
//        findDistance(pointsH[k].center());
//        //painter.fillRect(pointsH[k*2], *color);
//    }

    // draw min,max circles
//    color = new QColor(255,0,0);
//    painter.setPen(QPen(*color));
//    if (minR < 200 && maxR > 0)
//    {
//        painter.drawEllipse(startCoord,minR,minR);
//        painter.drawEllipse(startCoord,maxR,maxR);
//    }


}
// This function is called automatically when mouse is pressed
void GUI:: mousePressEvent(QMouseEvent *p_event)
{
    //get the center of the circle.
    startCoord = p_event->pos();
    //reset any change from previous action.
    minR=0;
    maxR=0;
    label->setText("");
    validInput = false;
    pointsH.clear();
    gener = false;
}
// This function is called automatically when mouse is released.
void GUI:: mouseReleaseEvent(QMouseEvent *r_event)
{
    endX=r_event->x();
    endY= r_event->y();
    //using distance formula (sqrt(x2-x1)^2-(y2-y1)^2), get radius.

    int distanceX = abs(endX-startCoord.x());
    int distanceY = abs(endY-startCoord.y());
    distanceX = distanceX *distanceX;
    distanceY = distanceY*distanceY;
    radius = sqrt(distanceX+distanceY);
    //update the widget as soon as mouse button is released.
    highlight();
    //Error Checking. If mouse is not released within the grid, prevent drawing circles.
    if (endX >260 || endY >210 || endX <60 || endY<10)
    {
        label->setText("Mouse Went Off Boundary. A circle is not drawn");
        endX =0;
        endY =0;
        startCoord = QPointF(0,0);
        minR = 200;
        pointsH.clear();
        generate->setEnabled(false);
        //update();
    }
    //Error Checking. If circle is too big for 20*20 grid, print a warning message.
    else if (startCoord.x() +radius >260 || startCoord.x()-radius <60 ||startCoord.y() +radius >210 || startCoord.y()-radius <10 )
    {
        label->setText("Warning: circle out of bondary");
        validInput =true;
        generate->setEnabled(true);
        //update();
    }
    else
    {
        validInput = true;
        generate->setEnabled(true);
        //update();
    }
    minR =200;
}

void GUI::highlight()
{
    // iterate through every point, then uses helper function to find points on circles.
    for (unsigned int i =0; i <storage.size(); i++)
    {
        QPointF center = storage[i].center();
        if (pointsOfCircles(center))
            pointsH.push_back(storage[i]);
    }

}
//@Param QPointF rect: QPoint object (x,y) to be checked if the point lies on or lies within the edge of the circle.
bool GUI::pointsOfCircles(QPointF rect)
{
    // the dots are spaced(separated) by 6. radius of each points are 5.
    // the distance from the center of one point to another is therefore 8.
    // then, increment threshhold by 1
    tolerance = radius *9;
    // using the circle equation x^2+y^2=r^2, find points corresponding on the edge of the circle.
    int x = rect.x() - startCoord.x();
    int y = rect.y() - startCoord.y();
    if ((x*x)+ (y*y) <=(radius*radius) +tolerance && (x*x)+ (y*y) >=(radius*radius) -tolerance )
        return true;
    return false;
}
// This function is not necessary for Part2.
void GUI::findDistance(QPointF rect)
{
    // using the distance equation, find the minimum and maximum radius.
    int distanceX = abs(rect.x()-startCoord.x());
    int distanceY = abs(rect.y()-startCoord.y());
    distanceX = distanceX *distanceX;
    distanceY = distanceY*distanceY;
    double temp = sqrt(distanceX+distanceY);

    if (temp < minR)
    {
        minR= temp;
    }
    if (temp >maxR)
    {
        maxR = temp;
    }

}
void GUI::clickPushB()
{
    if (gener)
        gener = false;
    else
        gener = true;
    update();

}
void GUI::clickRadioB()
{
    if (ONOFF->isChecked())
    {
        radioClicked =true;
    }
    else
    {
        radioClicked =false;
    }
    update();
}
