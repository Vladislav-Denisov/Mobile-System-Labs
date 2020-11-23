#include "counter.h"


Q_INVOKABLE void Counter::increment() {
    count++;
    emit countChange();
}

Q_INVOKABLE void Counter::reset() {
    count = 0;
    emit countChange();
}

int Counter::getCount() {
    return count;
}

void Counter::setCount(int _count) {
    count = _count;
}

// slot
void Counter::print() {
    qDebug() << "Counter: " << count;
}
