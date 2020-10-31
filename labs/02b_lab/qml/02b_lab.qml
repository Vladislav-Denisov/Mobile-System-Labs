// Файл описывает главное окно приложения.
// В нем указывается начальная страница приложения и Cover Page, а также дополнительные параметры приложения
// (в нашем случае это разрешенные ориентации экрана).
// Является основной и обязательной входной точкой загрузки Sailfish приложения

import QtQuick 2.0
import Sailfish.Silica 1.0
import "pages"

ApplicationWindow
{
    initialPage: Component { FirstPage { } }
    cover: Qt.resolvedUrl("cover/CoverPage.qml") // Используется для отображения миниатюры приложения при работе "в фоне"
    allowedOrientations: defaultAllowedOrientations
}
