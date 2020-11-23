#include "list_of_strings.h"


Q_INVOKABLE void ListOfStrings::push(QString str) {
    list.append(str.toLower());
    emit listChanged();
}

Q_INVOKABLE void ListOfStrings::pop() {
    list.removeLast();
    emit listChanged();
}

QString ListOfStrings::getText() {
    QString text = list.join(", ");
       return text.replace(0, 1, text[0].toUpper());
}
