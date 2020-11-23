#ifndef COUNTER_H
#define COUNTER_H

#include <QObject>
#include <QMetaObject>
#include <QDebug>

class Counter : public QObject
{
    Q_OBJECT
    Q_PROPERTY(int count READ getCount WRITE setCount NOTIFY countChange)
private:
    int count = 0;

public:
    Q_INVOKABLE Counter() : QObject() {}

    Q_INVOKABLE void increment();
    Q_INVOKABLE void reset();
    int getCount();
    void setCount(int _count);

signals:
    void countChange();

private slots:
    void print();
};

#endif // COUNTER_H
