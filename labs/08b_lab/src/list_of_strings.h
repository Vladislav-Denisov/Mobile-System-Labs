#ifndef LIST_OF_STRINGS_H
#define LIST_OF_STRINGS_H

#include <QObject>
#include <QMetaObject>
#include <QDebug>
#include <QString>
#include <QList>


#include <QObject>
#include <QString>
#include <QStringList>


class ListOfStrings : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString list READ getText NOTIFY listChanged)

private:
    QStringList list;

public:
    ListOfStrings() : QObject() {
        list = QStringList();
    }

    Q_INVOKABLE void push(QString str);
    Q_INVOKABLE void pop();
    QString getText();

signals:
    void listChanged();
};

#endif // LIST_OF_STRINGS_H
